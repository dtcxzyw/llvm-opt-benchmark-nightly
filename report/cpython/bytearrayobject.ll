Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytearrayobject?download=true
inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_rjust:bb.a
bb.n:                                             ; preds = %PyObject_TypeCheck.exit.thread.i
  %i.aa = getelementptr i8, ptr %i.w, i64 40
  %.val38.i = load ptr, ptr %i.aa, align 8, !tbaa !30
  %i.ab = load i8, ptr %.val38.i, align 1, !tbaa !29
  br label %bb.p

bb.o:                                             ; preds = %PyObject_TypeCheck.exit.i
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef %.pre.i) #17, !inline_history !182
  br label %stringlib_rjust.exit

bb.p:                                             ; preds = %bb.n, %bb.k, %bb.g
  %.026.i = phi i8 [ 32, %bb.g ], [ %i.u, %bb.k ], [ %i.ab, %bb.n ]
  %i.ac = getelementptr i8, ptr %0, i64 16
  %.val8.i.i = load i64, ptr %i.ac, align 8, !tbaa !32 ; 8 uses
  %.not.i45.i = icmp slt i64 %.val8.i.i, %.02547.ph.i
  br i1 %.not.i45.i, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr i8, ptr %0, i64 40
  %.val10.i.i = load ptr, ptr %i.ad, align 8, !tbaa !30 ; 2 uses
  %i.ae = icmp slt i64 %.val8.i.i, 0
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.af = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str) #17, !inline_history !184
  br label %stringlib_rjust.exit

bb.s:                                             ; preds = %bb.q
  %i.ag = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !184 ; 12 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %stringlib_rjust.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = getelementptr i8, ptr %i.ag, i64 48
  store i64 0, ptr %i.ai, align 8, !tbaa !27
  %i.aj = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val8.i.i) #17, !inline_history !184 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !28
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.am = load i32, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.am, -1
  br i1 %.not.i.i.i.i.i, label %bb.v, label %stringlib_rjust.exit

bb.v:                                             ; preds = %bb.u
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.ag, align 8, !tbaa !29
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.w, label %stringlib_rjust.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ag) #17, !inline_history !184
  br label %stringlib_rjust.exit

bb.x:                                             ; preds = %bb.t
  %i.ap = getelementptr i8, ptr %i.aj, i64 32     ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !30
  %i.ar = getelementptr i8, ptr %i.ag, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !31
  %i.as = getelementptr i8, ptr %i.ag, i64 16
  store i64 %.val8.i.i, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr i8, ptr %i.ag, i64 24
  store i64 %.val8.i.i, ptr %i.at, align 8, !tbaa !33
  %i.au = icmp ne ptr %.val10.i.i, null
  %i.av = icmp ne i64 %.val8.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.av, %i.au
  br i1 %or.cond.i.i.i.i, label %bb.y, label %stringlib_rjust.exit

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull readonly align 1 %.val10.i.i, i64 %.val8.i.i, i1 false)
  br label %stringlib_rjust.exit

bb.z:                                             ; preds = %bb.p
  %i.aw = sub i64 %.02547.ph.i, %.val8.i.i
  %i.ax = tail call fastcc ptr @pad(ptr noundef nonnull readonly %0, i64 noundef %i.aw, i64 noundef 0, i8 noundef signext %.026.i), !inline_history !185
  br label %stringlib_rjust.exit

stringlib_rjust.exit:                             ; preds = %bb.b, %Py_DECREF.exit.thread.i, %bb.j, %bb.m, %bb.o, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.028.i = phi ptr [ null, %Py_DECREF.exit.thread.i ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.o ], [ null, %bb.b ], [ %i.ax, %bb.z ], [ null, %bb.r ], [ null, %bb.s ], [ %i.ag, %bb.x ], [ %i.ag, %bb.y ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ]
  ret ptr %.028.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rpartition(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc ptr @_PyByteArray_FromBufferObject(ptr noundef %1), !inline_history !186 ; 9 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bytearray_rpartition_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val12.i = load ptr, ptr %i.b, align 8, !tbaa !30 ; 12 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val14.i = load i64, ptr %i.c, align 8, !tbaa !32 ; 13 uses
  %i.d = getelementptr i8, ptr %i.a, i64 40
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !30 ; 6 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %.val13.i = load i64, ptr %i.e, align 8, !tbaa !32 ; 11 uses
  %i.f = icmp eq i64 %.val13.i, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.103) #17, !inline_history !187
  br label %stringlib_rpartition.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @PyTuple_New(i64 noundef 3) #17, !inline_history !187 ; 15 uses
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
  %i.k = load i8, ptr %.val.i, align 1, !tbaa !29 ; 2 uses
  %i.l = icmp sgt i64 %.val14.i, 15
  br i1 %i.l, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.m = sext i8 %i.k to i32
  %i.n = tail call ptr @memrchr(ptr noundef %.val12.i, i32 noundef %i.m, i64 noundef %.val14.i) #18, !inline_history !187 ; 2 uses
  %.not.i67.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i67.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.j

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
  br i1 %i.t, label %.lr.ph, label %fastsearch.exit.thread.i.i, !llvm.loop !3

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i.i.i.i39 = phi ptr [ %i.u, %bb.l ], [ %i.r, %bb.k ]
  %i.u = getelementptr i8, ptr %.0.i.i.i.i39, i64 -1 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = icmp eq i8 %i.v, %i.k
  br i1 %i.w, label %bb.m, label %bb.l, !llvm.loop !3

bb.m:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %.val12.i to i64
  %i.z = sub i64 %i.x, %i.y
  br label %fastsearch.exit.i.i

bb.n:                                             ; preds = %bb.f
  %i.aa = add nsw i64 %.val13.i, -1               ; 6 uses
  %i.ab = load i8, ptr %.val.i, align 1, !tbaa !29 ; 5 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.i.prol.loopexit, label %.lr.ph.i75.i.i.i.prol

.lr.ph.i75.i.i.i.prol:                            ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.val.i, i64 %i.aa
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29  ; 2 uses
  %i.ah = and i8 %i.ag, 63
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = or i64 %i.aj, %i.ae                     ; 2 uses
  %i.al = icmp eq i8 %i.ag, %i.ab
  %i.am = add nsw i64 %.val13.i, -2               ; 2 uses
  %spec.select.i76.i.i.i.prol = select i1 %i.al, i64 %i.am, i64 %i.aa ; 2 uses
  br label %.lr.ph.i75.i.i.i.prol.loopexit

.lr.ph.i75.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i75.i.i.i.prol, %bb.n
  %.060.i.i.i.i.unr = phi i64 [ %i.aa, %bb.n ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.aa, %bb.n ], [ %i.am, %.lr.ph.i75.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.ae, %bb.n ], [ %i.ak, %.lr.ph.i75.i.i.i.prol ]
  %.lcssa43.unr = phi i64 [ poison, %bb.n ], [ %i.ak, %.lr.ph.i75.i.i.i.prol ]
  %spec.select.i76.i.i.i.lcssa.unr = phi i64 [ poison, %bb.n ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %i.an = icmp eq i64 %.val13.i, 2
  br i1 %i.an, label %.preheader56.i.i.i.i, label %.lr.ph.i75.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i75.i.i.i, %.lr.ph.i75.i.i.i.prol.loopexit
  %.lcssa43 = phi i64 [ %.lcssa43.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %i.cb, %.lr.ph.i75.i.i.i ] ; 2 uses
  %spec.select.i76.i.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.i.lcssa.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ]
  %i.ao = sub nsw i64 %.val14.i, %.val13.i
  br label %.lr.ph66.split.us.i.i.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %bb.t, %.preheader56.i.i.i.i
  %.14865.us.i.i.i.i = phi i64 [ %i.bm, %bb.t ], [ %i.ao, %.preheader56.i.i.i.i ] ; 5 uses
  %i.ap = getelementptr i8, ptr %.val12.i, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = icmp eq i8 %i.aq, %i.ab
  br i1 %i.ar, label %.preheader.us.i78.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr i8, ptr %i.ap, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = shl nuw i64 1, %i.av
  %i.ax = and i64 %i.aw, %.lcssa43
  %.not51.us.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %.not51.us.i.i.i.i, i64 %.val13.i, i64 0
  br label %bb.t

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.q
  %.04662.us.i.i.i.i = phi i64 [ %i.bd, %bb.q ], [ %i.aa, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %.04662.us.i.i.i.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = getelementptr i8, ptr %.val.i, i64 %.04662.us.i.i.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %.not52.us.i.i.i.i = icmp eq i8 %i.ba, %i.bc
  br i1 %.not52.us.i.i.i.i, label %bb.q, label %.thread.us.i.i.i.i

bb.q:                                             ; preds = %.preheader.us.i78.i.i.i
  %i.bd = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.be = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.be, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !4

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread.us.i.i.i.i
  %i.bf = getelementptr i8, ptr %i.ap, i64 -1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bj, %.lcssa43
  %.not54.us.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not54.us.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.us.i.i.i.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.s ], [ %i.ay, %bb.p ], [ %.val13.i, %bb.r ]
  %i.bl = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = icmp sgt i64 %i.bl, 0
  br i1 %i.bn, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !5

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.bo = getelementptr i8, ptr %.val.i, i64 %.04759.i.i.i.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.04958.i.i.i.i
  %i.bu = icmp eq i8 %i.bp, %i.ab
  %i.bv = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.bu, i64 %i.bv, i64 %.060.i.i.i.i
  %i.bw = getelementptr i8, ptr %.val.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29  ; 2 uses
  %i.by = and i8 %i.bx, 63
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = or i64 %i.ca, %i.bt                     ; 2 uses
  %i.cc = icmp eq i8 %i.bx, %i.ab
  %i.cd = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.cc, i64 %i.cd, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.ce = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.ce, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !6

