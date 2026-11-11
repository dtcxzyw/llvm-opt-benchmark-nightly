Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/bytearrayobject?download=true
inline.NumInlined: 605
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@bytearray_decode:bb.a
  br i1 %.not49, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.l) #17
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.p = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #17 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread62, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #18
  %i.s = load i64, ptr %i.b, align 8, !tbaa !269
  %.not50 = icmp eq i64 %i.r, %i.s
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !223
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.88) #17
  br label %.thread62

bb.j:                                             ; preds = %bb.h
  %.not51 = icmp eq i64 %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not51, label %bytearray_decode_impl.exit, label %.thread64

.thread62:                                        ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.p

.thread64:                                        ; preds = %bb.j, %bb.d
  %.036 = phi ptr [ null, %bb.d ], [ %i.p, %bb.j ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !223  ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val54 = load ptr, ptr %i.w, align 8, !tbaa !240
  %i.x = getelementptr i8, ptr %.val54, i64 168
  %.val56 = load i64, ptr %i.x, align 8, !tbaa !255
  %i.y = and i64 %.val56, 268435456
  %.not52 = icmp eq i64 %i.y, 0
  br i1 %.not52, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread64
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, ptr noundef nonnull %i.v) #17
  br label %bb.p

bb.l:                                             ; preds = %.thread64
  %i.z = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c) #17 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #18
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !269
  %.not53 = icmp eq i64 %i.ab, %i.ac
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !223
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.88) #17
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ae = icmp eq ptr %.036, null
  br i1 %i.ae, label %.thread66, label %bytearray_decode_impl.exit

.thread66:                                        ; preds = %.thread60, %bb.o
  %.03570 = phi ptr [ %i.z, %bb.o ], [ null, %.thread60 ]
  %i.af = call ptr @PyUnicode_GetDefaultEncoding() #17
  br label %bytearray_decode_impl.exit

bytearray_decode_impl.exit:                       ; preds = %bb.j, %bb.o, %.thread66
  %.03569 = phi ptr [ %.03570, %.thread66 ], [ %i.z, %bb.o ], [ null, %bb.j ]
  %.0.i = phi ptr [ %i.af, %.thread66 ], [ %.036, %bb.o ], [ %i.p, %bb.j ]
  %i.ag = call ptr @PyUnicode_FromEncodedObject(ptr noundef %0, ptr noundef %.0.i, ptr noundef %.03569) #17
  br label %bb.p

