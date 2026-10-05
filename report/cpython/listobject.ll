Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PyList_Sort:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val7 = load i64, ptr %i.c, align 8, !tbaa !53
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
  %i.g = load i32, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.e, align 8, !tbaa !32
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
  %.val189 = load i64, ptr %i.b, align 8, !tbaa !33 ; 21 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 11 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.e, align 8, !tbaa !34
  %i.g = icmp eq ptr %1, null
  %i.h = or i1 %i.a, %i.g
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %.val189, 128
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %.val189, 3
  %i.k = tail call ptr @PyMem_Malloc(i64 noundef %i.j) #13 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @PyErr_NoMemory() #13      ; 0 uses
  br label %merge_freemem.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2112
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %.val189 ; 3 uses
  %i.p = icmp sgt i64 %.val189, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit.thread

.lr.ph.preheader:                                 ; preds = %bb.c, %bb.e
  %.0150405 = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.c ] ; 5 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.0152322 = phi i64 [ %i.ac, %bb.i ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.q = getelementptr [8 x i8], ptr %i.d, i64 %.0152322
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = tail call ptr @PyObject_CallOneArg(ptr noundef %1, ptr noundef %i.r) #13 ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %.0150405, i64 %.0152322
  store ptr %i.s, ptr %i.t, align 8, !tbaa !54
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %.preheader308, label %bb.i

.preheader308:                                    ; preds = %.lr.ph
  %.not342 = icmp eq i64 %.0152322, 0
  br i1 %.not342, label %._crit_edge, label %.lr.ph325

.lr.ph325:                                        ; preds = %.preheader308, %Py_DECREF.exit185
  %.1153324.in = phi i64 [ %.1153324, %Py_DECREF.exit185 ], [ %.0152322, %.preheader308 ] ; 2 uses
  %.1153324 = add nsw i64 %.1153324.in, -1        ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %.0150405, i64 %.1153324
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %.not.i184 = icmp sgt i32 %i.x, -1
  br i1 %.not.i184, label %bb.f, label %Py_DECREF.exit185

bb.f:                                             ; preds = %.lr.ph325
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %Py_DECREF.exit185

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.w) #13
  br label %Py_DECREF.exit185

Py_DECREF.exit185:                                ; preds = %.lr.ph325, %bb.f, %bb.g
  %i.aa = icmp sgt i64 %.1153324.in, 1
  br i1 %i.aa, label %.lr.ph325, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %Py_DECREF.exit185, %.preheader308
  %i.ab = icmp sgt i64 %.val189, 127
  br i1 %i.ab, label %bb.h, label %merge_freemem.exit

bb.h:                                             ; preds = %._crit_edge
  call void @PyMem_Free(ptr noundef nonnull %.0150405) #13
  br label %merge_freemem.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ac = add nuw nsw i64 %.0152322, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %.val189
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !98

.loopexit:                                        ; preds = %bb.i, %bb.a
  %.sroa.23.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.i ] ; 8 uses
  %.sroa.0.0 = phi ptr [ %i.d, %bb.a ], [ %.0150405, %bb.i ] ; 11 uses
  %.1151 = phi ptr [ null, %bb.a ], [ %.0150405, %bb.i ] ; 8 uses
  %i.ad = icmp sgt i64 %.val189, 1
  br i1 %i.ad, label %bb.j, label %.loopexit.thread

bb.j:                                             ; preds = %.loopexit
  %i.ae = load ptr, ptr %.sroa.0.0, align 8, !tbaa !54 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val194 = load ptr, ptr %i.af, align 8, !tbaa !46 ; 5 uses
  %.not = icmp eq ptr %.val194, @PyTuple_Type
  br i1 %.not, label %bb.k, label %.critedge.preheader

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val188 = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ah = icmp sgt i64 %.val188, 0
  br i1 %i.ah, label %.lr.ph330.split.us.preheader, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.k, %bb.j
  %i.ai = icmp eq ptr %.val194, @PyLong_Type
  %i.aj = icmp eq ptr %.val194, @PyUnicode_Type
  br label %.critedge

.lr.ph330.split.us.preheader:                     ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ae, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val191 = load ptr, ptr %i.am, align 8, !tbaa !46 ; 4 uses
  %i.an = icmp eq ptr %.val191, @PyLong_Type
  %i.ao = icmp eq ptr %.val191, @PyUnicode_Type
  br label %.lr.ph330.split.us