fastsearch.exit.i.i:                              ; preds = %bb.q, %bb.m, %bb.j
  %.0.i.i.i = phi i64 [ %i.z, %bb.m ], [ %i.q, %bb.j ], [ %.14865.us.i.i.i.i, %bb.q ] ; 7 uses
  %i.cf = icmp slt i64 %.0.i.i.i, 0
  br i1 %i.cf, label %fastsearch.exit.thread.i.i, label %bb.ap

fastsearch.exit.thread.i.i:                       ; preds = %bb.t, %bb.o, %bb.l, %bb.k, %fastsearch.exit.i.i, %bb.i, %bb.g, %bb.e
  %i.cg = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !188 ; 10 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %PyByteArray_FromStringAndSize.exit.i.i, label %bb.u

bb.u:                                             ; preds = %fastsearch.exit.thread.i.i
  %i.ci = getelementptr i8, ptr %i.cg, i64 48
  store i64 0, ptr %i.ci, align 8, !tbaa !27
  %i.cj = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 0) #17, !inline_history !188 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cg, i64 56
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !28
  %i.cl = icmp eq ptr %i.cj, null
  br i1 %i.cl, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cm = load i32, ptr %i.cg, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %PyByteArray_FromStringAndSize.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.cg, align 8, !tbaa !29
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.x, label %PyByteArray_FromStringAndSize.exit.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cg) #17, !inline_history !188
  br label %PyByteArray_FromStringAndSize.exit.i.i

bb.y:                                             ; preds = %bb.u
  %i.cp = getelementptr i8, ptr %i.cj, i64 32     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cg, i64 40
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !30
  %i.cr = getelementptr i8, ptr %i.cg, i64 32
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !31
  %i.cs = getelementptr i8, ptr %i.cg, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i.i

PyByteArray_FromStringAndSize.exit.i.i:           ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %fastsearch.exit.thread.i.i
  %.0.i37.i.i = phi ptr [ null, %bb.w ], [ null, %fastsearch.exit.thread.i.i ], [ %i.cg, %bb.y ], [ null, %bb.x ], [ null, %bb.v ]
  %i.ct = getelementptr i8, ptr %i.h, i64 32
  store ptr %.0.i37.i.i, ptr %i.ct, align 8, !tbaa !20
  %i.cu = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !188 ; 10 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %PyByteArray_FromStringAndSize.exit40.i.i, label %bb.z

bb.z:                                             ; preds = %PyByteArray_FromStringAndSize.exit.i.i
  %i.cw = getelementptr i8, ptr %i.cu, i64 48
  store i64 0, ptr %i.cw, align 8, !tbaa !27
  %i.cx = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef 0) #17, !inline_history !188 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cu, i64 56
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !28
  %i.cz = icmp eq ptr %i.cx, null
  br i1 %i.cz, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.da = load i32, ptr %i.cu, align 8, !tbaa !29 ; 2 uses
  %.not.i.i39.i.i = icmp sgt i32 %i.da, -1
  br i1 %.not.i.i39.i.i, label %bb.ab, label %PyByteArray_FromStringAndSize.exit40.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cu, align 8, !tbaa !29
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ac, label %PyByteArray_FromStringAndSize.exit40.i.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cu) #17, !inline_history !188
  br label %PyByteArray_FromStringAndSize.exit40.i.i

bb.ad:                                            ; preds = %bb.z
  %i.dd = getelementptr i8, ptr %i.cx, i64 32     ; 2 uses
  %i.de = getelementptr i8, ptr %i.cu, i64 40
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !30
  %i.df = getelementptr i8, ptr %i.cu, i64 32
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !31
  %i.dg = getelementptr i8, ptr %i.cu, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  br label %PyByteArray_FromStringAndSize.exit40.i.i

PyByteArray_FromStringAndSize.exit40.i.i:         ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %PyByteArray_FromStringAndSize.exit.i.i
  %.0.i38.i.i = phi ptr [ null, %bb.ab ], [ null, %PyByteArray_FromStringAndSize.exit.i.i ], [ %i.cu, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ]
  %i.dh = getelementptr i8, ptr %i.h, i64 40
  store ptr %.0.i38.i.i, ptr %i.dh, align 8, !tbaa !20
  %i.di = icmp slt i64 %.val14.i, 0
  br i1 %i.di, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %PyByteArray_FromStringAndSize.exit40.i.i
  %i.dj = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  tail call void @PyErr_SetString(ptr noundef %i.dj, ptr noundef nonnull @.str) #17, !inline_history !188
  br label %PyByteArray_FromStringAndSize.exit43.i.i

bb.af:                                            ; preds = %PyByteArray_FromStringAndSize.exit40.i.i
  %i.dk = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !188 ; 12 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %PyByteArray_FromStringAndSize.exit43.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dm = getelementptr i8, ptr %i.dk, i64 48
  store i64 0, ptr %i.dm, align 8, !tbaa !27
  %i.dn = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.val14.i) #17, !inline_history !188 ; 3 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 56
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !28
  %i.dp = icmp eq ptr %i.dn, null
  br i1 %i.dp, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i32, ptr %i.dk, align 8, !tbaa !29 ; 2 uses
  %.not.i.i42.i.i = icmp sgt i32 %i.dq, -1
  br i1 %.not.i.i42.i.i, label %bb.ai, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dk, align 8, !tbaa !29
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aj, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dk) #17, !inline_history !188
  br label %PyByteArray_FromStringAndSize.exit43.i.i

bb.ak:                                            ; preds = %bb.ag
  %i.dt = getelementptr i8, ptr %i.dn, i64 32     ; 3 uses
  %i.du = getelementptr i8, ptr %i.dk, i64 40
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !30
  %i.dv = getelementptr i8, ptr %i.dk, i64 32
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !31
  %i.dw = getelementptr i8, ptr %i.dk, i64 16
  store i64 %.val14.i, ptr %i.dw, align 8, !tbaa !32
  %i.dx = getelementptr i8, ptr %i.dk, i64 24
  store i64 %.val14.i, ptr %i.dx, align 8, !tbaa !33
  %i.dy = icmp ne ptr %.val12.i, null
  %i.dz = icmp ne i64 %.val14.i, 0
  %or.cond.i.i.i = and i1 %i.dy, %i.dz
  br i1 %or.cond.i.i.i, label %bb.al, label %PyByteArray_FromStringAndSize.exit43.i.i

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr nonnull readonly align 1 %.val12.i, i64 %.val14.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit43.i.i

PyByteArray_FromStringAndSize.exit43.i.i:         ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ae
  %.0.i41.i.i = phi ptr [ null, %bb.ae ], [ null, %bb.af ], [ %i.dk, %bb.ak ], [ %i.dk, %bb.al ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.aj ]
  %i.ea = getelementptr i8, ptr %i.h, i64 48
  store ptr %.0.i41.i.i, ptr %i.ea, align 8, !tbaa !20
  %i.eb = tail call ptr @PyErr_Occurred() #17, !inline_history !187
  %.not33.i.i = icmp eq ptr %i.eb, null
  br i1 %.not33.i.i, label %stringlib_rpartition.exit.i, label %bb.am

