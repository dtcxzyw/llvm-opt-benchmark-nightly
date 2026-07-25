inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_rjust:bb.a
  store i64 0, ptr %i.ai, align 8, !tbaa !14
  %i.aj = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val8.i.i) #17, !inline_history !171 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !21
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i.i.i.i, label %bb.v, label %stringlib_rjust.exit

bb.v:                                             ; preds = %bb.u
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ag, align 8, !tbaa !22
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.w, label %stringlib_rjust.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #17, !inline_history !171
  br label %stringlib_rjust.exit

bb.x:                                             ; preds = %bb.t
  %i.ap = getelementptr i8, ptr %i.aj, i64 32     ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr i8, ptr %i.ag, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr i8, ptr %i.ag, i64 16
  store i64 %.val8.i.i, ptr %i.as, align 8, !tbaa !25
  %i.at = getelementptr i8, ptr %i.ag, i64 24
  store i64 %.val8.i.i, ptr %i.at, align 8, !tbaa !26
  %i.au = icmp ne ptr %.val10.i.i, null
  %i.av = icmp ne i64 %.val8.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.av, %i.au
  br i1 %or.cond.i.i.i.i, label %bb.y, label %stringlib_rjust.exit

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull readonly align 1 %.val10.i.i, i64 %.val8.i.i, i1 false)
  br label %stringlib_rjust.exit

bb.z:                                             ; preds = %bb.p
  %i.aw = sub i64 %.02648.ph.i, %.val8.i.i
  %i.ax = tail call fastcc ptr @pad(ptr noundef nonnull readonly %0, i64 noundef %i.aw, i64 noundef 0, i8 noundef signext %.027.i), !inline_history !172
  br label %stringlib_rjust.exit

stringlib_rjust.exit:                             ; preds = %bb.b, %Py_DECREF.exit.thread.i, %bb.j, %bb.m, %bb.o, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.029.i = phi ptr [ null, %Py_DECREF.exit.thread.i ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.b ], [ %i.ax, %bb.z ], [ null, %bb.r ], [ null, %bb.s ], [ %i.ag, %bb.x ], [ %i.ag, %bb.y ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ]
  ret ptr %.029.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rpartition(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_PyByteArray_FromBufferObject(ptr noundef %1), !inline_history !173 ; 9 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bytearray_rpartition_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val12.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 12 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val14.i = load i64, ptr %i.c, align 8, !tbaa !25 ; 13 uses
  %i.d = getelementptr i8, ptr %i.a, i64 40
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !23 ; 6 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %.val13.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 11 uses
  %i.f = icmp eq i64 %.val13.i, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.103) #17, !inline_history !174
  br label %stringlib_rpartition.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyTuple_New(i64 noundef 3) #17, !inline_history !174 ; 15 uses
  %.not.i15.i = icmp eq ptr %i.h, null
  br i1 %.not.i15.i, label %stringlib_rpartition.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %.val14.i, %.val13.i
  br i1 %i.i, label %fastsearch.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %.val13.i, 2
  br i1 %i.j, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %.not66.i.i.i = icmp eq i64 %.val13.i, 1
  br i1 %.not66.i.i.i, label %bb.h, label %fastsearch.exit.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.k = load i8, ptr %.val.i, align 1, !tbaa !22 ; 2 uses
  %i.l = icmp sgt i64 %.val14.i, 15
  br i1 %i.l, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.m = sext i8 %i.k to i32
  %i.n = tail call ptr @memrchr(ptr noundef %.val12.i, i32 noundef %i.m, i64 noundef %.val14.i) #18, !inline_history !174 ; 2 uses
  %.not.i68.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i68.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.val12.i to i64
  %i.q = sub i64 %i.o, %i.p
  br label %fastsearch.exit.i.i

bb.k:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %.val12.i, i64 %.val14.i ; 2 uses
  %i.s = icmp ugt ptr %i.r, %.val12.i
  br i1 %i.s, label %.lr.ph, label %fastsearch.exit.thread.i.i

bb.l:                                             ; preds = %.lr.ph
  %i.t = icmp ugt ptr %i.u, %.val12.i
  br i1 %i.t, label %.lr.ph, label %fastsearch.exit.thread.i.i, !llvm.loop !175

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i67.i.i.i39 = phi ptr [ %i.u, %bb.l ], [ %i.r, %bb.k ]
  %i.u = getelementptr i8, ptr %.0.i67.i.i.i39, i64 -1 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = icmp eq i8 %i.v, %i.k
  br i1 %i.w, label %bb.m, label %bb.l, !llvm.loop !175