.lr.ph330.split.us:                               ; preds = %.lr.ph330.split.us.preheader, %.thread248.us
  %.0138329.us = phi i32 [ %.2140.ph.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ] ; 4 uses
  %.0141328.us = phi i32 [ %.2143.ph.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ] ; 4 uses
  %.0145327.us = phi i32 [ %.0145.mux.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ]
  %.2154326.us = phi i64 [ %i.bb, %.thread248.us ], [ 0, %.lr.ph330.split.us.preheader ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2154326.us
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !54 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val193.us = load ptr, ptr %i.ar, align 8, !tbaa !46
  %.not296.us = icmp eq ptr %.val193.us, @PyTuple_Type
  br i1 %.not296.us, label %bb.l, label %.loopexit.thread.sink.split

bb.l:                                             ; preds = %.lr.ph330.split.us
  %i.as = getelementptr i8, ptr %i.aq, i64 16
  %.val187.us = load i64, ptr %i.as, align 8, !tbaa !33
  %.not172.us = icmp eq i64 %.val187.us, 0
  br i1 %.not172.us, label %.loopexit.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %i.aq, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val192.us = load ptr, ptr %i.av, align 8, !tbaa !46
  %.not297.us = icmp eq ptr %.val192.us, %.val191
  %.0145.mux.us = select i1 %.not297.us, i32 %.0145327.us, i32 0 ; 3 uses
  %.not174.us = icmp eq i32 %.0145.mux.us, 0
  br i1 %.not174.us, label %.thread248.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ne i32 %.0138329.us, 0
  %or.cond.us = select i1 %i.an, i1 %i.aw, i1 false
  br i1 %or.cond.us, label %4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ne i32 %.0141328.us, 0
  %or.cond3.us = select i1 %i.ao, i1 %i.ax, i1 false
  br i1 %or.cond3.us, label %bb.p, label %.thread248.us

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.au, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 28
  %.not176.us = icmp eq i32 %i.ba, 4
  %spec.select.us = zext i1 %.not176.us to i32
  br label %.thread248.us

4:                                                ; preds = %bb.n
  %5 = getelementptr i8, ptr %i.au, i64 16
  %.val195.us = load i64, ptr %5, align 8, !tbaa !59
  %6 = icmp ult i64 %.val195.us, 16
  %spec.select290.us = zext i1 %6 to i32
  br label %.thread248.us

.thread248.us:                                    ; preds = %4, %bb.p, %bb.o, %bb.m
  %.2143.ph.us = phi i32 [ %.0141328.us, %4 ], [ %.0141328.us, %bb.m ], [ %.0141328.us, %bb.o ], [ %spec.select.us, %bb.p ] ; 2 uses
  %.2140.ph.us = phi i32 [ %spec.select290.us, %4 ], [ %.0138329.us, %bb.m ], [ %.0138329.us, %bb.o ], [ %.0138329.us, %bb.p ] ; 2 uses
  %i.bb = add nuw nsw i64 %.2154326.us, 1         ; 2 uses
  %exitcond363.not = icmp eq i64 %i.bb, %.val189
  br i1 %exitcond363.not, label %._crit_edge331.loopexit, label %.lr.ph330.split.us, !llvm.loop !99

.critedge:                                        ; preds = %.critedge.preheader, %.thread248
  %.0138329 = phi i32 [ %.2140.ph, %.thread248 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.0141328 = phi i32 [ %.2143.ph, %.thread248 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.2154326 = phi i64 [ %i.bl, %.thread248 ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2154326
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val192 = load ptr, ptr %i.be, align 8, !tbaa !46
  %.not297 = icmp eq ptr %.val192, %.val194
  br i1 %.not297, label %bb.q, label %.loopexit.thread.sink.split

bb.q:                                             ; preds = %.critedge
  %i.bf = icmp ne i32 %.0138329, 0
  %or.cond = select i1 %i.ai, i1 %i.bf, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %i.bd, i64 16
  %.val195 = load i64, ptr %i.bg, align 8, !tbaa !59
  %7 = icmp ult i64 %.val195, 16
  %spec.select290 = zext i1 %7 to i32
  br label %.thread248

bb.s:                                             ; preds = %bb.q
  %i.bh = icmp ne i32 %.0141328, 0
  %or.cond3 = select i1 %i.aj, i1 %i.bh, i1 false
  br i1 %or.cond3, label %bb.t, label %.thread248

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr i8, ptr %i.bd, i64 32
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = and i32 %i.bj, 28
  %.not176 = icmp eq i32 %i.bk, 4
  %spec.select = zext i1 %.not176 to i32
  br label %.thread248

.thread248:                                       ; preds = %bb.r, %bb.t, %bb.s
  %.2143.ph = phi i32 [ %.0141328, %bb.r ], [ %spec.select, %bb.t ], [ %.0141328, %bb.s ] ; 2 uses
  %.2140.ph = phi i32 [ %spec.select290, %bb.r ], [ %.0138329, %bb.t ], [ %.0138329, %bb.s ] ; 2 uses
  %i.bl = add nuw nsw i64 %.2154326, 1            ; 2 uses
  %exitcond361.not = icmp eq i64 %i.bl, %.val189
  br i1 %exitcond361.not, label %._crit_edge331, label %.critedge, !llvm.loop !99

._crit_edge331.loopexit:                          ; preds = %.thread248.us
  %i.bm = icmp eq i32 %.0145.mux.us, 0
  br label %._crit_edge331

._crit_edge331:                                   ; preds = %.thread248, %._crit_edge331.loopexit
  %i.bn = phi ptr [ %.val191, %._crit_edge331.loopexit ], [ %.val194, %.thread248 ] ; 5 uses
  %i.bo = phi i1 [ true, %._crit_edge331.loopexit ], [ false, %.thread248 ] ; 6 uses
  %.0145.lcssa = phi i1 [ %i.bm, %._crit_edge331.loopexit ], [ false, %.thread248 ]
  %.0141.lcssa = phi i32 [ %.2143.ph.us, %._crit_edge331.loopexit ], [ %.2143.ph, %.thread248 ]
  %.0138.lcssa = phi i32 [ %.2140.ph.us, %._crit_edge331.loopexit ], [ %.2140.ph, %.thread248 ]
  br i1 %.0145.lcssa, label %.split267, label %bb.u

bb.u:                                             ; preds = %._crit_edge331
  %i.bp = icmp eq ptr %i.bn, @PyUnicode_Type
  %i.bq = icmp ne i32 %.0141.lcssa, 0
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_latin_compare, ptr %i.br, align 8, !tbaa !62
  br i1 %i.bo, label %.thread272, label %.loopexit.thread

bb.v:                                             ; preds = %bb.u
  %i.bs = icmp eq ptr %i.bn, @PyLong_Type
  %i.bt = icmp ne i32 %.0138.lcssa, 0
  %or.cond7 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond7, label %.split268.a, label %bb.w

.split268.a:                                      ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_long_compare, ptr %i.bu, align 8, !tbaa !62
  br i1 %i.bo, label %.thread272, label %.loopexit.thread

bb.w:                                             ; preds = %bb.v
  %i.bv = icmp eq ptr %i.bn, @PyFloat_Type
  br i1 %i.bv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr i8, ptr %i.bn, i64 200
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 4160
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !64
  %.not178 = icmp eq ptr %i.bx, null
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 2 uses
  br i1 %.not178, label %.split270, label %.split269

.split269:                                        ; preds = %bb.x
  store ptr @unsafe_object_compare, ptr %i.bz, align 8, !tbaa !62
  br i1 %i.bo, label %8, label %.loopexit.thread

.split270:                                        ; preds = %bb.x
  store ptr @safe_object_compare, ptr %i.bz, align 8, !tbaa !62
  br i1 %i.bo, label %8, label %.loopexit.thread

.split267:                                        ; preds = %._crit_edge331
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @safe_object_compare, ptr %i.ca, align 8, !tbaa !62
  br i1 %i.bo, label %8, label %.loopexit.thread

bb.y:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_float_compare, ptr %i.cb, align 8, !tbaa !62
  br i1 %i.bo, label %.thread272, label %.loopexit.thread

8:                                                ; preds = %.split270, %.split269, %.split267
  %9 = phi ptr [ @safe_object_compare, %.split270 ], [ @unsafe_object_compare, %.split269 ], [ @safe_object_compare, %.split267 ]
  %10 = icmp eq ptr %i.bn, @PyTuple_Type
  %spec.select436 = select i1 %10, ptr @safe_object_compare, ptr %9
  br label %.thread272

.thread272:                                       ; preds = %8, %.split268.a, %.split, %bb.y
  %.sink = phi ptr [ %spec.select436, %8 ], [ @unsafe_float_compare, %bb.y ], [ @unsafe_latin_compare, %.split ], [ @unsafe_long_compare, %.split268.a ]
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4168
  store ptr %.sink, ptr %i.cc, align 8, !tbaa !65
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.critedge, %bb.l, %.lr.ph330.split.us, %.thread272
  %safe_object_compare.sink = phi ptr [ @unsafe_tuple_compare, %.thread272 ], [ @safe_object_compare, %bb.l ], [ @safe_object_compare, %.lr.ph330.split.us ], [ @safe_object_compare, %.critedge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr %safe_object_compare.sink, ptr %i.cd, align 8, !tbaa !62
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.e, %.split270, %.split269, %.split268.a, %.split267, %.split, %bb.y, %.loopexit
  %i.ce = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %.split270 ], [ true, %.split269 ], [ true, %.split268.a ], [ true, %.split267 ], [ true, %.split ], [ true, %bb.y ], [ true, %.loopexit.thread.sink.split ]
  %.1151411 = phi ptr [ %i.o, %bb.e ], [ %.1151, %.loopexit ], [ %.1151, %.split270 ], [ %.1151, %.split269 ], [ %.1151, %.split268.a ], [ %.1151, %.split267 ], [ %.1151, %.split ], [ %.1151, %bb.y ], [ %.1151, %.loopexit.thread.sink.split ] ; 6 uses
  %.sroa.0.0410 = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.0, %.split270 ], [ %.sroa.0.0, %.split269 ], [ %.sroa.0.0, %.split268.a ], [ %.sroa.0.0, %.split267 ], [ %.sroa.0.0, %.split ], [ %.sroa.0.0, %bb.y ], [ %.sroa.0.0, %.loopexit.thread.sink.split ] ; 2 uses
  %.sroa.23.0409 = phi ptr [ %i.d, %bb.e ], [ %.sroa.23.0, %.loopexit ], [ %.sroa.23.0, %.split270 ], [ %.sroa.23.0, %.split269 ], [ %.sroa.23.0, %.split268.a ], [ %.sroa.23.0, %.split267 ], [ %.sroa.23.0, %.split ], [ %.sroa.23.0, %bb.y ], [ %.sroa.23.0, %.loopexit.thread.sink.split ]
  %i.cf = icmp ne ptr %.1151411, null             ; 3 uses
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit.thread
  %i.cg = add i64 %.val189, 1                     ; 2 uses
  %i.ch = sdiv i64 %i.cg, 2
  %i.ci = icmp sgt i64 %i.cg, 257
  %spec.select.i = select i1 %i.ci, i64 128, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 2104
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %spec.select.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit.thread
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.z ], [ 256, %.loopexit.thread ]
  %.sink.i = phi ptr [ %i.ck, %bb.z ], [ null, %.loopexit.thread ]
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %spec.select.sink.i, ptr %i.cl, align 8, !tbaa !66
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.cm, align 8, !tbaa !67
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 2104 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !69
  store i64 7, ptr %3, align 8, !tbaa !70
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.val189, ptr %i.cq, align 8, !tbaa !113
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.0.0410, ptr %i.cr, align 8, !tbaa !114
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %bb.aa
  %storemerge24.i = phi i64 [ 0, %bb.aa ], [ %i.cu, %bb.ab ] ; 4 uses
  %i.cs = ashr i64 %.val189, %storemerge24.i
  %i.ct = icmp sgt i64 %i.cs, 63
  %i.cu = add i64 %storemerge24.i, 1
  br i1 %i.ct, label %bb.ab, label %merge_init.exit, !llvm.loop !100

merge_init.exit:                                  ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4184 ; 2 uses
  store i64 %storemerge24.i, ptr %i.cv, align 8, !tbaa !115
  %i.cw = trunc i64 %storemerge24.i to i32
  %notmask.i = shl nsw i32 -1, %i.cw
  %i.cx = xor i32 %notmask.i, -1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 4192 ; 2 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !116
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4176 ; 3 uses
  store i64 0, ptr %i.da, align 8, !tbaa !117
  %i.db = icmp slt i64 %.val189, 2
  br i1 %i.db, label %found_new_run.exit.thread283, label %bb.ac

bb.ac:                                            ; preds = %merge_init.exit
  %.not179 = icmp eq i32 %2, 0
  br i1 %.not179, label %reverse_slice.exit204, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = getelementptr [8 x i8], ptr %.1151411, i64 %.val189
  %.01011.i = getelementptr i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.dd = icmp ult ptr %.1151411, %.01011.i
  %or.cond292 = select i1 %i.cf, i1 %i.dd, i1 false
  br i1 %or.cond292, label %.lr.ph.i, label %reverse_slice.exit

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.01013.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01011.i, %bb.ad ] ; 3 uses
  %.012.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.1151411, %bb.ad ] ; 3 uses
  %i.de = load ptr, ptr %.012.i, align 8, !tbaa !54
  %i.df = load ptr, ptr %.01013.i, align 8, !tbaa !54
  store ptr %i.df, ptr %.012.i, align 8, !tbaa !54
  store ptr %i.de, ptr %.01013.i, align 8, !tbaa !54
  %i.dg = getelementptr i8, ptr %.012.i, i64 8    ; 2 uses
  %.010.i = getelementptr i8, ptr %.01013.i, i64 -8 ; 2 uses
  %i.dh = icmp ult ptr %i.dg, %.010.i
  br i1 %i.dh, label %.lr.ph.i, label %reverse_slice.exit, !llvm.loop !1