bb.am:                                            ; preds = %PyByteArray_FromStringAndSize.exit43.i.i
  %i.ec = load i32, ptr %i.h, align 8, !tbaa !29  ; 2 uses
  %.not.i34.i.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i34.i.i, label %bb.an, label %stringlib_rpartition.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.h, align 8, !tbaa !29
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.ao, label %stringlib_rpartition.exit.i

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.h) #17, !inline_history !187
  br label %stringlib_rpartition.exit.i

bb.ap:                                            ; preds = %fastsearch.exit.i.i
  %i.ef = tail call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !188 ; 12 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %PyByteArray_FromStringAndSize.exit47.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr i8, ptr %i.ef, i64 48
  store i64 0, ptr %i.eh, align 8, !tbaa !27
  %i.ei = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.0.i.i.i) #17, !inline_history !188 ; 3 uses
  %i.ej = getelementptr i8, ptr %i.ef, i64 56
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !28
  %i.ek = icmp eq ptr %i.ei, null
  br i1 %i.ek, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.el = load i32, ptr %i.ef, align 8, !tbaa !29 ; 2 uses
  %.not.i.i46.i.i = icmp sgt i32 %i.el, -1
  br i1 %.not.i.i46.i.i, label %bb.as, label %PyByteArray_FromStringAndSize.exit47.i.i

bb.as:                                            ; preds = %bb.ar
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.ef, align 8, !tbaa !29
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.at, label %PyByteArray_FromStringAndSize.exit47.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ef) #17, !inline_history !188
  br label %PyByteArray_FromStringAndSize.exit47.i.i

bb.au:                                            ; preds = %bb.aq
  %i.eo = getelementptr i8, ptr %i.ei, i64 32     ; 3 uses
  %i.ep = getelementptr i8, ptr %i.ef, i64 40
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !30
  %i.eq = getelementptr i8, ptr %i.ef, i64 32
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !31
  %i.er = getelementptr i8, ptr %i.ef, i64 16
  store i64 %.0.i.i.i, ptr %i.er, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@bytearray_rsplit:bb.a
bb.bk:                                            ; preds = %bb.bj
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.eh, align 8, !tbaa !29
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.bl, label %Py_DECREF.exit62.i.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #17, !inline_history !197
  br label %Py_DECREF.exit62.i.i.i

bb.bm:                                            ; preds = %bb.bi
  br i1 %.not.i59.i.i.i, label %bb.bn, label %.loopexit.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.fd = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fd, ptr %i.eh, align 8, !tbaa !29
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bo, label %.loopexit.i.i.i

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %i.eh) #17, !inline_history !197
  br label %.loopexit.i.i.i

bb.bp:                                            ; preds = %.lr.ph.i.i.i
  %i.ff = add nsw i64 %.14715.i.i.i, -1
  %i.fg = icmp sgt i64 %.14715.i.i.i, 0
  br i1 %i.fg, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !200

.loopexit.i.i.i:                                  ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bh
  %i.fh = add nuw i64 %.019.i.i.i356, 1           ; 3 uses
  %i.fi = add nsw i64 %.14715.i.i.i, -1           ; 3 uses
  %i.fj = icmp sgt i64 %.14715.i.i.i, 0
  br i1 %i.fj, label %bb.az, label %.critedge.i.i.i, !llvm.loop !198

.critedge.i.i.i:                                  ; preds = %.loopexit.i.i.i, %bb.bp, %bb.ay
  %.044.lcssa.i.i.i = phi i64 [ %i.dy, %bb.ay ], [ %.04418.i.i.i357, %bb.bp ], [ %i.fi, %.loopexit.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ay ], [ %.019.i.i.i356, %bb.bp ], [ %i.fh, %.loopexit.i.i.i ] ; 2 uses
  %i.fk = icmp sgt i64 %.044.lcssa.i.i.i, -2
  br i1 %i.fk, label %.critedge.i.thread.i.i, label %bb.cg

.critedge.i.thread.i.i:                           ; preds = %bb.az, %.lr.ph20.i.i.i, %.critedge.i.i.i
  %.0.lcssa.i4.i.i = phi i64 [ %.0.lcssa.i.i.i, %.critedge.i.i.i ], [ %spec.store.select.i, %.lr.ph20.i.i.i ], [ %spec.store.select.i, %bb.az ] ; 3 uses
  %.044.lcssa.i3.i.i = phi i64 [ %.044.lcssa.i.i.i, %.critedge.i.i.i ], [ %i.dy, %.lr.ph20.i.i.i ], [ %i.fi, %bb.az ]
  %i.fl = add i64 %.044.lcssa.i3.i.i, 1           ; 6 uses
  %i.fm = icmp slt i64 %i.fl, 0
  br i1 %i.fm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.critedge.i.thread.i.i
  %i.fn = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.fn, ptr noundef nonnull @.str) #17, !inline_history !199
  br label %Py_DECREF.exit62.i.i.i

bb.br:                                            ; preds = %.critedge.i.thread.i.i
  %i.fo = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !199 ; 17 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %Py_DECREF.exit62.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fq = getelementptr i8, ptr %i.fo, i64 48
  store i64 0, ptr %i.fq, align 8, !tbaa !27
  %i.fr = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.fl) #17, !inline_history !199 ; 3 uses
  %i.fs = getelementptr i8, ptr %i.fo, i64 56
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !28
  %i.ft = icmp eq ptr %i.fr, null
  br i1 %i.ft, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.fu = load i32, ptr %i.fo, align 8, !tbaa !29 ; 2 uses
  %.not.i.i70.i.i.i = icmp sgt i32 %i.fu, -1
  br i1 %.not.i.i70.i.i.i, label %bb.bu, label %Py_DECREF.exit62.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.fo, align 8, !tbaa !29
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bv, label %Py_DECREF.exit62.i.i.i

bb.bv:                                            ; preds = %bb.bu
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !199
  br label %Py_DECREF.exit62.i.i.i

bb.bw:                                            ; preds = %bb.bs
  %i.fx = getelementptr i8, ptr %i.fr, i64 32     ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 40
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !30
  %i.fz = getelementptr i8, ptr %i.fo, i64 32
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !31
  %i.ga = getelementptr i8, ptr %i.fo, i64 16
  store i64 %i.fl, ptr %i.ga, align 8, !tbaa !32
  %i.gb = getelementptr i8, ptr %i.fo, i64 24
  store i64 %i.fl, ptr %i.gb, align 8, !tbaa !33
  %i.gc = icmp ne ptr %.val.i, null
  %i.gd = icmp ne i64 %i.fl, 0
  %or.cond.i68.i.i.i = and i1 %i.gc, %i.gd
  br i1 %or.cond.i68.i.i.i, label %bb.bx, label %PyByteArray_FromStringAndSize.exit71.i.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr nonnull readonly align 1 %.val.i, i64 %i.fl, i1 false)
  br label %PyByteArray_FromStringAndSize.exit71.i.i.i

PyByteArray_FromStringAndSize.exit71.i.i.i:       ; preds = %bb.bx, %bb.bw
  %i.ge = icmp slt i64 %.0.lcssa.i4.i.i, 12
  br i1 %i.ge, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %PyByteArray_FromStringAndSize.exit71.i.i.i
  %i.gf = getelementptr i8, ptr %i.dw, i64 24
  %.val.i.i.i = load ptr, ptr %i.gf, align 8, !tbaa !72
  %i.gg = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.0.lcssa.i4.i.i
  store ptr %i.fo, ptr %i.gg, align 8, !tbaa !20
  br label %Py_DECREF.exit56.i.i.i

bb.bz:                                            ; preds = %PyByteArray_FromStringAndSize.exit71.i.i.i
  %i.gh = call i32 @PyList_Append(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.fo) #17, !inline_history !197
  %.not.i73.i18.i = icmp eq i32 %i.gh, 0
  %i.gi = load i32, ptr %i.fo, align 8, !tbaa !29 ; 3 uses
  %.not.i55.i.i.i = icmp sgt i32 %i.gi, -1        ; 2 uses
  br i1 %.not.i73.i18.i, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not.i55.i.i.i, label %bb.cb, label %Py_DECREF.exit62.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.gj = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gj, ptr %i.fo, align 8, !tbaa !29
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.cc, label %Py_DECREF.exit62.i.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !197
  br label %Py_DECREF.exit62.i.i.i