bb.m:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %.val12.i to i64
  %i.z = sub i64 %i.x, %i.y
  br label %fastsearch.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %.val13.i, -1               ; 6 uses
  %i.ab = load i8, ptr %.val.i, align 1, !tbaa !22 ; 5 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.val.i, i64 %i.aa
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22  ; 2 uses
  %i.ah = and i8 %i.ag, 63
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = or i64 %i.aj, %i.ae                     ; 2 uses
  %i.al = icmp eq i8 %i.ag, %i.ab
  %i.am = add nsw i64 %.val13.i, -2               ; 2 uses
  %spec.select.i77.i.i.i.prol = select i1 %i.al, i64 %i.am, i64 %i.aa ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %bb.n
  %.04660.i.i.i.i.unr = phi i64 [ %i.aa, %bb.n ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.ae, %bb.n ], [ %i.ak, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.aa, %bb.n ], [ %i.am, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa43.unr = phi i64 [ poison, %bb.n ], [ %i.ak, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %bb.n ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %i.an = icmp eq i64 %.val13.i, 2
  br i1 %i.an, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa43 = phi i64 [ %.lcssa43.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.ca, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.ao = sub i64 %.val14.i, %.val13.i            ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  br i1 %i.ap, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.s
  %.15065.us.i.i.i.i = phi i64 [ %i.bl, %bb.s ], [ %i.ao, %.preheader56.i.i.i.i ] ; 5 uses
  %i.aq = getelementptr i8, ptr %.val12.i, i64 %.15065.us.i.i.i.i ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %i.as = icmp eq i8 %i.ar, %i.ab
  br i1 %i.as, label %.preheader.us.i80.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %i.aq, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = and i64 %i.ax, %.lcssa43
  %.not51.us.i.i.i.i = icmp eq i64 %i.ay, 0
  %i.az = select i1 %.not51.us.i.i.i.i, i64 %.val13.i, i64 0
  br label %bb.s

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %2
  %.04862.us.i.i.i.i = phi i64 [ %3, %2 ], [ %i.aa, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ba = getelementptr i8, ptr %i.aq, i64 %.04862.us.i.i.i.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = getelementptr i8, ptr %.val.i, i64 %.04862.us.i.i.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22
  %.not52.us.i.i.i.i = icmp eq i8 %i.bb, %i.bd
  br i1 %.not52.us.i.i.i.i, label %2, label %.thread.us.i.i.i.i

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread.us.i.i.i.i
  %i.be = getelementptr i8, ptr %i.aq, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !22
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %.lcssa43
  %.not54.us.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not54.us.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread.us.i.i.i.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.r ], [ %i.az, %bb.p ], [ %.val13.i, %bb.q ]
  %i.bk = sub nsw i64 %.15065.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = icmp sgt i64 %i.bk, 0
  br i1 %i.bm, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !176

2:                                                ; preds = %.preheader.us.i80.i.i.i
  %3 = add nsw i64 %.04862.us.i.i.i.i, -1
  %4 = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %4, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !177

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.bn = getelementptr i8, ptr %.val.i, i64 %.04958.i.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22  ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = or i64 %i.br, %.04759.i.i.i.i
  %i.bt = icmp eq i8 %i.bo, %i.ab
  %i.bu = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.bt, i64 %i.bu, i64 %.04660.i.i.i.i
  %i.bv = getelementptr i8, ptr %.val.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !22  ; 2 uses
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %i.bz, %i.bs                     ; 2 uses
  %i.cb = icmp eq i8 %i.bw, %i.ab
  %i.cc = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.cb, i64 %i.cc, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.cd = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.cd, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !178

fastsearch.exit.i.i:                              ; preds = %2, %bb.m, %bb.j
  %.0.i.i.i = phi i64 [ %i.z, %bb.m ], [ %i.q, %bb.j ], [ %.15065.us.i.i.i.i, %2 ] ; 7 uses
  %i.ce = icmp slt i64 %.0.i.i.i, 0
  br i1 %i.ce, label %fastsearch.exit.thread.i.i, label %bb.ao

fastsearch.exit.thread.i.i:                       ; preds = %bb.s, %bb.o, %bb.l, %bb.k, %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.i, %bb.g, %bb.e
  %i.cf = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !179 ; 10 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %PyByteArray_FromStringAndSize.exit.i.i, label %bb.t

bb.t:                                             ; preds = %fastsearch.exit.thread.i.i
  %i.ch = getelementptr i8, ptr %i.cf, i64 48
  store i64 0, ptr %i.ch, align 8, !tbaa !14
  %i.ci = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 0) #17, !inline_history !179 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.cf, i64 56
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !21
  %i.ck = icmp eq ptr %i.ci, null
  br i1 %i.ck, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cl = load i32, ptr %i.cf, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.cl, -1
  br i1 %.not.i.i.i.i, label %bb.v, label %PyByteArray_FromStringAndSize.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.cf, align 8, !tbaa !22
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %PyByteArray_FromStringAndSize.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cf) #17, !inline_history !179
  br label %PyByteArray_FromStringAndSize.exit.i.i

bb.x:                                             ; preds = %bb.t
  %i.co = getelementptr i8, ptr %i.ci, i64 32     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 40
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !23
  %i.cq = getelementptr i8, ptr %i.cf, i64 32
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !24
  %i.cr = getelementptr i8, ptr %i.cf, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i.i

PyByteArray_FromStringAndSize.exit.i.i:           ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %fastsearch.exit.thread.i.i
  %.0.i37.i.i = phi ptr [ null, %bb.v ], [ null, %fastsearch.exit.thread.i.i ], [ %i.cf, %bb.x ], [ null, %bb.w ], [ null, %bb.u ]
  %i.cs = getelementptr i8, ptr %i.h, i64 32
  store ptr %.0.i37.i.i, ptr %i.cs, align 8, !tbaa !11
  %i.ct = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !179 ; 10 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %PyByteArray_FromStringAndSize.exit40.i.i, label %bb.y

bb.y:                                             ; preds = %PyByteArray_FromStringAndSize.exit.i.i
  %i.cv = getelementptr i8, ptr %i.ct, i64 48
  store i64 0, ptr %i.cv, align 8, !tbaa !14
  %i.cw = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 0) #17, !inline_history !179 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.ct, i64 56
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !21
  %i.cy = icmp eq ptr %i.cw, null
  br i1 %i.cy, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cz = load i32, ptr %i.ct, align 8, !tbaa !22 ; 2 uses
  %.not.i.i39.i.i = icmp sgt i32 %i.cz, -1
  br i1 %.not.i.i39.i.i, label %bb.aa, label %PyByteArray_FromStringAndSize.exit40.i.i

bb.aa:                                            ; preds = %bb.z
  %i.da = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.da, ptr %i.ct, align 8, !tbaa !22
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.ab, label %PyByteArray_FromStringAndSize.exit40.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ct) #17, !inline_history !179
  br label %PyByteArray_FromStringAndSize.exit40.i.i

bb.ac:                                            ; preds = %bb.y
  %i.dc = getelementptr i8, ptr %i.cw, i64 32     ; 2 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 40
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !23
  %i.de = getelementptr i8, ptr %i.ct, i64 32
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !24
  %i.df = getelementptr i8, ptr %i.ct, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %PyByteArray_FromStringAndSize.exit40.i.i

PyByteArray_FromStringAndSize.exit40.i.i:         ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %PyByteArray_FromStringAndSize.exit.i.i
  %.0.i38.i.i = phi ptr [ null, %bb.aa ], [ null, %PyByteArray_FromStringAndSize.exit.i.i ], [ %i.ct, %bb.ac ], [ null, %bb.ab ], [ null, %bb.z ]
  %i.dg = getelementptr i8, ptr %i.h, i64 40
  store ptr %.0.i38.i.i, ptr %i.dg, align 8, !tbaa !11
  %i.dh = icmp slt i64 %.val14.i, 0
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %PyByteArray_FromStringAndSize.exit40.i.i
  %i.di = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.di, ptr noundef nonnull @.str) #17, !inline_history !179
  br label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ae:                                            ; preds = %PyByteArray_FromStringAndSize.exit40.i.i
  %i.dj = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !179 ; 12 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %PyByteArray_FromStringAndSize.exit43.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr i8, ptr %i.dj, i64 48
  store i64 0, ptr %i.dl, align 8, !tbaa !14
  %i.dm = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val14.i) #17, !inline_history !179 ; 3 uses
  %i.dn = getelementptr i8, ptr %i.dj, i64 56
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !21
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !22 ; 2 uses
  %.not.i.i42.i.i = icmp sgt i32 %i.dp, -1
  br i1 %.not.i.i42.i.i, label %bb.ah, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.dj, align 8, !tbaa !22
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.ai, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dj) #17, !inline_history !179
  br label %PyByteArray_FromStringAndSize.exit43.i.i

bb.aj:                                            ; preds = %bb.af
  %i.ds = getelementptr i8, ptr %i.dm, i64 32     ; 3 uses
  %i.dt = getelementptr i8, ptr %i.dj, i64 40
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !23
  %i.du = getelementptr i8, ptr %i.dj, i64 32
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !24
  %i.dv = getelementptr i8, ptr %i.dj, i64 16
  store i64 %.val14.i, ptr %i.dv, align 8, !tbaa !25
  %i.dw = getelementptr i8, ptr %i.dj, i64 24
  store i64 %.val14.i, ptr %i.dw, align 8, !tbaa !26
  %i.dx = icmp ne ptr %.val12.i, null
  %i.dy = icmp ne i64 %.val14.i, 0
  %or.cond.i.i.i = and i1 %i.dx, %i.dy
  br i1 %or.cond.i.i.i, label %bb.ak, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull readonly align 1 %.val12.i, i64 %.val14.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit43.i.i

PyByteArray_FromStringAndSize.exit43.i.i:         ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %.0.i41.i.i = phi ptr [ null, %bb.ad ], [ null, %bb.ae ], [ %i.dj, %bb.aj ], [ %i.dj, %bb.ak ], [ null, %bb.ag ], [ null, %bb.ah ], [ null, %bb.ai ]
  %i.dz = getelementptr i8, ptr %i.h, i64 48
  store ptr %.0.i41.i.i, ptr %i.dz, align 8, !tbaa !11
  %i.ea = tail call ptr @PyErr_Occurred() #17, !inline_history !174
  %.not33.i.i = icmp eq ptr %i.ea, null
  br i1 %.not33.i.i, label %stringlib_rpartition.exit.i, label %bb.al

