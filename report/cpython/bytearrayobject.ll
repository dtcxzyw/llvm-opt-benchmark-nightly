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
  %i.s = load i64, ptr %i.b, align 8, !tbaa !67
  %.not50 = icmp eq i64 %i.r, %i.s
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
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
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val54 = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr i8, ptr %.val54, i64 168
  %.val56 = load i64, ptr %i.x, align 8, !tbaa !46
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
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !67
  %.not53 = icmp eq i64 %i.ab, %i.ac
  br i1 %.not53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
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
define internal ptr @bytearray_endswith(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !67
  %i.c = add i64 %2, -1
  %or.cond = icmp ult i64 %i.c, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.30, i64 noundef %2, i64 noundef 1, i64 noundef 3) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = call i32 @_PyEval_SliceIndex(ptr noundef %i.h, ptr noundef nonnull %i.a) #17
  %.not12 = icmp eq i32 %i.i, 0
  br i1 %.not12, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %2, 2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = call i32 @_PyEval_SliceIndex(ptr noundef %i.l, ptr noundef nonnull %i.b) #17
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %bb.c
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ 9223372036854775807, %bb.e ], [ 9223372036854775807, %bb.c ]
  %i.o = load i64, ptr %i.a, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !14
  %i.s = getelementptr i8, ptr %0, i64 40
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.t, align 8, !tbaa !25
  %i.u = call ptr @_Py_bytes_endswith(ptr noundef %.val8.i.i, i64 noundef %.val.i.i, ptr noundef %i.e, i64 noundef %i.o, i64 noundef %i.n) #17, !inline_history !101
  %i.v = load i64, ptr %i.p, align 8, !tbaa !14
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.g
  %.0 = phi ptr [ %i.u, %bb.g ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_expandtabs(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !25
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2
  %i.d = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.d, %i.c
  br i1 %or.cond5.i, label %.thread32.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.e = phi i64 [ %.val.i, %.thread.i ], [ 0, %bb.b ]
  %i.f = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @stringlib_expandtabs._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #17, !inline_history !102 ; 2 uses
  %.not27.i = icmp eq ptr %i.f, null
  br i1 %.not27.i, label %stringlib_expandtabs.exit, label %.thread32.i

.thread32.i:                                      ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]
  %i.h = phi i64 [ %i.e, %bb.c ], [ 0, %bb.b ]
  %i.i = sub i64 0, %i.h
  %.not28.i = icmp eq i64 %2, %i.i
  br i1 %.not28.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %.thread32.i
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.k = call i32 @PyLong_AsInt(ptr noundef %i.j) #17, !inline_history !102 ; 6 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @PyErr_Occurred() #17, !inline_history !102
  %.not29.i = icmp eq ptr %i.m, null
  br i1 %.not29.i, label %.thread57.i, label %stringlib_expandtabs.exit

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %.val69.i.i = load ptr, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %.val6996.i.i = ptrtoaddr ptr %.val69.i.i to i64 ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val70.i.i = load i64, ptr %i.o, align 8, !tbaa !25 ; 4 uses
  %i.p = getelementptr i8, ptr %.val69.i.i, i64 %.val70.i.i ; 4 uses
  %i.q = icmp ult ptr %.val69.i.i, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.thread:                                          ; preds = %.thread32.i
  %i.r = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i.i30 = load ptr, ptr %i.r, align 8, !tbaa !23 ; 4 uses
  %.val6996.i.i31 = ptrtoaddr ptr %.val69.i.i30 to i64 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %.val70.i.i32 = load i64, ptr %i.s, align 8, !tbaa !25 ; 3 uses
  %i.t = getelementptr i8, ptr %.val69.i.i30, i64 %.val70.i.i32 ; 3 uses
  %i.u = icmp ult ptr %.val69.i.i30, %i.t
  br i1 %i.u, label %.lr.ph.split.us.i.i.preheader, label %._crit_edge.i.i

.thread57.i:                                      ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.val69.i59.i = load ptr, ptr %i.v, align 8, !tbaa !23 ; 4 uses
  %.val6996.i60.i = ptrtoaddr ptr %.val69.i59.i to i64 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16
  %.val70.i61.i = load i64, ptr %i.w, align 8, !tbaa !25 ; 3 uses
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
  %.val69.i.i3443 = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i.i30, %.thread ]
  %.val6996.i.i3542 = phi i64 [ %.val6996.i.i, %.lr.ph.i.i ], [ %.val6996.i.i31, %.thread ]
  %.val70.i.i3641 = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i.i32, %.thread ]
  %i.ad = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.t, %.thread ] ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i, %.thread57.i
  %.06376.i = phi i32 [ %i.k, %.lr.ph.i.i ], [ -1, %.thread57.i ]
  %i.ae = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.v, %.thread57.i ]
  %.val69.i6475.i = phi ptr [ %.val69.i.i, %.lr.ph.i.i ], [ %.val69.i59.i, %.thread57.i ]
  %.val6996.i6674.i = phi i64 [ %.val6996.i.i, %.lr.ph.i.i ], [ %.val6996.i60.i, %.thread57.i ]
  %.val70.i6873.i = phi i64 [ %.val70.i.i, %.lr.ph.i.i ], [ %.val70.i61.i, %.thread57.i ]
  %i.af = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.x, %.thread57.i ] ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader, %bb.l
  %.05078.us.i.i = phi ptr [ %i.as, %bb.l ], [ %.val69.i.i3443, %.lr.ph.split.us.i.i.preheader ] ; 2 uses
  %.05177.us.i.i = phi i64 [ %.2.us.i.i, %bb.l ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 6 uses
  %.05376.us.i.i = phi i64 [ %.154.us.i.i, %bb.l ], [ 0, %.lr.ph.split.us.i.i.preheader ] ; 4 uses
  %i.ag = load i8, ptr %.05078.us.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 9
  br i1 %i.ah, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i
  %i.ai = icmp eq i64 %.05177.us.i.i, 9223372036854775807
  br i1 %i.ai, label %.loopexit73.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i64 %.05177.us.i.i, 1           ; 2 uses
  switch i8 %i.ag, label %bb.l [
    i8 10, label %bb.i
    i8 13, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ak = sub i64 9223372036854775806, %.05177.us.i.i
  %i.al = icmp sgt i64 %.05376.us.i.i, %i.ak
  br i1 %i.al, label %.loopexit73.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i64 %i.aj, %.05376.us.i.i
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i.i
  %i.an = srem i64 %.05177.us.i.i, %i.ab
  %i.ao = sub nsw i64 %i.ab, %i.an                ; 2 uses
  %i.ap = sub i64 9223372036854775807, %i.ao
  %i.aq = icmp sgt i64 %.05177.us.i.i, %i.ap
  %i.ar = add i64 %i.ao, %.05177.us.i.i
  br i1 %i.aq, label %.loopexit73.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.154.us.i.i = phi i64 [ %.05376.us.i.i, %bb.k ], [ %.05376.us.i.i, %bb.h ], [ %i.am, %bb.j ] ; 2 uses
  %.2.us.i.i = phi i64 [ %i.ar, %bb.k ], [ %i.aj, %bb.h ], [ 0, %bb.j ] ; 2 uses
  %i.as = getelementptr i8, ptr %.05078.us.i.i, i64 1 ; 2 uses
  %exitcond95.not.i.i = icmp eq ptr %i.as, %i.ad
  br i1 %exitcond95.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !103

.lr.ph.split.i.i:                                 ; preds = %bb.q, %.lr.ph.split.i.preheader.i
  %.05078.i.i = phi ptr [ %i.ba, %bb.q ], [ %.val69.i6475.i, %.lr.ph.split.i.preheader.i ] ; 2 uses
  %.05177.i.i = phi i64 [ %.2.i.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.05376.i.i = phi i64 [ %.154.i.i, %bb.q ], [ 0, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %i.at = load i8, ptr %.05078.i.i, align 1, !tbaa !22 ; 2 uses
  %i.au = icmp eq i8 %i.at, 9
  br i1 %i.au, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.i.i
  %i.av = icmp eq i64 %.05177.i.i, 9223372036854775807
  br i1 %i.av, label %.loopexit73.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = add nsw i64 %.05177.i.i, 1              ; 2 uses
  switch i8 %i.at, label %bb.q [
    i8 10, label %bb.o
    i8 13, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.ax = sub i64 9223372036854775806, %.05177.i.i
  %i.ay = icmp sgt i64 %.05376.i.i, %i.ax
  br i1 %i.ay, label %.loopexit73.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = add i64 %i.aw, %.05376.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %.lr.ph.split.i.i
  %.154.i.i = phi i64 [ %.05376.i.i, %bb.n ], [ %i.az, %bb.p ], [ %.05376.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %.2.i.i = phi i64 [ %i.aw, %bb.n ], [ 0, %bb.p ], [ %.05177.i.i, %.lr.ph.split.i.i ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.05078.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ba, %i.af
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !103

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.l, %.thread, %.thread57.i, %bb.f
  %i.bb = phi ptr [ %i.p, %bb.f ], [ %i.x, %.thread57.i ], [ %i.t, %.thread ], [ %i.ad, %bb.l ], [ %i.af, %bb.q ]
  %.val70.i67.i = phi i64 [ %.val70.i.i, %bb.f ], [ %.val70.i61.i, %.thread57.i ], [ %.val70.i.i32, %.thread ], [ %.val70.i.i3641, %bb.l ], [ %.val70.i6873.i, %bb.q ] ; 2 uses
  %.val6996.i65.i = phi i64 [ %.val6996.i.i, %bb.f ], [ %.val6996.i60.i, %.thread57.i ], [ %.val6996.i.i31, %.thread ], [ %.val6996.i.i3542, %bb.l ], [ %.val6996.i6674.i, %bb.q ] ; 2 uses
  %i.bc = phi ptr [ %i.n, %bb.f ], [ %i.v, %.thread57.i ], [ %i.r, %.thread ], [ %i.ac, %bb.l ], [ %i.ae, %bb.q ]
  %.062.i = phi i32 [ %i.k, %bb.f ], [ -1, %.thread57.i ], [ 8, %.thread ], [ %.0.i3344, %bb.l ], [ %.06376.i, %bb.q ] ; 2 uses
  %.053.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.154.us.i.i, %bb.l ], [ %.154.i.i, %bb.q ] ; 2 uses
  %.051.lcssa.i.i = phi i64 [ 0, %bb.f ], [ 0, %.thread57.i ], [ 0, %.thread ], [ %.2.us.i.i, %bb.l ], [ %.2.i.i, %bb.q ] ; 2 uses
  %i.bd = sub i64 9223372036854775807, %.051.lcssa.i.i
  %i.be = icmp sgt i64 %.053.lcssa.i.i, %i.bd
  br i1 %i.be, label %.loopexit73.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bf = add i64 %.051.lcssa.i.i, %.053.lcssa.i.i ; 4 uses
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.bh, ptr noundef nonnull @.str) #17, !inline_history !104
  br label %stringlib_expandtabs.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = call ptr @_PyObject_New(ptr noundef nonnull @PyByteArray_Type) #17, !inline_history !104 ; 14 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %stringlib_expandtabs.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr i8, ptr %i.bi, i64 48
  store i64 0, ptr %i.bk, align 8, !tbaa !14
  %i.bl = call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.bf) #17, !inline_history !104 ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 56
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !21
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %i.bi, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.bo, -1
  br i1 %.not.i.i.i.i, label %bb.w, label %stringlib_expandtabs.exit

bb.w:                                             ; preds = %bb.v
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bi, align 8, !tbaa !22
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.x, label %stringlib_expandtabs.exit

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.bi) #17, !inline_history !104
  br label %stringlib_expandtabs.exit

bb.y:                                             ; preds = %bb.u
  %i.br = getelementptr i8, ptr %i.bl, i64 32     ; 5 uses
  %i.bs = getelementptr i8, ptr %i.bi, i64 40
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !23
  %i.bt = getelementptr i8, ptr %i.bi, i64 32
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !24
  %i.bu = getelementptr i8, ptr %i.bi, i64 16
  store i64 %i.bf, ptr %i.bu, align 8, !tbaa !25
  %i.bv = getelementptr i8, ptr %i.bi, i64 24
  store i64 %i.bf, ptr %i.bv, align 8, !tbaa !26
  %.val.i.i = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 6 uses
  %i.bw = icmp ult ptr %.val.i.i, %i.bb
  br i1 %i.bw, label %.lr.ph91.i.i, label %stringlib_expandtabs.exit

.lr.ph91.i.i:                                     ; preds = %bb.y
  %.val97.i.i = ptrtoaddr ptr %.val.i.i to i64    ; 2 uses
  %i.bx = icmp sgt i32 %.062.i, 0
  %i.by = zext i32 %.062.i to i64                 ; 3 uses
  %i.bz = add i64 %.val6996.i65.i, %.val70.i67.i
  %i.ca = sub i64 %i.bz, %.val97.i.i              ; 2 uses
  %scevgep101.i.i = getelementptr i8, ptr %.val.i.i, i64 %i.ca ; 2 uses
  br i1 %i.bx, label %.lr.ph91.split.us.i.i, label %.lr.ph91.split.i.i.preheader

.lr.ph91.split.i.i.preheader:                     ; preds = %.lr.ph91.i.i
  %i.cb = add i64 %.val6996.i65.i, %.val70.i67.i
  %xtraiter = and i64 %i.ca, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.split.i.i.prol.loopexit, label %.lr.ph91.split.i.i.prol

.lr.ph91.split.i.i.prol:                          ; preds = %.lr.ph91.split.i.i.preheader, %bb.aa
  %.189.i.i.prol = phi ptr [ %i.cf, %bb.aa ], [ %.val.i.i, %.lr.ph91.split.i.i.preheader ] ; 2 uses
  %.05687.i.i.prol = phi ptr [ %.258.i.i.prol, %bb.aa ], [ %i.br, %.lr.ph91.split.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.aa ], [ 0, %.lr.ph91.split.i.i.preheader ]
  %i.cc = load i8, ptr %.189.i.i.prol, align 1, !tbaa !22 ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 9
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph91.split.i.i.prol
  %i.ce = getelementptr i8, ptr %.05687.i.i.prol, i64 1
  store i8 %i.cc, ptr %.05687.i.i.prol, align 1, !tbaa !22
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph91.split.i.i.prol
  %.258.i.i.prol = phi ptr [ %i.ce, %bb.z ], [ %.05687.i.i.prol, %.lr.ph91.split.i.i.prol ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.189.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.split.i.i.prol.loopexit, label %.lr.ph91.split.i.i.prol, !llvm.loop !105

.lr.ph91.split.i.i.prol.loopexit:                 ; preds = %bb.aa, %.lr.ph91.split.i.i.preheader
  %.189.i.i.unr = phi ptr [ %.val.i.i, %.lr.ph91.split.i.i.preheader ], [ %i.cf, %bb.aa ]
  %.05687.i.i.unr = phi ptr [ %i.br, %.lr.ph91.split.i.i.preheader ], [ %.258.i.i.prol, %bb.aa ]
  %i.cg = sub i64 %.val97.i.i, %i.cb
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i

.lr.ph91.split.us.i.i:                            ; preds = %.lr.ph91.i.i, %.loopexit.us.i.i
  %.189.us.i.i = phi ptr [ %i.cr, %.loopexit.us.i.i ], [ %.val.i.i, %.lr.ph91.i.i ] ; 3 uses
  %.388.us.i.i = phi i64 [ %.4.us.i.i, %.loopexit.us.i.i ], [ 0, %.lr.ph91.i.i ] ; 3 uses
  %.05687.us.i.i = phi ptr [ %.258.us.i.i, %.loopexit.us.i.i ], [ %i.br, %.lr.ph91.i.i ] ; 4 uses
  %i.ci = load i8, ptr %.189.us.i.i, align 1, !tbaa !22 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 9
  br i1 %i.cj, label %.lr.ph85.us.preheader.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph91.split.us.i.i
  %i.ck = getelementptr i8, ptr %.05687.us.i.i, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.05687.us.i.i, align 1, !tbaa !22
  %i.cl = load i8, ptr %.189.us.i.i, align 1, !tbaa !22
  %i.cm = add i64 %.388.us.i.i, 1
  switch i8 %i.cl, label %.loopexit.us.i.i [
    i8 13, label %bb.ac
    i8 10, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  br label %.loopexit.us.i.i

.lr.ph85.us.preheader.i.i:                        ; preds = %.lr.ph91.split.us.i.i
  %i.cn = srem i64 %.388.us.i.i, %i.by            ; 2 uses
  %i.co = sub nsw i64 %i.by, %i.cn                ; 2 uses
  %i.cp = add i64 %i.co, %.388.us.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %.05687.us.i.i, i8 32, i64 %i.co, i1 false), !tbaa !22
  %scevgep99.i.i = getelementptr i8, ptr %.05687.us.i.i, i64 %i.by
  %i.cq = sub nsw i64 0, %i.cn
  %scevgep100.i.i = getelementptr i8, ptr %scevgep99.i.i, i64 %i.cq
  br label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %.lr.ph85.us.preheader.i.i, %bb.ac, %bb.ab
  %.258.us.i.i = phi ptr [ %i.ck, %bb.ab ], [ %i.ck, %bb.ac ], [ %scevgep100.i.i, %.lr.ph85.us.preheader.i.i ]
  %.4.us.i.i = phi i64 [ %i.cm, %bb.ab ], [ 0, %bb.ac ], [ %i.cp, %.lr.ph85.us.preheader.i.i ]
  %i.cr = getelementptr i8, ptr %.189.us.i.i, i64 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq ptr %i.cr, %scevgep101.i.i
  br i1 %exitcond102.not.i.i, label %stringlib_expandtabs.exit, label %.lr.ph91.split.us.i.i, !llvm.loop !106

.lr.ph91.split.i.i:                               ; preds = %.lr.ph91.split.i.i.prol.loopexit, %bb.ah
  %.189.i.i = phi ptr [ %i.dh, %bb.ah ], [ %.189.i.i.unr, %.lr.ph91.split.i.i.prol.loopexit ] ; 5 uses
  %.05687.i.i = phi ptr [ %.258.i.i.3, %bb.ah ], [ %.05687.i.i.unr, %.lr.ph91.split.i.i.prol.loopexit ] ; 3 uses
  %i.cs = load i8, ptr %.189.i.i, align 1, !tbaa !22 ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 9
  br i1 %i.ct, label %.lr.ph91.split.i.i.1, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph91.split.i.i
  %i.cu = getelementptr i8, ptr %.05687.i.i, i64 1
  store i8 %i.cs, ptr %.05687.i.i, align 1, !tbaa !22
  br label %.lr.ph91.split.i.i.1

.lr.ph91.split.i.i.1:                             ; preds = %bb.ad, %.lr.ph91.split.i.i
  %.258.i.i = phi ptr [ %i.cu, %bb.ad ], [ %.05687.i.i, %.lr.ph91.split.i.i ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.189.i.i, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !22  ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 9
  br i1 %i.cx, label %.lr.ph91.split.i.i.2, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph91.split.i.i.1
  %i.cy = getelementptr i8, ptr %.258.i.i, i64 1
  store i8 %i.cw, ptr %.258.i.i, align 1, !tbaa !22
  br label %.lr.ph91.split.i.i.2

.lr.ph91.split.i.i.2:                             ; preds = %bb.ae, %.lr.ph91.split.i.i.1
  %.258.i.i.1 = phi ptr [ %i.cy, %bb.ae ], [ %.258.i.i, %.lr.ph91.split.i.i.1 ] ; 3 uses
  %i.cz = getelementptr i8, ptr %.189.i.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !22  ; 2 uses
  %i.db = icmp eq i8 %i.da, 9
  br i1 %i.db, label %.lr.ph91.split.i.i.3, label %bb.af

bb.af:                                            ; preds = %.lr.ph91.split.i.i.2
  %i.dc = getelementptr i8, ptr %.258.i.i.1, i64 1
  store i8 %i.da, ptr %.258.i.i.1, align 1, !tbaa !22
  br label %.lr.ph91.split.i.i.3

.lr.ph91.split.i.i.3:                             ; preds = %bb.af, %.lr.ph91.split.i.i.2
  %.258.i.i.2 = phi ptr [ %i.dc, %bb.af ], [ %.258.i.i.1, %.lr.ph91.split.i.i.2 ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.189.i.i, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !22  ; 2 uses
  %i.df = icmp eq i8 %i.de, 9
  br i1 %i.df, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph91.split.i.i.3
  %i.dg = getelementptr i8, ptr %.258.i.i.2, i64 1
  store i8 %i.de, ptr %.258.i.i.2, align 1, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph91.split.i.i.3
  %.258.i.i.3 = phi ptr [ %i.dg, %bb.ag ], [ %.258.i.i.2, %.lr.ph91.split.i.i.3 ]
  %i.dh = getelementptr i8, ptr %.189.i.i, i64 4  ; 2 uses
  %exitcond98.not.i.i.3 = icmp eq ptr %i.dh, %scevgep101.i.i
  br i1 %exitcond98.not.i.i.3, label %stringlib_expandtabs.exit, label %.lr.ph91.split.i.i, !llvm.loop !106

.loopexit73.i.i:                                  ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i
  %i.di = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.di, ptr noundef nonnull @.str.91) #17, !inline_history !107
  br label %stringlib_expandtabs.exit

stringlib_expandtabs.exit:                        ; preds = %.lr.ph91.split.i.i.prol.loopexit, %bb.ah, %.loopexit.us.i.i, %bb.c, %bb.e, %bb.s, %bb.t, %bb.v, %bb.w, %bb.x, %bb.y, %.loopexit73.i.i
  %.022.i = phi ptr [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.w ], [ null, %.loopexit73.i.i ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.x ], [ null, %bb.v ], [ %i.bi, %bb.y ], [ %i.bi, %.loopexit.us.i.i ], [ %i.bi, %bb.ah ], [ %i.bi, %.lr.ph91.split.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.022.i
}

; Function Attrs: nounwind uwtable
define internal ptr @bytearray_extend(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @PyObject_CheckBuffer(ptr noundef %1) #17, !inline_history !108
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val116.i = load i64, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  %i.d = tail call fastcc i32 @bytearray_setslice(ptr noundef %0, i64 noundef %.val116.i, i64 noundef %.val116.i, ptr noundef %1), !inline_history !108
  %i.e = icmp eq i32 %i.d, -1
  %._Py_NoneStruct.i = select i1 %i.e, ptr null, ptr @_Py_NoneStruct
  br label %bytearray_extend_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @PyObject_GetIter(ptr noundef %1) #17, !inline_history !108 ; 21 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.i = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.h) #17, !inline_history !108
  %.not73.i = icmp eq i32 %i.i, 0
  br i1 %.not73.i, label %bytearray_extend_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val118.i = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr i8, ptr %.val118.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.j, ptr noundef nonnull @.str.92, ptr noundef %i.m) #17, !inline_history !108 ; 0 uses
  br label %bytearray_extend_impl.exit

bb.f:                                             ; preds = %bb.c
  %i.o = tail call i64 @PyObject_LengthHint(ptr noundef %1, i64 noundef 32) #17, !inline_history !108 ; 6 uses
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %.not.i99.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i99.i, label %bb.h, label %bytearray_extend_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.f, align 8, !tbaa !22
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bytearray_extend_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #17, !inline_history !108
  br label %bytearray_extend_impl.exit

bb.j:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@PyBuffer_ToContiguous
declare i32 @PyBuffer_ToContiguous(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 -1, -9223372036854775808) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %stringlib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %5, 0                        ; 3 uses
  %i.c = icmp eq i64 %4, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %stringlib_find_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i64 %3, 2
  br i1 %i.d, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.e, label %stringlib_find_char.exit

bb.e:                                             ; preds = %bb.d
  switch i32 %5, label %bb.q [
    i32 1, label %bb.f
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i8, ptr %2, align 1, !tbaa !22      ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.g = icmp sgt i64 %1, 15
  br i1 %i.g, label %bb.g, label %.preheader.i

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
  %.01721.i = phi ptr [ %i.s, %bb.j ], [ %0, %.preheader.i ] ; 3 uses
  %i.n = load i8, ptr %.01721.i, align 1, !tbaa !22
  %i.o = icmp eq i8 %i.n, %i.e
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.p = ptrtoint ptr %.01721.i to i64
  %i.q = ptrtoint ptr %0 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %stringlib_find_char.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.01721.i, i64 1   ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.s, %i.f
  br i1 %exitcond.not.i, label %stringlib_find_char.exit, label %.lr.ph.i, !llvm.loop !130

bb.k:                                             ; preds = %bb.e
  %i.t = load i8, ptr %2, align 1, !tbaa !22      ; 2 uses
  %i.u = icmp sgt i64 %1, 15
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = sext i8 %i.t to i32
  %i.w = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %1) #18 ; 2 uses
  %.not.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i68, label %stringlib_find_char.exit, label %bb.m

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
  %.0.i67148 = phi ptr [ %i.ad, %bb.o ], [ %i.aa, %bb.n ]
  %i.ad = getelementptr i8, ptr %.0.i67148, i64 -1 ; 4 uses
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
  br i1 %min.iters.check, label %.lr.ph.i69.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i69.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.al = getelementptr i8, ptr %0, i64 %index    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %wide.load = load <2 x i8>, ptr %i.al, align 1, !tbaa !22
  %wide.load150 = load <2 x i8>, ptr %i.am, align 1, !tbaa !22
  %i.an = icmp eq <2 x i8> %wide.load, %broadcast.splat
  %i.ao = icmp eq <2 x i8> %wide.load150, %broadcast.splat
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %vec.phi, %i.ap           ; 2 uses
  %i.as = add <2 x i64> %vec.phi149, %i.aq        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %stringlib_find_char.exit, label %.lr.ph.i69.preheader151

.lr.ph.i69.preheader151:                          ; preds = %.lr.ph.i69.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i69.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader151, %.lr.ph.i69
  %.09.i = phi i64 [ %i.az, %.lr.ph.i69 ], [ %.09.i.ph, %.lr.ph.i69.preheader151 ] ; 2 uses
  %.078.i = phi i64 [ %spec.select.i, %.lr.ph.i69 ], [ %.078.i.ph, %.lr.ph.i69.preheader151 ]
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
  br i1 %.not, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = icmp slt i64 %1, 2500
  br i1 %i.bg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i64 %3, 100
  %i.bi = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bi, %i.bh
  %i.bj = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bj, %or.cond3
  br i1 %or.cond5, label %bb.w, label %bb.ai

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
  %.068100.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.dy, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.w ], [ %i.du, %._crit_edge.i.unr-lcssa ]
  %.07898.i.epil.init = phi i64 [ %i.bk, %bb.w ], [ %.179.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod169 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
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
  %.lcssa166 = phi i64 [ %i.du, %._crit_edge.i.unr-lcssa ], [ %i.bt, %.lr.ph.i74.epil.preheader ]
  %.179.i.lcssa = phi i64 [ %.179.i.1, %._crit_edge.i.unr-lcssa ], [ %.179.i.epil, %.lr.ph.i74.epil.preheader ]
  %i.bx = sub i64 %1, %3                          ; 4 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.bk     ; 3 uses
  %i.bz = and i8 %i.bm, 63
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = or i64 %.lcssa166, %i.cb                ; 2 uses
  %.not108.i = icmp slt i64 %i.bx, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %._crit_edge.i, %bb.ag
  %.066110.us.i = phi i64 [ %i.dc, %bb.ag ], [ 0, %._crit_edge.i ] ; 9 uses
  %.074109.us.i = phi i64 [ %.276.us.i, %bb.ag ], [ 0, %._crit_edge.i ] ; 4 uses
  %i.cd = getelementptr i8, ptr %i.by, i64 %.066110.us.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !22
  %i.cf = icmp eq i8 %i.ce, %i.bm
  br i1 %i.cf, label %.preheader.us.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph113.split.us.i
  %i.cg = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.cg, %i.bx
  br i1 %.not88.us.i, label %bb.ag, label %bb.y

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
  br label %bb.ag

bb.z:                                             ; preds = %.preheader.us.i, %bb.ah
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.dd, %bb.ah ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.de, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !22
  %.not90.us.i = icmp eq i8 %i.cp, %i.cr
  br i1 %.not90.us.i, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cs, %i.bx
  br i1 %.not91.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !22
  %i.cv = and i8 %i.cu, 63
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw
  %i.cy = and i64 %i.cx, %i.cc
  %.not92.us.i = icmp eq i64 %i.cy, 0
  br i1 %.not92.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.078.pn.us.i = phi i64 [ %.179.i.lcssa, %bb.ac ], [ %3, %bb.ab ]
  %.167.us.i = add i64 %.078.pn.us.i, %.066110.us.i
  br label %bb.ag

._crit_edge104.us.thread.i:                       ; preds = %bb.ah
  br i1 %i.b, label %bb.ae, label %stringlib_find_char.exit

bb.ae:                                            ; preds = %._crit_edge104.us.thread.i
  %i.cz = add i64 %.074109.us.i, 1                ; 2 uses
  %i.da = icmp eq i64 %i.cz, %4
  br i1 %i.da, label %stringlib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = add i64 %.066110.us.i, %i.bk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.y, %bb.x
  %.276.us.i = phi i64 [ %.074109.us.i, %bb.x ], [ %.074109.us.i, %bb.y ], [ %.074109.us.i, %bb.ad ], [ %i.cz, %bb.af ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.x ], [ %spec.select.us.i, %bb.y ], [ %.167.us.i, %bb.ad ], [ %i.db, %bb.af ]
  %i.dc = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.dc, %i.bx
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !237

bb.ah:                                            ; preds = %bb.z
  %i.dd = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.dd, %i.bk
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i, label %bb.z, !llvm.loop !238

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.de = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.z

.lr.ph.i74:                                       ; preds = %.lr.ph.i74, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dy, %.lr.ph.i74 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.du, %.lr.ph.i74 ]
  %.07898.i = phi i64 [ %i.bk, %.new ], [ %.179.i.1, %.lr.ph.i74 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i74 ]
  %i.df = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22  ; 2 uses
  %i.dh = and i8 %i.dg, 63
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = or i64 %i.dj, %.06999.i
  %i.dl = icmp eq i8 %i.dg, %i.bm
  %i.dm = xor i64 %.068100.i, -1
  %i.dn = add nsw i64 %i.bk, %i.dm
  %.179.i = select i1 %i.dl, i64 %i.dn, i64 %.07898.i
  %i.do = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !22  ; 2 uses
  %i.dr = and i8 %i.dq, 63
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = shl nuw i64 1, %i.ds
  %i.du = or i64 %i.dt, %i.dk                     ; 3 uses
  %i.dv = icmp eq i8 %i.dq, %i.bm
  %i.dw = xor i64 %.068100.i, -2
  %i.dx = add nsw i64 %i.bk, %i.dw
  %.179.i.1 = select i1 %i.dv, i64 %i.dx, i64 %.179.i ; 3 uses
  %i.dy = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i74, !llvm.loop !239

.loopexit.i:                                      ; preds = %bb.ag, %._crit_edge.i
  %.377.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.276.us.i, %bb.ag ]
  %i.dz = select i1 %i.b, i64 %.377.ph.i, i64 -1
  br label %stringlib_find_char.exit

bb.ai:                                            ; preds = %bb.v
  %i.ea = lshr i64 %3, 2
  %i.eb = mul nuw nsw i64 %i.ea, 3
  %i.ec = lshr i64 %1, 2
  %i.ed = icmp samesign ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ee = icmp eq i32 %5, 1
  br i1 %i.ee, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ef = tail call fastcc i64 @stringlib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %stringlib_find_char.exit

bb.al:                                            ; preds = %bb.aj
  %i.eg = tail call fastcc i64 @stringlib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %stringlib_find_char.exit

bb.am:                                            ; preds = %bb.ai
  %i.eh = tail call fastcc i64 @stringlib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %stringlib_find_char.exit

bb.an:                                            ; preds = %bb.t
  %i.ei = add nsw i64 %3, -1                      ; 6 uses
  %i.ej = load i8, ptr %2, align 1, !tbaa !22     ; 5 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i64
  %i.em = shl nuw i64 1, %i.el                    ; 2 uses
  %xtraiter171 = and i64 %i.ei, 1
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i76.prol.loopexit, label %.lr.ph.i76.prol

.lr.ph.i76.prol:                                  ; preds = %bb.an
  %i.en = getelementptr i8, ptr %2, i64 %i.ei
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !22  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = shl nuw i64 1, %i.eq
  %i.es = or i64 %i.er, %i.em                     ; 2 uses
  %i.et = icmp eq i8 %i.eo, %i.ej
  %i.eu = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i77.prol = select i1 %i.et, i64 %i.eu, i64 %i.ei ; 2 uses
  br label %.lr.ph.i76.prol.loopexit

.lr.ph.i76.prol.loopexit:                         ; preds = %.lr.ph.i76.prol, %bb.an
  %.04660.i.unr = phi i64 [ %i.ei, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %.04759.i.unr = phi i64 [ %i.em, %bb.an ], [ %i.es, %.lr.ph.i76.prol ]
  %.04958.i.unr = phi i64 [ %i.ei, %bb.an ], [ %i.eu, %.lr.ph.i76.prol ]
  %.lcssa162.unr = phi i64 [ poison, %bb.an ], [ %i.es, %.lr.ph.i76.prol ]
  %spec.select.i77.lcssa.unr = phi i64 [ poison, %bb.an ], [ %spec.select.i77.prol, %.lr.ph.i76.prol ]
  %i.ev = icmp eq i64 %3, 2
  br i1 %i.ev, label %.preheader56.i, label %.lr.ph.i76

.preheader56.i:                                   ; preds = %.lr.ph.i76, %.lr.ph.i76.prol.loopexit
  %.lcssa162 = phi i64 [ %.lcssa162.unr, %.lr.ph.i76.prol.loopexit ], [ %i.gk, %.lr.ph.i76 ] ; 2 uses
  %spec.select.i77.lcssa = phi i64 [ %spec.select.i77.lcssa.unr, %.lr.ph.i76.prol.loopexit ], [ %spec.select.i77.1, %.lr.ph.i76 ]
  %i.ew = sub i64 %1, %3                          ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.as
  %.15065.us.i = phi i64 [ %i.ft, %bb.as ], [ %i.ew, %.preheader56.i ] ; 5 uses
  %i.ey = getelementptr i8, ptr %0, i64 %.15065.us.i ; 4 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !22
  %i.fa = icmp eq i8 %i.ez, %i.ej
  br i1 %i.fa, label %.preheader.us.i80, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i79 = icmp eq i64 %.15065.us.i, 0
  br i1 %.not.us.i79, label %stringlib_find_char.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fb = getelementptr i8, ptr %i.ey, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !22
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %.lcssa162
  %.not51.us.i = icmp eq i64 %i.fg, 0
  %i.fh = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.as

.preheader.us.i80:                                ; preds = %.lr.ph66.split.us.i, %bb.at
  %.04862.us.i = phi i64 [ %i.fv, %bb.at ], [ %i.ei, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fi = getelementptr i8, ptr %i.ey, i64 %.04862.us.i
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !22
  %i.fk = getelementptr i8, ptr %2, i64 %.04862.us.i
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !22
  %.not52.us.i = icmp eq i8 %i.fj, %i.fl
  br i1 %.not52.us.i, label %bb.at, label %.thread.us.i

.thread.us.i:                                     ; preds = %.preheader.us.i80
  %.not53.us.i = icmp eq i64 %.15065.us.i, 0
  br i1 %.not53.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.thread.us.i
  %i.fm = getelementptr i8, ptr %i.ey, i64 -1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !22
  %i.fo = and i8 %i.fn, 63
  %i.fp = zext nneg i8 %i.fo to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %.lcssa162
  %.not54.us.i = icmp eq i64 %i.fr, 0
  br i1 %.not54.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread.us.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i77.lcssa, %bb.ar ], [ %i.fh, %bb.ap ], [ %3, %bb.aq ]
  %i.fs = sub nsw i64 %.15065.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1
  %i.fu = icmp sgt i64 %i.fs, 0
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %stringlib_find_char.exit, !llvm.loop !176

bb.at:                                            ; preds = %.preheader.us.i80
  %i.fv = add nsw i64 %.04862.us.i, -1
  %i.fw = icmp sgt i64 %.04862.us.i, 1
  br i1 %i.fw, label %.preheader.us.i80, label %stringlib_find_char.exit, !llvm.loop !177

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.prol.loopexit, %.lr.ph.i76
  %.04660.i = phi i64 [ %spec.select.i77.1, %.lr.ph.i76 ], [ %.04660.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gk, %.lr.ph.i76 ], [ %.04759.i.unr, %.lr.ph.i76.prol.loopexit ]
  %.04958.i = phi i64 [ %i.gm, %.lr.ph.i76 ], [ %.04958.i.unr, %.lr.ph.i76.prol.loopexit ] ; 4 uses
  %i.fx = getelementptr i8, ptr %2, i64 %.04958.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !22  ; 2 uses
  %i.fz = and i8 %i.fy, 63
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = or i64 %i.gb, %.04759.i
  %i.gd = icmp eq i8 %i.fy, %i.ej
  %i.ge = add nsw i64 %.04958.i, -1               ; 2 uses
  %spec.select.i77 = select i1 %i.gd, i64 %i.ge, i64 %.04660.i
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22  ; 2 uses
  %i.gh = and i8 %i.gg, 63
end_hunk_1