bb.cd:                                            ; preds = %bb.bz
  br i1 %.not.i55.i.i.i, label %bb.ce, label %Py_DECREF.exit56.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.gl = add nsw i32 %i.gi, -1                   ; 2 uses
  store i32 %i.gl, ptr %i.fo, align 8, !tbaa !29
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.cf, label %Py_DECREF.exit56.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_Py_Dealloc(ptr noundef nonnull %i.fo) #17, !inline_history !197
  br label %Py_DECREF.exit56.i.i.i

Py_DECREF.exit56.i.i.i:                           ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.by
  %i.gn = add i64 %.0.lcssa.i4.i.i, 1
  br label %bb.cg

bb.cg:                                            ; preds = %Py_DECREF.exit56.i.i.i, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.gn, %Py_DECREF.exit56.i.i.i ], [ %.0.lcssa.i.i.i, %.critedge.i.i.i ]
  %i.go = getelementptr i8, ptr %i.dw, i64 16
  store i64 %.2.i.i.i, ptr %i.go, align 8, !tbaa !32
  %i.gp = call i32 @PyList_Reverse(ptr noundef nonnull %i.dw) #17, !inline_history !197
  %i.gq = icmp slt i32 %i.gp, 0
  br i1 %i.gq, label %Py_DECREF.exit62.i.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit62.i.i.i:                           ; preds = %bb.ba, %bb.cg, %bb.cc, %bb.cb, %bb.ca, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bl, %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.bc
  %i.gr = load i32, ptr %i.dw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i17.i = icmp sgt i32 %i.gr, -1
  br i1 %.not.i.i.i17.i, label %bb.ch, label %stringlib_rsplit.exit.i

bb.ch:                                            ; preds = %Py_DECREF.exit62.i.i.i
  %i.gs = add nsw i32 %i.gr, -1                   ; 2 uses
  store i32 %i.gs, ptr %i.dw, align 8, !tbaa !29
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ci, label %stringlib_rsplit.exit.i

bb.ci:                                            ; preds = %bb.ch
  call void @_Py_Dealloc(ptr noundef nonnull %i.dw) #17, !inline_history !197
  br label %stringlib_rsplit.exit.i

bb.cj:                                            ; preds = %bb.av
  %i.gu = call i64 @llvm.umin.i64(i64 %.1, i64 11)
  %i.gv = add nuw nsw i64 %i.gu, 1
  %i.gw = call ptr @PyList_New(i64 noundef %i.gv) #17, !inline_history !196 ; 11 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %stringlib_rsplit.exit.i, label %.preheader.i20.i

.preheader.i20.i:                                 ; preds = %bb.cj
  %i.gy = icmp eq i64 %.1, 0
  %i.gz = icmp slt i64 %.val16.i, %i.dr
  %or.cond56.i.i = or i1 %i.gy, %i.gz
  br i1 %or.cond56.i.i, label %fastsearch.exit.thread.i.i, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.preheader.i20.i
  %i.ha = icmp slt i64 %i.dr, 2
  %i.hb = add i64 %i.dr, -1                       ; 6 uses
  %i.hc = getelementptr i8, ptr %i.gw, i64 24
  br i1 %i.ha, label %fastsearch.exit.thread.i.i, label %.lr.ph.i21.split.i.preheader

.lr.ph.i21.split.i.preheader:                     ; preds = %.lr.ph.i21.i
  %xtraiter = and i64 %i.hb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hd = getelementptr i8, ptr %i.dp, i64 %i.hb
  %i.he = add nsw i64 %i.dr, -2                   ; 2 uses
  %i.hf = icmp eq i64 %i.dr, 2
  br label %.lr.ph.i21.split.i

.lr.ph.i21.split.i:                               ; preds = %.lr.ph.i21.split.i.preheader, %Py_DECREF.exit65.i.i
  %.in.i.i = phi i64 [ %i.hq, %Py_DECREF.exit65.i.i ], [ %spec.store.select.i, %.lr.ph.i21.split.i.preheader ] ; 2 uses
  %.058.i.i = phi i64 [ %i.km, %Py_DECREF.exit65.i.i ], [ 0, %.lr.ph.i21.split.i.preheader ] ; 6 uses
  %.05157.i.i = phi i64 [ %.14865.us.i.i.i.i, %Py_DECREF.exit65.i.i ], [ %.val16.i, %.lr.ph.i21.split.i.preheader ] ; 6 uses
  %i.hg = load i8, ptr %i.dp, align 1, !tbaa !29  ; 5 uses
  %i.hh = and i8 %i.hg, 63
  %i.hi = zext nneg i8 %i.hh to i64
  %i.hj = shl nuw i64 1, %i.hi                    ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i75.i.i.i.prol.loopexit, label %.lr.ph.i75.i.i.i.prol

.lr.ph.i75.i.i.i.prol:                            ; preds = %.lr.ph.i21.split.i
  %i.hk = load i8, ptr %i.hd, align 1, !tbaa !29  ; 2 uses
  %i.hl = and i8 %i.hk, 63
  %i.hm = zext nneg i8 %i.hl to i64
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = or i64 %i.hn, %i.hj                     ; 2 uses
  %i.hp = icmp eq i8 %i.hk, %i.hg
  %spec.select.i76.i.i.i.prol = select i1 %i.hp, i64 %i.he, i64 %i.hb ; 2 uses
  br label %.lr.ph.i75.i.i.i.prol.loopexit

.lr.ph.i75.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i75.i.i.i.prol, %.lr.ph.i21.split.i
  %.060.i.i.i.i.unr = phi i64 [ %i.hb, %.lr.ph.i21.split.i ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  %.04759.i.i.i.i.unr = phi i64 [ %i.hb, %.lr.ph.i21.split.i ], [ %i.he, %.lr.ph.i75.i.i.i.prol ]
  %.04958.i.i.i.i.unr = phi i64 [ %i.hj, %.lr.ph.i21.split.i ], [ %i.ho, %.lr.ph.i75.i.i.i.prol ]
  %.lcssa385.unr = phi i64 [ poison, %.lr.ph.i21.split.i ], [ %i.ho, %.lr.ph.i75.i.i.i.prol ]
  %spec.select.i76.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i21.split.i ], [ %spec.select.i76.i.i.i.prol, %.lr.ph.i75.i.i.i.prol ]
  br i1 %i.hf, label %.preheader56.i.i.i.i, label %.lr.ph.i75.i.i.i

.preheader56.i.i.i.i:                             ; preds = %.lr.ph.i75.i.i.i, %.lr.ph.i75.i.i.i.prol.loopexit
  %.lcssa385 = phi i64 [ %.lcssa385.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %i.je, %.lr.ph.i75.i.i.i ] ; 2 uses
  %spec.select.i76.i.i.i.lcssa = phi i64 [ %spec.select.i76.i.i.i.lcssa.unr, %.lr.ph.i75.i.i.i.prol.loopexit ], [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ]
  %i.hq = add nsw i64 %.in.i.i, -1
  %i.hr = sub nsw i64 %.05157.i.i, %i.dr
  br label %.lr.ph66.split.us.i.i.i.i

.lr.ph66.split.us.i.i.i.i:                        ; preds = %bb.cp, %.preheader56.i.i.i.i
  %.14865.us.i.i.i.i = phi i64 [ %i.ip, %bb.cp ], [ %i.hr, %.preheader56.i.i.i.i ] ; 9 uses
  %i.hs = getelementptr i8, ptr %.val.i, i64 %.14865.us.i.i.i.i ; 4 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !29
  %i.hu = icmp eq i8 %i.ht, %i.hg
  br i1 %i.hu, label %.preheader.us.i78.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph66.split.us.i.i.i.i
  %.not.us.i77.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not.us.i77.i.i.i, label %fastsearch.exit.thread.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hv = getelementptr i8, ptr %i.hs, i64 -1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !29
  %i.hx = and i8 %i.hw, 63
  %i.hy = zext nneg i8 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy
  %i.ia = and i64 %i.hz, %.lcssa385
  %.not51.us.i.i.i.i = icmp eq i64 %i.ia, 0
  %i.ib = select i1 %.not51.us.i.i.i.i, i64 %i.dr, i64 0
  br label %bb.cp