bb.al:                                            ; preds = %PyByteArray_FromStringAndSize.exit43.i.i
  %i.eb = load i32, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %.not.i34.i.i = icmp sgt i32 %i.eb, -1
  br i1 %.not.i34.i.i, label %bb.am, label %stringlib_rpartition.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.h, align 8, !tbaa !22
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.an, label %stringlib_rpartition.exit.i

bb.an:                                            ; preds = %bb.am
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #17, !inline_history !174
  br label %stringlib_rpartition.exit.i

bb.ao:                                            ; preds = %fastsearch.exit.i.i
  %i.ee = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !179 ; 12 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %PyByteArray_FromStringAndSize.exit47.i.i, label %bb.ap

end_hunk_0
begin_hunk_1_@bytearray_rsplit:bb.a

bb.bt:                                            ; preds = %bb.bs
  %i.fu = load i32, ptr %i.fo, align 8, !tbaa !22 ; 2 uses
  %.not.i.i70.i.i.i = icmp sgt i32 %i.fu, -1
  br i1 %.not.i.i70.i.i.i, label %bb.bu, label %Py_DECREF.exit62.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.fo, align 8, !tbaa !22
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bv, label %Py_DECREF.exit62.i.i.i

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !190
  br label %Py_DECREF.exit62.i.i.i

bb.bw:                                            ; preds = %bb.bs
  %i.fx = getelementptr i8, ptr %i.fr, i64 32     ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 40
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !23
  %i.fz = getelementptr i8, ptr %i.fo, i64 32
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !24
  %i.ga = getelementptr i8, ptr %i.fo, i64 16
  store i64 %i.fl, ptr %i.ga, align 8, !tbaa !25
  %i.gb = getelementptr i8, ptr %i.fo, i64 24
  store i64 %i.fl, ptr %i.gb, align 8, !tbaa !26
  %i.gc = icmp ne ptr %.val.i, null
  %i.gd = icmp ne i64 %i.fl, 0
  %or.cond.i68.i.i.i = and i1 %i.gc, %i.gd
  br i1 %or.cond.i68.i.i.i, label %bb.bx, label %PyByteArray_FromStringAndSize.exit71.i.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr nonnull readonly align 1 %.val.i, i64 %i.fl, i1 false)
  br label %PyByteArray_FromStringAndSize.exit71.i.i.i

PyByteArray_FromStringAndSize.exit71.i.i.i:       ; preds = %bb.bx, %bb.bw
  %i.ge = icmp slt i64 %.044.lcssa.i4.i.i, 12
  br i1 %i.ge, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %PyByteArray_FromStringAndSize.exit71.i.i.i
  %i.gf = getelementptr i8, ptr %i.dw, i64 24
  %.val.i.i.i = load ptr, ptr %i.gf, align 8, !tbaa !71
  %i.gg = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.044.lcssa.i4.i.i
  store ptr %i.fo, ptr %i.gg, align 8, !tbaa !11
  br label %Py_DECREF.exit56.i.i.i

bb.bz:                                            ; preds = %PyByteArray_FromStringAndSize.exit71.i.i.i
  %i.gh = call i32 @PyList_Append(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.fo) #17, !inline_history !188
  %.not.i73.i19.i = icmp eq i32 %i.gh, 0
  %i.gi = load i32, ptr %i.fo, align 8, !tbaa !22 ; 3 uses
  %.not.i55.i.i.i = icmp sgt i32 %i.gi, -1        ; 2 uses
  br i1 %.not.i73.i19.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not.i55.i.i.i, label %bb.cb, label %Py_DECREF.exit62.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.fo, align 8, !tbaa !22
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.cc, label %Py_DECREF.exit62.i.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !188
  br label %Py_DECREF.exit62.i.i.i

bb.cd:                                            ; preds = %bb.bz
  br i1 %.not.i55.i.i.i, label %bb.ce, label %Py_DECREF.exit56.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.gl = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gl, ptr %i.fo, align 8, !tbaa !22
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.cf, label %Py_DECREF.exit56.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !188
  br label %Py_DECREF.exit56.i.i.i

Py_DECREF.exit56.i.i.i:                           ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.by
  %i.gn = add i64 %.044.lcssa.i4.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %Py_DECREF.exit56.i.i.i, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.gn, %Py_DECREF.exit56.i.i.i ], [ %.044.lcssa.i.i.i, %.critedge.i.i.i ]
  %i.go = getelementptr i8, ptr %i.dw, i64 16
  store i64 %.2.i.i.i, ptr %i.go, align 8, !tbaa !25
  %i.gp = call i32 @PyList_Reverse(ptr noundef nonnull %i.dw) #17, !inline_history !188
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %Py_DECREF.exit62.i.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit62.i.i.i:                           ; preds = %bb.ba, %bb.cg, %bb.cc, %bb.cb, %bb.ca, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bl, %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.bc
  %i.gr = load i32, ptr %i.dw, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i18.i = icmp sgt i32 %i.gr, -1
  br i1 %.not.i.i.i18.i, label %bb.ch, label %stringlib_rsplit.exit.i

bb.ch:                                            ; preds = %Py_DECREF.exit62.i.i.i
  %i.gs = add nsw i32 %i.gr, -1                   ; 2 uses
  store i32 %i.gs, ptr %i.dw, align 8, !tbaa !22
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ci, label %stringlib_rsplit.exit.i

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %i.dw) #17, !inline_history !188
  br label %stringlib_rsplit.exit.i

bb.cj:                                            ; preds = %bb.av
  %i.gu = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.gv = add nuw nsw i64 %i.gu, 1
  %i.gw = call ptr @PyList_New(i64 noundef %i.gv) #17, !inline_history !187 ; 11 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %stringlib_rsplit.exit.i, label %.preheader.i21.i

.preheader.i21.i:                                 ; preds = %bb.cj
  %i.gy = icmp eq i64 %.1, 0
  %i.gz = icmp slt i64 %.val16.i, %i.dr
  %or.cond56.i.i = or i1 %i.gy, %i.gz
  br i1 %or.cond56.i.i, label %fastsearch.exit.thread.i.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.preheader.i21.i
  %i.ha = icmp slt i64 %i.dr, 2
  %i.hb = add i64 %i.dr, -1                       ; 6 uses
  %i.hc = getelementptr i8, ptr %i.gw, i64 24
  br i1 %i.ha, label %fastsearch.exit.thread.i.i, label %.lr.ph.i22.split.i.preheader

.lr.ph.i22.split.i.preheader:                     ; preds = %.lr.ph.i22.i
  %xtraiter = and i64 %i.hb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hd = getelementptr i8, ptr %i.dp, i64 %i.hb
  %i.he = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.hf = icmp eq i64 %i.dr, 2
  br label %.lr.ph.i22.split.i

.lr.ph.i22.split.i:                               ; preds = %.lr.ph.i22.split.i.preheader, %Py_DECREF.exit65.i.i
  %.in.i.i = phi i64 [ %i.hq, %Py_DECREF.exit65.i.i ], [ %spec.store.select.i, %.lr.ph.i22.split.i.preheader ] ; 2 uses
  %.05158.i.i = phi i64 [ %i.kl, %Py_DECREF.exit65.i.i ], [ 0, %.lr.ph.i22.split.i.preheader ] ; 7 uses
  %.05357.i.i = phi i64 [ %.15065.us.i.i.i.i, %Py_DECREF.exit65.i.i ], [ %.val16.i, %.lr.ph.i22.split.i.preheader ] ; 7 uses
  %i.hg = load i8, ptr %i.dp, align 1, !tbaa !22  ; 5 uses
  %i.hh = and i8 %i.hg, 63
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = shl nuw i64 1, %i.hi                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i76.i.i.i.prol.loopexit, label %.lr.ph.i76.i.i.i.prol