reverse_slice.exit:                               ; preds = %.lr.ph.i, %bb.ad
  %i.di = getelementptr [8 x i8], ptr %i.d, i64 %.val189
  %.01011.i199 = getelementptr i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dj = icmp ult ptr %i.d, %.01011.i199
  br i1 %i.dj, label %.lr.ph.i200, label %reverse_slice.exit204

.lr.ph.i200:                                      ; preds = %reverse_slice.exit, %.lr.ph.i200
  %.01013.i201 = phi ptr [ %.010.i203, %.lr.ph.i200 ], [ %.01011.i199, %reverse_slice.exit ] ; 3 uses
  %.012.i202 = phi ptr [ %i.dm, %.lr.ph.i200 ], [ %i.d, %reverse_slice.exit ] ; 3 uses
  %i.dk = load ptr, ptr %.012.i202, align 8, !tbaa !54
  %i.dl = load ptr, ptr %.01013.i201, align 8, !tbaa !54
  store ptr %i.dl, ptr %.012.i202, align 8, !tbaa !54
  store ptr %i.dk, ptr %.01013.i201, align 8, !tbaa !54
  %i.dm = getelementptr i8, ptr %.012.i202, i64 8 ; 2 uses
  %.010.i203 = getelementptr i8, ptr %.01013.i201, i64 -8 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %.010.i203
  br i1 %i.dn, label %.lr.ph.i200, label %reverse_slice.exit204, !llvm.loop !1