.preheader.us.i78.i.i.i:                          ; preds = %.lr.ph66.split.us.i.i.i.i, %bb.cm
  %.04662.us.i.i.i.i = phi i64 [ %i.ig, %bb.cm ], [ %i.hb, %.lr.ph66.split.us.i.i.i.i ] ; 4 uses
  %i.ic = getelementptr i8, ptr %i.hs, i64 %.04662.us.i.i.i.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !29
  %i.ie = getelementptr i8, ptr %i.dp, i64 %.04662.us.i.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !29
  %.not52.us.i.i.i.i = icmp eq i8 %i.id, %i.if
  br i1 %.not52.us.i.i.i.i, label %bb.cm, label %.thread.us.i.i.i.i

bb.cm:                                            ; preds = %.preheader.us.i78.i.i.i
  %i.ig = add nsw i64 %.04662.us.i.i.i.i, -1
  %i.ih = icmp sgt i64 %.04662.us.i.i.i.i, 1
  br i1 %i.ih, label %.preheader.us.i78.i.i.i, label %fastsearch.exit.i.i, !llvm.loop !4

.thread.us.i.i.i.i:                               ; preds = %.preheader.us.i78.i.i.i
  %.not53.us.i.i.i.i = icmp eq i64 %.14865.us.i.i.i.i, 0
  br i1 %.not53.us.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.thread.us.i.i.i.i
  %i.ii = getelementptr i8, ptr %i.hs, i64 -1
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !29
  %i.ik = and i8 %i.ij, 63
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = shl nuw i64 1, %i.il
  %i.in = and i64 %i.im, %.lcssa385
  %.not54.us.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not54.us.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %.thread.us.i.i.i.i
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cl
  %spec.select.lcssa.sink.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.lcssa, %bb.co ], [ %i.ib, %bb.cl ], [ %i.dr, %bb.cn ]
  %i.io = sub nsw i64 %.14865.us.i.i.i.i, %spec.select.lcssa.sink.i.i.i.i ; 2 uses
  %i.ip = add nsw i64 %i.io, -1
  %i.iq = icmp sgt i64 %i.io, 0
  br i1 %i.iq, label %.lr.ph66.split.us.i.i.i.i, label %fastsearch.exit.thread.i.i, !llvm.loop !5

.lr.ph.i75.i.i.i:                                 ; preds = %.lr.ph.i75.i.i.i.prol.loopexit, %.lr.ph.i75.i.i.i
  %.060.i.i.i.i = phi i64 [ %spec.select.i76.i.i.i.1, %.lr.ph.i75.i.i.i ], [ %.060.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %.04759.i.i.i.i = phi i64 [ %i.jg, %.lr.ph.i75.i.i.i ], [ %.04759.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ] ; 4 uses
  %.04958.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i75.i.i.i ], [ %.04958.i.i.i.i.unr, %.lr.ph.i75.i.i.i.prol.loopexit ]
  %i.ir = getelementptr i8, ptr %i.dp, i64 %.04759.i.i.i.i
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !29  ; 2 uses
  %i.it = and i8 %i.is, 63
  %i.iu = zext nneg i8 %i.it to i64
  %i.iv = shl nuw i64 1, %i.iu
  %i.iw = or i64 %i.iv, %.04958.i.i.i.i
  %i.ix = icmp eq i8 %i.is, %i.hg
  %i.iy = add nsw i64 %.04759.i.i.i.i, -1         ; 2 uses
  %spec.select.i76.i.i.i = select i1 %i.ix, i64 %i.iy, i64 %.060.i.i.i.i
  %i.iz = getelementptr i8, ptr %i.dp, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29  ; 2 uses
  %i.jb = and i8 %i.ja, 63
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = shl nuw i64 1, %i.jc
  %i.je = or i64 %i.jd, %i.iw                     ; 2 uses
  %i.jf = icmp eq i8 %i.ja, %i.hg
  %i.jg = add nsw i64 %.04759.i.i.i.i, -2         ; 2 uses
  %spec.select.i76.i.i.i.1 = select i1 %i.jf, i64 %i.jg, i64 %spec.select.i76.i.i.i ; 2 uses
  %i.jh = icmp sgt i64 %.04759.i.i.i.i, 2
  br i1 %i.jh, label %.lr.ph.i75.i.i.i, label %.preheader56.i.i.i.i, !llvm.loop !6

fastsearch.exit.i.i:                              ; preds = %bb.cm
  %i.ji = icmp slt i64 %.14865.us.i.i.i.i, 0
  br i1 %i.ji, label %fastsearch.exit.thread.i.i, label %bb.cq

bb.cq:                                            ; preds = %fastsearch.exit.i.i
  %i.jj = add nuw i64 %.14865.us.i.i.i.i, %i.dr   ; 3 uses
  %i.jk = getelementptr i8, ptr %.val.i, i64 %i.jj ; 2 uses
  %i.jl = sub i64 %.05157.i.i, %i.jj              ; 5 uses
  %i.jm = icmp slt i64 %i.jl, 0
  br i1 %i.jm, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jn = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.jn, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.jo = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %Py_DECREF.exit67.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jq = getelementptr i8, ptr %i.jo, i64 48
  store i64 0, ptr %i.jq, align 8, !tbaa !27
  %i.jr = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.jl) #17, !inline_history !201 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jo, i64 56
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !28
  %i.jt = icmp eq ptr %i.jr, null
  br i1 %i.jt, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.ju = load i32, ptr %i.jo, align 8, !tbaa !29 ; 2 uses
  %.not.i.i75.i.i = icmp sgt i32 %i.ju, -1
  br i1 %.not.i.i75.i.i, label %bb.cv, label %Py_DECREF.exit67.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.jv = add nsw i32 %i.ju, -1                   ; 2 uses
  store i32 %i.jv, ptr %i.jo, align 8, !tbaa !29
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.cw, label %Py_DECREF.exit67.i.i

bb.cw:                                            ; preds = %bb.cv
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.cx:                                            ; preds = %bb.ct
  %i.jx = getelementptr i8, ptr %i.jr, i64 32     ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jo, i64 40
  store ptr %i.jx, ptr %i.jy, align 8, !tbaa !30
  %i.jz = getelementptr i8, ptr %i.jo, i64 32
  store ptr %i.jx, ptr %i.jz, align 8, !tbaa !31
  %i.ka = getelementptr i8, ptr %i.jo, i64 16
  store i64 %i.jl, ptr %i.ka, align 8, !tbaa !32
  %i.kb = getelementptr i8, ptr %i.jo, i64 24
  store i64 %i.jl, ptr %i.kb, align 8, !tbaa !33
  %i.kc = icmp ne ptr %i.jk, null
  %i.kd = icmp ne i64 %.05157.i.i, %i.jj
  %or.cond.i.i24.i = and i1 %i.kd, %i.kc
  br i1 %or.cond.i.i24.i, label %bb.cy, label %PyByteArray_FromStringAndSize.exit.i25.i

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr nonnull readonly align 1 %i.jk, i64 %i.jl, i1 false)
  br label %PyByteArray_FromStringAndSize.exit.i25.i

PyByteArray_FromStringAndSize.exit.i25.i:         ; preds = %bb.cy, %bb.cx
  %i.ke = icmp samesign ult i64 %.058.i.i, 12
  br i1 %i.ke, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %.val72.i.i = load ptr, ptr %i.hc, align 8, !tbaa !72
  %i.kf = getelementptr [8 x i8], ptr %.val72.i.i, i64 %.058.i.i
  store ptr %i.jo, ptr %i.kf, align 8, !tbaa !20
  br label %Py_DECREF.exit65.i.i

bb.da:                                            ; preds = %PyByteArray_FromStringAndSize.exit.i25.i
  %i.kg = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.jo) #17, !inline_history !196
  %.not.i26.i = icmp eq i32 %i.kg, 0
  %i.kh = load i32, ptr %i.jo, align 8, !tbaa !29 ; 3 uses
  %.not.i64.i.i = icmp sgt i32 %i.kh, -1          ; 2 uses
  br i1 %.not.i26.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.dc, label %Py_DECREF.exit67.i.i

bb.dc:                                            ; preds = %bb.db
  %i.ki = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.ki, ptr %i.jo, align 8, !tbaa !29
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.dd, label %Py_DECREF.exit67.i.i

bb.dd:                                            ; preds = %bb.dc
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.de:                                            ; preds = %bb.da
  br i1 %.not.i64.i.i, label %bb.df, label %Py_DECREF.exit65.i.i