.lr.ph.i76.i.i.i.prol:                            ; preds = %.lr.ph.i22.split.i
  %i.hk = load i8, ptr %i.hd, align 1, !tbaa !22  ; 2 uses
  %i.hl = and i8 %i.hk, 63
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = or i64 %i.hn, %i.hj                     ; 2 uses
  %i.hp = icmp eq i8 %i.hk, %i.hg
  %spec.select.i77.i.i.i.prol = select i1 %i.hp, i64 %i.he, i64 %i.hb ; 2 uses
  br label %.lr.ph.i76.i.i.i.prol.loopexit

.lr.ph.i76.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i76.i.i.i.prol, %.lr.ph.i22.split.i
  %.04660.i.i.i.i.unr = phi i64 [ %i.hb, %.lr.ph.i22.split.i ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.hj, %.lr.ph.i22.split.i ], [ %i.ho, %.lr.ph.i76.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.hb, %.lr.ph.i22.split.i ], [ %i.he, %.lr.ph.i76.i.i.i.prol ]
  %.lcssa386.unr = phi i64 [ poison, %.lr.ph.i22.split.i ], [ %i.ho, %.lr.ph.i76.i.i.i.prol ]
  %spec.select.i77.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i22.split.i ], [ %spec.select.i77.i.i.i.prol, %.lr.ph.i76.i.i.i.prol ]
  br i1 %i.hf, label %.preheader56.i.i.i.i, label %.lr.ph.i76.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i76.i.i.i, %.lr.ph.i76.i.i.i.prol.loopexit
  %.lcssa386 = phi i64 [ %.lcssa386.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %i.jd, %.lr.ph.i76.i.i.i ] ; 2 uses
  %spec.select.i77.i.i.i.lcssa = phi i64 [ %spec.select.i77.i.i.i.lcssa.unr, %.lr.ph.i76.i.i.i.prol.loopexit ], [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ]
  %i.hq = add nsw i64 %.in.i.i, -1
  %i.hr = sub i64 %.05357.i.i, %i.dr              ; 2 uses
  %i.hs = icmp sgt i64 %i.hr, -1
  br i1 %i.hs, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %.preheader56.i.i.i.i, %bb.co
  %.15065.us.i.i.i.i = phi i64 [ %i.io, %bb.co ], [ %i.hr, %.preheader56.i.i.i.i ] ; 9 uses
  %i.ht = getelementptr i8, ptr %.val.i, i64 %.15065.us.i.i.i.i ; 4 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !22
  %i.hv = icmp eq i8 %i.hu, %i.hg
  br i1 %i.hv, label %.preheader.us.i80.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i79.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not.us.i79.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hw = getelementptr i8, ptr %i.ht, i64 -1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !22
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %.lcssa386
  %.not51.us.i.i.i.i = icmp eq i64 %i.ib, 0
  %i.ic = select i1 %.not51.us.i.i.i.i, i64 %i.dr, i64 0
  br label %bb.co

.preheader.us.i80.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %5
  %.04862.us.i.i.i.i = phi i64 [ %6, %5 ], [ %i.hb, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.id = getelementptr i8, ptr %i.ht, i64 %.04862.us.i.i.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !22
  %i.if = getelementptr i8, ptr %i.dp, i64 %.04862.us.i.i.i.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !22
  %.not52.us.i.i.i.i = icmp eq i8 %i.ie, %i.ig
  br i1 %.not52.us.i.i.i.i, label %5, label %.thread.us.i.i.i.i

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i80.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.15065.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.thread.us.i.i.i.i
  %i.ih = getelementptr i8, ptr %i.ht, i64 -1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !22
  %i.ij = and i8 %i.ii, 63
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = shl nuw i64 1, %i.ik
  %i.im = and i64 %i.il, %.lcssa386
  %.not54.us.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not54.us.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.thread.us.i.i.i.i
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.lcssa, %bb.cn ], [ %i.ic, %bb.cl ], [ %i.dr, %bb.cm ]
  %i.in = sub nsw i64 %.15065.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.io = add nsw i64 %i.in, -1
  %i.ip = icmp sgt i64 %i.in, 0
  br i1 %i.ip, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !176

5:                                                ; preds = %.preheader.us.i80.i.i.i
  %6 = add nsw i64 %.04862.us.i.i.i.i, -1
  %7 = icmp sgt i64 %.04862.us.i.i.i.i, 1
  br i1 %7, label %.preheader.us.i80.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !177

.lr.ph.i76.i.i.i:                                 ; preds = %.lr.ph.i76.i.i.i.prol.loopexit, %.lr.ph.i76.i.i.i
  %.04660.i.i.i.i = phi i64 [ %spec.select.i77.i.i.i.1, %.lr.ph.i76.i.i.i ], [ %.04660.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.jd, %.lr.ph.i76.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ]
  %.04958.i.i.i.i = phi i64 [ %i.jf, %.lr.ph.i76.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i76.i.i.i.prol.loopexit ] ; 4 uses
  %i.iq = getelementptr i8, ptr %i.dp, i64 %.04958.i.i.i.i
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !22  ; 2 uses
  %i.is = and i8 %i.ir, 63
  %i.it = zext nneg i8 %i.is to i64
  %i.iu = shl nuw i64 1, %i.it
  %i.iv = or i64 %i.iu, %.04759.i.i.i.i
  %i.iw = icmp eq i8 %i.ir, %i.hg
  %i.ix = add nsw i64 %.04958.i.i.i.i, -1         ; 2 uses
  %spec.select.i77.i.i.i = select i1 %i.iw, i64 %i.ix, i64 %.04660.i.i.i.i
  %i.iy = getelementptr i8, ptr %i.dp, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !22  ; 2 uses
  %i.ja = and i8 %i.iz, 63
  %i.jb = zext nneg i8 %i.ja to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = or i64 %i.jc, %i.iv                     ; 2 uses
  %i.je = icmp eq i8 %i.iz, %i.hg
  %i.jf = add nsw i64 %.04958.i.i.i.i, -2         ; 2 uses
  %spec.select.i77.i.i.i.1 = select i1 %i.je, i64 %i.jf, i64 %spec.select.i77.i.i.i ; 2 uses
  %i.jg = icmp sgt i64 %.04958.i.i.i.i, 2
  br i1 %i.jg, label %.lr.ph.i76.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !178

fastsearch.exit.i.i:                              ; preds = %5
  %i.jh = icmp slt i64 %.15065.us.i.i.i.i, 0
  br i1 %i.jh, label %fastsearch.exit.thread.i.i, label %bb.cp

bb.cp:                                            ; preds = %fastsearch.exit.i.i
  %i.ji = add nuw i64 %.15065.us.i.i.i.i, %i.dr   ; 3 uses
  %i.jj = getelementptr i8, ptr %.val.i, i64 %i.ji ; 2 uses
  %i.jk = sub i64 %.05357.i.i, %i.ji              ; 5 uses
  %i.jl = icmp slt i64 %i.jk, 0
  br i1 %i.jl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.jm = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.jm, ptr noundef nonnull @.str) #17, !inline_history !192
  br label %Py_DECREF.exit67.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.jn = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !192 ; 17 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %Py_DECREF.exit67.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jp = getelementptr i8, ptr %i.jn, i64 48
  store i64 0, ptr %i.jp, align 8, !tbaa !14
  %i.jq = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.jk) #17, !inline_history !192 ; 3 uses
  %i.jr = getelementptr i8, ptr %i.jn, i64 56
  store ptr %i.jq, ptr %i.jr, align 8, !tbaa !21
  %i.js = icmp eq ptr %i.jq, null
  br i1 %i.js, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.jt = load i32, ptr %i.jn, align 8, !tbaa !22 ; 2 uses
  %.not.i.i76.i.i = icmp sgt i32 %i.jt, -1
  br i1 %.not.i.i76.i.i, label %bb.cu, label %Py_DECREF.exit67.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.ju = add nsw i32 %i.jt, -1                   ; 2 uses
  store i32 %i.ju, ptr %i.jn, align 8, !tbaa !22
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.cv, label %Py_DECREF.exit67.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @_Py_Dealloc(ptr noundef nonnull %i.jn) #17, !inline_history !192
  br label %Py_DECREF.exit67.i.i