bb.p:                                             ; preds = %.thread62, %bb.f, %bb.k, %bb.n, %bytearray_decode_impl.exit, %bb.c, %bb.l
  %.037 = phi ptr [ null, %bb.l ], [ null, %bb.n ], [ %i.ag, %bytearray_decode_impl.exit ], [ null, %bb.k ], [ null, %.thread62 ], [ null, %bb.f ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.037
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_endswith(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 !guid !362 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !269
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.30, i64 noundef %2, i64 noundef 1, i64 noundef 3) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !223
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !223
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #17
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !269
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !269
  %i.p = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !230
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !230
  %i.s = getelementptr i8, ptr %0, i64 40
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !233
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !235
  %i.u = call ptr @_Py_bytes_endswith(ptr noundef %.val8.i.i, i64 noundef %.val.i.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #17, !inline_history !1
  %i.v = load i64, ptr %i.p, align 8, !tbaa !230
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !230
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.u, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_expandtabs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 !guid !369 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !235
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.d, %i.c
  br i1 %or.cond5.i, label %.thread32.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.e = phi i64 [ %.val.i, %.thread.i ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @stringlib_expandtabs._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17, !inline_history !363 ; 2 uses
  %.not27.i = icmp eq ptr %i.f, null
  br i1 %.not27.i, label %stringlib_expandtabs.exit, label %.thread32.i

.thread32.i:                                      ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not28.i = icmp eq i64 %2, %i.i
  br i1 %.not28.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %.thread32.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.k = call i32 @PyLong_AsInt(ptr noundef %i.j) #17, !inline_history !363 ; 6 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @PyErr_Occurred() #17, !inline_history !363
  %.not29.i = icmp eq ptr %i.m, null
  br i1 %.not29.i, label %.thread57.i, label %stringlib_expandtabs.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %.val69.i.i = load ptr, ptr %i.n, align 8, !tbaa !233 ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val70.i.i = load i64, ptr %i.o, align 8, !tbaa !235 ; 4 uses
  %i.p = getelementptr i8, ptr %.val69.i.i, i64 %.val70.i.i ; 4 uses
  %i.q = icmp ult ptr %.val69.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread:                                          ; preds = %.thread32.i
  %i.r = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i.i30 = load ptr, ptr %i.r, align 8, !tbaa !233 ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val70.i.i32 = load i64, ptr %i.s, align 8, !tbaa !235 ; 3 uses
  %i.t = getelementptr i8, ptr %.val69.i.i30, i64 %.val70.i.i32 ; 3 uses
  %i.u = icmp ult ptr %.val69.i.i30, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i.preheader, label %._crit_edge.i.i

.thread57.i:                                      ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i59.i = load ptr, ptr %i.v, align 8, !tbaa !233 ; 4 uses
  %i.w = getelementptr i8, ptr %0, i64 16
  %.val70.i61.i = load i64, ptr %i.w, align 8, !tbaa !235 ; 3 uses
  %i.x = getelementptr i8, ptr %.val69.i59.i, i64 %.val70.i61.i ; 3 uses
  %i.y = icmp ult ptr %.val69.i59.i, %i.x
  br i1 %i.y, label %.lr.ph.split.i.preheader.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.z = icmp sgt i32 %i.k, 0
  %i.aa = zext nneg i32 %i.k to i64
  br i1 %i.z, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.preheader.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.thread, %.lr.ph.i.i
  %i.ab = phi i64 [ %i.aa, %.lr.ph.i.i ], [ 8, %.thread ] ; 2 uses
  %.0.i3344 = phi i32 [ %i.k, %.lr.ph.i.i ], [ 8, %.thread ]
  %i.ac = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.r, %.thread ]
  %.val69.i.i3443 = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i.i30, %.thread ] ; 2 uses
  %.val70.i.i3641 = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i.i32, %.thread ]
  %i.ad = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.t, %.thread ] ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i, %.thread57.i
  %.06376.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ -1, %.thread57.i ]
  %i.ae = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.v, %.thread57.i ]
  %.val69.i6475.i = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i59.i, %.thread57.i ] ; 2 uses
  %.val70.i6873.i = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i61.i, %.thread57.i ]
  %i.af = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.x, %.thread57.i ] ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.l
  %.04978.us.i.i = phi i64 [ %.2.us.i.i, %bb.l ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 6 uses
  %.05077.us.i.i = phi i64 [ %.151.us.i.i, %bb.l ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 4 uses
  %.05676.us.i.i = phi ptr [ %i.as, %bb.l ], [ %.val69.i.i3443, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %i.ag = load i8, ptr %.05676.us.i.i, align 1, !tbaa !232 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 9
  br i1 %i.ah, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ai = icmp eq i64 %.04978.us.i.i, 9223372036854775807
  br i1 %i.ai, label %.loopexit73.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i64 %.04978.us.i.i, 1           ; 2 uses
  switch i8 %i.ag, label %bb.l [
    i8 10, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ak = sub i64 9223372036854775806, %.04978.us.i.i
  %i.al = icmp sgt i64 %.05077.us.i.i, %i.ak
  br i1 %i.al, label %.loopexit73.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i64 %i.aj, %.05077.us.i.i
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %i.an = srem i64 %.04978.us.i.i, %i.ab
  %i.ao = sub nsw i64 %i.ab, %i.an                ; 2 uses
  %i.ap = sub i64 9223372036854775807, %i.ao
  %i.aq = icmp sgt i64 %.04978.us.i.i, %i.ap
  %i.ar = add i64 %i.ao, %.04978.us.i.i
  br i1 %i.aq, label %.loopexit73.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.151.us.i.i = phi i64 [ %.05077.us.i.i, %bb.k ], [ %.05077.us.i.i, %bb.h ], [ %i.am, %bb.j ] ; 2 uses
  %.2.us.i.i = phi i64 [ %i.ar, %bb.k ], [ %i.aj, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %i.as = getelementptr i8, ptr %.05676.us.i.i, i64 1 ; 2 uses
  %exitcond95.not.i.i = icmp eq ptr %i.as, %i.ad
  br i1 %exitcond95.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !364

.lr.ph.split.i.i:                                 ; preds = %bb.q, %.lr.ph.split.i.preheader.i
  %.04978.i.i = phi i64 [ %.2.i.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.05077.i.i = phi i64 [ %.151.i.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.05676.i.i = phi ptr [ %i.ba, %bb.q ], [ %.val69.i6475.i, %.lr.ph.split.i.preheader.i ] ; 2 uses
  %i.at = load i8, ptr %.05676.i.i, align 1, !tbaa !232 ; 2 uses
  %i.au = icmp eq i8 %i.at, 9
  br i1 %i.au, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i.i
  %i.av = icmp eq i64 %.04978.i.i, 9223372036854775807
  br i1 %i.av, label %.loopexit73.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = add nsw i64 %.04978.i.i, 1              ; 2 uses
  switch i8 %i.at, label %bb.q [
    i8 10, label %bb.o
    i8 13, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ax = sub i64 9223372036854775806, %.04978.i.i
  %i.ay = icmp sgt i64 %.05077.i.i, %i.ax
  br i1 %i.ay, label %.loopexit73.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %i.aw, %.05077.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %.lr.ph.split.i.i
  %.151.i.i = phi i64 [ %.05077.i.i, %bb.n ], [ %i.az, %bb.p ], [ %.05077.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.2.i.i = phi i64 [ %i.aw, %bb.n ], [ 0, %bb.p ], [ %.04978.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.05676.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !364

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.l, %.thread, %.thread57.i, %bb.f
  %i.bb = phi ptr [ %i.p, %bb.f ], [ %i.x, %.thread57.i ], [ %i.t, %.thread ], [ %i.ad, %bb.l ], [ %i.af, %bb.q ]
  %.val70.i67.i = phi i64 [ %.val70.i.i, %bb.f ], [ %.val70.i61.i, %.thread57.i ], [ %.val70.i.i32, %.thread ], [ %.val70.i.i3641, %bb.l ], [ %.val70.i6873.i, %bb.q ] ; 2 uses
  %.val6996.i65.in.i = phi ptr [ %.val69.i.i, %bb.f ], [ %.val69.i59.i, %.thread57.i ], [ %.val69.i.i30, %.thread ], [ %.val69.i.i3443, %bb.l ], [ %.val69.i6475.i, %bb.q ]
  %i.bc = phi ptr [ %i.n, %bb.f ], [ %i.v, %.thread57.i ], [ %i.r, %.thread ], [ %i.ac, %bb.l ], [ %i.ae, %bb.q ]
  %.062.i = phi i32 [ %i.k, %bb.f ], [ -1, %.thread57.i ], [ 8, %.thread ], [ %.0.i3344, %bb.l ], [ %.06376.i, %bb.q ] ; 2 uses
  %.050.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.151.us.i.i, %bb.l ], [ %.151.i.i, %bb.q ] ; 2 uses
  %.049.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.2.us.i.i, %bb.l ], [ %.2.i.i, %bb.q ] ; 2 uses
  %.val6996.i65.i = ptrtoaddr ptr %.val6996.i65.in.i to i64 ; 2 uses
  %i.bd = sub i64 9223372036854775807, %.049.lcssa.i.i
  %i.be = icmp sgt i64 %.050.lcssa.i.i, %i.bd
  br i1 %i.be, label %.loopexit73.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bf = add i64 %.049.lcssa.i.i, %.050.lcssa.i.i ; 4 uses
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !223
  call void @PyErr_SetString(ptr noundef %i.bh, ptr noundef nonnull @.str) #17, !inline_history !365
  br label %stringlib_expandtabs.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !365 ; 14 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %stringlib_expandtabs.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.bi, i64 48
  store i64 0, ptr %i.bk, align 8, !tbaa !230
  %i.bl = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.bf) #17, !inline_history !365 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 56
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !231
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !232 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %stringlib_expandtabs.exit

bb.w:                                             ; preds = %bb.v
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bi, align 8, !tbaa !232
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %stringlib_expandtabs.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #17, !inline_history !365
  br label %stringlib_expandtabs.exit

bb.y:                                             ; preds = %bb.u
  %i.br = getelementptr i8, ptr %i.bl, i64 32     ; 5 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 40
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !233
  %i.bt = getelementptr i8, ptr %i.bi, i64 32
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !234
  %i.bu = getelementptr i8, ptr %i.bi, i64 16
  store i64 %i.bf, ptr %i.bu, align 8, !tbaa !235
  %i.bv = getelementptr i8, ptr %i.bi, i64 24
  store i64 %i.bf, ptr %i.bv, align 8, !tbaa !236
  %.val.i.i = load ptr, ptr %i.bc, align 8, !tbaa !233 ; 6 uses
  %i.bw = icmp ult ptr %.val.i.i, %i.bb
  br i1 %i.bw, label %.lr.ph91.i.i, label %stringlib_expandtabs.exit

.lr.ph91.i.i:                                     ; preds = %bb.y
  %.val97.i.i = ptrtoaddr ptr %.val.i.i to i64    ; 2 uses
  %i.bx = icmp sgt i32 %.062.i, 0
  %i.by = zext i32 %.062.i to i64                 ; 3 uses
  %i.bz = add i64 %.val70.i67.i, %.val6996.i65.i
  %i.ca = sub i64 %i.bz, %.val97.i.i              ; 2 uses
  %scevgep101.i.i = getelementptr i8, ptr %.val.i.i, i64 %i.ca ; 2 uses
  br i1 %i.bx, label %.lr.ph91.split.us.i.i, label %.lr.ph91.split.i.i.preheader

.lr.ph91.split.i.i.preheader:                     ; preds = %.lr.ph91.i.i
  %i.cb = add i64 %.val70.i67.i, %.val6996.i65.i
  %xtraiter = and i64 %i.ca, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.split.i.i.prol.loopexit, label %.lr.ph91.split.i.i.prol

.lr.ph91.split.i.i.prol:                          ; preds = %.lr.ph91.split.i.i.preheader, %bb.aa
  %.05388.i.i.prol = phi ptr [ %.255.i.i.prol, %bb.aa ], [ %i.br, %.lr.ph91.split.i.i.preheader ] ; 3 uses
  %.15787.i.i.prol = phi ptr [ %i.cf, %bb.aa ], [ %.val.i.i, %.lr.ph91.split.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.aa ], [ 0, %.lr.ph91.split.i.i.preheader ]
  %i.cc = load i8, ptr %.15787.i.i.prol, align 1, !tbaa !232 ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 9
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph91.split.i.i.prol
  %i.ce = getelementptr i8, ptr %.05388.i.i.prol, i64 1
  store i8 %i.cc, ptr %.05388.i.i.prol, align 1, !tbaa !232
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph91.split.i.i.prol
  %.255.i.i.prol = phi ptr [ %i.ce, %bb.z ], [ %.05388.i.i.prol, %.lr.ph91.split.i.i.prol ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.15787.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.split.i.i.prol.loopexit, label %.lr.ph91.split.i.i.prol, !llvm.loop !366

.lr.ph91.split.i.i.prol.loopexit:                 ; preds = %bb.aa, %.lr.ph91.split.i.i.preheader
  %.05388.i.i.unr = phi ptr [ %i.br, %.lr.ph91.split.i.i.preheader ], [ %.255.i.i.prol, %bb.aa ]
  %.15787.i.i.unr = phi ptr [ %.val.i.i, %.lr.ph91.split.i.i.preheader ], [ %i.cf, %bb.aa ]
  %i.cg = sub i64 %.val97.i.i, %i.cb
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i

.lr.ph91.split.us.i.i:                            ; preds = %.lr.ph91.i.i, %.loopexit.us.i.i
  %.389.us.i.i = phi i64 [ %.4.us.i.i, %.loopexit.us.i.i ], [ 0, %.lr.ph91.i.i ] ; 3 uses
  %.05388.us.i.i = phi ptr [ %.255.us.i.i, %.loopexit.us.i.i ], [ %i.br, %.lr.ph91.i.i ] ; 4 uses
  %.15787.us.i.i = phi ptr [ %i.cr, %.loopexit.us.i.i ], [ %.val.i.i, %.lr.ph91.i.i ] ; 3 uses
  %i.ci = load i8, ptr %.15787.us.i.i, align 1, !tbaa !232 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 9
  br i1 %i.cj, label %.lr.ph85.us.preheader.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph91.split.us.i.i
  %i.ck = getelementptr i8, ptr %.05388.us.i.i, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.05388.us.i.i, align 1, !tbaa !232
  %i.cl = load i8, ptr %.15787.us.i.i, align 1, !tbaa !232
  %i.cm = add i64 %.389.us.i.i, 1
  switch i8 %i.cl, label %.loopexit.us.i.i [
    i8 13, label %bb.ac
    i8 10, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  br label %.loopexit.us.i.i

.lr.ph85.us.preheader.i.i:                        ; preds = %.lr.ph91.split.us.i.i
  %i.cn = srem i64 %.389.us.i.i, %i.by            ; 2 uses
  %i.co = sub nsw i64 %i.by, %i.cn                ; 2 uses
  %i.cp = add i64 %i.co, %.389.us.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %.05388.us.i.i, i8 32, i64 %i.co, i1 false), !tbaa !232
  %scevgep99.i.i = getelementptr i8, ptr %.05388.us.i.i, i64 %i.by
  %i.cq = sub nsw i64 0, %i.cn
  %scevgep100.i.i = getelementptr i8, ptr %scevgep99.i.i, i64 %i.cq
  br label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %.lr.ph85.us.preheader.i.i, %bb.ac, %bb.ab
  %.255.us.i.i = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %bb.ac ], [ %scevgep100.i.i, %.lr.ph85.us.preheader.i.i ]
  %.4.us.i.i = phi i64 [ %i.cm, %bb.ab ], [ 0, %bb.ac ], [ %i.cp, %.lr.ph85.us.preheader.i.i ]
  %i.cr = getelementptr i8, ptr %.15787.us.i.i, i64 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq ptr %i.cr, %scevgep101.i.i
  br i1 %exitcond102.not.i.i, label %stringlib_expandtabs.exit, label %.lr.ph91.split.us.i.i, !llvm.loop !367

.lr.ph91.split.i.i:                               ; preds = %.lr.ph91.split.i.i.prol.loopexit, %bb.ah
  %.05388.i.i = phi ptr [ %.255.i.i.3, %bb.ah ], [ %.05388.i.i.unr, %.lr.ph91.split.i.i.prol.loopexit ] ; 3 uses
  %.15787.i.i = phi ptr [ %i.dh, %bb.ah ], [ %.15787.i.i.unr, %.lr.ph91.split.i.i.prol.loopexit ] ; 5 uses
  %i.cs = load i8, ptr %.15787.i.i, align 1, !tbaa !232 ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 9
  br i1 %i.ct, label %.lr.ph91.split.i.i.1, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph91.split.i.i
  %i.cu = getelementptr i8, ptr %.05388.i.i, i64 1
  store i8 %i.cs, ptr %.05388.i.i, align 1, !tbaa !232
  br label %.lr.ph91.split.i.i.1

.lr.ph91.split.i.i.1:                             ; preds = %bb.ad, %.lr.ph91.split.i.i
  %.255.i.i = phi ptr [ %i.cu, %bb.ad ], [ %.05388.i.i, %.lr.ph91.split.i.i ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.15787.i.i, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !232 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 9
  br i1 %i.cx, label %.lr.ph91.split.i.i.2, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph91.split.i.i.1
  %i.cy = getelementptr i8, ptr %.255.i.i, i64 1
  store i8 %i.cw, ptr %.255.i.i, align 1, !tbaa !232
  br label %.lr.ph91.split.i.i.2

.lr.ph91.split.i.i.2:                             ; preds = %bb.ae, %.lr.ph91.split.i.i.1
  %.255.i.i.1 = phi ptr [ %i.cy, %bb.ae ], [ %.255.i.i, %.lr.ph91.split.i.i.1 ] ; 3 uses
  %i.cz = getelementptr i8, ptr %.15787.i.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !232 ; 2 uses
  %i.db = icmp eq i8 %i.da, 9
  br i1 %i.db, label %.lr.ph91.split.i.i.3, label %bb.af

bb.af:                                            ; preds = %.lr.ph91.split.i.i.2
  %i.dc = getelementptr i8, ptr %.255.i.i.1, i64 1
  store i8 %i.da, ptr %.255.i.i.1, align 1, !tbaa !232
  br label %.lr.ph91.split.i.i.3

.lr.ph91.split.i.i.3:                             ; preds = %bb.af, %.lr.ph91.split.i.i.2
  %.255.i.i.2 = phi ptr [ %i.dc, %bb.af ], [ %.255.i.i.1, %.lr.ph91.split.i.i.2 ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.15787.i.i, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !232 ; 2 uses
  %i.df = icmp eq i8 %i.de, 9
  br i1 %i.df, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph91.split.i.i.3
  %i.dg = getelementptr i8, ptr %.255.i.i.2, i64 1
  store i8 %i.de, ptr %.255.i.i.2, align 1, !tbaa !232
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph91.split.i.i.3
  %.255.i.i.3 = phi ptr [ %i.dg, %bb.ag ], [ %.255.i.i.2, %.lr.ph91.split.i.i.3 ]
  %i.dh = getelementptr i8, ptr %.15787.i.i, i64 4 ; 2 uses
  %exitcond98.not.i.i.3 = icmp eq ptr %i.dh, %scevgep101.i.i
  br i1 %exitcond98.not.i.i.3, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i, !llvm.loop !367

.loopexit73.i.i:                                  ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i
  %i.di = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !223
  call void @PyErr_SetString(ptr noundef %i.di, ptr noundef nonnull @.str.91) #17, !inline_history !368
  br label %stringlib_expandtabs.exit

stringlib_expandtabs.exit:                        ; preds = %.lr.ph91.split.i.i.prol.loopexit, %bb.ah, %.loopexit.us.i.i, %bb.c, %bb.e, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %.loopexit73.i.i
  %.022.i = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.w ], [ null, %.loopexit73.i.i ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.v ], [ %i.bi, %bb.y ], [ %i.bi, %.loopexit.us.i.i ], [ %i.bi, %bb.ah ], [ %i.bi, %.lr.ph91.split.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.022.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_extend(ptr noundef %0, ptr noundef %1) #0 !guid !373 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @PyObject_CheckBuffer(ptr noundef %1) #17, !inline_history !370
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val116.i = load i64, ptr %i.c, align 8, !tbaa !235 ; 2 uses
  %i.d = tail call fastcc i32 @bytearray_setslice(ptr noundef %0, i64 noundef %.val116.i, i64 noundef %.val116.i, ptr noundef %1), !inline_history !370
  %i.e = icmp eq i32 %i.d, -1
  %._Py_NoneStruct.i = select i1 %i.e, ptr null, ptr @_Py_NoneStruct
  br label %bytearray_extend_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyObject_GetIter(ptr noundef %1) #17, !inline_history !370 ; 21 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !223
  %i.i = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.h) #17, !inline_history !370
  %.not73.i = icmp eq i32 %i.i, 0
  br i1 %.not73.i, label %bytearray_extend_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !223
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val118.i = load ptr, ptr %i.k, align 8, !tbaa !240
  %i.l = getelementptr i8, ptr %.val118.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !246
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.92, ptr noundef %i.m) #17, !inline_history !370 ; 0 uses
  br label %bytearray_extend_impl.exit

bb.f:                                             ; preds = %bb.c
  %i.o = tail call i64 @PyObject_LengthHint(ptr noundef %1, i64 noundef 32) #17, !inline_history !370 ; 6 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.f, align 8, !tbaa !232  ; 2 uses
  %.not.i99.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i99.i, label %bb.h, label %bytearray_extend_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !232
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bytearray_extend_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #17, !inline_history !370
  br label %bytearray_extend_impl.exit

bb.j:                                             ; preds = %bb.f
  %i.t = icmp slt i64 %i.o, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !223
  tail call void @PyErr_SetString(ptr noundef %i.u, ptr noundef nonnull @.str) #17, !inline_history !371
  br label %bb.q

bb.l:                                             ; preds = %bb.j
end_hunk_0