bb.df:                                            ; preds = %bb.de
  %i.kk = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.kk, ptr %i.jo, align 8, !tbaa !29
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.dg, label %Py_DECREF.exit65.i.i

bb.dg:                                            ; preds = %bb.df
  call void @_Py_Dealloc(ptr noundef nonnull %i.jo) #17, !inline_history !196
  br label %Py_DECREF.exit65.i.i

Py_DECREF.exit65.i.i:                             ; preds = %bb.dg, %bb.df, %bb.de, %bb.cz
  %i.km = add nuw nsw i64 %.058.i.i, 1            ; 2 uses
  %i.kn = icmp slt i64 %.in.i.i, 2
  %i.ko = icmp slt i64 %.14865.us.i.i.i.i, %i.dr
  %or.cond.i.i = or i1 %i.kn, %i.ko
  br i1 %or.cond.i.i, label %fastsearch.exit.thread.thread.i.i, label %.lr.ph.i21.split.i, !llvm.loop !202

fastsearch.exit.thread.i.i:                       ; preds = %fastsearch.exit.i.i, %bb.cp, %bb.ck, %.lr.ph.i21.i, %.preheader.i20.i
  %.05130.i.i = phi i64 [ %.val16.i, %.preheader.i20.i ], [ %.05157.i.i, %bb.cp ], [ %.val16.i, %.lr.ph.i21.i ], [ %.05157.i.i, %bb.ck ], [ %.05157.i.i, %fastsearch.exit.i.i ] ; 2 uses
  %.021.i.i = phi i64 [ 0, %.preheader.i20.i ], [ %.058.i.i, %bb.cp ], [ 0, %.lr.ph.i21.i ], [ %.058.i.i, %bb.ck ], [ %.058.i.i, %fastsearch.exit.i.i ]
  %i.kp = icmp slt i64 %.05130.i.i, 0
  br i1 %i.kp, label %bb.dh, label %fastsearch.exit.thread.thread.i.i

bb.dh:                                            ; preds = %fastsearch.exit.thread.i.i
  %i.kq = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !20
  call void @PyErr_SetString(ptr noundef %i.kq, ptr noundef nonnull @.str) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

fastsearch.exit.thread.thread.i.i:                ; preds = %Py_DECREF.exit65.i.i, %fastsearch.exit.thread.i.i
  %.05129.i.i = phi i64 [ %.05130.i.i, %fastsearch.exit.thread.i.i ], [ %.14865.us.i.i.i.i, %Py_DECREF.exit65.i.i ] ; 5 uses
  %.020.i.i = phi i64 [ %.021.i.i, %fastsearch.exit.thread.i.i ], [ %i.km, %Py_DECREF.exit65.i.i ] ; 3 uses
  %i.kr = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !201 ; 17 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %Py_DECREF.exit67.i.i, label %bb.di

bb.di:                                            ; preds = %fastsearch.exit.thread.thread.i.i
  %i.kt = getelementptr i8, ptr %i.kr, i64 48
  store i64 0, ptr %i.kt, align 8, !tbaa !27
  %i.ku = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %.05129.i.i) #17, !inline_history !201 ; 3 uses
  %i.kv = getelementptr i8, ptr %i.kr, i64 56
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !28
  %i.kw = icmp eq ptr %i.ku, null
  br i1 %i.kw, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  %i.kx = load i32, ptr %i.kr, align 8, !tbaa !29 ; 2 uses
  %.not.i.i78.i.i = icmp sgt i32 %i.kx, -1
  br i1 %.not.i.i78.i.i, label %bb.dk, label %Py_DECREF.exit67.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.ky = add nsw i32 %i.kx, -1                   ; 2 uses
  store i32 %i.ky, ptr %i.kr, align 8, !tbaa !29
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.dl, label %Py_DECREF.exit67.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !201
  br label %Py_DECREF.exit67.i.i

bb.dm:                                            ; preds = %bb.di
  %i.la = getelementptr i8, ptr %i.ku, i64 32     ; 3 uses
  %i.lb = getelementptr i8, ptr %i.kr, i64 40
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !30
  %i.lc = getelementptr i8, ptr %i.kr, i64 32
  store ptr %i.la, ptr %i.lc, align 8, !tbaa !31
  %i.ld = getelementptr i8, ptr %i.kr, i64 16
  store i64 %.05129.i.i, ptr %i.ld, align 8, !tbaa !32
  %i.le = getelementptr i8, ptr %i.kr, i64 24
  store i64 %.05129.i.i, ptr %i.le, align 8, !tbaa !33
  %i.lf = icmp ne ptr %.val.i, null
  %i.lg = icmp ne i64 %.05129.i.i, 0
  %or.cond.i76.i.i = and i1 %i.lf, %i.lg
  br i1 %or.cond.i76.i.i, label %bb.dn, label %PyByteArray_FromStringAndSize.exit79.i.i

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr nonnull readonly align 1 %.val.i, i64 %.05129.i.i, i1 false)
  br label %PyByteArray_FromStringAndSize.exit79.i.i

PyByteArray_FromStringAndSize.exit79.i.i:         ; preds = %bb.dn, %bb.dm
  %i.lh = icmp slt i64 %.020.i.i, 12
  br i1 %i.lh, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.li = getelementptr i8, ptr %i.gw, i64 24
  %.val.i23.i = load ptr, ptr %i.li, align 8, !tbaa !72
  %i.lj = getelementptr [8 x i8], ptr %.val.i23.i, i64 %.020.i.i
  store ptr %i.kr, ptr %i.lj, align 8, !tbaa !20
  br label %Py_DECREF.exit61.i.i

bb.dp:                                            ; preds = %PyByteArray_FromStringAndSize.exit79.i.i
  %i.lk = call i32 @PyList_Append(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.kr) #17, !inline_history !196
  %.not59.i.i = icmp eq i32 %i.lk, 0
  %i.ll = load i32, ptr %i.kr, align 8, !tbaa !29 ; 3 uses
  %.not.i60.i.i = icmp sgt i32 %i.ll, -1          ; 2 uses
  br i1 %.not59.i.i, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.dr, label %Py_DECREF.exit67.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lm, ptr %i.kr, align 8, !tbaa !29
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.ds, label %Py_DECREF.exit67.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !196
  br label %Py_DECREF.exit67.i.i

bb.dt:                                            ; preds = %bb.dp
  br i1 %.not.i60.i.i, label %bb.du, label %Py_DECREF.exit61.i.i

bb.du:                                            ; preds = %bb.dt
  %i.lo = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lo, ptr %i.kr, align 8, !tbaa !29
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.dv, label %Py_DECREF.exit61.i.i

bb.dv:                                            ; preds = %bb.du
  call void @_Py_Dealloc(ptr noundef nonnull %i.kr) #17, !inline_history !196
  br label %Py_DECREF.exit61.i.i

Py_DECREF.exit61.i.i:                             ; preds = %bb.dv, %bb.du, %bb.dt, %bb.do
  %i.lq = add i64 %.020.i.i, 1
  %i.lr = getelementptr i8, ptr %i.gw, i64 16
  store i64 %i.lq, ptr %i.lr, align 8, !tbaa !32
  %i.ls = call i32 @PyList_Reverse(ptr noundef nonnull %i.gw) #17, !inline_history !196
  %i.lt = icmp slt i32 %i.ls, 0
  br i1 %i.lt, label %Py_DECREF.exit67.i.i, label %stringlib_rsplit.exit.i

Py_DECREF.exit67.i.i:                             ; preds = %bb.cs, %Py_DECREF.exit61.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dl, %bb.dk, %bb.dj, %fastsearch.exit.thread.thread.i.i, %bb.dh, %bb.dd, %bb.dc, %bb.db, %bb.cw, %bb.cv, %bb.cu, %bb.cr
  %i.lu = load i32, ptr %i.gw, align 8, !tbaa !29 ; 2 uses
  %.not.i.i22.i = icmp sgt i32 %i.lu, -1
  br i1 %.not.i.i22.i, label %bb.dw, label %stringlib_rsplit.exit.i

bb.dw:                                            ; preds = %Py_DECREF.exit67.i.i
  %i.lv = add nsw i32 %i.lu, -1                   ; 2 uses
  store i32 %i.lv, ptr %i.gw, align 8, !tbaa !29
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.dx, label %stringlib_rsplit.exit.i