bb.cw:                                            ; preds = %bb.cs
  %i.jw = getelementptr i8, ptr %i.jq, i64 32     ; 3 uses
  %i.jx = getelementptr i8, ptr %i.jn, i64 40
  store ptr %i.jw, ptr %i.jx, align 8, !tbaa !23
  %i.jy = getelementptr i8, ptr %i.jn, i64 32
  store ptr %i.jw, ptr %i.jy, align 8, !tbaa !24
  %i.jz = getelementptr i8, ptr %i.jn, i64 16
  store i64 %i.jk, ptr %i.jz, align 8, !tbaa !25
  %i.ka = getelementptr i8, ptr %i.jn, i64 24
  store i64 %i.jk, ptr %i.ka, align 8, !tbaa !26
  %i.kb = icmp ne ptr %i.jj, null
  %i.kc = icmp ne i64 %.05357.i.i, %i.ji
  %or.cond.i.i25.i = and i1 %i.kc, %i.kb
  br i1 %or.cond.i.i25.i, label %bb.cx, label %PyByteArray_FromStringAndSize.exit.i26.i

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr nonnull readonly align 1 %i.jj, i64 %i.jk, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i26.i

PyByteArray_FromStringAndSize.exit.i26.i:         ; preds = %bb.cx, %bb.cw
  %i.kd = icmp samesign ult i64 %.05158.i.i, 12
  br i1 %i.kd, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i26.i
  %.val72.i.i = load ptr, ptr %i.hc, align 8, !tbaa !71
  %i.ke = getelementptr [8 x i8], ptr %.val72.i.i, i64 %.05158.i.i
  store ptr %i.jn, ptr %i.ke, align 8, !tbaa !11
  br label %Py_DECREF.exit65.i.i

bb.cz:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i26.i
  %i.kf = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.jn) #17, !inline_history !187
  %.not.i27.i = icmp eq i32 %i.kf, 0
  %i.kg = load i32, ptr %i.jn, align 8, !tbaa !22 ; 3 uses
  %.not.i64.i.i = icmp sgt i32 %i.kg, -1          ; 2 uses
  br i1 %.not.i27.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i64.i.i, label %bb.db, label %Py_DECREF.exit67.i.i

bb.db:                                            ; preds = %bb.da
  %i.kh = add nsw i32 %i.kg, -1                   ; 2 uses
  store i32 %i.kh, ptr %i.jn, align 8, !tbaa !22
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.dc, label %Py_DECREF.exit67.i.i

bb.dc:                                            ; preds = %bb.db
  call void @_Py_Dealloc(ptr noundef nonnull %i.jn) #17, !inline_history !187
  br label %Py_DECREF.exit67.i.i

bb.dd:                                            ; preds = %bb.cz
  br i1 %.not.i64.i.i, label %bb.de, label %Py_DECREF.exit65.i.i

bb.de:                                            ; preds = %bb.dd
  %i.kj = add nsw i32 %i.kg, -1                   ; 2 uses
  store i32 %i.kj, ptr %i.jn, align 8, !tbaa !22
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.df, label %Py_DECREF.exit65.i.i

bb.df:                                            ; preds = %bb.de
  call void @_Py_Dealloc(ptr noundef nonnull %i.jn) #17, !inline_history !187
  br label %Py_DECREF.exit65.i.i

Py_DECREF.exit65.i.i:                             ; preds = %bb.df, %bb.de, %bb.dd, %bb.cy
  %i.kl = add nuw nsw i64 %.05158.i.i, 1          ; 2 uses
  %i.km = icmp slt i64 %.in.i.i, 2
  %i.kn = icmp slt i64 %.15065.us.i.i.i.i, %i.dr
  %or.cond.i.i = or i1 %i.km, %i.kn
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.i22.split.i, !llvm.loop !193

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.i.i, %.preheader56.i.i.i.i, %bb.co, %bb.ck, %.lr.ph.i22.i, %.preheader.i21.i
  %.05330.i.i = phi i64 [ %.val16.i, %.preheader.i21.i ], [ %.05357.i.i, %bb.co ], [ %.val16.i, %.lr.ph.i22.i ], [ %.05357.i.i, %bb.ck ], [ %.05357.i.i, %.preheader56.i.i.i.i ], [ %.05357.i.i, %fastsearch.exit.i.i ] ; 2 uses
  %.05121.i.i = phi i64 [ 0, %.preheader.i21.i ], [ %.05158.i.i, %bb.co ], [ 0, %.lr.ph.i22.i ], [ %.05158.i.i, %bb.ck ], [ %.05158.i.i, %.preheader56.i.i.i.i ], [ %.05158.i.i, %fastsearch.exit.i.i ]
  %i.ko = icmp slt i64 %.05330.i.i, 0
  br i1 %i.ko, label %bb.dg, label %fastsearch.exit.thread.thread.i.i

bb.dg:                                            ; preds = %fastsearch.exit.thread.i.i
  %i.kp = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.kp, ptr noundef nonnull @.str) #17, !inline_history !192
  br label %Py_DECREF.exit67.i.i

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit65.i.i, %fastsearch.exit.thread.i.i
  %.05329.i.i = phi i64 [ %.05330.i.i, %fastsearch.exit.thread.i.i ], [ %.15065.us.i.i.i.i, %Py_DECREF.exit65.i.i ] ; 5 uses
  %.05120.i.i = phi i64 [ %.05121.i.i, %fastsearch.exit.thread.i.i ], [ %i.kl, %Py_DECREF.exit65.i.i ] ; 3 uses
  %i.kq = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !192 ; 17 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %Py_DECREF.exit67.i.i, label %bb.dh

bb.dh:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.ks = getelementptr i8, ptr %i.kq, i64 48
  store i64 0, ptr %i.ks, align 8, !tbaa !14
  %i.kt = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.05329.i.i) #17, !inline_history !192 ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kq, i64 56
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !21
  %i.kv = icmp eq ptr %i.kt, null
  br i1 %i.kv, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.kw = load i32, ptr %i.kq, align 8, !tbaa !22 ; 2 uses
  %.not.i.i79.i.i = icmp sgt i32 %i.kw, -1
  br i1 %.not.i.i79.i.i, label %bb.dj, label %Py_DECREF.exit67.i.i

bb.dj:                                            ; preds = %bb.di
  %i.kx = add nsw i32 %i.kw, -1                   ; 2 uses
  store i32 %i.kx, ptr %i.kq, align 8, !tbaa !22
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %bb.dk, label %Py_DECREF.exit67.i.i

bb.dk:                                            ; preds = %bb.dj
  call void @_Py_Dealloc(ptr noundef nonnull %i.kq) #17, !inline_history !192
  br label %Py_DECREF.exit67.i.i