reverse_slice.exit204:                            ; preds = %.lr.ph.i200, %reverse_slice.exit, %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  br label %bb.ae

bb.ae:                                            ; preds = %found_new_run.exit, %reverse_slice.exit204
  %.sroa.23.1 = phi ptr [ %.sroa.23.0409, %reverse_slice.exit204 ], [ %spec.select293, %found_new_run.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0410, %reverse_slice.exit204 ], [ %i.kz, %found_new_run.exit ] ; 24 uses
  %.0159 = phi i64 [ %.val189, %reverse_slice.exit204 ], [ %i.lb, %found_new_run.exit ] ; 12 uses
  %.8.val.fr.i = freeze ptr %.sroa.23.1           ; 20 uses
  %i.dq = icmp sgt i64 %.0159, 1
  br i1 %i.dq, label %.lr.ph.i206, label %._crit_edge.thread182.i

.lr.ph.i206:                                      ; preds = %bb.ae, %bb.ag
  %.068141.i = phi i64 [ %i.dy, %bb.ag ], [ 1, %bb.ae ] ; 8 uses
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !62
  %i.ds = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.068141.i ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !54
  %i.du = getelementptr i8, ptr %i.ds, i64 -8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !54
  %i.dw = call i32 %i.dr(ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %found_new_run.exit.thread283, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i206
  %.not.i207 = icmp eq i32 %i.dw, 0
  br i1 %.not.i207, label %bb.ag, label %._crit_edge.i

bb.ag:                                            ; preds = %bb.af
  %i.dy = add nuw nsw i64 %.068141.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %.0159
  br i1 %exitcond.not.i, label %count_run.exit, label %.lr.ph.i206, !llvm.loop !102

._crit_edge.i:                                    ; preds = %bb.af
  %i.dz = getelementptr i8, ptr %i.ds, i64 -8     ; 3 uses
  %i.ea = icmp samesign ugt i64 %.068141.i, 1
  br i1 %i.ea, label %bb.ah, label %sortslice_reverse.exit.i

._crit_edge.thread182.i:                          ; preds = %bb.ae
  %i.eb = icmp eq i64 %.0159, 1
  br i1 %i.eb, label %count_run.exit.thread275, label %sortslice_reverse.exit.i

bb.ah:                                            ; preds = %._crit_edge.i
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !62
  %i.ed = load ptr, ptr %.sroa.0.1, align 8, !tbaa !54
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !54
  %i.ef = call i32 %i.ec(ptr noundef %i.ed, ptr noundef %i.ee, ptr noundef nonnull %3) #13, !inline_history !101 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %found_new_run.exit.thread283, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not77.i = icmp eq i32 %i.ef, 0
  br i1 %.not77.i, label %bb.aj, label %count_run.exit.thread275

bb.aj:                                            ; preds = %bb.ai
  %i.eh = icmp ult ptr %.sroa.0.1, %i.dz
  br i1 %i.eh, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj, %.lr.ph.i.i.i
  %.01013.i.i.i = phi ptr [ %.010.i.i.i, %.lr.ph.i.i.i ], [ %i.dz, %bb.aj ] ; 3 uses
  %.012.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i ], [ %.sroa.0.1, %bb.aj ] ; 3 uses
  %i.ei = load ptr, ptr %.012.i.i.i, align 8, !tbaa !54
  %i.ej = load ptr, ptr %.01013.i.i.i, align 8, !tbaa !54
  store ptr %i.ej, ptr %.012.i.i.i, align 8, !tbaa !54
  store ptr %i.ei, ptr %.01013.i.i.i, align 8, !tbaa !54
  %i.ek = getelementptr i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i = getelementptr i8, ptr %.01013.i.i.i, i64 -8 ; 2 uses
  %i.el = icmp ult ptr %i.ek, %.010.i.i.i
  br i1 %i.el, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i, !llvm.loop !1