bb.dx:                                            ; preds = %bb.dw
  call void @_Py_Dealloc(ptr noundef nonnull %i.gw) #17, !inline_history !196
  br label %stringlib_rsplit.exit.i

stringlib_rsplit.exit.i:                          ; preds = %bb.dx, %bb.dw, %Py_DECREF.exit67.i.i, %Py_DECREF.exit61.i.i, %bb.cj, %bb.ci, %bb.ch, %Py_DECREF.exit62.i.i.i, %bb.cg, %bb.ax, %bb.aw
  %.053.i.i = phi ptr [ null, %bb.aw ], [ %i.gw, %Py_DECREF.exit61.i.i ], [ null, %bb.cj ], [ null, %bb.ci ], [ null, %bb.ax ], [ %i.dw, %bb.cg ], [ null, %Py_DECREF.exit62.i.i.i ], [ null, %bb.ch ], [ null, %Py_DECREF.exit67.i.i ], [ null, %bb.dw ], [ null, %bb.dx ]
  call void @PyBuffer_Release(ptr noundef nonnull %4) #17, !inline_history !195
  br label %bytearray_rsplit_impl.exit

bytearray_rsplit_impl.exit:                       ; preds = %bb.j, %.critedge68.i.i, %Py_DECREF.exit76.i.i, %bb.as, %bb.at, %bb.au, %stringlib_rsplit.exit.i
  %.0.i = phi ptr [ %.053.i.i, %stringlib_rsplit.exit.i ], [ null, %bb.au ], [ null, %bb.j ], [ %i.ab, %.critedge68.i.i ], [ null, %Py_DECREF.exit76.i.i ], [ null, %bb.as ], [ null, %bb.at ]
  %i.lx = load i64, ptr %i.t, align 8, !tbaa !27
  %i.ly = add i64 %i.lx, -1
  store i64 %i.ly, ptr %i.t, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.dy