bb.dl:                                            ; preds = %bb.dh
  %i.kz = getelementptr i8, ptr %i.kt, i64 32     ; 3 uses
  %i.la = getelementptr i8, ptr %i.kq, i64 40
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !23
  %i.lb = getelementptr i8, ptr %i.kq, i64 32
  store ptr %i.kz, ptr %i.lb, align 8, !tbaa !24
  %i.lc = getelementptr i8, ptr %i.kq, i64 16
  store i64 %.05329.i.i, ptr %i.lc, align 8, !tbaa !25
  %i.ld = getelementptr i8, ptr %i.kq, i64 24
  store i64 %.05329.i.i, ptr %i.ld, align 8, !tbaa !26
  %i.le = icmp ne ptr %.val.i, null
  %i.lf = icmp ne i64 %.05329.i.i, 0
  %or.cond.i77.i.i = and i1 %i.le, %i.lf
  br i1 %or.cond.i77.i.i, label %bb.dm, label %PyByteArray_FromStringAndSize.exit80.i.i

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr nonnull readonly align 1 %.val.i, i64 %.05329.i.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit80.i.i
end_hunk_1
begin_hunk_2_@fastsearch:bb.a

bb.m:                                             ; preds = %bb.l
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %0 to i64
  %i.z = sub i64 %i.x, %i.y
  br label %stringlib_find_char.exit

bb.n:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 %1        ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, %0
  br i1 %i.ab, label %.lr.ph, label %stringlib_find_char.exit

bb.o:                                             ; preds = %.lr.ph
  %i.ac = icmp ugt ptr %i.ad, %0
  br i1 %i.ac, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !175

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.0.i67144 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i67144, i64 -1 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  %i.af = icmp eq i8 %i.ae, %i.t
  br i1 %i.af, label %bb.p, label %bb.o, !llvm.loop !175

bb.p:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %stringlib_find_char.exit

bb.q:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %4, 9223372036854775807
  %i.ak = load i8, ptr %2, align 1, !tbaa !22     ; 3 uses
  br i1 %i.aj, label %.lr.ph.i69.preheader, label %.lr.ph.i71

.lr.ph.i69.preheader:                             ; preds = %bb.q
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i69.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi145 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !22
  %wide.load146 = load <2 x i8>, ptr %i.am, align 1, !tbaa !22
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load146, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi145, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader147

.lr.ph.i69.preheader147:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader147, %.lr.ph.i69
  %.09.i = phi i64 [ %i.az, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader147 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader147 ]
  %i.av = getelementptr i8, ptr %0, i64 %.09.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = icmp eq i8 %i.aw, %i.ak
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.078.i, %i.ay         ; 2 uses
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i70 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i70, label %stringlib_find_char.exit, label %.lr.ph.i69, !llvm.loop !235