reverse_slice.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.aj
  %.not.i.i = icmp ne ptr %.8.val.fr.i, null
  %i.em = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.068141.i
  %.01011.i6.i.i = getelementptr i8, ptr %i.em, i64 -8 ; 2 uses
  %i.en = icmp ult ptr %.8.val.fr.i, %.01011.i6.i.i
  %or.cond.i.i = and i1 %.not.i.i, %i.en
  br i1 %or.cond.i.i, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i

.lr.ph.i7.i.i:                                    ; preds = %reverse_slice.exit.i.i, %.lr.ph.i7.i.i
  %.01013.i8.i.i = phi ptr [ %.010.i10.i.i, %.lr.ph.i7.i.i ], [ %.01011.i6.i.i, %reverse_slice.exit.i.i ] ; 3 uses
  %.012.i9.i.i = phi ptr [ %i.eq, %.lr.ph.i7.i.i ], [ %.8.val.fr.i, %reverse_slice.exit.i.i ] ; 3 uses
  %i.eo = load ptr, ptr %.012.i9.i.i, align 8, !tbaa !54
  %i.ep = load ptr, ptr %.01013.i8.i.i, align 8, !tbaa !54
  store ptr %i.ep, ptr %.012.i9.i.i, align 8, !tbaa !54
  store ptr %i.eo, ptr %.01013.i8.i.i, align 8, !tbaa !54
  %i.eq = getelementptr i8, ptr %.012.i9.i.i, i64 8 ; 2 uses
  %.010.i10.i.i = getelementptr i8, ptr %.01013.i8.i.i, i64 -8 ; 2 uses
  %i.er = icmp ult ptr %i.eq, %.010.i10.i.i
  br i1 %i.er, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i, !llvm.loop !1

sortslice_reverse.exit.i:                         ; preds = %.lr.ph.i7.i.i, %reverse_slice.exit.i.i, %._crit_edge.i, %._crit_edge.thread182.i
  %.068.lcssa184186.i = phi i64 [ 1, %._crit_edge.thread182.i ], [ %.068141.i, %._crit_edge.i ], [ %.068141.i, %reverse_slice.exit.i.i ], [ %.068141.i, %.lr.ph.i7.i.i ] ; 2 uses
  %.169144.i = add nuw i64 %.068.lcssa184186.i, 1 ; 3 uses
  %i.es = icmp slt i64 %.169144.i, %.0159
end_hunk_0