bb.dy:                                            ; preds = %Py_DECREF.exit.thread, %bytearray_rsplit_impl.exit, %bb.c
  %.036 = phi ptr [ %.0.i, %bytearray_rsplit_impl.exit ], [ null, %bb.c ], [ null, %Py_DECREF.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_rstrip(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.64, i64 noundef %2, i64 noundef 0, i64 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.c ], [ %i.c, %bb.d ]
  %i.d = tail call fastcc ptr @bytearray_strip_impl_helper(ptr noundef readonly %0, ptr noundef %.0, i32 noundef 1), !inline_history !203
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.08 = phi ptr [ %i.d, %bb.e ], [ null, %bb.b ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_split(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Py_buffer, align 8          ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !32
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread53, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @bytearray_split._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not44 = icmp eq ptr %i.g, null
  br i1 %.not44, label %bb.ds, label %.thread53

end_hunk_1
begin_hunk_2_@fastsearch:bb.a
.preheader.i:                                     ; preds = %bb.f
  %i.h = icmp ult ptr %0, %i.f
  br i1 %i.h, label %.lr.ph.i, label %stringlib_find_char.exit

bb.g:                                             ; preds = %bb.f
  %i.i = sext i8 %i.e to i32
  %i.j = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.i, i64 noundef %1) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %stringlib_find_char.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l
  br label %stringlib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.j
  %.021.i = phi ptr [ %i.s, %bb.j ], [ %0, %.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.021.i, align 1, !tbaa !29
  %i.o = icmp eq i8 %i.n, %i.e
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %.021.i to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %stringlib_find_char.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.021.i, i64 1     ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.f
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !2

bb.k:                                             ; preds = %bb.e
  %i.t = load i8, ptr %2, align 1, !tbaa !29      ; 2 uses
  %i.u = icmp sgt i64 %1, 15
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = sext i8 %i.t to i32
  %i.w = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %1) #18 ; 2 uses
  %.not.i67 = icmp eq ptr %i.w, null
  br i1 %.not.i67, label %stringlib_find_char.exit, label %bb.m

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
  br i1 %i.ac, label %.lr.ph, label %stringlib_find_char.exit, !llvm.loop !3

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.0.i142 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i142, i64 -1  ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.af = icmp eq i8 %i.ae, %i.t
  br i1 %i.af, label %bb.p, label %bb.o, !llvm.loop !3

bb.p:                                             ; preds = %.lr.ph
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %0 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  br label %stringlib_find_char.exit

bb.q:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %4, 9223372036854775807
  %i.ak = load i8, ptr %2, align 1, !tbaa !29     ; 3 uses
  br i1 %i.aj, label %.lr.ph.i68.preheader, label %.lr.ph.i70

.lr.ph.i68.preheader:                             ; preds = %bb.q
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i68.preheader145, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i68.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi143 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !29
  %wide.load144 = load <2 x i8>, ptr %i.am, align 1, !tbaa !29
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load144, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi143, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !241

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i68.preheader145

.lr.ph.i68.preheader145:                          ; preds = %.lr.ph.i68.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i68.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader145, %.lr.ph.i68
  %.09.i = phi i64 [ %i.az, %.lr.ph.i68 ], [ %.09.i.ph, %.lr.ph.i68.preheader145 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i68 ], [ %.078.i.ph, %.lr.ph.i68.preheader145 ]
  %i.av = getelementptr i8, ptr %0, i64 %.09.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = icmp eq i8 %i.aw, %i.ak
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.078.i, %i.ay         ; 2 uses
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i69 = icmp eq i64 %i.az, %1
  br i1 %exitcond.not.i69, label %stringlib_find_char.exit, label %.lr.ph.i68, !llvm.loop !242

.lr.ph.i70:                                       ; preds = %bb.q, %bb.s
  %.016.i71 = phi i64 [ %.1.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.01115.i = phi i64 [ %i.bf, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %.01115.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = icmp eq i8 %i.bb, %i.ak
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i70
  %i.bd = add i64 %.016.i71, 1                    ; 2 uses
  %i.be = icmp eq i64 %i.bd, %4
  br i1 %i.be, label %stringlib_find_char.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bd, %bb.r ], [ %.016.i71, %.lr.ph.i70 ] ; 2 uses
  %i.bf = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.bf, %1
  br i1 %exitcond.not.i72, label %stringlib_find_char.exit, label %.lr.ph.i70, !llvm.loop !243

bb.t:                                             ; preds = %bb.c
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.am, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bk = add nsw i64 %3, -1                      ; 12 uses
  %i.bl = getelementptr i8, ptr %2, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !29  ; 5 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bn = icmp eq i64 %3, 2
  br i1 %i.bn, label %.lr.ph.i73.epil.preheader, label %.new

.new:                                             ; preds = %bb.w
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i73

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.w
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.du, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod162 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bo = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29  ; 2 uses
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = or i64 %i.bs, %.06999.i.epil.init
  %i.bu = icmp eq i8 %i.bp, %i.bm
  %i.bv = xor i64 %.068100.i.epil.init, -1
  %i.bw = add nsw i64 %i.bk, %i.bv
  %.171.i.epil = select i1 %i.bu, i64 %i.bw, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i73.epil.preheader
  %.lcssa159 = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i73.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i73.epil.preheader ]
  %i.bx = sub nsw i64 %1, %3                      ; 3 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa159, %i.cb                ; 2 uses
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.ag
  %.066110.us.i = phi i64 [ %i.dd, %bb.ag ], [ 0, %._crit_edge.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.ag ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !29
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cc
  %.not89.us.i = icmp eq i64 %i.cm, 0
  %i.cn = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cn, %.066110.us.i
  br label %bb.ag

bb.z:                                             ; preds = %.preheader.us.i, %bb.aa
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cs, %bb.aa ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.de, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !29
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %bb.aa, label %._crit_edge104.us.i

bb.aa:                                            ; preds = %bb.z
  %i.cs = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.cs, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.z, !llvm.loop !244

._crit_edge104.us.i:                              ; preds = %bb.z
  %i.ct = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.ct, %i.bx
  br i1 %.not91.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge104.us.i
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.cw = and i8 %i.cv, 63
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cy, %i.cc
  %.not92.us.i = icmp eq i64 %i.cz, 0
  br i1 %.not92.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge104.us.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ac ], [ %3, %bb.ab ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.ag

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.aa
  br i1 %i.b, label %bb.ae, label %stringlib_find_char.exit

bb.ae:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.da = add i64 %.072109.us.i, 1                ; 2 uses
  %i.db = icmp eq i64 %i.da, %4
  br i1 %i.db, label %stringlib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = add i64 %.066110.us.i, %i.bk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.y, %bb.x
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.x ], [ %.072109.us.i, %bb.y ], [ %.072109.us.i, %bb.ad ], [ %i.da, %bb.af ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ad ], [ %i.dc, %bb.af ]
  %i.dd = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dd, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !245

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.de = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dy, %.lr.ph.i73 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.du, %.lr.ph.i73 ]
  %.07098.i = phi i64 [ %i.bk, %.new ], [ %.171.i.1, %.lr.ph.i73 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i73 ]
  %i.df = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29  ; 2 uses
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = or i64 %i.dj, %.06999.i
  %i.dl = icmp eq i8 %i.dg, %i.bm
  %i.dm = xor i64 %.068100.i, -1
  %i.dn = add nsw i64 %i.bk, %i.dm
  %.171.i = select i1 %i.dl, i64 %i.dn, i64 %.07098.i
  %i.do = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !29  ; 2 uses
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = or i64 %i.dt, %i.dk                     ; 3 uses
  %i.dv = icmp eq i8 %i.dq, %i.bm
  %i.dw = xor i64 %.068100.i, -2
  %i.dx = add nsw i64 %i.bk, %i.dw
  %.171.i.1 = select i1 %i.dv, i64 %i.dx, i64 %.171.i ; 3 uses
  %i.dy = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i73, !llvm.loop !246

.loopexit.i:                                      ; preds = %bb.ag
  %i.dz = select i1 %i.b, i64 %.274.us.i, i64 -1
  br label %stringlib_find_char.exit

bb.ah:                                            ; preds = %bb.v
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.ak:                                            ; preds = %bb.ai
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.ah
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.t
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !29     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter164 = and i64 %i.ei, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.am
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !29  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.am
  %.060.i.unr = phi i64 [ %i.ei, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.ei, %bb.am ], [ %i.eu, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.em, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %.lcssa156.unr = phi i64 [ poison, %bb.am ], [ %i.es, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.am ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i75

.preheader56.i:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa156 = phi i64 [ %.lcssa156.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gj, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.ew = sub nsw i64 %1, %3
  br label %.lr.ph66.split.us.i

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.as
  %.14865.us.i = phi i64 [ %i.fu, %bb.as ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !29
  %i.ez = icmp eq i8 %i.ey, %i.ej
  br i1 %i.ez, label %.preheader.us.i78, label %bb.an

bb.an:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %stringlib_find_char.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !29
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa156
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ap
  %.04662.us.i = phi i64 [ %i.fl, %bb.ap ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !29
  %i.fj = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !29
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.ap, label %.thread.us.i

bb.ap:                                            ; preds = %.preheader.us.i78
  %i.fl = add nsw i64 %.04662.us.i, -1
  %i.fm = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fm, label %.preheader.us.i78, label %stringlib_find_char.exit, !llvm.loop !4

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fn = getelementptr i8, ptr %i.ex, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !29
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %.lcssa156
  %.not54.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.ar ], [ %i.fg, %bb.ao ], [ %3, %bb.aq ]
  %i.ft = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fu = add nsw i64 %i.ft, -1
  %i.fv = icmp sgt i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !5

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gl, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fw = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !29  ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04958.i
  %i.gc = icmp eq i8 %i.fx, %i.ej
  %i.gd = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.gc, i64 %i.gd, i64 %.060.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !29  ; 2 uses
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = or i64 %i.gi, %i.gb                     ; 2 uses
  %i.gk = icmp eq i8 %i.gf, %i.ej
  %i.gl = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gk, i64 %i.gl, i64 %spec.select.i76 ; 2 uses
  %i.gm = icmp sgt i64 %.04759.i, 2
  br i1 %i.gm, label %.lr.ph.i75, label %.preheader56.i, !llvm.loop !6

stringlib_find_char.exit:                         ; preds = %bb.ae, %._crit_edge104.us.thread.i.loopexit, %bb.as, %bb.an, %bb.ap, %bb.o, %bb.j, %bb.s, %bb.r, %.lr.ph.i68, %bb.n, %middle.block, %.loopexit.i, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %.preheader.i, %bb.d, %bb.a, %bb.b, %bb.al, %bb.ak, %bb.aj
  %.0 = phi i64 [ -1, %bb.o ], [ -1, %bb.a ], [ -1, %bb.d ], [ %4, %bb.r ], [ %.14865.us.i, %bb.ap ], [ -1, %bb.n ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.eh, %bb.al ], [ -1, %bb.b ], [ %i.m, %bb.h ], [ -1, %bb.g ], [ %i.r, %bb.i ], [ -1, %.preheader.i ], [ %i.z, %bb.m ], [ -1, %bb.l ], [ %i.ai, %bb.p ], [ %i.dz, %.loopexit.i ], [ -1, %bb.j ], [ %i.au, %middle.block ], [ -1, %bb.as ], [ %.1.i, %bb.s ], [ -1, %bb.an ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.ae ]
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
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @stringlib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #10 {
.lr.ph.preheader:
  %6 = alloca %struct.stringlib__pre, align 8     ; 5 uses
  %7 = alloca %struct.stringlib__pre, align 8     ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29    ; 4 uses
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
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !29 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !29 ; 2 uses
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
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !247

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
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
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

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !29
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !248

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
end_hunk_2
begin_hunk_3_@stringlib_adaptive_find:.lr.ph.preheader

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %stringlib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @stringlib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %stringlib__two_way_count.exit, label %.lr.ph.i

stringlib__two_way_count.exit:                    ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %stringlib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %stringlib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stringlib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #11 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !79
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !80
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29    ; 2 uses
  %i.h = icmp slt i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !251

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !29    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = icmp slt i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %stringlib__factorize.exit, !llvm.loop !251

stringlib__factorize.exit:                        ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !81
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !82
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %stringlib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !83
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %stringlib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !84
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !29
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.05559
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.05559
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !84
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.05559, -1
  %i.bb = icmp sgt i64 %.05559, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !252

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !29
  %i.bf = sub nuw nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub nuw nsw i64 %i.ar, %.061
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.061
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !29
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !29
  %i.bn = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bn, %1
  br i1 %i.bo, label %bb.n, label %._crit_edge, !llvm.loop !253
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @stringlib__two_way(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %.fr240 = freeze i64 %i.b                       ; 9 uses
  %i.c = getelementptr i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81
  %.fr239 = freeze i64 %i.d                       ; 13 uses
  %i.e = getelementptr i8, ptr %2, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !79     ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 %.fr240
  %i.i = getelementptr i8, ptr %i.h, i64 -1       ; 6 uses
  %i.j = getelementptr i8, ptr %0, i64 %1         ; 10 uses
  %i.k = getelementptr i8, ptr %2, i64 44         ; 5 uses
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !84   ; 4 uses
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr240, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !82
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
  %.1138 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1138.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1138, align 1, !tbaa !29
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1138, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0128 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0128, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1138.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0137.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.2139 = phi ptr [ %.4141, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %.1135 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.2139, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1135) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr240
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1135, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0126199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0126199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29
  %i.al = getelementptr i8, ptr %i.af, i64 %.0126199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0126199, %i.o
  %i.ao = getelementptr i8, ptr %.2139, i64 %i.m
  %i.ap = sub i64 %.0126199, %.fr239
  %i.aq = getelementptr i8, ptr %.2139, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3140 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0137.be = phi ptr [ %.3140, %bb.b ], [ %.4141, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0137.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0126199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr240
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !254

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1127200, 1                    ; 2 uses
  %exitcond278.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond278.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !255

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1127200 = phi i64 [ %i.au, %bb.d ], [ %.1135, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1127200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1127200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2139, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !29  ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4141.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4141 = getelementptr i8, ptr %i.az, i64 %.4141.idx ; 2 uses
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
  %.6143.us = phi ptr [ %.6143.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6143.us, align 1, !tbaa !29
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29  ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6143.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3131.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3131.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.l
  %.6143.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.l ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph207.us, %bb.i
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cb, %bb.i ] ; 5 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  %i.bz = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %.not153.us = icmp eq i8 %i.by, %i.ca
  br i1 %.not153.us, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cb = add i64 %.0124205.us, 1                 ; 2 uses
  %exitcond280.not = icmp eq i64 %i.cb, %.fr240
end_hunk_3