.lr.ph.i71:                                       ; preds = %bb.q, %bb.s
  %.016.i72 = phi i64 [ %.1.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.01115.i = phi i64 [ %i.bf, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %.01115.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %i.bc = icmp eq i8 %i.bb, %i.ak
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i71
  %i.bd = add i64 %.016.i72, 1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %stringlib_find_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i71
  %.1.i = phi i64 [ %i.bd, %bb.r ], [ %.016.i72, %.lr.ph.i71 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i73, label %stringlib_find_char.exit, label %.lr.ph.i71, !llvm.loop !236

bb.t:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.al, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = add nsw i64 %3, -1                      ; 12 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22  ; 5 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bn = icmp eq i64 %3, 2
  br i1 %i.bn, label %.lr.ph.i74.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i74

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i74
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i74.epil.preheader

.lr.ph.i74.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.w
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dx, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dt, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod164 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.bo = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !22  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.06999.i.epil.init
  %i.bu = icmp eq i8 %i.bp, %i.bm
  %i.bv = xor i64 %.068100.i.epil.init, -1
  %i.bw = add nsw i64 %i.bk, %i.bv
  %.179.i.epil = select i1 %i.bu, i64 %i.bw, i64 %.07898.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i74.epil.preheader
  %.lcssa161 = phi i64 [ %i.dt, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bx = sub i64 %1, %3                          ; 4 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa161, %i.cb                ; 2 uses
  %.not108.i = icmp slt i64 %i.bx, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.af
  %.066110.us.i = phi i64 [ %i.dc, %bb.af ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.af ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cc
  %.not89.us.i = icmp eq i64 %i.cm, 0
  %i.cn = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cn, %.066110.us.i
  br label %bb.af

bb.z:                                             ; preds = %.preheader.us.i, %6
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %7, %6 ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.dd, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %6, label %._crit_edge104.us.i

._crit_edge104.us.i:                              ; preds = %bb.z
  %i.cs = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cs, %i.bx
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge104.us.i
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !22
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.cc
  %.not92.us.i = icmp eq i64 %i.cy, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge104.us.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i.loopexit:              ; preds = %6
  br i1 %i.b, label %bb.ad, label %stringlib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cz = add i64 %.074109.us.i, 1                ; 2 uses
  %i.da = icmp eq i64 %i.cz, %4
  br i1 %i.da, label %stringlib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.db = add i64 %.066110.us.i, %i.bk
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.y, %bb.x
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.y ], [ %.074109.us.i, %bb.ac ], [ %i.cz, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ac ], [ %i.db, %bb.ae ]
  %i.dc = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dc, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !237

6:                                                ; preds = %bb.z
  %7 = add nuw nsw i64 %.0102.us.i, 1             ; 2 uses
  %exitcond179.not.i = icmp eq i64 %7, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.z, !llvm.loop !238

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dd = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dx, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.dt, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bk, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.de = getelementptr i8, ptr %2, i64 %.068100.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22  ; 2 uses
  %i.dg = and i8 %i.df, 63
  %i.dh = zext nneg i8 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = or i64 %i.di, %.06999.i
  %i.dk = icmp eq i8 %i.df, %i.bm
  %i.dl = xor i64 %.068100.i, -1
  %i.dm = add nsw i64 %i.bk, %i.dl
  %.179.i = select i1 %i.dk, i64 %i.dm, i64 %.07898.i
  %i.dn = getelementptr i8, ptr %2, i64 %.068100.i
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !22  ; 2 uses
  %i.dq = and i8 %i.dp, 63
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dj                     ; 3 uses
  %i.du = icmp eq i8 %i.dp, %i.bm
  %i.dv = xor i64 %.068100.i, -2
  %i.dw = add nsw i64 %i.bk, %i.dv
  %.179.i.1 = select i1 %i.du, i64 %i.dw, i64 %.179.i ; 3 uses
  %i.dx = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !239

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.af ]
  %i.dy = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ag:                                            ; preds = %bb.v
  %i.dz = lshr i64 %3, 2
  %i.ea = mul nuw nsw i64 %i.dz, 3
  %i.eb = lshr i64 %1, 2
  %i.ec = icmp samesign ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ef = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ag
  %i.eg = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.t
  %i.eh = add nsw i64 %3, -1                      ; 6 uses
  %i.ei = load i8, ptr %2, align 1, !tbaa !22     ; 5 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek                    ; 2 uses
  %xtraiter166 = and i64 %i.eh, 1
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.al
  %i.em = getelementptr i8, ptr %2, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !tbaa !22  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = or i64 %i.eq, %i.el                     ; 2 uses
  %i.es = icmp eq i8 %i.en, %i.ei
  %i.et = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.es, i64 %i.et, i64 %i.eh ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.al
  %.04660.i.unr = phi i64 [ %i.eh, %bb.al ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.el, %bb.al ], [ %i.er, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.eh, %bb.al ], [ %i.et, %.lr.ph.i76.prol ]
  %.lcssa158.unr = phi i64 [ poison, %bb.al ], [ %i.er, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.al ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.eu = icmp eq i64 %3, 2
  br i1 %i.eu, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa158 = phi i64 [ %.lcssa158.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gh, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ev = sub i64 %1, %3                          ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.aq
  %.15065.us.i = phi i64 [ %i.fs, %bb.aq ], [ %i.ev, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = icmp eq i8 %i.ey, %i.ei
  br i1 %i.ez, label %.preheader.us.i80, label %bb.am

bb.am:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !22
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa158
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.aq

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %8
  %.04862.us.i = phi i64 [ %9, %8 ], [ %i.eh, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04862.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !22
  %i.fj = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %8, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread.us.i
  %i.fl = getelementptr i8, ptr %i.ex, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !22
  %i.fn = and i8 %i.fm, 63
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = and i64 %i.fp, %.lcssa158
  %.not54.us.i = icmp eq i64 %i.fq, 0
  br i1 %.not54.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.us.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ap ], [ %i.fg, %bb.an ], [ %3, %bb.ao ]
  %i.fr = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1
  %i.ft = icmp sgt i64 %i.fr, 0
  br i1 %i.ft, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !176

8:                                                ; preds = %.preheader.us.i80
  %9 = add nsw i64 %.04862.us.i, -1
  %10 = icmp sgt i64 %.04862.us.i, 1
  br i1 %10, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !177

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gh, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fu = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !22  ; 2 uses
  %i.fw = and i8 %i.fv, 63
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = shl nuw i64 1, %i.fx
  %i.fz = or i64 %i.fy, %.04759.i
  %i.ga = icmp eq i8 %i.fv, %i.ei
  %i.gb = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.ga, i64 %i.gb, i64 %.04660.i
  %i.gc = getelementptr i8, ptr %2, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !22  ; 2 uses
  %i.ge = and i8 %i.gd, 63
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = shl nuw i64 1, %i.gf
  %i.gh = or i64 %i.gg, %i.fz                     ; 2 uses
  %i.gi = icmp eq i8 %i.gd, %i.ei
  %i.gj = add nsw i64 %.04958.i, -2               ; 2 uses
  %spec.select.i77.1 = select i1 %i.gi, i64 %i.gj, i64 %spec.select.i77 ; 2 uses
  %i.gk = icmp sgt i64 %.04958.i, 2
  br i1 %i.gk, label %.lr.ph.i76, label %.preheader56.i, !llvm.loop !178

stringlib_find_char.exit:                         ; preds = %bb.ad, %._crit_edge104.us.thread.i.loopexit, %bb.aq, %bb.am, %8, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i69, %bb.n, %middle.block, %.preheader56.i, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.ak, %bb.aj, %bb.ai
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.15065.us.i, %8 ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i69 ], [ %i.ee, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ -1, %bb.o ], [ -1, %bb.j ], [ %i.dy, %.loopexit.i ], [ %i.au, %middle.block ], [ -1, %bb.aq ], [ %.1.i, %bb.s ], [ -1, %bb.am ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call fastcc void @stringlib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0193037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0193037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.1.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i64 %.1.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #10 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !22 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !22 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bp, %.lr.ph ]
  %.1108.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1108, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.k
  %.092148.us = phi i64 [ %i.bi, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.0100147.us = phi i64 [ %.2102.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %.0104146.us = phi i64 [ %.2106.us, %bb.k ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !22
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.k

bb.c:                                             ; preds = %.preheader.us, %8
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %9, %8 ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bj, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %8, label %._crit_edge141.us

._crit_edge141.us:                                ; preds = %bb.c
  %i.at = icmp eq i64 %.0139.us, %i.b
  br i1 %i.at, label %._crit_edge141.us.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge141.us
  %i.au = add i64 %.0104146.us, 1
  %i.av = add i64 %i.au, %.0139.us                ; 2 uses
  %i.aw = icmp sgt i64 %i.av, %i.ae
  %i.ax = sub i64 %i.a, %.092148.us
  %i.ay = icmp sgt i64 %i.ax, 2000
  %or.cond.us = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr i8, ptr %i.af, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ad
  %.not122.us = icmp eq i64 %i.be, 0
  br i1 %.not122.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0107.pn.us = phi i64 [ %.1108.lcssa, %bb.g ], [ %3, %bb.f ]
  %.193.us = add i64 %.0107.pn.us, %.092148.us
  br label %bb.k

._crit_edge141.us.thread:                         ; preds = %8, %._crit_edge141.us
  br i1 %.not124, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %._crit_edge141.us.thread
  %i.bf = add i64 %.0100147.us, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %4
  br i1 %i.bg, label %.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i64 %.092148.us, %i.b
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.b, %bb.a
  %.2106.us = phi i64 [ %.0104146.us, %bb.a ], [ %.0104146.us, %bb.b ], [ %i.av, %bb.h ], [ %.0104146.us, %bb.j ]
  %.2102.us = phi i64 [ %.0100147.us, %bb.a ], [ %.0100147.us, %bb.b ], [ %.0100147.us, %bb.h ], [ %i.bf, %bb.j ] ; 2 uses
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.h ], [ %i.bh, %bb.j ]
  %i.bi = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bi, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !241

8:                                                ; preds = %bb.c
  %9 = add nuw nsw i64 %.0139.us, 1               ; 2 uses
  %exitcond225.not = icmp eq i64 %9, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !242

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bj = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bt, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bp, %.lr.ph ], [ %i.x, %middle.block ]
  %.0107135 = phi i64 [ %.1108, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bk = getelementptr i8, ptr %2, i64 %.094137
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !22  ; 2 uses
  %i.bm = and i8 %i.bl, 63
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = or i64 %i.bo, %.095136                  ; 2 uses
  %i.bq = icmp eq i8 %i.bl, %i.d
  %i.br = xor i64 %.094137, -1
  %i.bs = add nsw i64 %i.b, %i.br
  %.1108 = select i1 %i.bq, i64 %i.bs, i64 %.0107135 ; 2 uses
  %i.bt = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !243

.split.us:                                        ; preds = %bb.d
  %i.bu = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bv = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bw = call fastcc i64 @stringlib__two_way(ptr noundef readonly %i.bu, i64 noundef %i.bv, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = add i64 %i.bw, %.092148.us
  %i.bz = select i1 %i.bx, i64 -1, i64 %i.by
  br label %.thread.thread

bb.m:                                             ; preds = %.split.us
  %i.ca = sub i64 %4, %.0100147.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call fastcc void @stringlib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cb = call fastcc i64 @stringlib__two_way(ptr noundef %i.bu, i64 noundef %i.bv, ptr noundef %6) ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %stringlib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.cd = icmp eq i64 %i.ca, 1
  br i1 %i.cd, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.ce = add i64 %i.cg, 1                        ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.ca
  br i1 %i.cf, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cg = phi i64 [ %i.ce, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01930.i249 = phi i64 [ %i.cj, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = phi i64 [ %i.cm, %.lr.ph.i ], [ %i.cb, %.lr.ph.i.preheader ]
  %i.ci = add i64 %i.ch, %3
  %i.cj = add i64 %i.ci, %.01930.i249             ; 3 uses
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = sub i64 %i.bv, %i.cj
  %i.cm = call fastcc i64 @stringlib__two_way(ptr noundef %i.ck, i64 noundef %i.cl, ptr noundef %6) ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  br i1 %i.cn, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.m
  %.1.ph.i = phi i64 [ 0, %bb.m ], [ %i.ca, %.lr.ph.i.preheader ], [ %i.ca, %.lr.ph.i ], [ %i.cg, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.co = add i64 %.1.ph.i, %.0100147.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.k, %._crit_edge
  %.3103 = phi i64 [ 0, %._crit_edge ], [ %.2102.us, %bb.k ]
  %i.cp = icmp eq i32 %5, 0
  %i.cq = select i1 %i.cp, i64 %.3103, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.i, %bb.l, %stringlib__two_way_count.exit, %.loopexit
  %i.cr = phi i64 [ %i.cq, %.loopexit ], [ %i.bz, %bb.l ], [ %i.co, %stringlib__two_way_count.exit ], [ %4, %bb.i ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #11 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !244
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !246
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.042.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.03339.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.02941.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.03339.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.03140.us.i.i ; 2 uses
  %spec.select.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  %i.l = select i1 %.not37.us.i.i, i64 %.03140.us.i.i, i64 0
  %spec.select38.us.i.i = add i64 %i.l, %.02941.us.i.i
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03339.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.042.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.132.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.03140.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %.042.us.i.i, %bb.e ], [ %.02941.us.i.i, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 3 uses
  %i.p = add i64 %.130.us.i.i, %.134.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !247

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.042.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.03339.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03339.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.042.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.03339.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.03140.i.i    ; 2 uses
  %spec.select.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  %i.ad = select i1 %.not37.i.i, i64 %.03140.i.i, i64 0
  %spec.select38.i.i = add i64 %i.ad, %.02941.i.i
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.02941.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.132.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.03140.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.042.i.i, %bb.g ], [ %.02941.i.i, %bb.j ], [ %.042.i.i, %bb.i ] ; 3 uses
  %i.af = add i64 %.130.i.i, %.134.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !247

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.1.us.i.i, %.1.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.1.us.i.i, i64 %.1.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.132.us.i.i, i64 %.132.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !67
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !248
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !249
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l
end_hunk_2
begin_hunk_3_@stringlib__preprocess:bb.a
.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !22
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.05361 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub i64 %i.ar, %.05361
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.05361
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !22
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !22
  %i.bn = add nsw i64 %.05361, 1                  ; 2 uses
  %i.bo = icmp slt i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !253
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !248
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !250  ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !244    ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !251  ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !249
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr240
  %i.t = sub i64 %.fr240, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !22
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !22
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !254

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !255

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !22
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !22  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr240                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr240
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !22
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !22  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.j
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.j ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.h

3:                                                ; preds = %.lr.ph210.us.a
  %4 = add nuw nsw i64 %.0209.us.a, 1             ; 2 uses
  %exitcond281.not = icmp eq i64 %4, %.fr239
  br i1 %exitcond281.not, label %.thread170, label %.lr.ph210.us.a, !llvm.loop !256

.lr.ph210.us.a:                                   ; preds = %..preheader_crit_edge.us, %3
  %.0209.us.a = phi i64 [ %4, %3 ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0209.us.a
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !22
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0209.us.a
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22
  %.not151.us.a = icmp eq i8 %i.by, %i.ca
  br i1 %.not151.us.a, label %3, label %.thread167.us.a

.thread167.us.a:                                  ; preds = %.lr.ph210.us.a
  %5 = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph207.us, %6
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %7, %6 ] ; 5 uses
  %i.cb = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !22
  %i.cd = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %.not153.us = icmp eq i8 %i.cc, %i.ce
  br i1 %.not153.us, label %6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = icmp slt i64 %.0124205.us, %i.o
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.ch = sub i64 %.0124205.us, %.fr239
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %.7133.us = select i1 %i.cf, ptr %i.cg, ptr %i.cj
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread167.us.a
  %.9.us = phi ptr [ %.7133.us, %bb.i ], [ %5, %.thread167.us.a ] ; 2 uses
  %i.ck = icmp ult ptr %.9.us, %i.j
  br i1 %i.ck, label %.preheader177.us.backedge, label %.thread

6:                                                ; preds = %bb.h
  %7 = add i64 %.0124205.us, 1                    ; 2 uses
  %exitcond280.not = icmp eq i64 %7, %.fr240
  br i1 %exitcond280.not, label %..preheader_crit_edge.us, label %bb.h, !llvm.loop !257

..preheader_crit_edge.us:                         ; preds = %6
  br i1 %.not152208, label %.lr.ph210.us.a, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cl = load i8, ptr %.6132.us220, align 1, !tbaa !22
  %i.cm = and i8 %i.cl, 63
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.k, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22  ; 2 uses
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %.6132.us220, i64 %i.cq ; 4 uses
  %.not293 = icmp eq i8 %i.cp, 0
  %.not150.us222 = icmp uge ptr %i.cr, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cr, %.preheader177.us217 ], [ %i.cz, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.bm
  %i.ct = getelementptr i8, ptr %i.cs, i64 1      ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.cu = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond279.not = icmp eq i64 %i.cu, %.fr239
  br i1 %exitcond279.not, label %.thread170, label %bb.l, !llvm.loop !256

bb.l:                                             ; preds = %.preheader.us227, %bb.k
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cu, %bb.k ] ; 3 uses
  %i.cv = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !22
  %i.cx = getelementptr i8, ptr %i.ct, i64 %.0209.us231
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !22
  %.not151.us232 = icmp eq i8 %i.cw, %i.cy
  br i1 %.not151.us232, label %bb.k, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.l
  %i.cz = getelementptr i8, ptr %i.cr, i64 %i.bk  ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.j
  br i1 %i.da, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dh, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.db = load i8, ptr %.6132, align 1, !tbaa !22
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr i8, ptr %i.k, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %.6132, i64 %i.dg ; 3 uses
  %.not292 = icmp eq i8 %i.df, 0
  %.not150 = icmp uge ptr %i.dh, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.bm
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.k, %..preheader_crit_edge.us, %3, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dj, %.preheader ], [ %i.bw, %3 ], [ %i.ct, %bb.k ]
  %i.dk = ptrtoint ptr %.lcssa to i64
  %i.dl = ptrtoint ptr %0 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.j, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dm, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.j ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare ptr @_Py_bytes_rfind(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @_Py_bytes_rindex(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #1

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyList_Reverse(ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @_Py_bytes_startswith(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_Py_bytes_swapcase(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Py_bytes_title(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Py_bytes_upper(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsEncodedString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PyObject_GC_Del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nounwind uwtable
define internal ptr @bytearrayiter_length_hint(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !25
  %i.g = sub i64 %.val, %i.b
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.g, i64 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %spec.store.select, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call ptr @PyLong_FromSsize_t(i64 noundef %.0) #17
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearrayiter_reduce(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyEval_GetBuiltin(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88752)) #17 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.125, ptr noundef %i.a, ptr noundef %i.f, i64 noundef %i.c) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.126, ptr noundef %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @bytearrayiter_setstate(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsSsize_t(ptr noundef %1) #17 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #17
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %.thread14, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.a, -1
  br i1 %i.j, label %bb.e, label %.thread14

.thread14:                                        ; preds = %.thread, %bb.d
  %i.k = phi ptr [ %i.d, %bb.d ], [ %i.g, %.thread ]
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.val = load i64, ptr %i.n, align 8, !tbaa !25
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %.val)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread14
  %i.o = phi ptr [ %i.k, %.thread14 ], [ %i.d, %bb.d ]
  %.1 = phi i64 [ %spec.select, %.thread14 ], [ -1, %bb.d ]
  store i64 %.1, ptr %i.o, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %.thread ]
  ret ptr %.0
}

declare ptr @_PyEval_GetBuiltin(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_BadInternalCall(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PyObject_GC_New(ptr noundef) local_unnamed_addr #1

declare void @_Py_TriggerGC(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
end_hunk_3
