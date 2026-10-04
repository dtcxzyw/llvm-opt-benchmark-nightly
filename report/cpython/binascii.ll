Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/binascii?download=true
inline.NumInlined: 74
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@binascii_traverse:bb.a
  %.3 = phi i32 [ 0, %bb.e ], [ %i.f, %bb.d ], [ %i.c, %bb.b ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @binascii_clear(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %Py_DECREF.exit14, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i13 = icmp sgt i32 %i.c, -1
  br i1 %.not.i13, label %bb.c, label %Py_DECREF.exit14

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit14

Py_DECREF.exit14:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %Py_DECREF.exit14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @binascii_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %Py_DECREF.exit14.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not.i13.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i13.i, label %bb.c, label %Py_DECREF.exit14.i

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit14.i

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #6
  br label %Py_DECREF.exit14.i

Py_DECREF.exit14.i:                               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  %.not12.i = icmp eq ptr %i.g, null
  br i1 %.not12.i, label %binascii_clear.exit, label %bb.e

bb.e:                                             ; preds = %Py_DECREF.exit14.i
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.f, label %binascii_clear.exit

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.g, label %binascii_clear.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #6
  br label %binascii_clear.exit

binascii_clear.exit:                              ; preds = %Py_DECREF.exit14.i, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_uu(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %binascii_a2b_uu_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !23
  %i.c = load i8, ptr %.val, align 1, !tbaa !17
  %i.d = and i8 %i.c, 63                          ; 2 uses
  %i.e = xor i8 %i.d, 32
  %i.f = zext nneg i8 %i.e to i64                 ; 2 uses
  %i.g = call ptr @PyBytesWriter_Create(i64 noundef %i.f) #6 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %binascii_a2b_uu_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #6
  %.0683.i = getelementptr i8, ptr %.val, i64 1   ; 2 uses
  %.0614.i = add i64 %.val4, -1                   ; 2 uses
  %.not.i = icmp eq i8 %i.d, 32
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.068.lcssa.i = phi ptr [ %.0683.i, %bb.c ], [ %.068.i, %bb.h ]
  %.061.lcssa.i = phi i64 [ %.0614.i, %bb.c ], [ %.061.i, %bb.h ] ; 2 uses
  %i.j = icmp sgt i64 %.061.lcssa.i, 0
  br i1 %i.j, label %.lr.ph14.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %.06110.i = phi i64 [ %.061.i, %bb.h ], [ %.0614.i, %bb.c ] ; 2 uses
  %.0689.i = phi ptr [ %.068.i, %bb.h ], [ %.0683.i, %bb.c ] ; 2 uses
  %.08.i = phi ptr [ %.1.i, %bb.h ], [ %i.i, %bb.c ] ; 3 uses
  %.0597.i = phi i64 [ %.160.i, %bb.h ], [ %i.f, %bb.c ] ; 2 uses
  %.0636.i = phi i32 [ %.164.i, %bb.h ], [ 0, %bb.c ]
  %.0665.i = phi i32 [ %.167.i, %bb.h ], [ 0, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %.06110.i, 0
  br i1 %i.k, label %switch.early.test.i, label %.thread.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  %i.l = load i8, ptr %.0689.i, align 1, !tbaa !17 ; 3 uses
  switch i8 %i.l, label %bb.d [
    i8 13, label %.thread.i
    i8 10, label %.thread.i
  ]

bb.d:                                             ; preds = %switch.early.test.i
  %i.m = add i8 %i.l, -97
  %or.cond7.i = icmp ult i8 %i.m, -65
  br i1 %or.cond7.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.p = and i8 %i.l, 63
  %i.q = xor i8 %i.p, 32
  %i.r = zext nneg i8 %i.q to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i
  %.065.i = phi i32 [ %i.r, %bb.f ], [ 0, %switch.early.test.i ], [ 0, %switch.early.test.i ], [ 0, %.lr.ph.i ]
  %i.s = shl i32 %.0636.i, 6
  %i.t = or i32 %.065.i, %i.s                     ; 3 uses
  %i.u = add nuw nsw i32 %.0665.i, 6
  %i.v = icmp sgt i32 %.0665.i, 1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread.i
  %i.w = add nsw i32 %.0665.i, -2                 ; 3 uses
  %i.x = lshr i32 %i.t, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr i8, ptr %.08.i, i64 1
  store i8 %i.y, ptr %.08.i, align 1, !tbaa !17
  %notmask.i = shl nsw i32 -1, %i.w
  %i.aa = xor i32 %notmask.i, -1
  %i.ab = and i32 %i.t, %i.aa
  %i.ac = add nsw i64 %.0597.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %.167.i = phi i32 [ %i.w, %bb.g ], [ %i.u, %.thread.i ]
  %.164.i = phi i32 [ %i.ab, %bb.g ], [ %i.t, %.thread.i ]
  %.160.i = phi i64 [ %i.ac, %bb.g ], [ %.0597.i, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %bb.g ], [ %.08.i, %.thread.i ]
  %.068.i = getelementptr i8, ptr %.0689.i, i64 1 ; 2 uses
  %.061.i = add i64 %.06110.i, -1                 ; 2 uses
  %i.ad = icmp sgt i64 %.160.i, 0
  br i1 %i.ad, label %.lr.ph.i, label %.preheader.i, !llvm.loop !36

.lr.ph14.i:                                       ; preds = %.preheader.i, %.backedge.i
  %.16213.i = phi i64 [ %i.ag, %.backedge.i ], [ %.061.lcssa.i, %.preheader.i ] ; 2 uses
  %.16912.i = phi ptr [ %i.af, %.backedge.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %i.ae = load i8, ptr %.16912.i, align 1, !tbaa !17
  switch i8 %i.ae, label %bb.i [
    i8 96, label %.backedge.i
    i8 32, label %.backedge.i
    i8 13, label %.backedge.i
    i8 10, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i, %.lr.ph14.i
  %i.af = getelementptr i8, ptr %.16912.i, i64 1
  %i.ag = add nsw i64 %.16213.i, -1
  %i.ah = icmp sgt i64 %.16213.i, 1
  br i1 %i.ah, label %.lr.ph14.i, label %._crit_edge.i

bb.i:                                             ; preds = %.lr.ph14.i
  %i.ai = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %.sink.split.i

._crit_edge.i:                                    ; preds = %.backedge.i, %.preheader.i
  %i.ak = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.g) #6
  br label %binascii_a2b_uu_impl.exit

.sink.split.i:                                    ; preds = %bb.i, %bb.e
  %.sink21.i = phi ptr [ %i.n, %bb.e ], [ %i.ai, %bb.i ]
  %.str.23.sink.i = phi ptr [ @.str.22, %bb.e ], [ @.str.23, %bb.i ]
  %i.al = load ptr, ptr %.sink21.i, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull %.str.23.sink.i) #6
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.i, %bb.e
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %binascii_a2b_uu_impl.exit

binascii_a2b_uu_impl.exit:                        ; preds = %bb.j, %._crit_edge.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.j ], [ %i.ak, %._crit_edge.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.an, null
  br i1 %.not3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %binascii_a2b_uu_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %binascii_a2b_uu_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_uu(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_uu._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %binascii_b2a_uu_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %binascii_b2a_uu_impl.exit

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %binascii_b2a_uu_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !22  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !23 ; 7 uses
  %i.q = icmp sgt i64 %.val33, 45
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %binascii_b2a_uu_impl.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.26) #6
  br label %binascii_b2a_uu_impl.exit

bb.j:                                             ; preds = %bb.g
  %i.u = add nsw i64 %.val33, 2
  %i.v = sdiv i64 %i.u, 3
  %i.w = shl i64 %i.v, 2
  %i.x = or disjoint i64 %i.w, 2
  %i.y = call ptr @PyBytesWriter_Create(i64 noundef %i.x) #6 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %binascii_b2a_uu_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.y) #6 ; 2 uses
  %i.ab = icmp eq i32 %.0, 0                      ; 2 uses
  %i.ac = icmp ne i64 %.val33, 0
  %or.cond.i = or i1 %i.ab, %i.ac
  %i.ad = trunc i64 %.val33 to i8
  %i.ae = add i8 %i.ad, 32
  %storemerge.i = select i1 %or.cond.i, i8 %i.ae, i8 96
  %.0.i = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  store i8 %storemerge.i, ptr %i.aa, align 1, !tbaa !17
  %i.af = icmp sgt i64 %.val33, 0
  br i1 %i.af, label %.lr.ph11.i, label %._crit_edge12.i

.lr.ph11.i:                                       ; preds = %bb.k
  br i1 %i.ab, label %.lr.ph11.split.us.i, label %.lr.ph11.split.i

.lr.ph11.split.us.i:                              ; preds = %.lr.ph11.i, %._crit_edge.split.us.us.i
  %i.ag = phi i1 [ %i.bt, %._crit_edge.split.us.us.i ], [ true, %.lr.ph11.i ]
  %.19.us.i = phi ptr [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0398.us.i = phi i64 [ %i.br, %._crit_edge.split.us.us.i ], [ %.val33, %.lr.ph11.i ]
  %.0407.us.i = phi i32 [ %.141.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ]
  %.0426.us.i = phi i32 [ %.143.lcssa.us.i, %._crit_edge.split.us.us.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0445.us.i = phi ptr [ %i.bs, %._crit_edge.split.us.us.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %i.ah = shl i32 %.0407.us.i, 8                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph11.split.us.i
  %i.ai = load i8, ptr %.0445.us.i, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph11.split.us.i
  %.141.us.i = phi i32 [ %i.ak, %bb.l ], [ %i.ah, %.lr.ph11.split.us.i ] ; 4 uses
  %i.al = add nsw i32 %.0426.us.i, 8              ; 6 uses
  %i.am = icmp sgt i32 %.0426.us.i, -3
  br i1 %i.am, label %iter.check87, label %._crit_edge.split.us.us.i

iter.check87:                                     ; preds = %bb.m
  %i.an = add i32 %.0426.us.i, 2                  ; 3 uses
  %i.ao = udiv i32 %i.an, 6
  %narrow108 = add nuw nsw i32 %i.ao, 1
  %i.ap = zext nneg i32 %narrow108 to i64         ; 5 uses
  %min.iters.check67 = icmp ult i32 %i.an, 42
  br i1 %min.iters.check67, label %.lr.ph.us.i.preheader, label %vector.main.loop.iter.check68

vector.main.loop.iter.check68:                    ; preds = %iter.check87
  %min.iters.check69 = icmp ult i32 %i.an, 90
  br i1 %min.iters.check69, label %vec.epilog.ph91, label %vector.ph70

vector.ph70:                                      ; preds = %vector.main.loop.iter.check68
  %i.aq = and i64 %i.ap, 8
  %n.vec71 = and i64 %i.ap, 2147483632            ; 5 uses
  %i.ar = getelementptr i8, ptr %.19.us.i, i64 %n.vec71 ; 2 uses
  %i.as = trunc nuw nsw i64 %n.vec71 to i32
  %i.at = mul i32 %i.as, -6
  %i.au = add i32 %i.al, %i.at                    ; 3 uses
  %broadcast.splatinsert72 = insertelement <16 x i32> poison, i32 %.141.us.i, i64 0
  %broadcast.splat73 = shufflevector <16 x i32> %broadcast.splatinsert72, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <16 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat75 = shufflevector <16 x i32> %broadcast.splatinsert74, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction76 = add nsw <16 x i32> %broadcast.splat75, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body77

vector.body77:                                    ; preds = %vector.ph70, %vector.body77
  %index78 = phi i64 [ 0, %vector.ph70 ], [ %index.next81, %vector.body77 ] ; 2 uses
  %vec.ind79 = phi <16 x i32> [ %induction76, %vector.ph70 ], [ %vec.ind.next82, %vector.body77 ] ; 2 uses
  %next.gep80 = getelementptr i8, ptr %.19.us.i, i64 %index78
  %i.av = add nsw <16 x i32> %vec.ind79, splat (i32 -6)
  %i.aw = lshr <16 x i32> %broadcast.splat73, %i.av
  %i.ax = trunc <16 x i32> %i.aw to <16 x i8>
  %i.ay = and <16 x i8> %i.ax, splat (i8 63)
  %i.az = add nuw nsw <16 x i8> %i.ay, splat (i8 32)
  store <16 x i8> %i.az, ptr %next.gep80, align 1, !tbaa !17
  %index.next81 = add nuw i64 %index78, 16        ; 2 uses
  %vec.ind.next82 = add nsw <16 x i32> %vec.ind79, splat (i32 -96)
  %i.ba = icmp eq i64 %index.next81, %n.vec71
  br i1 %i.ba, label %middle.block83, label %vector.body77, !llvm.loop !37

middle.block83:                                   ; preds = %vector.body77
  %cmp.n84 = icmp eq i64 %n.vec71, %i.ap
  br i1 %cmp.n84, label %._crit_edge.split.us.us.i, label %vec.epilog.iter.check89

vec.epilog.iter.check89:                          ; preds = %middle.block83
  %min.epilog.iters.check90.not.not = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check90.not.not, label %.lr.ph.us.i.preheader, label %vec.epilog.ph91, !prof !44

vec.epilog.ph91:                                  ; preds = %vector.main.loop.iter.check68, %vec.epilog.iter.check89
  %vec.epilog.resume.val85 = phi i64 [ %n.vec71, %vec.epilog.iter.check89 ], [ 0, %vector.main.loop.iter.check68 ]
  %bc.resume.val86 = phi i32 [ %i.au, %vec.epilog.iter.check89 ], [ %i.al, %vector.main.loop.iter.check68 ]
  %n.vec92 = and i64 %i.ap, 2147483640            ; 4 uses
  %i.bb = getelementptr i8, ptr %.19.us.i, i64 %n.vec92 ; 2 uses
  %i.bc = trunc nuw nsw i64 %n.vec92 to i32
  %i.bd = mul i32 %i.bc, -6
  %i.be = add i32 %i.al, %i.bd                    ; 2 uses
  %broadcast.splatinsert93 = insertelement <8 x i32> poison, i32 %.141.us.i, i64 0
  %broadcast.splat94 = shufflevector <8 x i32> %broadcast.splatinsert93, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> poison, i32 %bc.resume.val86, i64 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction97 = add nsw <8 x i32> %broadcast.splat96, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42>
  br label %vec.epilog.vector.body98

vec.epilog.vector.body98:                         ; preds = %vec.epilog.vector.body98, %vec.epilog.ph91
  %index99 = phi i64 [ %vec.epilog.resume.val85, %vec.epilog.ph91 ], [ %index.next102, %vec.epilog.vector.body98 ] ; 2 uses
  %vec.ind100 = phi <8 x i32> [ %induction97, %vec.epilog.ph91 ], [ %vec.ind.next103, %vec.epilog.vector.body98 ] ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.19.us.i, i64 %index99
  %i.bf = add nsw <8 x i32> %vec.ind100, splat (i32 -6)
  %i.bg = lshr <8 x i32> %broadcast.splat94, %i.bf
  %i.bh = trunc <8 x i32> %i.bg to <8 x i8>
  %i.bi = and <8 x i8> %i.bh, splat (i8 63)
  %i.bj = add nuw nsw <8 x i8> %i.bi, splat (i8 32)
  store <8 x i8> %i.bj, ptr %next.gep101, align 1, !tbaa !17
  %index.next102 = add nuw i64 %index99, 8        ; 2 uses
  %vec.ind.next103 = add nsw <8 x i32> %vec.ind100, splat (i32 -48)
  %i.bk = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.bk, label %vec.epilog.middle.block104, label %vec.epilog.vector.body98, !llvm.loop !38

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body98
  %cmp.n105 = icmp eq i64 %n.vec92, %i.ap
  br i1 %cmp.n105, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %iter.check87, %vec.epilog.iter.check89, %vec.epilog.middle.block104
  %.22.us.us.i.ph = phi ptr [ %.19.us.i, %iter.check87 ], [ %i.ar, %vec.epilog.iter.check89 ], [ %i.bb, %vec.epilog.middle.block104 ]
  %.1431.us.us.i.ph = phi i32 [ %i.al, %iter.check87 ], [ %i.au, %vec.epilog.iter.check89 ], [ %i.be, %vec.epilog.middle.block104 ]
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i
  %.22.us.us.i = phi ptr [ %.3.us.us.i, %.lr.ph.us.i ], [ %.22.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %.1431.us.us.i = phi i32 [ %i.bl, %.lr.ph.us.i ], [ %.1431.us.us.i.ph, %.lr.ph.us.i.preheader ] ; 2 uses
  %i.bl = add nsw i32 %.1431.us.us.i, -6          ; 3 uses
  %i.bm = lshr i32 %.141.us.i, %i.bl
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = add nuw nsw i8 %i.bo, 32
  %.3.us.us.i = getelementptr i8, ptr %.22.us.us.i, i64 1 ; 2 uses
  store i8 %i.bp, ptr %.22.us.us.i, align 1, !tbaa !17
  %i.bq = icmp samesign ugt i32 %.1431.us.us.i, 11
  br i1 %i.bq, label %.lr.ph.us.i, label %._crit_edge.split.us.us.i, !llvm.loop !39

._crit_edge.split.us.us.i:                        ; preds = %.lr.ph.us.i, %middle.block83, %vec.epilog.middle.block104, %bb.m
  %.143.lcssa.us.i = phi i32 [ %i.al, %bb.m ], [ %i.be, %vec.epilog.middle.block104 ], [ %i.au, %middle.block83 ], [ %i.bl, %.lr.ph.us.i ] ; 2 uses
  %.2.lcssa.us.i = phi ptr [ %.19.us.i, %bb.m ], [ %i.bb, %vec.epilog.middle.block104 ], [ %i.ar, %middle.block83 ], [ %.3.us.us.i, %.lr.ph.us.i ] ; 2 uses
  %i.br = add i64 %.0398.us.i, -1                 ; 2 uses
  %i.bs = getelementptr i8, ptr %.0445.us.i, i64 1
  %i.bt = icmp sgt i64 %i.br, 0                   ; 2 uses
  %i.bu = icmp ne i32 %.143.lcssa.us.i, 0
  %i.bv = or i1 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph11.split.us.i, label %._crit_edge12.i, !llvm.loop !40

.lr.ph11.split.i:                                 ; preds = %.lr.ph11.i, %._crit_edge.split.i
  %i.bw = phi i1 [ %i.dq, %._crit_edge.split.i ], [ true, %.lr.ph11.i ]
  %.19.i = phi ptr [ %.2.lcssa.i, %._crit_edge.split.i ], [ %.0.i, %.lr.ph11.i ] ; 6 uses
  %.0398.i = phi i64 [ %i.do, %._crit_edge.split.i ], [ %.val33, %.lr.ph11.i ]
  %.0407.i = phi i32 [ %.141.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ]
  %.0426.i = phi i32 [ %.143.lcssa.i, %._crit_edge.split.i ], [ 0, %.lr.ph11.i ] ; 3 uses
  %.0445.i = phi ptr [ %i.dp, %._crit_edge.split.i ], [ %.val32, %.lr.ph11.i ] ; 2 uses
  %i.bx = shl i32 %.0407.i, 8                     ; 2 uses
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph11.split.i
  %i.by = load i8, ptr %.0445.i, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bx, %i.bz
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph11.split.i
  %.141.i = phi i32 [ %i.ca, %bb.n ], [ %i.bx, %.lr.ph11.split.i ] ; 4 uses
  %i.cb = add nsw i32 %.0426.i, 8                 ; 6 uses
  %i.cc = icmp sgt i32 %.0426.i, -3
  br i1 %i.cc, label %iter.check, label %._crit_edge.split.i

iter.check:                                       ; preds = %bb.o
  %i.cd = add i32 %.0426.i, 2                     ; 3 uses
  %i.ce = udiv i32 %i.cd, 6
  %narrow = add nuw nsw i32 %i.ce, 1
  %i.cf = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %i.cd, 18
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.cd, 90
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 12
  %n.vec = and i64 %i.cf, 2147483632              ; 5 uses
  %i.ch = getelementptr i8, ptr %.19.i, i64 %n.vec ; 2 uses
  %i.ci = trunc nuw nsw i64 %n.vec to i32
  %i.cj = mul i32 %i.ci, -6
  %i.ck = add i32 %i.cb, %i.cj                    ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.141.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <16 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat51 = shufflevector <16 x i32> %broadcast.splatinsert50, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat51, <i32 0, i32 -6, i32 -12, i32 -18, i32 -24, i32 -30, i32 -36, i32 -42, i32 -48, i32 -54, i32 -60, i32 -66, i32 -72, i32 -78, i32 -84, i32 -90>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.19.i, i64 %index
  %i.cl = add nsw <16 x i32> %vec.ind, splat (i32 -6)
  %i.cm = lshr <16 x i32> %broadcast.splat, %i.cl ; 2 uses
  %i.cn = and <16 x i32> %i.cm, splat (i32 63)
  %i.co = icmp eq <16 x i32> %i.cn, zeroinitializer
  %i.cp = trunc <16 x i32> %i.cm to <16 x i8>
  %i.cq = and <16 x i8> %i.cp, splat (i8 63)
  %i.cr = add nuw nsw <16 x i8> %i.cq, splat (i8 32)
  %i.cs = select <16 x i1> %i.co, <16 x i8> splat (i8 96), <16 x i8> %i.cr
  store <16 x i8> %i.cs, ptr %next.gep, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 -96)
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br i1 %cmp.n, label %._crit_edge.split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val52 = phi i32 [ %i.ck, %vec.epilog.iter.check ], [ %i.cb, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.cf, 2147483644            ; 4 uses
  %i.cu = getelementptr i8, ptr %.19.i, i64 %n.vec53 ; 2 uses
  %i.cv = trunc nuw nsw i64 %n.vec53 to i32
  %i.cw = mul i32 %i.cv, -6
  %i.cx = add i32 %i.cb, %i.cw                    ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x i32> poison, i32 %.141.i, i64 0
  %broadcast.splat55 = shufflevector <4 x i32> %broadcast.splatinsert54, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <4 x i32> poison, i32 %bc.resume.val52, i64 0
  %broadcast.splat57 = shufflevector <4 x i32> %broadcast.splatinsert56, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction58 = add nsw <4 x i32> %broadcast.splat57, <i32 0, i32 -6, i32 -12, i32 -18>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind60 = phi <4 x i32> [ %induction58, %vec.epilog.ph ], [ %vec.ind.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.19.i, i64 %index59
  %i.cy = add nsw <4 x i32> %vec.ind60, splat (i32 -6)
  %i.cz = lshr <4 x i32> %broadcast.splat55, %i.cy ; 2 uses
  %i.da = and <4 x i32> %i.cz, splat (i32 63)
  %i.db = icmp eq <4 x i32> %i.da, zeroinitializer
  %i.dc = trunc <4 x i32> %i.cz to <4 x i8>
  %i.dd = and <4 x i8> %i.dc, splat (i8 63)
  %i.de = add nuw nsw <4 x i8> %i.dd, splat (i8 32)
  %i.df = select <4 x i1> %i.db, <4 x i8> splat (i8 96), <4 x i8> %i.de
  store <4 x i8> %i.df, ptr %next.gep61, align 1, !tbaa !17
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %vec.ind.next63 = add nsw <4 x i32> %vec.ind60, splat (i32 -24)
  %i.dg = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %n.vec53, %i.cf
  br i1 %cmp.n64, label %._crit_edge.split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.22.i.ph = phi ptr [ %.19.i, %iter.check ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ]
  %.1431.i.ph = phi i32 [ %i.cb, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.22.i = phi ptr [ %.3.i, %.lr.ph.i ], [ %.22.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1431.i = phi i32 [ %i.dh, %.lr.ph.i ], [ %.1431.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dh = add nsw i32 %.1431.i, -6                ; 3 uses
  %i.di = lshr i32 %.141.i, %i.dh                 ; 2 uses
  %i.dj = and i32 %i.di, 63
  %.not.i = icmp eq i32 %i.dj, 0
  %i.dk = trunc i32 %i.di to i8
  %i.dl = and i8 %i.dk, 63
  %i.dm = add nuw nsw i8 %i.dl, 32
  %spec.select.i = select i1 %.not.i, i8 96, i8 %i.dm
  %.3.i = getelementptr i8, ptr %.22.i, i64 1     ; 2 uses
  store i8 %spec.select.i, ptr %.22.i, align 1, !tbaa !17
  %i.dn = icmp samesign ugt i32 %.1431.i, 11
  br i1 %i.dn, label %.lr.ph.i, label %._crit_edge.split.i, !llvm.loop !43

._crit_edge.split.i:                              ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.o
  %.143.lcssa.i = phi i32 [ %i.cb, %bb.o ], [ %i.cx, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %i.dh, %.lr.ph.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.19.i, %bb.o ], [ %i.cu, %vec.epilog.middle.block ], [ %i.ch, %middle.block ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.do = add i64 %.0398.i, -1                    ; 2 uses
  %i.dp = getelementptr i8, ptr %.0445.i, i64 1
  %i.dq = icmp sgt i64 %i.do, 0                   ; 2 uses
  %i.dr = icmp ne i32 %.143.lcssa.i, 0
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph11.split.i, label %._crit_edge12.i, !llvm.loop !40

._crit_edge12.i:                                  ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %bb.k
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.k ], [ %.2.lcssa.us.i, %._crit_edge.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge.split.i ] ; 2 uses
  %i.dt = getelementptr i8, ptr %.1.lcssa.i, i64 1
  store i8 10, ptr %.1.lcssa.i, align 1, !tbaa !17
  %i.du = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.y, ptr noundef %i.dt) #6
  br label %binascii_b2a_uu_impl.exit

binascii_b2a_uu_impl.exit:                        ; preds = %._crit_edge12.i, %bb.j, %bb.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.i ], [ %i.du, %._crit_edge12.i ], [ null, %bb.j ]
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.dw, null
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %binascii_b2a_uu_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %binascii_b2a_uu_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 13 uses
  %5 = alloca %struct.Py_buffer, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  %.0122157.i.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %bb.az, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.l, ptr noundef %4)
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.az, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %.thread42, label %bb.f

.thread42:                                        ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.k, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16   ; 2 uses
  %.not36 = icmp eq ptr %i.r, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.r) #6 ; 3 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.az, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not37 = icmp eq i64 %i.f, 1
  br i1 %.not37, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  %i.u = load ptr, ptr %4, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !23
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i32 [ %i.s, %bb.h ], [ -1, %bb.f ]    ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not38 = icmp eq i32 %i.z, 0
  br i1 %.not38, label %bb.j, label %bb.az

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.ad = icmp eq i32 %.0, -1
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread42, %bb.j
  %i.ae = phi i64 [ %i.p, %.thread42 ], [ %i.ac, %bb.j ]
  %i.af = phi ptr [ %i.n, %.thread42 ], [ %i.aa, %bb.j ]
  %i.ag = load ptr, ptr %5, align 8, !tbaa !22
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = zext i1 %i.ah to i32
  br label %bb.l

bb.l:                                             ; preds = %.thread44, %bb.k, %bb.j
  %i.aj = phi i64 [ %i.ae, %bb.k ], [ %i.ac, %bb.j ], [ %i.w, %.thread44 ] ; 2 uses
  %i.ak = phi ptr [ %i.af, %bb.k ], [ %i.aa, %bb.j ], [ %i.u, %.thread44 ]
  %.0123.i = phi i32 [ %i.ai, %bb.k ], [ %.0, %bb.j ], [ %i.s, %.thread44 ]
  %i.al = icmp ne i32 %.0123.i, 0                 ; 4 uses
  %.not46 = xor i1 %i.al, true
  %i.am = load ptr, ptr %5, align 8
  %i.an = icmp eq ptr %i.am, null
  %or.cond = select i1 %.not46, i1 true, i1 %i.an
  %i.ao = load i64, ptr %.0122157.i.sroa.gep, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  %or.cond49 = select i1 %or.cond, i1 true, i1 %i.ap ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %or.cond49, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.m
  %.0122157.i.sroa.phi = phi ptr [ %.0122157.i.sroa.gep, %bb.m ], [ inttoptr (i64 16 to ptr), %bb.l ] ; 3 uses
  %.0122157.i = phi ptr [ %5, %bb.m ], [ null, %bb.l ] ; 3 uses
  %i.aq = add i64 %i.aj, 3
  %i.ar = lshr i64 %i.aq, 2
  %i.as = mul nuw i64 %i.ar, 3
  %i.at = call ptr @PyBytesWriter_Create(i64 noundef %i.as) #6 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %binascii_a2b_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.av = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %ignorechar.exit.i, %bb.n
  %.0116.i = phi ptr [ %i.ak, %bb.n ], [ %i.fu, %ignorechar.exit.i ] ; 4 uses
  %.0110.i = phi i64 [ %i.aj, %bb.n ], [ %i.fv, %ignorechar.exit.i ] ; 6 uses
  %.0103.i = phi ptr [ %i.av, %bb.n ], [ %i.ft, %ignorechar.exit.i ] ; 3 uses
  %i.ax = icmp ugt i64 %.0110.i, 3
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = sdiv i64 %.0110.i, 4                    ; 2 uses
  %i.az = icmp sgt i64 %.0110.i, 3
  br i1 %i.az, label %.lr.ph.i.i, label %base64_decode_fast.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.q
  %.03.i.i = phi i64 [ %i.ck, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.ba = shl i64 %.03.i.i, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.0116.i, i64 %i.ba ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr i8, ptr @table_a2b_base64, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @table_a2b_base64, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17  ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr i8, ptr @table_a2b_base64, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17  ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bb, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr i8, ptr @table_a2b_base64, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17  ; 2 uses
  %i.bv = or i8 %i.bk, %i.bf
  %i.bw = or i8 %i.bv, %i.bp
  %i.bx = or i8 %i.bw, %i.bu
  %.not.i.i.i = icmp ult i8 %i.bx, 64
  br i1 %.not.i.i.i, label %bb.q, label %base64_decode_fast.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.by = mul nuw nsw i64 %.03.i.i, 3
  %i.bz = getelementptr i8, ptr %.0103.i, i64 %i.by ; 3 uses
  %i.ca = shl i8 %i.bf, 2
  %i.cb = lshr i8 %i.bk, 4
  %i.cc = or i8 %i.cb, %i.ca
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !17
  %i.cd = shl i8 %i.bk, 4
  %i.ce = lshr i8 %i.bp, 2
  %i.cf = or i8 %i.ce, %i.cd
  %i.cg = getelementptr i8, ptr %i.bz, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !17
  %i.ch = shl i8 %i.bp, 6
  %i.ci = or disjoint i8 %i.bu, %i.ch
  %i.cj = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !17
  %i.ck = add nuw nsw i64 %.03.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ay
  br i1 %exitcond.not.i.i, label %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !45

.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i: ; preds = %bb.q
  %.pre.i = shl nuw nsw i64 %i.ay, 2
  br label %base64_decode_fast.exit.i, !llvm.loop !45

base64_decode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i
  %.0.lcssa.i.i = phi i64 [ %.pre.i, %.base64_decode_quad.exit.thread.loopexit.i_crit_edge.i ], [ %i.ba, %.lr.ph.i.i ]
  %.0.lcssa.i.fr.i = freeze i64 %.0.lcssa.i.i     ; 3 uses
  %i.cl = icmp sgt i64 %.0.lcssa.i.fr.i, 0
  %i.cm = lshr exact i64 %.0.lcssa.i.fr.i, 2
  %i.cn = mul nuw nsw i64 %i.cm, 3
  %.1117.idx.i = call i64 @llvm.smax.i64(i64 %.0.lcssa.i.fr.i, i64 0) ; 2 uses
  %.1117.i = getelementptr i8, ptr %.0116.i, i64 %.1117.idx.i
  %.1111.i = sub nsw i64 %.0110.i, %.1117.idx.i
  %spec.select.i = select i1 %i.cl, i64 %i.cn, i64 0
  br label %base64_decode_fast.exit.thread.i

base64_decode_fast.exit.thread.i:                 ; preds = %base64_decode_fast.exit.i, %bb.p
  %.1111359.i = phi i64 [ %.0110.i, %bb.p ], [ %.1111.i, %base64_decode_fast.exit.i ]
  %.1117358.i = phi ptr [ %.0116.i, %bb.p ], [ %.1117.i, %base64_decode_fast.exit.i ]
  %i.co = phi i64 [ 0, %bb.p ], [ %spec.select.i, %base64_decode_fast.exit.i ]
  %.1104.i = getelementptr i8, ptr %.0103.i, i64 %i.co
  br label %bb.r

bb.r:                                             ; preds = %base64_decode_fast.exit.thread.i, %bb.o
  %.2118.i = phi ptr [ %.1117358.i, %base64_decode_fast.exit.thread.i ], [ %.0116.i, %bb.o ] ; 4 uses
  %.2112.i = phi i64 [ %.1111359.i, %base64_decode_fast.exit.thread.i ], [ %.0110.i, %bb.o ] ; 4 uses
  %.2105.i = phi ptr [ %.1104.i, %base64_decode_fast.exit.thread.i ], [ %.0103.i, %bb.o ] ; 4 uses
  %.not133250.i = icmp eq i64 %.2112.i, 0
  br i1 %.not133250.i, label %ignorechar.exit.thread198.i, label %.lr.ph.jt0.i

.lr.ph.i:                                         ; preds = %bb.av
  %i.cp = load i8, ptr %i.fw, align 1, !tbaa !17  ; 3 uses
  %i.cq = icmp eq i8 %i.cp, 61
  br i1 %i.cq, label %bb.s, label %bb.ac

.lr.ph.jt0.i:                                     ; preds = %bb.r
  %i.cr = load i8, ptr %.2118.i, align 1, !tbaa !17 ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 61
  br i1 %i.cs, label %bb.s, label %bb.ad

.lr.ph.jt2.i:                                     ; preds = %ignorechar.exit154.jt1.i
  %i.ct = load i8, ptr %i.gf, align 1, !tbaa !17  ; 3 uses
  %i.cu = icmp eq i8 %i.ct, 61
  br i1 %i.cu, label %bb.s, label %bb.ae

.lr.ph.jt1.i:                                     ; preds = %ignorechar.exit154.jt0.i
  %i.cv = load i8, ptr %i.gh, align 1, !tbaa !17  ; 3 uses
  %i.cw = icmp eq i8 %i.cv, 61
  br i1 %i.cw, label %bb.s, label %bb.af

.lr.ph.jt3.i:                                     ; preds = %ignorechar.exit154.jt2.i
  %i.cx = load i8, ptr %i.gp, align 1, !tbaa !17  ; 3 uses
  %i.cy = icmp eq i8 %i.cx, 61
  br i1 %i.cy, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %.lr.ph.jt3.i, %.lr.ph.jt1.i, %.lr.ph.jt2.i, %.lr.ph.jt0.i, %.lr.ph.i
  %.3119251346.i = phi ptr [ %.2118.i, %.lr.ph.jt0.i ], [ %i.gf, %.lr.ph.jt2.i ], [ %i.gh, %.lr.ph.jt1.i ], [ %i.gp, %.lr.ph.jt3.i ], [ %i.fw, %.lr.ph.i ] ; 5 uses
  %.3113252339.i = phi i64 [ %.2112.i, %.lr.ph.jt0.i ], [ %i.gg, %.lr.ph.jt2.i ], [ %i.gi, %.lr.ph.jt1.i ], [ %i.gq, %.lr.ph.jt3.i ], [ %i.fx, %.lr.ph.i ] ; 4 uses
  %.3106253334.i = phi ptr [ %.2105.i, %.lr.ph.jt0.i ], [ %i.gd, %.lr.ph.jt2.i ], [ %.6.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.gn, %.lr.ph.jt3.i ], [ %.6.ph.i, %.lr.ph.i ] ; 6 uses
  %.099254331.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 2, %.lr.ph.jt2.i ], [ 1, %.lr.ph.jt1.i ], [ 3, %.lr.ph.jt3.i ], [ %.3102.ph.i, %.lr.ph.i ] ; 8 uses
  %.095255326.i = phi i8 [ 0, %.lr.ph.jt0.i ], [ %i.ge, %.lr.ph.jt2.i ], [ %.398.ph.jt1.i, %.lr.ph.jt1.i ], [ %i.go, %.lr.ph.jt3.i ], [ %.398.ph.i, %.lr.ph.i ] ; 4 uses
  %.093256323.i = phi i32 [ 0, %.lr.ph.jt0.i ], [ 0, %.lr.ph.jt2.i ], [ 0, %.lr.ph.jt1.i ], [ 0, %.lr.ph.jt3.i ], [ %.2.ph.i, %.lr.ph.i ]
  %i.cz = add i32 %.093256323.i, 1                ; 5 uses
  %i.da = icmp sgt i32 %.099254331.i, 1           ; 2 uses
  %i.db = add i32 %i.cz, %.099254331.i            ; 2 uses
  br i1 %i.al, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp slt i32 %i.db, 5
  %or.cond144.i = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond144.i, label %bb.av, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %or.cond49, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = load i8, ptr %i.aw, align 1, !tbaa !17  ; 2 uses
  %i.de = and i8 %i.dd, 32
  %.not.i.i = icmp eq i8 %i.de, 0
  br i1 %.not.i.i, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.df = load ptr, ptr %.0122157.i, align 8, !tbaa !22
  %i.dg = load i64, ptr %.0122157.i.sroa.phi, align 8, !tbaa !23
  %i.dh = call ptr @memchr(ptr noundef %i.df, i32 noundef 61, i64 noundef %i.dg) #7
  %.not11.i.i = icmp eq ptr %i.dh, null
  br i1 %.not11.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = or disjoint i8 %i.dd, 32
  store i8 %i.di, ptr %i.aw, align 1, !tbaa !17
  br label %bb.av

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dj = icmp eq i32 %.099254331.i, 1
  br i1 %i.dj, label %.thread206.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not139.i = icmp eq ptr %i.dk, null
  br i1 %.not139.i, label %ignorechar.exit.thread182.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !14
  %i.dm = icmp eq i32 %.099254331.i, 0
  %i.dn = load ptr, ptr %4, align 8
  %i.do = icmp eq ptr %.3119251346.i, %i.dn
  %i.dp = select i1 %i.dm, i1 %i.do, i1 false
  %i.dq = select i1 %i.dp, ptr @.str.29, ptr @.str.30
  call void @PyErr_SetString(ptr noundef %i.dl, ptr noundef nonnull %i.dq) #6
  br label %ignorechar.exit.thread182.i

bb.ab:                                            ; preds = %bb.s
  %i.dr = icmp sgt i32 %i.db, 3
  %or.cond146.i = select i1 %i.da, i1 %i.dr, i1 false
  br i1 %or.cond146.i, label %ignorechar.exit.thread198.i, label %bb.av

bb.ac:                                            ; preds = %.lr.ph.i
  %i.ds = zext i8 %i.cp to i64
  %i.dt = getelementptr i8, ptr @table_a2b_base64, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17  ; 5 uses
  %i.dv = icmp ugt i8 %i.du, 63
  br i1 %i.dv, label %bb.ah, label %bb.ao

bb.ad:                                            ; preds = %.lr.ph.jt0.i
  %i.dw = zext i8 %i.cr to i64
  %i.dx = getelementptr i8, ptr @table_a2b_base64, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17  ; 2 uses
  %i.dz = icmp ugt i8 %i.dy, 63
  br i1 %i.dz, label %bb.ah, label %ignorechar.exit154.jt0.i

bb.ae:                                            ; preds = %.lr.ph.jt2.i
  %i.ea = zext i8 %i.ct to i64
  %i.eb = getelementptr i8, ptr @table_a2b_base64, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !17  ; 2 uses
  %i.ed = icmp ugt i8 %i.ec, 63
  br i1 %i.ed, label %bb.ah, label %ignorechar.exit154.jt2.i

bb.af:                                            ; preds = %.lr.ph.jt1.i
  %i.ee = zext i8 %i.cv to i64
  %i.ef = getelementptr i8, ptr @table_a2b_base64, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !17  ; 2 uses
  %i.eh = icmp ugt i8 %i.eg, 63
  br i1 %i.eh, label %bb.ah, label %ignorechar.exit154.jt1.i

bb.ag:                                            ; preds = %.lr.ph.jt3.i
  %i.ei = zext i8 %i.cx to i64
  %i.ej = getelementptr i8, ptr @table_a2b_base64, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !17  ; 2 uses
  %i.el = icmp ugt i8 %i.ek, 63
  br i1 %i.el, label %bb.ah, label %ignorechar.exit.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.em = phi i8 [ %i.cr, %bb.ad ], [ %i.ct, %bb.ae ], [ %i.cv, %bb.af ], [ %i.cx, %bb.ag ], [ %i.cp, %bb.ac ]
end_hunk_0
begin_hunk_1_@binascii_a2b_base64:bb.a
bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.fk = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not135.i = icmp eq ptr %i.fk, null
  br i1 %.not135.i, label %ignorechar.exit.thread182.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !14
  %i.fm = add i32 %.2.ph.i, %.3102.ph.i
  %i.fn = icmp eq i32 %i.fm, 4
  %i.fo = select i1 %i.fn, ptr @.str.32, ptr @.str.33
  call void @PyErr_SetString(ptr noundef %i.fl, ptr noundef nonnull %i.fo) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit154.i:                             ; preds = %bb.as, %bb.aq, %bb.ao
  switch i32 %.3102.ph.i, label %default.unreachable [
    i32 0, label %ignorechar.exit154.jt0.i
    i32 1, label %ignorechar.exit154.jt1.i
    i32 2, label %ignorechar.exit154.jt2.i
    i32 3, label %ignorechar.exit.i
  ]

default.unreachable:                              ; preds = %ignorechar.exit154.i
  unreachable

ignorechar.exit.i:                                ; preds = %ignorechar.exit154.i, %bb.ag
  %i.fp = phi i8 [ %i.du, %ignorechar.exit154.i ], [ %i.ek, %bb.ag ]
  %i.fq = phi ptr [ %.3119251352.i, %ignorechar.exit154.i ], [ %.3119251349.i, %bb.ag ]
  %.3113252341.i = phi i64 [ %i.fx, %ignorechar.exit154.i ], [ %i.gq, %bb.ag ]
  %.3106253336.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %i.gn, %bb.ag ] ; 2 uses
  %.095255328.i = phi i8 [ %.398.ph.i, %ignorechar.exit154.i ], [ %i.go, %bb.ag ]
  %i.fr = shl i8 %.095255328.i, 6
  %i.fs = or disjoint i8 %i.fr, %i.fp
  %i.ft = getelementptr i8, ptr %.3106253336.i, i64 1
  store i8 %i.fs, ptr %.3106253336.i, align 1, !tbaa !17
  %i.fu = getelementptr i8, ptr %i.fq, i64 2
  %i.fv = add i64 %.3113252341.i, -1
  br label %bb.o

bb.av:                                            ; preds = %bb.al, %bb.aj, %bb.ah, %bb.ab, %bb.x, %bb.v, %bb.t
  %.3119251352.i = phi ptr [ %.3119251346.i, %bb.ab ], [ %.3119251346.i, %bb.t ], [ %.3119251347.i, %bb.ah ], [ %.3119251346.i, %bb.x ], [ %.3119251346.i, %bb.v ], [ %.3119251347.i, %bb.aj ], [ %.3119251347.i, %bb.al ] ; 3 uses
  %.3113252345.i = phi i64 [ %.3113252339.i, %bb.ab ], [ %.3113252339.i, %bb.t ], [ %.3113252340.i, %bb.ah ], [ %.3113252339.i, %bb.x ], [ %.3113252339.i, %bb.v ], [ %.3113252340.i, %bb.aj ], [ %.3113252340.i, %bb.al ]
  %.6.ph.i = phi ptr [ %.3106253334.i, %bb.ab ], [ %.3106253334.i, %bb.t ], [ %.3106253335.i, %bb.ah ], [ %.3106253334.i, %bb.x ], [ %.3106253334.i, %bb.v ], [ %.3106253335.i, %bb.aj ], [ %.3106253335.i, %bb.al ] ; 9 uses
  %.3102.ph.i = phi i32 [ %.099254331.i, %bb.ab ], [ %.099254331.i, %bb.t ], [ %.099254332.i, %bb.ah ], [ %.099254331.i, %bb.x ], [ %.099254331.i, %bb.v ], [ %.099254332.i, %bb.aj ], [ %.099254332.i, %bb.al ] ; 6 uses
  %.398.ph.i = phi i8 [ %.095255326.i, %bb.ab ], [ %.095255326.i, %bb.t ], [ %.095255327.i, %bb.ah ], [ %.095255326.i, %bb.x ], [ %.095255326.i, %bb.v ], [ %.095255327.i, %bb.aj ], [ %.095255327.i, %bb.al ] ; 5 uses
  %.2.ph.i = phi i32 [ %i.cz, %bb.ab ], [ %i.cz, %bb.t ], [ %.093256324.i, %bb.ah ], [ %i.cz, %bb.x ], [ %i.cz, %bb.v ], [ %.093256324.i, %bb.aj ], [ %.093256324.i, %bb.al ] ; 5 uses
  %i.fw = getelementptr i8, ptr %.3119251352.i, i64 1 ; 5 uses
  %i.fx = add i64 %.3113252345.i, -1              ; 7 uses
  %.not133.i = icmp eq i64 %i.fx, 0
  br i1 %.not133.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !46

ignorechar.exit154.jt1.i:                         ; preds = %ignorechar.exit154.i, %bb.af
  %i.fy = phi i8 [ %i.du, %ignorechar.exit154.i ], [ %i.eg, %bb.af ] ; 2 uses
  %i.fz = phi ptr [ %.3119251352.i, %ignorechar.exit154.i ], [ %.3119251351.i, %bb.af ]
  %.3113252343.i = phi i64 [ %i.fx, %ignorechar.exit154.i ], [ %i.gi, %bb.af ]
  %.3106253338.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.6.ph.jt1.i, %bb.af ] ; 2 uses
  %.095255330.i = phi i8 [ %.398.ph.i, %ignorechar.exit154.i ], [ %.398.ph.jt1.i, %bb.af ]
  %i.ga = shl nuw i8 %.095255330.i, 2
  %i.gb = lshr i8 %i.fy, 4
  %i.gc = or disjoint i8 %i.ga, %i.gb
  %i.gd = getelementptr i8, ptr %.3106253338.i, i64 1 ; 4 uses
  store i8 %i.gc, ptr %.3106253338.i, align 1, !tbaa !17
  %i.ge = and i8 %i.fy, 15                        ; 3 uses
  %i.gf = getelementptr i8, ptr %i.fz, i64 2      ; 4 uses
  %i.gg = add i64 %.3113252343.i, -1              ; 4 uses
  %.not133.jt2.i = icmp eq i64 %i.gg, 0
  br i1 %.not133.jt2.i, label %._crit_edge.thread.i, label %.lr.ph.jt2.i, !llvm.loop !46

ignorechar.exit154.jt0.i:                         ; preds = %ignorechar.exit154.i, %bb.ad
  %.3119251351.i = phi ptr [ %i.fw, %ignorechar.exit154.i ], [ %.2118.i, %bb.ad ] ; 2 uses
  %.3113252344.i = phi i64 [ %i.fx, %ignorechar.exit154.i ], [ %.2112.i, %bb.ad ]
  %.6.ph.jt1.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %.2105.i, %bb.ad ] ; 4 uses
  %.398.ph.jt1.i = phi i8 [ %i.du, %ignorechar.exit154.i ], [ %i.dy, %bb.ad ] ; 3 uses
  %i.gh = getelementptr i8, ptr %.3119251351.i, i64 1 ; 3 uses
  %i.gi = add i64 %.3113252344.i, -1              ; 4 uses
  %.not133.jt1.i = icmp eq i64 %i.gi, 0
  br i1 %.not133.jt1.i, label %.thread206.i, label %.lr.ph.jt1.i, !llvm.loop !46

ignorechar.exit154.jt2.i:                         ; preds = %ignorechar.exit154.i, %bb.ae
  %i.gj = phi i8 [ %i.du, %ignorechar.exit154.i ], [ %i.ec, %bb.ae ] ; 2 uses
  %.3119251349.i = phi ptr [ %i.fw, %ignorechar.exit154.i ], [ %i.gf, %bb.ae ] ; 2 uses
  %.3113252342.i = phi i64 [ %i.fx, %ignorechar.exit154.i ], [ %i.gg, %bb.ae ]
  %.3106253337.i = phi ptr [ %.6.ph.i, %ignorechar.exit154.i ], [ %i.gd, %bb.ae ] ; 2 uses
  %.095255329.i = phi i8 [ %.398.ph.i, %ignorechar.exit154.i ], [ %i.ge, %bb.ae ]
  %i.gk = shl i8 %.095255329.i, 4
  %i.gl = lshr i8 %i.gj, 2
  %i.gm = or disjoint i8 %i.gk, %i.gl
  %i.gn = getelementptr i8, ptr %.3106253337.i, i64 1 ; 4 uses
  store i8 %i.gm, ptr %.3106253337.i, align 1, !tbaa !17
  %i.go = and i8 %i.gj, 3                         ; 3 uses
  %i.gp = getelementptr i8, ptr %.3119251349.i, i64 1 ; 3 uses
  %i.gq = add i64 %.3113252342.i, -1              ; 4 uses
  %.not133.jt3.i = icmp eq i64 %i.gq, 0
  br i1 %.not133.jt3.i, label %._crit_edge.thread.i, label %.lr.ph.jt3.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.av
  switch i32 %.3102.ph.i, label %._crit_edge.thread.i [
    i32 1, label %.thread206.i
    i32 0, label %ignorechar.exit.thread198.i
  ]

.thread206.i:                                     ; preds = %ignorechar.exit154.jt0.i, %._crit_edge.i, %bb.y
  %.3106237.i = phi ptr [ %.3106253334.i, %bb.y ], [ %.6.ph.i, %._crit_edge.i ], [ %.6.ph.jt1.i, %ignorechar.exit154.jt0.i ]
  %i.gr = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not142.i = icmp eq ptr %i.gr, null
  br i1 %.not142.i, label %ignorechar.exit.thread182.i, label %bb.aw

bb.aw:                                            ; preds = %.thread206.i
  %i.gs = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.at) #6
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !14
  %i.gu = ptrtoint ptr %.3106237.i to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = sdiv i64 %i.gw, 3
  %i.gy = shl i64 %i.gx, 2
  %i.gz = or disjoint i64 %i.gy, 1
  %i.ha = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gt, ptr noundef nonnull @.str.34, i64 noundef %i.gz) #6 ; 0 uses
  br label %ignorechar.exit.thread182.i

._crit_edge.thread.i:                             ; preds = %ignorechar.exit154.jt2.i, %ignorechar.exit154.jt1.i, %._crit_edge.i
  %.093.lcssa365.i = phi i32 [ %.2.ph.i, %._crit_edge.i ], [ 0, %ignorechar.exit154.jt1.i ], [ 0, %ignorechar.exit154.jt2.i ]
  %.099.lcssa364.i = phi i32 [ %.3102.ph.i, %._crit_edge.i ], [ 3, %ignorechar.exit154.jt2.i ], [ 2, %ignorechar.exit154.jt1.i ]
  %.3106.lcssa363.i = phi ptr [ %.6.ph.i, %._crit_edge.i ], [ %i.gn, %ignorechar.exit154.jt2.i ], [ %i.gd, %ignorechar.exit154.jt1.i ]
  %i.hb = add i32 %.099.lcssa364.i, %.093.lcssa365.i
  %i.hc = icmp slt i32 %i.hb, 4
  br i1 %i.hc, label %bb.ax, label %ignorechar.exit.thread198.i

bb.ax:                                            ; preds = %._crit_edge.thread.i
  %i.hd = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not141.i = icmp eq ptr %i.hd, null
  br i1 %.not141.i, label %ignorechar.exit.thread182.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.he, ptr noundef nonnull @.str.35) #6
  br label %ignorechar.exit.thread182.i

ignorechar.exit.thread198.i:                      ; preds = %bb.ab, %bb.r, %._crit_edge.thread.i, %._crit_edge.i
  %.3106236.i = phi ptr [ %.3106.lcssa363.i, %._crit_edge.thread.i ], [ %.6.ph.i, %._crit_edge.i ], [ %.3106253334.i, %bb.ab ], [ %.2105.i, %bb.r ]
  %i.hf = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.at, ptr noundef %.3106236.i) #6
  br label %binascii_a2b_base64_impl.exit

ignorechar.exit.thread182.i:                      ; preds = %bb.ay, %bb.ax, %bb.aw, %.thread206.i, %bb.au, %bb.at, %bb.an, %bb.am, %bb.aa, %bb.z
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.at) #6
  br label %binascii_a2b_base64_impl.exit

binascii_a2b_base64_impl.exit:                    ; preds = %.thread.i, %ignorechar.exit.thread198.i, %ignorechar.exit.thread182.i
  %.1.i = phi ptr [ null, %.thread.i ], [ %i.hf, %ignorechar.exit.thread198.i ], [ null, %ignorechar.exit.thread182.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.i, %bb.g, %.thread, %bb.d, %binascii_a2b_base64_impl.exit
  %.026 = phi ptr [ null, %bb.g ], [ null, %bb.i ], [ %.1.i, %binascii_a2b_base64_impl.exit ], [ null, %.thread ], [ null, %bb.d ]
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !25
  %.not39 = icmp eq ptr %i.hh, null
  br i1 %.not39, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !25
  %.not40 = icmp eq ptr %i.hj, null
  br i1 %.not40, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base64(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %2, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base64._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not33 = icmp eq ptr %i.j, null
  br i1 %.not33, label %binascii_b2a_base64_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.e, label %binascii_b2a_base64_impl.exit

bb.e:                                             ; preds = %.thread
  %.not35 = icmp eq i64 %i.f, 0
  br i1 %.not35, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %.not36 = icmp eq ptr %i.o, null
  br i1 %.not36, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @_PyLong_Size_t_Converter(ptr noundef nonnull %i.o, ptr noundef nonnull %i.b) #6
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %binascii_b2a_base64_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not38 = icmp eq i64 %i.f, 1
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16
  %i.s = call i32 @PyObject_IsTrue(ptr noundef %i.r) #6 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %binascii_b2a_base64_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ %i.s, %bb.i ], [ 1, %bb.h ], [ 1, %bb.e ]
  %i.u = load i64, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %.val40 = load ptr, ptr %4, align 8, !tbaa !22  ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val41 = load i64, ptr %i.v, align 8, !tbaa !23 ; 4 uses
  %i.w = add i64 %.val41, 2
  %i.x = udiv i64 %i.w, 3
  %i.y = shl i64 %i.x, 2                          ; 4 uses
  %i.z = icmp ne i64 %i.u, 0
  %i.aa = icmp ne i64 %i.y, 0
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i64 @llvm.umax.i64(i64 %i.u, i64 4)
  %i.ac = and i64 %i.ab, -4                       ; 2 uses
  %i.ad = add i64 %i.y, -1
  %i.ae = udiv i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %i.y
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.062.i = phi i64 [ %i.af, %bb.k ], [ %i.y, %bb.j ]
  %.058.i = phi i64 [ %i.ac, %bb.k ], [ %i.u, %bb.j ] ; 7 uses
  %.not.i = icmp ne i32 %.0, 0                    ; 2 uses
  %i.ag = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.062.i, %i.ag         ; 2 uses
  %i.ah = icmp slt i64 %spec.select.i, 0
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %binascii_b2a_base64_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.38) #6
  br label %binascii_b2a_base64_impl.exit

bb.o:                                             ; preds = %bb.l
  %i.al = call ptr @PyBytesWriter_Create(i64 noundef %spec.select.i) #6 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %binascii_b2a_base64_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.al) #6 ; 2 uses
  %i.ao = srem i64 %.val41, 3                     ; 2 uses
  %i.ap = sdiv i64 %.val41, 3
  %i.aq = sub nsw i64 %.val41, %i.ao
  %i.ar = getelementptr i8, ptr %.val40, i64 %i.aq ; 5 uses
  %i.as = icmp ult ptr %.val40, %i.ar
  br i1 %i.as, label %.lr.ph.i.i, label %base64_encode_fast.exit.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.02.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.val40, %bb.p ] ; 4 uses
  %.0101.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %i.an, %bb.p ] ; 5 uses
  %i.at = load i8, ptr %.02.i.i, align 1, !tbaa !17
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = getelementptr i8, ptr %.02.i.i, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !17
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8                ; 2 uses
  %i.ba = getelementptr i8, ptr %.02.i.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = or disjoint i32 %i.az, %i.bc
  %i.be = or disjoint i32 %i.az, %i.av
  %i.bf = lshr i32 %i.au, 2
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr @table_b2a_base64, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  store i8 %i.bi, ptr %.0101.i.i, align 1, !tbaa !17
  %i.bj = lshr i32 %i.be, 12
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr @table_b2a_base64, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = getelementptr i8, ptr %.0101.i.i, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !17
  %i.bp = lshr i32 %i.bd, 6
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr @table_b2a_base64, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = getelementptr i8, ptr %.0101.i.i, i64 2
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !17
  %i.bv = and i32 %i.bc, 63
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr @table_b2a_base64, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = getelementptr i8, ptr %.0101.i.i, i64 3
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !17
  %i.ca = getelementptr i8, ptr %.02.i.i, i64 3   ; 2 uses
  %i.cb = getelementptr i8, ptr %.0101.i.i, i64 4
  %i.cc = icmp ult ptr %i.ca, %i.ar
  br i1 %i.cc, label %.lr.ph.i.i, label %base64_encode_fast.exit.i, !llvm.loop !47

base64_encode_fast.exit.i:                        ; preds = %.lr.ph.i.i, %bb.p
  %i.cd = shl i64 %i.ap, 2
  %i.ce = getelementptr i8, ptr %i.an, i64 %i.cd  ; 11 uses
  switch i64 %i.ao, label %bb.s [
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %base64_encode_fast.exit.i
  %i.cf = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 2
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr @table_b2a_base64, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.ck, ptr %i.ce, align 1, !tbaa !17
  %i.cm = shl nuw nsw i32 %i.cg, 4
  %i.cn = and i32 %i.cm, 48
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr @table_b2a_base64, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 16, !tbaa !17
  %i.cr = getelementptr i8, ptr %i.ce, i64 2
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !17
  %i.cs = getelementptr i8, ptr %i.ce, i64 3
  store i8 61, ptr %i.cr, align 1, !tbaa !17
  %i.ct = getelementptr i8, ptr %i.ce, i64 4
  store i8 61, ptr %i.cs, align 1, !tbaa !17
  br label %bb.s

bb.r:                                             ; preds = %base64_encode_fast.exit.i
  %i.cu = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr i8, ptr %i.ar, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = or disjoint i32 %i.cw, %i.cz
  %i.db = lshr i32 %i.cv, 2
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr i8, ptr @table_b2a_base64, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.df = getelementptr i8, ptr %i.ce, i64 1
  store i8 %i.de, ptr %i.ce, align 1, !tbaa !17
  %i.dg = lshr i32 %i.da, 4
  %i.dh = and i32 %i.dg, 63
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr @table_b2a_base64, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = getelementptr i8, ptr %i.ce, i64 2
  store i8 %i.dk, ptr %i.df, align 1, !tbaa !17
  %i.dm = shl nuw nsw i32 %i.cz, 2
  %i.dn = and i32 %i.dm, 60
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr @table_b2a_base64, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 4, !tbaa !17
  %i.dr = getelementptr i8, ptr %i.ce, i64 3
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !17
  %i.ds = getelementptr i8, ptr %i.ce, i64 4
  store i8 61, ptr %i.dr, align 1, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %base64_encode_fast.exit.i
  %.059.i = phi ptr [ %i.ct, %bb.q ], [ %i.ds, %bb.r ], [ %i.ce, %base64_encode_fast.exit.i ] ; 2 uses
  %.not68.i = icmp eq i64 %.058.i, 0
  br i1 %.not68.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.al) #6 ; 5 uses
  %i.du = ptrtoint ptr %.059.i to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 5 uses
  %.not.i.i = icmp ugt i64 %i.dw, %.058.i
  br i1 %.not.i.i, label %bb.u, label %wraplines.exit.i

bb.u:                                             ; preds = %bb.t
  %i.dx = add i64 %i.dw, -1
  %i.dy = udiv i64 %i.dx, %.058.i                 ; 2 uses
  %i.dz = mul i64 %i.dy, %.058.i                  ; 4 uses
  %i.ea = add i64 %i.dy, %i.dw                    ; 4 uses
  %.not3132.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not3132.i.i, label %wraplines.exit.i, label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.u
  %i.eb = sub i64 %i.dw, %i.dz                    ; 2 uses
  %i.ec = sub i64 0, %i.eb
  %i.ed = getelementptr i8, ptr %i.dt, i64 %i.dz  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 %i.ea
  %i.ef = sub i64 0, %.058.i                      ; 3 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 %i.ec  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eg, ptr align 1 %i.ed, i64 %i.eb, i1 false)
  %i.eh = getelementptr i8, ptr %i.eg, i64 -1
  store i8 10, ptr %i.eh, align 1, !tbaa !17
  %.not31.peel.i.i = icmp eq i64 %i.dz, %.058.i
  br i1 %.not31.peel.i.i, label %wraplines.exit.i, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.lr.ph.i69.i
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.ef
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.peel.next.i.i
  %i.ej = phi ptr [ %i.ei, %.peel.next.i.i ], [ %i.eo, %bb.v ] ; 2 uses
  %i.ek = phi ptr [ %i.eg, %.peel.next.i.i ], [ %i.em, %bb.v ]
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ef  ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.em, ptr noundef nonnull align 1 dereferenceable(1) %i.ej, i64 range(i64 1, 0) %.058.i, i1 false)
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  store i8 10, ptr %i.en, align 1, !tbaa !17
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.ef  ; 2 uses
  %.not31.i.i = icmp eq ptr %i.eo, %i.dt
  br i1 %.not31.i.i, label %wraplines.exit.i, label %bb.v, !llvm.loop !0

wraplines.exit.i:                                 ; preds = %bb.v, %.lr.ph.i69.i, %bb.u, %bb.t
  %.027.i.i = phi i64 [ %i.dw, %bb.t ], [ %i.ea, %bb.u ], [ %i.ea, %.lr.ph.i69.i ], [ %i.ea, %bb.v ]
  %i.ep = getelementptr i8, ptr %i.dt, i64 %.027.i.i
  br label %bb.w

bb.w:                                             ; preds = %wraplines.exit.i, %bb.s
  %.160.i = phi ptr [ %i.ep, %wraplines.exit.i ], [ %.059.i, %bb.s ] ; 3 uses
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = getelementptr i8, ptr %.160.i, i64 1
  store i8 10, ptr %.160.i, align 1, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.261.i = phi ptr [ %i.eq, %bb.x ], [ %.160.i, %bb.w ]
  %i.er = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.al, ptr noundef %.261.i) #6
  br label %binascii_b2a_base64_impl.exit

binascii_b2a_base64_impl.exit:                    ; preds = %bb.y, %bb.o, %bb.n, %bb.m, %bb.i, %bb.g, %.thread, %bb.d
  %.026 = phi ptr [ null, %.thread ], [ null, %bb.i ], [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.n ], [ null, %bb.m ], [ %i.er, %bb.y ], [ null, %bb.o ]
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !25
  %.not39 = icmp eq ptr %i.et, null
  br i1 %.not39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %binascii_b2a_base64_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %binascii_b2a_base64_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_ascii85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.e = add i64 %i.d, %2                         ; 2 uses
  %i.f = add i64 %i.e, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.g = icmp eq i64 %2, 1
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %i.i, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_ascii85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not54 = icmp eq ptr %i.j, null
  br i1 %.not54, label %binascii_b2a_ascii85_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not55 = icmp eq i32 %i.m, 0
  br i1 %.not55, label %bb.e, label %binascii_b2a_ascii85_impl.exit

bb.e:                                             ; preds = %.thread
  %.not56 = icmp eq i64 %i.f, 0
  br i1 %.not56, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %.not57 = icmp eq ptr %i.o, null
  br i1 %.not57, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_b2a_ascii85_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.e, -2                         ; 2 uses
  %.not58 = icmp eq i64 %i.r, 0
  br i1 %.not58, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.039 = phi i64 [ %i.r, %bb.h ], [ %i.f, %bb.f ] ; 2 uses
  %.037 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 3 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %.not59 = icmp eq ptr %i.t, null
  br i1 %.not59, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @_PyLong_Size_t_Converter(ptr noundef nonnull %i.t, ptr noundef nonnull %i.b) #6
  %.not60 = icmp eq i32 %i.u, 0
  br i1 %.not60, label %binascii_b2a_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = add i64 %.039, -1                        ; 2 uses
  %.not61 = icmp eq i64 %i.v, 0
  br i1 %.not61, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.140 = phi i64 [ %i.v, %bb.k ], [ %.039, %bb.i ]
  %i.w = getelementptr i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16   ; 2 uses
  %.not62 = icmp eq ptr %i.x, null
  br i1 %.not62, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.x) #6 ; 3 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %binascii_b2a_ascii85_impl.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = icmp ugt i64 %.140, 1
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.l
  %.036 = phi i32 [ %i.y, %bb.n ], [ 0, %bb.l ]
  %i.ab = getelementptr i8, ptr %i.k, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = call i32 @PyObject_IsTrue(ptr noundef %i.ac) #6 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %binascii_b2a_ascii85_impl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.h, %bb.e
  %.138 = phi i32 [ %.037, %bb.o ], [ %.037, %bb.n ], [ %.037, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.036, %bb.o ], [ %i.y, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.ad, %bb.o ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %i.af = load i64, ptr %i.b, align 8, !tbaa !33  ; 2 uses
  %.val64 = load ptr, ptr %4, align 8, !tbaa !22  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val65 = load i64, ptr %i.ag, align 8, !tbaa !23 ; 5 uses
  %i.ah = icmp ne i32 %.0, 0                      ; 5 uses
  %i.ai = icmp eq i64 %i.af, 1
  %or.cond.i = and i1 %i.ah, %i.ai
  %spec.store.select.i = select i1 %or.cond.i, i64 2, i64 %i.af ; 8 uses
  %i.aj = add i64 %.val65, 3
  %i.ak = lshr i64 %i.aj, 2
  %i.al = mul i64 %i.ak, 5                        ; 2 uses
  %i.am = add i64 %i.al, 4
  %spec.select.i = select i1 %i.ah, i64 %i.am, i64 %i.al ; 3 uses
  %i.an = icmp ne i32 %.1, 0                      ; 3 uses
  br i1 %i.an, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = srem i64 %.val65, 4                     ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i = add nsw i64 %i.ao, -4
  %i.ap = add i64 %.neg.i, %spec.select.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1111.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.ap, %bb.r ], [ %spec.select.i, %bb.q ] ; 4 uses
  %i.aq = icmp ne i64 %spec.store.select.i, 0     ; 2 uses
  %i.ar = icmp sgt i64 %.1111.i, 0
  %or.cond5.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond5.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = add nsw i64 %.1111.i, -1
  %i.at = udiv i64 %i.as, %spec.store.select.i
  %i.au = add nuw i64 %i.at, %.1111.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2112.i = phi i64 [ %i.au, %bb.t ], [ %.1111.i, %bb.s ] ; 3 uses
  %i.av = icmp slt i64 %.2112.i, 0
  br i1 %i.av, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aw = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %binascii_b2a_ascii85_impl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.42) #6
  br label %binascii_b2a_ascii85_impl.exit

bb.x:                                             ; preds = %bb.u
  %i.az = call ptr @PyBytesWriter_Create(i64 noundef %.2112.i) #6 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %binascii_b2a_ascii85_impl.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.az) #6 ; 4 uses
  br i1 %i.ah, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bc = getelementptr i8, ptr %i.bb, i64 1
  store i8 60, ptr %i.bb, align 1, !tbaa !17
  %i.bd = getelementptr i8, ptr %i.bb, i64 2
  store i8 126, ptr %i.bc, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0107.i = phi ptr [ %i.bd, %bb.z ], [ %i.bb, %bb.y ] ; 2 uses
  %i.be = icmp sgt i64 %.val65, 3
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.aa
  %i.bf = icmp ne i32 %.138, 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ag, %.lr.ph.i
  %.11083.i = phi ptr [ %.0107.i, %.lr.ph.i ], [ %.2109.i, %bb.ag ] ; 10 uses
  %.01132.i = phi i64 [ %.val65, %.lr.ph.i ], [ %i.co, %bb.ag ] ; 2 uses
  %.01141.i = phi ptr [ %.val64, %.lr.ph.i ], [ %i.cp, %bb.ag ] ; 2 uses
  %i.bg = load i32, ptr %.01141.i, align 1        ; 3 uses
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bg)     ; 5 uses
  %i.bi = icmp eq i32 %i.bg, 0
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr i8, ptr %.11083.i, i64 1
  store i8 122, ptr %.11083.i, align 1, !tbaa !17
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.bk = icmp eq i32 %i.bg, 538976288
  %or.cond7.i = and i1 %i.bf, %i.bk
  br i1 %or.cond7.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr i8, ptr %.11083.i, i64 1
  store i8 121, ptr %.11083.i, align 1, !tbaa !17
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bm = urem i32 %i.bh, 85
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = getelementptr i8, ptr %.11083.i, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !17
  %i.br = udiv i32 %i.bh, 85
  %i.bs = urem i32 %i.br, 85
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = getelementptr i8, ptr %.11083.i, i64 3
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !17
  %i.bx = udiv i32 %i.bh, 7225
  %i.by = urem i32 %i.bx, 85
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = getelementptr i8, ptr %.11083.i, i64 2
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !17
  %i.cd = udiv i32 %i.bh, 614125
  %.lhs.trunc.i = trunc nuw nsw i32 %i.cd to i16
  %i.ce = urem i16 %.lhs.trunc.i, 85
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.ci = getelementptr i8, ptr %.11083.i, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !17
  %i.cj = udiv i32 %i.bh, 52200625
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr @table_b2a_base85_a85, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17
  store i8 %i.cm, ptr %.11083.i, align 1, !tbaa !17
  %i.cn = getelementptr i8, ptr %.11083.i, i64 5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %.2109.i = phi ptr [ %i.bj, %bb.ac ], [ %i.bl, %bb.ae ], [ %i.cn, %bb.af ] ; 2 uses
  %i.co = add nsw i64 %.01132.i, -4               ; 2 uses
  %i.cp = getelementptr i8, ptr %.01141.i, i64 4  ; 2 uses
  %i.cq = icmp sgt i64 %.01132.i, 7
  br i1 %i.cq, label %bb.ab, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %bb.ag, %bb.aa
  %.0114.lcssa.i = phi ptr [ %.val64, %bb.aa ], [ %i.cp, %bb.ag ] ; 3 uses
  %.0113.lcssa.i = phi i64 [ %.val65, %bb.aa ], [ %i.co, %bb.ag ] ; 4 uses
  %.1108.lcssa.i = phi ptr [ %.0107.i, %bb.aa ], [ %.2109.i, %bb.ag ] ; 9 uses
  %i.cr = icmp sgt i64 %.0113.lcssa.i, 0
  br i1 %i.cr, label %.preheader.1.i, label %bb.ap

.preheader.1.i:                                   ; preds = %._crit_edge.i
  %i.cs = load i8, ptr %.0114.lcssa.i, align 1, !tbaa !17
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %.not18.i = icmp eq i64 %.0113.lcssa.i, 1
  br i1 %.not18.i, label %.preheader.2.thread.i, label %.preheader.2.i

.preheader.2.thread.i:                            ; preds = %.preheader.1.i
  %i.cu = shl nuw nsw i32 %i.ct, 16
  br label %bb.ai

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.cv = getelementptr i8, ptr %.0114.lcssa.i, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.ct, 16
  %i.cz = shl nuw nsw i32 %i.cx, 8
  %i.da = or disjoint i32 %i.cz, %i.cy            ; 2 uses
  %i.db = icmp samesign ugt i64 %.0113.lcssa.i, 2
  br i1 %i.db, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.2.i
  %i.dc = getelementptr i8, ptr %.0114.lcssa.i, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.da, %i.de
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.preheader.2.i, %.preheader.2.thread.i
  %.1.2.i = phi i32 [ %i.df, %bb.ah ], [ %i.da, %.preheader.2.i ], [ %i.cu, %.preheader.2.thread.i ] ; 2 uses
  %i.dg = shl nuw i32 %.1.2.i, 8                  ; 5 uses
  %i.dh = icmp eq i32 %.1.2.i, 0
  %or.cond9.i = select i1 %i.an, i1 %i.dh, i1 false
  br i1 %or.cond9.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr i8, ptr %.1108.lcssa.i, i64 1
  store i8 122, ptr %.1108.lcssa.i, align 1, !tbaa !17
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.dj = add nuw nsw i64 %.0113.lcssa.i, 1
  %i.dk = select i1 %i.an, i64 5, i64 %i.dj       ; 4 uses
  %i.dl = icmp samesign ugt i64 %i.dk, 4
  br i1 %i.dl, label %.thread.i, label %bb.al

.thread.i:                                        ; preds = %bb.ak
  %i.dm = urem i32 %i.dg, 85
end_hunk_1
begin_hunk_2_@binascii_a2b_ascii85:bb.a
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_a2b_ascii85_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.033, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi i32 [ %i.u, %bb.k ], [ 0, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = call i32 @PyObject_GetBuffer(ptr noundef %i.y, ptr noundef nonnull %5, i32 noundef 0) #6
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.m, label %binascii_a2b_ascii85_impl.exit

.thread56:                                        ; preds = %bb.h, %bb.e
  %.132.ph = phi i32 [ 0, %bb.e ], [ %i.p, %bb.h ]
  %.val5359 = load ptr, ptr %4, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val5460 = load i64, ptr %i.aa, align 8, !tbaa !23
  br label %bb.w

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.0, %bb.l ], [ %i.u, %bb.k ]
  %.val53 = load ptr, ptr %4, align 8, !tbaa !22  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val54 = load i64, ptr %i.ab, align 8, !tbaa !23 ; 6 uses
  %.not.i = icmp eq i32 %.1, 0
  br i1 %.not.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp slt i64 %.val54, 2
  br i1 %i.ac, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = add nsw i64 %.val54, -2                 ; 3 uses
  %i.ae = getelementptr i8, ptr %.val53, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %.not127.i = icmp eq i8 %i.af, 126
  br i1 %.not127.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %.val53, i64 %.val54
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %.not128.i = icmp eq i8 %i.ai, 62
  br i1 %.not128.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.aj = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not134.i = icmp eq ptr %i.aj, null
  br i1 %.not134.i, label %binascii_a2b_ascii85_impl.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.43) #6
  br label %binascii_a2b_ascii85_impl.exit

bb.s:                                             ; preds = %bb.p
  %i.al = icmp samesign ugt i64 %.val54, 3
  br i1 %i.al, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load i8, ptr %.val53, align 1, !tbaa !17
  %i.an = icmp eq i8 %i.am, 60
  br i1 %i.an, label %bb.u, label %.thread50.i

bb.u:                                             ; preds = %bb.t
  %i.ao = getelementptr i8, ptr %.val53, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = icmp eq i8 %i.ap, 126
  br i1 %i.aq, label %bb.v, label %.thread50.i

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr i8, ptr %.val53, i64 2
  %i.as = add nsw i64 %.val54, -4
  br label %bb.w

.thread50.i:                                      ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %.lr.ph.preheader.i

bb.w:                                             ; preds = %.thread56, %bb.v, %bb.s, %bb.m
  %.13264 = phi i32 [ %.031, %bb.v ], [ %.031, %bb.s ], [ %.031, %bb.m ], [ %.132.ph, %.thread56 ] ; 2 uses
  %.0110.i = phi ptr [ %i.ar, %bb.v ], [ %.val53, %bb.s ], [ %.val53, %bb.m ], [ %.val5359, %.thread56 ] ; 2 uses
  %.0108.i = phi i64 [ %i.as, %bb.v ], [ %i.ad, %bb.s ], [ %.val54, %bb.m ], [ %.val5460, %.thread56 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.at = icmp sgt i64 %.0108.i, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.w, %.thread50.i
  %.13263 = phi i32 [ %.031, %.thread50.i ], [ %.13264, %bb.w ] ; 2 uses
  %.010856.i = phi i64 [ %i.ad, %.thread50.i ], [ %.0108.i, %bb.w ] ; 6 uses
  %.011053.i = phi ptr [ %.val53, %.thread50.i ], [ %.0110.i, %bb.w ] ; 4 uses
  %min.iters.check = icmp ult i64 %.010856.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %.010856.i, -4                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %i.au = getelementptr i8, ptr %.011053.i, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 2
  %wide.load = load <2 x i8>, ptr %i.au, align 1, !tbaa !17
  %wide.load91 = load <2 x i8>, ptr %i.av, align 1, !tbaa !17
  %i.aw = add <2 x i8> %wide.load, splat (i8 -121)
  %i.ax = add <2 x i8> %wide.load91, splat (i8 -121)
  %i.ay = icmp ult <2 x i8> %i.aw, splat (i8 2)
  %i.az = icmp ult <2 x i8> %i.ax, splat (i8 2)
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = zext <2 x i1> %i.az to <2 x i64>
  %i.bc = add <2 x i64> %vec.phi, %i.ba           ; 2 uses
  %i.bd = add <2 x i64> %vec.phi90, %i.bb         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bd, %i.bc
  %i.bf = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.010856.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.010127.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.010226.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.w
  %.13262 = phi i32 [ %.13264, %bb.w ], [ %.13263, %middle.block ], [ %.13263, %.lr.ph.i ]
  %i.bg = phi i1 [ false, %bb.w ], [ true, %middle.block ], [ true, %.lr.ph.i ]
  %.010855.i = phi i64 [ %.0108.i, %bb.w ], [ %.010856.i, %middle.block ], [ %.010856.i, %.lr.ph.i ] ; 2 uses
  %.011054.i = phi ptr [ %.0110.i, %bb.w ], [ %.011053.i, %middle.block ], [ %.011053.i, %.lr.ph.i ]
  %.0102.lcssa.i = phi i64 [ 0, %bb.w ], [ %i.bf, %middle.block ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.bh = add i64 %.010855.i, 4
  %i.bi = sub i64 %i.bh, %.0102.lcssa.i
  %i.bj = udiv i64 %i.bi, 5                       ; 2 uses
  %i.bk = shl nuw i64 %i.bj, 2
  %i.bl = sub i64 9223372036854775804, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = icmp ugt i64 %.0102.lcssa.i, %i.bm
  br i1 %i.bn, label %bb.x, label %bb.z

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.010127.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.010127.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.010226.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010226.i.ph, %.lr.ph.i.preheader ]
  %i.bo = getelementptr i8, ptr %.011053.i, i64 %.010127.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = add i8 %i.bp, -121
  %or.cond.i = icmp ult i8 %i.bq, 2
  %i.br = zext i1 %or.cond.i to i64
  %spec.select.i = add i64 %.010226.i, %i.br      ; 2 uses
  %i.bs = add nuw nsw i64 %.010127.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %.010856.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !50

bb.x:                                             ; preds = %._crit_edge.i
  %i.bt = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.bv, ptr noundef nonnull @.str.44) #6
  br label %bb.aq

bb.z:                                             ; preds = %._crit_edge.i
  %i.bw = add nuw nsw i64 %i.bj, %.0102.lcssa.i
  %i.bx = shl i64 %i.bw, 2
  %i.by = call ptr @PyBytesWriter_Create(i64 noundef %i.bx) #6 ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.by) #6 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread16.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  br i1 %i.bg, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %.preheader.i
  %i.cc = icmp ne i32 %.13262, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i, %.lr.ph38.i
  %i.ce = phi i1 [ false, %.lr.ph38.i ], [ %i.ee, %.loopexit.i ]
  %i.cf = phi i1 [ true, %.lr.ph38.i ], [ %i.ed, %.loopexit.i ]
  %.09437.i = phi i32 [ 0, %.lr.ph38.i ], [ %.2.i, %.loopexit.i ] ; 4 uses
  %.09536.i = phi i32 [ 0, %.lr.ph38.i ], [ %.297.i, %.loopexit.i ] ; 5 uses
  %.09835.i = phi ptr [ %i.ca, %.lr.ph38.i ], [ %.2100.i, %.loopexit.i ] ; 9 uses
  %.110934.i = phi i64 [ %.010855.i, %.lr.ph38.i ], [ %i.eb, %.loopexit.i ] ; 4 uses
  %.111133.i = phi ptr [ %.011054.i, %.lr.ph38.i ], [ %i.ec, %.loopexit.i ] ; 2 uses
  %smin = call i64 @llvm.smin.i64(i64 %.110934.i, i64 1)
  %6 = add nsw i64 %smin, 3                       ; 7 uses
  %i.cg = call i64 @llvm.smin.i64(i64 %.110934.i, i64 1)
  br i1 %i.cf, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ch = load i8, ptr %.111133.i, align 1, !tbaa !17 ; 5 uses
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr i8, ptr @table_a2b_base85_a85, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add i8 %i.ch, -33
  %i.cn = icmp ult i8 %i.cm, 85
  br i1 %i.cn, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.ac, %bb.ab
  %.0936.i = phi i32 [ %i.cl, %bb.ac ], [ 84, %bb.ab ] ; 3 uses
  %i.co = icmp eq i32 %.09437.i, 4
  br i1 %i.co, label %bb.ad, label %ignorechar.exit.thread.i

bb.ad:                                            ; preds = %.thread.i
  %i.cp = icmp ugt i32 %.09536.i, 50529027
  br i1 %i.cp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = mul nuw i32 %.09536.i, 85               ; 2 uses
  %i.cr = xor i32 %.0936.i, -1
  %i.cs = icmp ugt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.af, label %ignorechar.exit.thread.thread60.i

ignorechar.exit.thread.thread60.i:                ; preds = %bb.ae
  %i.ct = add i32 %.0936.i, %i.cq
  br label %bb.ap

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cu = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not133.i = icmp eq ptr %i.cu, null
  br i1 %.not133.i, label %.thread16.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14
  call void @PyErr_SetString(ptr noundef %i.cv, ptr noundef nonnull @.str.45) #6
  br label %.thread16.i

bb.ah:                                            ; preds = %bb.ac
  %i.cw = zext i8 %i.ch to i32                    ; 5 uses
  %i.cx = icmp eq i8 %i.ch, 121                   ; 2 uses
  %or.cond4.i = and i1 %i.cc, %i.cx
  %i.cy = icmp eq i8 %i.ch, 122
  %or.cond7.i = or i1 %i.cy, %or.cond4.i
  br i1 %or.cond7.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ce, label %bb.aj, label %.thread9.i

bb.aj:                                            ; preds = %bb.ai
  %i.cz = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not131.i = icmp eq ptr %i.cz, null
  br i1 %.not131.i, label %.thread16.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !14
  %i.db = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.da, ptr noundef nonnull @.str.46, i32 noundef %i.cw) #6 ; 0 uses
  br label %.thread16.i

.thread9.i:                                       ; preds = %bb.ai
  %i.dc = select i1 %i.cx, i32 538976288, i32 0
  br label %bb.ap

bb.al:                                            ; preds = %bb.ah
  %i.dd = lshr i32 %i.cw, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %i.a, i64 %i.de   ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !17  ; 2 uses
  %i.dh = zext i8 %i.dg to i32
  %i.di = and i32 %i.cw, 7
  %i.dj = shl nuw nsw i32 1, %i.di                ; 2 uses
  %i.dk = and i32 %i.dj, %i.dh
  %.not.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i, label %bb.am, label %.loopexit.i

bb.am:                                            ; preds = %bb.al
  %i.dl = load ptr, ptr %5, align 8, !tbaa !22
  %i.dm = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.dn = call ptr @memchr(ptr noundef %i.dl, i32 noundef %i.cw, i64 noundef %i.dm) #7
  %.not11.i.i = icmp eq ptr %i.dn, null
  br i1 %.not11.i.i, label %ignorechar.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = trunc nuw i32 %i.dj to i8
  %i.dp = or i8 %i.dg, %i.do
  store i8 %i.dp, ptr %i.df, align 1, !tbaa !17
  br label %.loopexit.i

ignorechar.exit.i:                                ; preds = %bb.am
  %i.dq = call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not130.i = icmp eq ptr %i.dq, null
  br i1 %.not130.i, label %.thread16.i, label %bb.ao

bb.ao:                                            ; preds = %ignorechar.exit.i
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14
  %i.ds = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.dr, ptr noundef nonnull @.str.47, i32 noundef %i.cw) #6 ; 0 uses
  br label %.thread16.i

ignorechar.exit.thread.i:                         ; preds = %.thread.i
  %.pre.i = mul i32 %.09536.i, 85
  %i.dt = add i32 %.0936.i, %.pre.i
  %i.du = add i32 %.09437.i, 1
  br label %.loopexit.i

bb.ap:                                            ; preds = %.thread9.i, %ignorechar.exit.thread.thread60.i
  %.19615.i = phi i32 [ %i.dc, %.thread9.i ], [ %i.ct, %ignorechar.exit.thread.thread60.i ] ; 3 uses
  %i.dv = icmp sgt i64 %.110934.i, -3
  br i1 %i.dv, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %bb.ap
  %7 = add nsw i64 %i.cg, 2
  %min.iters.check93 = icmp ult i64 %6, 4
  br i1 %min.iters.check93, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i64 %6, 16
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph95

vector.ph95:                                      ; preds = %vector.main.loop.iter.check
  %8 = and i64 %6, 12
  %n.vec96 = and i64 %6, -16                      ; 5 uses
  %9 = getelementptr i8, ptr %.09835.i, i64 %n.vec96 ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.19615.i, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body97

vector.body97:                                    ; preds = %vector.ph95, %vector.body97
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next99, %vector.body97 ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph95 ], [ %vec.ind.next, %vector.body97 ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.09835.i, i64 %index98
  %10 = shl <16 x i32> %vec.ind, splat (i32 3)
  %11 = sub <16 x i32> splat (i32 24), %10
  %12 = lshr <16 x i32> %broadcast.splat, %11
  %13 = trunc <16 x i32> %12 to <16 x i8>
  store <16 x i8> %13, ptr %next.gep, align 1, !tbaa !17
  %index.next99 = add nuw i64 %index98, 16        ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.dw = icmp eq i64 %index.next99, %n.vec96
  br i1 %i.dw, label %middle.block100, label %vector.body97, !llvm.loop !51

middle.block100:                                  ; preds = %vector.body97
  %cmp.n101 = icmp eq i64 %6, %n.vec96
  br i1 %cmp.n101, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block100
  %min.epilog.iters.check = icmp eq i64 %8, 0
  br i1 %min.epilog.iters.check, label %.lr.ph31.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec96, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec103 = and i64 %6, -4                      ; 4 uses
  %i.dx = getelementptr i8, ptr %.09835.i, i64 %n.vec103 ; 2 uses
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %.19615.i, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = trunc i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat107, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index108 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next111, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind109 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next112, %vec.epilog.vector.body ] ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.09835.i, i64 %index108
  %15 = shl <4 x i32> %vec.ind109, splat (i32 3)
  %16 = sub <4 x i32> splat (i32 24), %15
  %17 = lshr <4 x i32> %broadcast.splat105, %16
  %18 = trunc <4 x i32> %17 to <4 x i8>
  store <4 x i8> %18, ptr %next.gep110, align 1, !tbaa !17
  %index.next111 = add nuw i64 %index108, 4       ; 2 uses
  %vec.ind.next112 = add <4 x i32> %vec.ind109, splat (i32 4)
  %i.dy = icmp eq i64 %index.next111, %n.vec103
  br i1 %i.dy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %6, %n.vec103
  br i1 %cmp.n113, label %.loopexit.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec96, %vec.epilog.iter.check ], [ %n.vec103, %vec.epilog.middle.block ]
  %.19928.i.ph = phi ptr [ %.09835.i, %iter.check ], [ %9, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ]
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %.029.i = phi i64 [ %22, %.lr.ph31.i ], [ %.029.i.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %.19928.i = phi ptr [ %i.ea, %.lr.ph31.i ], [ %.19928.i.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %.0.tr.i = trunc i64 %.029.i to i32
  %19 = shl i32 %.0.tr.i, 3
  %20 = sub i32 24, %19
  %21 = lshr i32 %.19615.i, %20
  %i.dz = trunc i32 %21 to i8
  %i.ea = getelementptr i8, ptr %.19928.i, i64 1  ; 2 uses
  store i8 %i.dz, ptr %.19928.i, align 1, !tbaa !17
  %22 = add nuw nsw i64 %.029.i, 1
  %exitcond.not = icmp eq i64 %.029.i, %7
  br i1 %exitcond.not, label %.loopexit.i, label %.lr.ph31.i, !llvm.loop !53

.loopexit.i:                                      ; preds = %.lr.ph31.i, %middle.block100, %vec.epilog.middle.block, %bb.ap, %ignorechar.exit.thread.i, %bb.an, %bb.al
  %.2100.i = phi ptr [ %.09835.i, %ignorechar.exit.thread.i ], [ %.09835.i, %bb.ap ], [ %.09835.i, %bb.an ], [ %.09835.i, %bb.al ], [ %i.dx, %vec.epilog.middle.block ], [ %9, %middle.block100 ], [ %i.ea, %.lr.ph31.i ] ; 2 uses
  %.297.i = phi i32 [ %i.dt, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09536.i, %bb.an ], [ %.09536.i, %bb.al ], [ 0, %vec.epilog.middle.block ], [ 0, %middle.block100 ], [ 0, %.lr.ph31.i ]
  %.2.i = phi i32 [ %i.du, %ignorechar.exit.thread.i ], [ 0, %bb.ap ], [ %.09437.i, %bb.an ], [ %.09437.i, %bb.al ], [ 0, %vec.epilog.middle.block ], [ 0, %middle.block100 ], [ 0, %.lr.ph31.i ] ; 2 uses
  %i.eb = add i64 %.110934.i, -1                  ; 2 uses
  %i.ec = getelementptr i8, ptr %.111133.i, i64 1
  %i.ed = icmp sgt i64 %i.eb, 0                   ; 2 uses
  %i.ee = icmp ne i32 %.2.i, 0                    ; 2 uses
  %i.ef = or i1 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ab, label %._crit_edge39.i, !llvm.loop !54

._crit_edge39.i:                                  ; preds = %.loopexit.i, %.preheader.i
  %.098.lcssa.i = phi ptr [ %i.ca, %.preheader.i ], [ %.2100.i, %.loopexit.i ]
  %i.eg = call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.by, ptr noundef %.098.lcssa.i) #6
  br label %bb.aq

.thread16.i:                                      ; preds = %bb.ao, %ignorechar.exit.i, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.aa
  call void @PyBytesWriter_Discard(ptr noundef nonnull %i.by) #6
  br label %bb.aq

bb.aq:                                            ; preds = %.thread16.i, %._crit_edge39.i, %bb.z, %bb.y, %bb.x
  %.3.i = phi ptr [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.z ], [ null, %.thread16.i ], [ %i.eg, %._crit_edge39.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %binascii_a2b_ascii85_impl.exit

binascii_a2b_ascii85_impl.exit:                   ; preds = %bb.aq, %bb.r, %bb.q, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.034 = phi ptr [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread ], [ %.3.i, %bb.aq ], [ null, %bb.r ], [ null, %bb.q ]
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !25
  %.not51 = icmp eq ptr %i.ei, null
  br i1 %.not51, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %binascii_a2b_ascii85_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %binascii_a2b_ascii85_impl.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !25
  %.not52 = icmp eq ptr %i.ek, null
  br i1 %.not52, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @PyBuffer_Release(ptr noundef nonnull %5) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_base85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85, ptr noundef nonnull @.str.48)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_base85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_base85._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.k = call i32 @PyObject_GetBuffer(ptr noundef %i.j, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = call i32 @PyObject_IsTrue(ptr noundef %i.m) #6 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.p, align 8, !tbaa !23
  %i.q = call fastcc ptr @base85_encode_impl(ptr noundef %0, ptr readonly %.val32, i64 %.val33, i32 noundef range(i32 0, -2147483648) %.0, ptr noundef nonnull @table_b2a_base85, ptr noundef nonnull @.str.48)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread, %bb.d, %bb.g
  %.023 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.q, %bb.g ], [ null, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_z85(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call fastcc ptr @base85_decode_impl(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @table_a2b_base85_z85, ptr noundef nonnull @.str.52)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.d, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_z85(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = icmp eq i64 %2, 1
  %i.f = icmp ne ptr %1, null
  %i.g = and i1 %i.f, %i.e
  %or.cond5 = and i1 %i.g, %.not
  br i1 %or.cond5, label %.thread, label %bb.d
end_hunk_2
begin_hunk_3_@binascii_b2a_hex:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_hexlify(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = add i64 %i.d, %i.c                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = icmp ult i64 %i.d, 3
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_hexlify._parser, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not36 = icmp eq ptr %i.i, null
  br i1 %.not36, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = call i32 @PyObject_GetBuffer(ptr noundef %i.k, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.thread
  %.not38 = icmp eq i64 %i.e, 0
  br i1 %.not38, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 4 uses
  %.not39 = icmp ne ptr %i.n, null
  %.not40 = icmp eq i64 %i.e, 1
  %or.cond = select i1 %.not39, i1 %.not40, i1 false
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = call i32 @PyLong_AsInt(ptr noundef %i.p) #6 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @PyErr_Occurred() #6
  %.not41 = icmp eq ptr %i.s, null
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.e
  %.1 = phi ptr [ %i.n, %bb.h ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ null, %bb.e ]
  %.0 = phi i32 [ -1, %bb.h ], [ %i.q, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  %.val43 = load ptr, ptr %4, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val44 = load i64, ptr %i.t, align 8, !tbaa !23
  %i.u = call ptr @_Py_strhex_bytes_with_sep(ptr noundef %.val43, i64 noundef %.val44, ptr noundef %.1, i32 noundef %.0) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread, %bb.d, %bb.i
  %.028 = phi ptr [ null, %.thread ], [ null, %bb.h ], [ %i.u, %bb.i ], [ null, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %.not42 = icmp eq ptr %i.w, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_unhexlify(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %i.a = call fastcc i32 @ascii_buffer_converter(ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !23
  %i.c = call fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr readonly %.val, i64 %.val4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @PyBuffer_Release(ptr noundef nonnull %2) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc_hqx(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %or.cond = icmp eq i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.15, i64 noundef %2, i64 noundef 2, i64 noundef 2) #6
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !16
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = call i64 @PyLong_AsNativeBytes(ptr noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ugt i64 %i.g, 4
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !16
  %i.k = call i32 @PyErr_WarnEx(ptr noundef %i.j, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = load i32, ptr %i.a, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val16 = load i64, ptr %i.n, align 8, !tbaa !23 ; 5 uses
  %i.o = and i32 %i.m, 65535                      ; 4 uses
  %i.p = icmp sgt i64 %.val16, 0
  br i1 %i.p, label %.lr.ph.i.preheader, label %binascii_crc_hqx_impl.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.val = load ptr, ptr %3, align 8, !tbaa !22    ; 3 uses
  %xtraiter = and i64 %.val16, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.q = add nsw i64 %.val16, -1
  %i.r = shl nuw nsw i32 %i.o, 8
  %i.s = and i32 %i.r, 65280
  %i.t = lshr i32 %i.o, 8
  %i.u = getelementptr i8, ptr %.val, i64 1
  %i.v = load i8, ptr %.val, align 1, !tbaa !17
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.t, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !56
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.s, %i.ab                     ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.03.i.unr = phi i64 [ %.val16, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.072.i.unr = phi ptr [ %.val, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.081.i.unr = phi i32 [ %i.o, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp eq i64 %.val16, 1
  br i1 %i.ad, label %binascii_crc_hqx_impl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.072.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.072.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.081.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.081.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ae = shl nuw nsw i32 %.081.i, 8
  %i.af = and i32 %i.ae, 65280
  %i.ag = lshr i32 %.081.i, 8
  %i.ah = getelementptr i8, ptr %.072.i, i64 1
  %i.ai = load i8, ptr %.072.i, align 1, !tbaa !17
  %i.aj = zext i8 %i.ai to i32
  %i.ak = xor i32 %i.ag, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !56
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = xor i32 %i.af, %i.ao
  %i.aq = add nsw i64 %.03.i, -2
  %i.ar = shl nuw nsw i32 %i.ao, 8
  %i.as = and i32 %i.ar, 65280
  %i.at = lshr i32 %i.ap, 8
  %i.au = getelementptr i8, ptr %.072.i, i64 2
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.at, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr [2 x i8], ptr @crctab_hqx, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !56
  %i.bb = zext i16 %i.ba to i32
  %i.bc = xor i32 %i.as, %i.bb                    ; 2 uses
  %i.bd = icmp sgt i64 %.03.i, 2
  br i1 %i.bd, label %.lr.ph.i, label %binascii_crc_hqx_impl.exit, !llvm.loop !55

binascii_crc_hqx_impl.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %.08.lcssa.i = phi i32 [ %i.o, %bb.g ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bc, %.lr.ph.i ]
  %i.be = zext nneg i32 %.08.lcssa.i to i64
  %i.bf = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.be) #6
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.c, %bb.b, %binascii_crc_hqx_impl.exit
  %.011 = phi ptr [ null, %bb.c ], [ %i.bf, %binascii_crc_hqx_impl.exit ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %.not15 = icmp eq ptr %i.bh, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_crc32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.b = add i64 %2, -1
  %or.cond = icmp ult i64 %i.b, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.16, i64 noundef %2, i64 noundef 1, i64 noundef 2) #6
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  %i.e = call i32 @PyObject_GetBuffer(ptr noundef %i.d, ptr noundef nonnull %3, i32 noundef 0) #6
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.f = icmp slt i64 %2, 2
  br i1 %i.f, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = call i64 @PyLong_AsNativeBytes(ptr noundef %i.h, ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 23) #6 ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ugt i64 %i.i, 4
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !16
  %i.m = call i32 @PyErr_WarnEx(ptr noundef %i.l, ptr noundef nonnull @.str.58, i64 noundef 1) #6
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.o = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %.val = load ptr, ptr %3, align 8               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val20 = load i64, ptr %i.p, align 8, !tbaa !23 ; 5 uses
  %i.q = icmp sgt i64 %.val20, 5120
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @PyEval_SaveThread() #6
  %i.s = icmp samesign ugt i64 %.val20, 1073741824
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.03.i = phi i64 [ %i.x, %.lr.ph.i ], [ %.val20, %bb.i ]
  %.0152.i = phi ptr [ %i.w, %.lr.ph.i ], [ %.val, %bb.i ] ; 2 uses
  %.0161.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.o, %bb.i ]
  %i.t = zext i32 %.0161.i to i64
  %i.u = call i64 @crc32(i64 noundef %i.t, ptr noundef %.0152.i, i32 noundef 1073741824) #6
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr i8, ptr %.0152.i, i64 1073741824 ; 2 uses
  %i.x = add nsw i64 %.03.i, -1073741824          ; 3 uses
  %i.y = icmp ugt i64 %i.x, 1073741824
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %.016.lcssa.i = phi i32 [ %i.o, %bb.i ], [ %i.v, %.lr.ph.i ]
  %.015.lcssa.i = phi ptr [ %.val, %bb.i ], [ %i.w, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ %.val20, %bb.i ], [ %i.x, %.lr.ph.i ]
  %i.z = zext i32 %.016.lcssa.i to i64
  %i.aa = trunc nuw nsw i64 %.0.lcssa.i to i32
  %i.ab = call i64 @crc32(i64 noundef %i.z, ptr noundef %.015.lcssa.i, i32 noundef %i.aa) #6
  call void @PyEval_RestoreThread(ptr noundef %i.r) #6
  br label %binascii_crc32_impl.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.o to i64
  %i.ad = trunc i64 %.val20 to i32
  %i.ae = call i64 @crc32(i64 noundef %i.ac, ptr noundef %.val, i32 noundef %i.ad) #6
  br label %binascii_crc32_impl.exit

binascii_crc32_impl.exit:                         ; preds = %._crit_edge.i, %bb.j
  %.1.in.i = phi i64 [ %i.ab, %._crit_edge.i ], [ %i.ae, %bb.j ]
  %i.af = and i64 %.1.in.i, 4294967295            ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967295
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %binascii_crc32_impl.exit
  %i.ah = call ptr @PyErr_Occurred() #6
  %.not18 = icmp eq ptr %i.ah, null
  br i1 %.not18, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k, %binascii_crc32_impl.exit
  %i.ai = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.af) #6
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.k, %bb.c, %bb.b, %bb.l
  %.014 = phi ptr [ null, %bb.c ], [ null, %bb.k ], [ %i.ai, %bb.l ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %.not19 = icmp eq ptr %i.ak, null
  br i1 %.not19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread
  call void @PyBuffer_Release(ptr noundef nonnull %3) #6
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret ptr %.014
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_a2b_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.e = add i64 %2, -1
  %i.f = icmp ult i64 %i.e, 2
  %i.g = icmp ne ptr %1, null
  %i.h = and i1 %i.g, %i.f
  %or.cond5 = and i1 %.not, %i.h
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_a2b_qp._parser, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %binascii_a2b_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ %1, %bb.c ]   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = call fastcc i32 @ascii_buffer_converter(ptr noundef %i.k, ptr noundef %4)
  %.not29 = icmp eq i32 %i.l, 0
  br i1 %.not29, label %binascii_a2b_qp_impl.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %.not30 = icmp eq i64 %i.d, 1
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = call i32 @PyObject_IsTrue(ptr noundef %i.n) #6 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %binascii_a2b_qp_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.e ]
  %.val32 = load ptr, ptr %4, align 8, !tbaa !22  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val33 = load i64, ptr %i.q, align 8, !tbaa !23 ; 8 uses
  %i.r = call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef %.val33) #6 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.g
  %i.t = icmp sgt i64 %.val33, 0
  br i1 %i.t, label %.lr.ph12.i, label %._crit_edge.i

.lr.ph12.i:                                       ; preds = %.preheader6.i
  %.not.i = icmp ne i32 %.0, 0
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = call ptr @PyErr_NoMemory() #6            ; 0 uses
  br label %binascii_a2b_qp_impl.exit

bb.i:                                             ; preds = %bb.v, %.lr.ph12.i
  %.011.i = phi i64 [ 0, %.lr.ph12.i ], [ %.1.i, %bb.v ] ; 12 uses
  %.08410.i = phi i64 [ 0, %.lr.ph12.i ], [ %.3.i, %bb.v ] ; 7 uses
  %i.v = getelementptr i8, ptr %.val32, i64 %.08410.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17    ; 3 uses
  %i.x = icmp eq i8 %i.w, 61
  br i1 %i.x, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i64 %.08410.i, 1                 ; 5 uses
  %.not98.i = icmp slt i64 %i.y, %.val33
  br i1 %.not98.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.val32, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 4 uses
  switch i8 %i.aa, label %bb.n [
    i8 61, label %bb.m
    i8 10, label %.critedge.i
    i8 13, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %.1857.i = phi i64 [ %i.ad, %bb.l ], [ %i.y, %bb.k ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.val32, i64 %.1857.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %.not100.i = icmp eq i8 %i.ac, 10
  br i1 %.not100.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nsw i64 %.1857.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %.val33
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !58

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.i, %bb.k
  %.2.i = phi i64 [ %i.y, %bb.k ], [ %.1857.i, %.lr.ph.i ], [ %.val33, %bb.l ] ; 2 uses
  %i.ae = icmp slt i64 %.2.i, %.val33
  %i.af = zext i1 %i.ae to i64
  %spec.select.i = add i64 %.2.i, %i.af
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ag = add i64 %.011.i, 1
  %i.ah = getelementptr i8, ptr %i.r, i64 %.011.i
  store i8 61, ptr %i.ah, align 1, !tbaa !17
  %i.ai = add nsw i64 %.08410.i, 2
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  %i.aj = add nsw i64 %.08410.i, 2                ; 2 uses
  %i.ak = icmp slt i64 %i.aj, %.val33
  br i1 %i.ak, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = add i8 %i.aa, -48
  %or.cond102.i = icmp ult i8 %i.al, 10
  br i1 %or.cond102.i, label %bb.p, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.o
  switch i8 %i.aa, label %bb.r [
    i8 102, label %bb.p
    i8 101, label %bb.p
    i8 100, label %bb.p
    i8 99, label %bb.p
    i8 98, label %bb.p
    i8 97, label %bb.p
    i8 70, label %bb.p
    i8 69, label %bb.p
    i8 68, label %bb.p
    i8 67, label %bb.p
    i8 66, label %bb.p
    i8 65, label %bb.p
  ]

bb.p:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.o
  %i.am = getelementptr i8, ptr %.val32, i64 %i.aj
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %.fr16.i = freeze i8 %i.an                      ; 3 uses
  %i.ao = add i8 %.fr16.i, -48
  %or.cond105.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond105.i, label %bb.q, label %switch.early.test5.i

switch.early.test5.i:                             ; preds = %bb.p
  switch i8 %.fr16.i, label %bb.r [
    i8 102, label %bb.q
    i8 101, label %bb.q
    i8 100, label %bb.q
    i8 99, label %bb.q
    i8 98, label %bb.q
    i8 97, label %bb.q
    i8 70, label %bb.q
    i8 69, label %bb.q
    i8 68, label %bb.q
    i8 67, label %bb.q
    i8 66, label %bb.q
    i8 65, label %bb.q
  ]

bb.q:                                             ; preds = %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %switch.early.test5.i, %bb.p
  %i.ap = zext nneg i8 %i.aa to i64
  %i.aq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = shl i8 %i.ar, 4
  %i.at = zext nneg i8 %.fr16.i to i64
  %i.au = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = or i8 %i.as, %i.av
  %i.ax = add nsw i64 %.08410.i, 3
  %i.ay = add i64 %.011.i, 1
  %i.az = getelementptr i8, ptr %i.r, i64 %.011.i
  store i8 %i.aw, ptr %i.az, align 1, !tbaa !17
  br label %bb.v

bb.r:                                             ; preds = %switch.early.test5.i, %switch.early.test.i, %bb.n
  %i.ba = add i64 %.011.i, 1
  %i.bb = getelementptr i8, ptr %i.r, i64 %.011.i
  store i8 61, ptr %i.bb, align 1, !tbaa !17
  br label %bb.v

bb.s:                                             ; preds = %bb.i
  %i.bc = icmp eq i8 %i.w, 95
  %or.cond106.i = and i1 %.not.i, %i.bc
  br i1 %or.cond106.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bd = add i64 %.011.i, 1
  %i.be = getelementptr i8, ptr %i.r, i64 %.011.i
  store i8 32, ptr %i.be, align 1, !tbaa !17
  %i.bf = add nsw i64 %.08410.i, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bg = getelementptr i8, ptr %i.r, i64 %.011.i
  store i8 %i.w, ptr %i.bg, align 1, !tbaa !17
  %i.bh = add nsw i64 %.08410.i, 1
  %i.bi = add i64 %.011.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.m, %.critedge.i
  %.3.i = phi i64 [ %i.bh, %bb.u ], [ %spec.select.i, %.critedge.i ], [ %i.ai, %bb.m ], [ %i.ax, %bb.q ], [ %i.y, %bb.r ], [ %i.bf, %bb.t ] ; 2 uses
  %.1.i = phi i64 [ %i.bi, %bb.u ], [ %.011.i, %.critedge.i ], [ %i.ag, %bb.m ], [ %i.ay, %bb.q ], [ %i.ba, %bb.r ], [ %i.bd, %bb.t ] ; 2 uses
  %i.bj = icmp slt i64 %.3.i, %.val33
  br i1 %i.bj, label %bb.i, label %._crit_edge.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.v, %bb.j, %.preheader6.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader6.i ], [ %.1.i, %bb.v ], [ %.011.i, %bb.j ]
  %i.bk = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.r, i64 noundef %.0.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.r) #6
  br label %binascii_a2b_qp_impl.exit

binascii_a2b_qp_impl.exit:                        ; preds = %._crit_edge.i, %bb.h, %bb.f, %.thread, %bb.d
  %.023 = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ null, %.thread ], [ null, %bb.h ], [ %i.bk, %._crit_edge.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25
  %.not31 = icmp eq ptr %i.bm, null
  br i1 %.not31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %binascii_a2b_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %binascii_a2b_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal ptr @binascii_b2a_qp(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 3 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %.val, %bb.b ], [ 0, %bb.a ]
  %i.d = add i64 %i.c, %2                         ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %i.f = add i64 %2, -1
  %i.g = icmp ult i64 %i.f, 4
  %i.h = icmp ne ptr %1, null
  %i.i = and i1 %i.h, %i.g
  %or.cond5 = and i1 %.not, %i.i
  br i1 %or.cond5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @binascii_b2a_qp._parser, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not48 = icmp eq ptr %i.j, null
  br i1 %.not48, label %binascii_b2a_qp_impl.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = call i32 @PyObject_GetBuffer(ptr noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #6
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.e, label %binascii_b2a_qp_impl.exit

bb.e:                                             ; preds = %.thread
  %.not50 = icmp eq i64 %i.e, 0
  br i1 %.not50, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
  %.not51 = icmp eq ptr %i.o, null
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.o) #6 ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %binascii_b2a_qp_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.d, -2                         ; 2 uses
  %.not52 = icmp eq i64 %i.r, 0
  br i1 %.not52, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.036 = phi i64 [ %i.r, %bb.h ], [ %i.e, %bb.f ]
  %.034 = phi i32 [ %i.p, %bb.h ], [ 0, %bb.f ]   ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16   ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = call i32 @PyObject_IsTrue(ptr noundef nonnull %i.t) #6 ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %binascii_b2a_qp_impl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ugt i64 %.036, 1
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.033 = phi i32 [ %i.u, %bb.k ], [ 1, %bb.i ]
  %i.x = getelementptr i8, ptr %i.k, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16
  %i.z = call i32 @PyObject_IsTrue(ptr noundef %i.y) #6 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %binascii_b2a_qp_impl.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.e
  %.135 = phi i32 [ %.034, %bb.l ], [ %.034, %bb.k ], [ %i.p, %bb.h ], [ 0, %bb.e ]
  %.1 = phi i32 [ %.033, %bb.l ], [ %i.u, %bb.k ], [ 1, %bb.h ], [ 1, %bb.e ]
  %.0 = phi i32 [ %i.z, %bb.l ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.e ]
  %.val55 = load ptr, ptr %4, align 8, !tbaa !22  ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val56 = load i64, ptr %i.ab, align 8, !tbaa !23 ; 12 uses
  %i.ac = call ptr @memchr(ptr noundef readonly %.val55, i32 noundef 10, i64 noundef %.val56) #7 ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %.val55
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.ac, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = icmp ne i8 %i.af, 13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not274.i = phi i1 [ true, %bb.m ], [ %i.ag, %bb.n ] ; 6 uses
  %i.ah = icmp sgt i64 %.val56, 0
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.o
  %.not278.i = icmp ne i32 %.0, 0                 ; 3 uses
  %.not279.i = icmp eq i32 %.1, 0                 ; 4 uses
  %.not282.i = icmp eq i32 %.135, 0               ; 2 uses
  %.300.i = select i1 %.not274.i, i64 3, i64 4
  %..i = select i1 %.not274.i, i64 5, i64 6
  br label %bb.q

bb.p:                                             ; preds = %bb.ao
  %i.ai = add i64 %.4.i, %.02247.i                ; 2 uses
  %i.aj = icmp slt i64 %.1235.i, %.val56
  br i1 %i.aj, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.02198.i = phi i32 [ 0, %.lr.ph.i ], [ %.3222.i, %bb.p ] ; 6 uses
  %.02247.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %bb.p ] ; 2 uses
  %.02346.i = phi i64 [ 0, %.lr.ph.i ], [ %.1235.i, %bb.p ] ; 9 uses
  %i.ak = getelementptr i8, ptr %.val55, i64 %.02346.i ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17  ; 12 uses
  %i.am = icmp ugt i8 %i.al, 126
  %i.an = icmp eq i8 %i.al, 61
  %or.cond293.i = or i1 %i.am, %i.an
  %i.ao = icmp eq i8 %i.al, 95
  %or.cond294.i = and i1 %.not278.i, %i.ao
  %or.cond16.i = or i1 %or.cond293.i, %or.cond294.i
  br i1 %or.cond16.i, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = icmp eq i8 %i.al, 46
  %i.aq = icmp eq i32 %.02198.i, 0
  %or.cond.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ar = add nsw i64 %.02346.i, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %.val56
  br i1 %i.as, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr i8, ptr %.val55, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  switch i8 %i.au, label %bb.u [
    i8 10, label %bb.ab
    i8 13, label %bb.ab
    i8 0, label %bb.ab
  ]

bb.u:                                             ; preds = %bb.t, %bb.r
  br i1 %.not279.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 13, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.w:                                             ; preds = %bb.u
  switch i8 %i.al, label %bb.y [
    i8 9, label %bb.x
    i8 32, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.v, %bb.v
  %i.av = add nsw i64 %.02346.i, 1
  %i.aw = icmp eq i64 %i.av, %.val56
  br i1 %i.aw, label %bb.ab, label %switch.early.test.i

bb.y:                                             ; preds = %bb.w, %bb.v
end_hunk_3
begin_hunk_4_@binascii_b2a_qp:bb.a
    i8 13, label %bb.be
    i8 10, label %bb.be
  ]

bb.ay:                                            ; preds = %switch.early.test310.i
  br i1 %.not282.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  switch i8 %i.cf, label %bb.ba [
    i8 9, label %bb.be
    i8 32, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.au, %.preheader.i
  %i.cs = add i32 %.422312.i, -73
  %i.ct = icmp ult i32 %i.cs, -76
  br i1 %i.ct, label %bb.bb, label %.thread4.i

bb.bb:                                            ; preds = %bb.ba
  %i.cu = add i64 %.022610.i, 1                   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bz, i64 %.022610.i
  store i8 61, ptr %i.cv, align 1, !tbaa !17
  br i1 %.not274.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = add i64 %.022610.i, 2
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cu
  store i8 13, ptr %i.cx, align 1, !tbaa !17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1227.i = phi i64 [ %i.cw, %bb.bc ], [ %i.cu, %bb.bb ] ; 2 uses
  %i.cy = add i64 %.1227.i, 1
  %i.cz = getelementptr i8, ptr %i.bz, i64 %.1227.i
  store i8 10, ptr %i.cz, align 1, !tbaa !17
  br label %.thread4.i

.thread4.i:                                       ; preds = %bb.bd, %bb.ba, %bb.as, %bb.as, %bb.as, %bb.ar
  %.2228.i = phi i64 [ %i.cy, %bb.bd ], [ %.022610.i, %bb.ba ], [ %.022610.i, %bb.as ], [ %.022610.i, %bb.as ], [ %.022610.i, %bb.as ], [ %.022610.i, %bb.ar ] ; 2 uses
  %.5.i = phi i32 [ 0, %bb.bd ], [ %.422312.i, %bb.ba ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.as ], [ 0, %bb.ar ]
  %i.da = getelementptr i8, ptr %i.bz, i64 %.2228.i ; 3 uses
  store i8 61, ptr %i.da, align 1, !tbaa !17
  %i.db = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.dc = getelementptr i8, ptr %i.da, i64 1
  %i.dd = zext i8 %i.db to i32                    ; 2 uses
  %i.de = and i32 %i.dd, 15
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr i8, ptr @.str.62, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !17
  %i.di = getelementptr i8, ptr %i.da, i64 2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !17
  %i.dj = lshr i32 %i.dd, 4
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr @.str.62, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  store i8 %i.dm, ptr %i.dc, align 1, !tbaa !17
  %i.dn = add i64 %.2228.i, 3
  %i.do = add nsw i64 %.22369.i, 1
  %i.dp = add nsw i32 %.5.i, 3
  br label %bb.by

bb.be:                                            ; preds = %bb.az, %bb.az, %switch.early.test310.i, %switch.early.test310.i, %bb.ax
  br i1 %.not279.i, label %._crit_edge20.i, label %bb.bf

._crit_edge20.i:                                  ; preds = %bb.be
  %.pre21.i = add nsw i64 %.22369.i, 1
  br label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.dq = icmp eq i8 %i.cf, 10
  br i1 %i.dq, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dr = add nsw i64 %.22369.i, 1                ; 4 uses
  %i.ds = icmp slt i64 %i.dr, %.val56
  %i.dt = icmp eq i8 %i.cf, 13
  %or.cond305.i = and i1 %i.ds, %i.dt
  br i1 %or.cond305.i, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.du = getelementptr i8, ptr %.val55, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !17
  %i.dw = icmp eq i8 %i.dv, 10
  br i1 %i.dw, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %.not275.i = icmp eq i64 %.022610.i, 0
  br i1 %.not275.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dx = getelementptr i8, ptr %i.bz, i64 %.022610.i ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1     ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.dz, label %bb.bl [
    i8 32, label %bb.bk
    i8 9, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  store i8 61, ptr %i.dy, align 1, !tbaa !17
  %i.ea = zext nneg i8 %i.dz to i32               ; 2 uses
  %i.eb = and i32 %i.ea, 15
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr i8, ptr @.str.62, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !17
  %i.ef = getelementptr i8, ptr %i.dx, i64 1
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !17
  %i.eg = lshr i32 %i.ea, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr i8, ptr @.str.62, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !17
  store i8 %i.ej, ptr %i.dx, align 1, !tbaa !17
  %i.ek = add i64 %.022610.i, 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.3229.i = phi i64 [ %i.ek, %bb.bk ], [ %.022610.i, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  br i1 %.not274.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.el = add i64 %.3229.i, 1
  %i.em = getelementptr i8, ptr %i.bz, i64 %.3229.i
  store i8 13, ptr %i.em, align 1, !tbaa !17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.4230.i = phi i64 [ %i.el, %bb.bm ], [ %.3229.i, %bb.bl ] ; 2 uses
  %i.en = add i64 %.4230.i, 1                     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.bz, i64 %.4230.i
  store i8 10, ptr %i.eo, align 1, !tbaa !17
  %i.ep = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.eq = icmp eq i8 %i.ep, 13
  br i1 %i.eq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.er = add i64 %.22369.i, 2
  br label %bb.by

bb.bp:                                            ; preds = %bb.bn
  %i.es = add nsw i64 %.22369.i, 1
  br label %bb.by

bb.bq:                                            ; preds = %bb.bh, %bb.bg, %._crit_edge20.i
  %.pre-phi.i = phi i64 [ %.pre21.i, %._crit_edge20.i ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bg ] ; 4 uses
  %.not272.i = icmp eq i64 %.pre-phi.i, %.val56
  br i1 %.not272.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.et = getelementptr i8, ptr %.val55, i64 %.pre-phi.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !17
  %.not273.i = icmp ne i8 %i.eu, 10
  %i.ev = add i32 %.422312.i, -75
  %i.ew = icmp ult i32 %i.ev, -76
  %or.cond307.i = select i1 %.not273.i, i1 %i.ew, i1 false
  br i1 %or.cond307.i, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ex = add i64 %.022610.i, 1                   ; 2 uses
  %i.ey = getelementptr i8, ptr %i.bz, i64 %.022610.i
  store i8 61, ptr %i.ey, align 1, !tbaa !17
  br i1 %.not274.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ez = add i64 %.022610.i, 2
  %i.fa = getelementptr i8, ptr %i.bz, i64 %i.ex
  store i8 13, ptr %i.fa, align 1, !tbaa !17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.5231.i = phi i64 [ %i.ez, %bb.bt ], [ %i.ex, %bb.bs ] ; 2 uses
  %i.fb = add i64 %.5231.i, 1
  %i.fc = getelementptr i8, ptr %i.bz, i64 %.5231.i
  store i8 10, ptr %i.fc, align 1, !tbaa !17
  %.pre.pre.i = load i8, ptr %i.ce, align 1, !tbaa !17
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.br, %bb.bq
  %.pre.i = phi i8 [ %.pre.pre.i, %bb.bu ], [ %i.cf, %bb.bq ], [ %i.cf, %bb.br ] ; 2 uses
  %.6232.i = phi i64 [ %i.fb, %bb.bu ], [ %.022610.i, %bb.bq ], [ %.022610.i, %bb.br ] ; 2 uses
  %.6.i = phi i32 [ 0, %bb.bu ], [ %.422312.i, %bb.bq ], [ %.422312.i, %bb.br ]
  %i.fd = add i32 %.6.i, 1                        ; 2 uses
  %i.fe = icmp eq i8 %.pre.i, 32
  %or.cond32.i = select i1 %.not278.i, i1 %i.fe, i1 false
  %i.ff = add i64 %.6232.i, 1                     ; 2 uses
  %i.fg = getelementptr i8, ptr %i.bz, i64 %.6232.i ; 2 uses
  br i1 %or.cond32.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i8 95, ptr %i.fg, align 1, !tbaa !17
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i8 %.pre.i, ptr %i.fg, align 1, !tbaa !17
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bp, %bb.bo, %.thread4.i
  %.3237.i = phi i64 [ %i.do, %.thread4.i ], [ %i.er, %bb.bo ], [ %i.es, %bb.bp ], [ %.pre-phi.i, %bb.bw ], [ %.pre-phi.i, %bb.bx ] ; 2 uses
  %.7233.i = phi i64 [ %i.dn, %.thread4.i ], [ %i.en, %bb.bo ], [ %i.en, %bb.bp ], [ %i.ff, %bb.bw ], [ %i.ff, %bb.bx ] ; 2 uses
  %.7.i = phi i32 [ %i.dp, %.thread4.i ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ %i.fd, %bb.bw ], [ %i.fd, %bb.bx ]
  %i.fh = icmp slt i64 %.3237.i, %.val56
  br i1 %i.fh, label %.preheader.i, label %._crit_edge14.i, !llvm.loop !60

._crit_edge14.i:                                  ; preds = %bb.by, %._crit_edge.thread.i
  %i.fi = phi ptr [ %i.cb, %._crit_edge.thread.i ], [ %i.bz, %bb.by ] ; 2 uses
  %.0226.lcssa.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.7233.i, %bb.by ]
  %i.fj = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.fi, i64 noundef %.0226.lcssa.i) #6
  call void @PyMem_Free(ptr noundef nonnull %i.fi) #6
  br label %binascii_b2a_qp_impl.exit

binascii_b2a_qp_impl.exit:                        ; preds = %._crit_edge14.i, %bb.ap, %.thread1.i, %bb.l, %bb.j, %bb.g, %.thread, %bb.d
  %.037 = phi ptr [ null, %.thread ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.l ], [ null, %bb.d ], [ null, %.thread1.i ], [ null, %bb.ap ], [ %i.fj, %._crit_edge14.i ]
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !25
  %.not54 = icmp eq ptr %i.fl, null
  br i1 %.not54, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %binascii_b2a_qp_impl.exit
  call void @PyBuffer_Release(ptr noundef nonnull %4) #6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %binascii_b2a_qp_impl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.037
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 131073) i32 @ascii_buffer_converter(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @PyBuffer_Release(ptr noundef nonnull %1) #6
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %.val15, i64 168
  %.val16 = load i64, ptr %i.c, align 8, !tbaa !66
  %i.d = and i64 %.val16, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val17 = load i32, ptr %i.e, align 8           ; 2 uses
  %i.f = and i32 %.val17, 64
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.20) #6
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.h = and i32 %.val17, 32
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %.val4.i, %bb.h ]
  store ptr %.0.i, ptr %1, align 8, !tbaa !22
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr i8, ptr %1, i64 16
  store i64 %.val18, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr i8, ptr %1, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !25
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.m = tail call i32 @PyObject_GetBuffer(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #6
  %.not13 = icmp eq i32 %i.m, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.o = getelementptr i8, ptr %.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.21, ptr noundef %i.p) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_PyUnicode_DATA.exit, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %_PyUnicode_DATA.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 131072, %bb.i ]
  ret i32 %.0
}

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #1

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #1

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare ptr @PyBytesWriter_FinishWithPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyLong_Size_t_Converter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_decode_impl(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = add i64 %i.c, 4
  %i.e = udiv i64 %i.d, 5
  %i.f = shl nuw i64 %i.e, 2
  %i.g = tail call ptr @PyBytesWriter_Create(i64 noundef %i.f) #6 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.g) #6 ; 2 uses
  %i.j = icmp sgt i64 %i.c, 0
  br i1 %i.j, label %.lr.ph85, label %._crit_edge

.lr.ph85:                                         ; preds = %bb.b, %.loopexit
  %i.k = phi i1 [ %i.bb, %.loopexit ], [ true, %bb.b ]
  %.04984 = phi i32 [ %.150, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %.05183 = phi i32 [ %.152, %.loopexit ], [ 0, %bb.b ] ; 3 uses
  %.05382 = phi ptr [ %.2, %.loopexit ], [ %i.i, %bb.b ] ; 7 uses
  %.05681 = phi i64 [ %i.az, %.loopexit ], [ %i.c, %bb.b ] ; 7 uses
  %.05780 = phi ptr [ %i.ba, %.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph85
  %i.l = load i8, ptr %.05780, align 1, !tbaa !17
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17    ; 2 uses
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp ult i8 %i.o, 85
  br i1 %i.q, label %.thread, label %bb.i

.thread:                                          ; preds = %.lr.ph85, %bb.c
  %.04866 = phi i32 [ %i.p, %bb.c ], [ 84, %.lr.ph85 ] ; 3 uses
  %i.r = icmp eq i32 %.04984, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread
  %i.s = icmp ugt i32 %.05183, 50529027
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nuw i32 %.05183, 85                  ; 2 uses
  %i.u = xor i32 %.04866, -1
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not64 = icmp eq ptr %i.w, null
  br i1 %.not64, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = load i64, ptr %i.b, align 8, !tbaa !23
  %i.z = sub i64 %i.y, %.05681
  %.fr = freeze i64 %i.z                          ; 2 uses
  %i.aa = srem i64 %.fr, 5
  %i.ab = sub nsw i64 %.fr, %i.aa
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.49, ptr noundef %3, i64 noundef %i.ab) #6 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.thread
  %i.ad = mul i32 %.05183, 85
  %i.ae = add i32 %.04866, %i.ad
  %i.af = add i32 %.04984, 1
  br label %.loopexit

bb.i:                                             ; preds = %bb.c
  %i.ag = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !23
  %i.aj = sub i64 %i.ai, %.05681
  %i.ak = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ah, ptr noundef nonnull @.str.50, ptr noundef %3, i64 noundef %i.aj) #6 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.al = add i32 %.04866, %i.t                   ; 4 uses
  %i.am = icmp sgt i64 %.05681, -3
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.an = lshr i32 %i.al, 24
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr i8, ptr %.05382, i64 1    ; 2 uses
  store i8 %i.ao, ptr %.05382, align 1, !tbaa !17
  %.not99 = icmp eq i64 %.05681, -2
  br i1 %.not99, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.aq = lshr i32 %i.al, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr i8, ptr %.05382, i64 2    ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !17
  %i.at = icmp sgt i64 %.05681, -1
  br i1 %i.at, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.au = lshr i32 %i.al, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr i8, ptr %.05382, i64 3    ; 2 uses
  store i8 %i.av, ptr %i.as, align 1, !tbaa !17
  %.not100 = icmp eq i64 %.05681, 0
  br i1 %.not100, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ax = trunc i32 %i.al to i8
  %i.ay = getelementptr i8, ptr %.05382, i64 4
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.k, %bb.h
  %.2 = phi ptr [ %.05382, %bb.h ], [ %.05382, %bb.k ], [ %i.ap, %.lr.ph ], [ %i.as, %.lr.ph.1 ], [ %i.aw, %.lr.ph.2 ], [ %i.ay, %.lr.ph.3 ] ; 2 uses
  %.152 = phi i32 [ %i.ae, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ]
  %.150 = phi i32 [ %i.af, %bb.h ], [ 0, %bb.k ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %.lr.ph.1 ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = add i64 %.05681, -1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %.05780, i64 1
  %i.bb = icmp sgt i64 %i.az, 0                   ; 2 uses
  %i.bc = icmp ne i32 %.150, 0
  %i.bd = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %i.bd, label %.lr.ph85, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  %.053.lcssa = phi ptr [ %i.i, %bb.b ], [ %.2, %.loopexit ]
  %i.be = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.g, ptr noundef %.053.lcssa) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.j
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.g) #6
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.be, %._crit_edge ], [ null, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @base85_encode_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val, i32 noundef range(i32 0, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.16.val, 3
  %i.b = lshr i64 %i.a, 2
  %i.c = mul i64 %i.b, 5                          ; 3 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = srem i64 %.16.val, 4                     ; 2 uses
  %.not80 = icmp eq i64 %i.d, 0
  br i1 %.not80, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nsw i64 %i.d, -4
  %i.e = add i64 %.neg, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.072 = phi i64 [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = icmp slt i64 %.072, 0
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.j = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.51, ptr noundef %3) #6 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.k = tail call ptr @PyBytesWriter_Create(i64 noundef %.072) #6 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.k) #6 ; 2 uses
  %i.n = icmp sgt i64 %.16.val, 3
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.0703 = phi ptr [ %i.bg, %.lr.ph ], [ %i.m, %bb.h ] ; 6 uses
  %.0732 = phi i64 [ %i.bh, %.lr.ph ], [ %.16.val, %bb.h ] ; 2 uses
  %.0741 = phi ptr [ %i.bi, %.lr.ph ], [ %.0.val, %bb.h ] ; 5 uses
  %i.o = load i8, ptr %.0741, align 1, !tbaa !17
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw i32 %i.p, 24
  %i.r = getelementptr i8, ptr %.0741, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.q
  %i.w = getelementptr i8, ptr %.0741, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = getelementptr i8, ptr %.0741, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.aa, %i.ad            ; 5 uses
  %i.af = urem i32 %i.ae, 85
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %2, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = getelementptr i8, ptr %.0703, i64 4
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %i.ak = udiv i32 %i.ae, 85
  %i.al = urem i32 %i.ak, 85
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr i8, ptr %.0703, i64 3
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !17
  %i.aq = udiv i32 %i.ae, 7225
  %i.ar = urem i32 %i.aq, 85
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr i8, ptr %2, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = getelementptr i8, ptr %.0703, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !17
  %i.aw = udiv i32 %i.ae, 614125
  %.lhs.trunc = trunc nuw nsw i32 %i.aw to i16
  %i.ax = urem i16 %.lhs.trunc, 85
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %i.bb = getelementptr i8, ptr %.0703, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !17
  %i.bc = udiv i32 %i.ae, 52200625
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %2, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  store i8 %i.bf, ptr %.0703, align 1, !tbaa !17
  %i.bg = getelementptr i8, ptr %.0703, i64 5     ; 2 uses
  %i.bh = add nsw i64 %.0732, -4                  ; 2 uses
  %i.bi = getelementptr i8, ptr %.0741, i64 4     ; 2 uses
  %i.bj = icmp samesign ugt i64 %.0732, 7
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.074.lcssa = phi ptr [ %.0.val, %bb.h ], [ %i.bi, %.lr.ph ] ; 3 uses
  %.073.lcssa = phi i64 [ %.16.val, %bb.h ], [ %i.bh, %.lr.ph ] ; 4 uses
  %.070.lcssa = phi ptr [ %i.m, %bb.h ], [ %i.bg, %.lr.ph ] ; 7 uses
  %i.bk = icmp sgt i64 %.073.lcssa, 0
  br i1 %i.bk, label %.preheader.1, label %bb.o

.preheader.1:                                     ; preds = %._crit_edge
  %i.bl = load i8, ptr %.074.lcssa, align 1, !tbaa !17
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %.not15 = icmp eq i64 %.073.lcssa, 1
  br i1 %.not15, label %.preheader.2.thread, label %.preheader.2

.preheader.2.thread:                              ; preds = %.preheader.1
  %i.bn = shl nuw nsw i32 %i.bm, 16
  br label %bb.j

.preheader.2:                                     ; preds = %.preheader.1
  %i.bo = getelementptr i8, ptr %.074.lcssa, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bm, 16
  %i.bs = shl nuw nsw i32 %i.bq, 8
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = icmp samesign ugt i64 %.073.lcssa, 2
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader.2
  %i.bv = getelementptr i8, ptr %.074.lcssa, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = zext i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bt, %i.bx
  br label %bb.j

bb.j:                                             ; preds = %.preheader.2, %bb.i, %.preheader.2.thread
  %.1.2 = phi i32 [ %i.by, %bb.i ], [ %i.bt, %.preheader.2 ], [ %i.bn, %.preheader.2.thread ]
  %i.bz = shl nuw i32 %.1.2, 8                    ; 5 uses
  %i.ca = add nuw nsw i64 %.073.lcssa, 1
  %i.cb = select i1 %.not, i64 %i.ca, i64 5       ; 4 uses
  %i.cc = icmp samesign ugt i64 %i.cb, 4
  br i1 %i.cc, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.cd = urem i32 %i.bz, 85
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %2, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = getelementptr i8, ptr %.070.lcssa, i64 4
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !17
  br label %.thread18

bb.k:                                             ; preds = %bb.j
  %i.ci = icmp eq i64 %i.cb, 4
  br i1 %i.ci, label %.thread18, label %bb.l

.thread18:                                        ; preds = %bb.k, %.thread
  %i.cj = udiv i32 %i.bz, 85
  %i.ck = urem i32 %i.cj, 85
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = getelementptr i8, ptr %.070.lcssa, i64 3
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cp = icmp samesign ugt i64 %i.cb, 2
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread18, %bb.l
  %i.cq = udiv i32 %i.bz, 7225
  %i.cr = urem i32 %i.cq, 85
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %2, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = getelementptr i8, ptr %.070.lcssa, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cw = udiv i32 %i.bz, 614125
  %.lhs.trunc19 = trunc nuw nsw i32 %i.cw to i16
  %i.cx = urem i16 %.lhs.trunc19, 85
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = getelementptr i8, ptr %.070.lcssa, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !17
  %i.dc = udiv i32 %i.bz, 52200625
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  store i8 %i.df, ptr %.070.lcssa, align 1, !tbaa !17
  %i.dg = getelementptr i8, ptr %.070.lcssa, i64 %i.cb
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.171 = phi ptr [ %i.dg, %bb.n ], [ %.070.lcssa, %._crit_edge ]
  %i.dh = tail call ptr @PyBytesWriter_FinishWithPointer(ptr noundef nonnull %i.k, ptr noundef %.171) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.g, %bb.f, %bb.e
  %.269 = phi ptr [ null, %bb.f ], [ null, %bb.e ], [ %i.dh, %bb.o ], [ null, %bb.g ]
  ret ptr %.269
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @binascii_a2b_hex_impl(ptr noundef %0, ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %.16.val, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.53) #6
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = ashr exact i64 %.16.val, 1
  %i.f = tail call ptr @PyBytesWriter_Create(i64 noundef %i.e) #6 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.f) #6
  %i.i = icmp sgt i64 %.16.val, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.0294 = phi i64 [ %i.aa, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.0303 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr i8, ptr %.0.val, i64 %.0303 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %i.t = icmp ugt i8 %i.n, 15
  %i.u = icmp ugt i8 %i.s, 15
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !14
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.54) #6
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = shl nuw i8 %i.n, 4
  %i.z = or disjoint i8 %i.s, %i.y
  %i.aa = add i64 %.0294, 1
  %i.ab = getelementptr i8, ptr %i.h, i64 %.0294
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !17
  %i.ac = add i64 %.0303, 2                       ; 2 uses
  %i.ad = icmp slt i64 %i.ac, %.16.val
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ae = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @PyBytesWriter_Discard(ptr noundef nonnull %i.f) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.c
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ae, %._crit_edge ], [ null, %bb.i ]
  ret ptr %.2
}

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_Py_strhex_bytes_with_sep(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @PyLong_AsNativeBytes(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PyErr_WarnEx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyLong_FromUnsignedLong(i64 noundef) local_unnamed_addr #1

declare ptr @PyEval_SaveThread() local_unnamed_addr #1

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @PyEval_RestoreThread(ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @binascii_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !16
  %i.d = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.64, ptr noundef %i.c, ptr noundef null) #6 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %i.e = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %i.d) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @PyErr_NewException(ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %i.g) #6
  %.lobit = ashr i32 %i.i, 31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ %.lobit, %bb.c ]
  ret i32 %.0
}

declare ptr @PyErr_NewException(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !24, !34}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS7_object", !11, i64 0}
!13 = !{!"binascii_state", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!"p1 long", !11, i64 0}
!21 = !{!"", !11, i64 0, !12, i64 8, !18, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !19, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !11, i64 72}
!22 = !{!21, !11, i64 0}
!23 = !{!21, !18, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !12, i64 8}
!26 = !{!"p1 _ZTS11_typeobject", !11, i64 0}
!27 = !{!"_object", !8, i64 0, !26, i64 8}
!28 = !{!"PyVarObject", !27, i64 0, !18, i64 16}
!29 = !{!28, !18, i64 16}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 12}
!33 = !{!18, !18, i64 0}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"short", !8, i64 0}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24, !30, !31}
!38 = distinct !{!38, !24, !30, !31}
!39 = distinct !{!39, !24, !31, !30}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24, !30, !31}
!42 = distinct !{!42, !24, !30, !31}
!43 = distinct !{!43, !24, !31, !30}
!44 = !{!"branch_weights", i32 8, i32 8}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24, !30, !31}
!50 = distinct !{!50, !24, !31, !30}
!51 = distinct !{!51, !24, !30, !31}
!52 = distinct !{!52, !24, !30, !31}
!53 = distinct !{!53, !24, !31, !30}
!54 = distinct !{!54, !24}
!55 = distinct !{!55, !24}
!56 = !{!35, !35, i64 0}
!57 = distinct !{!57, !24}
!58 = distinct !{!58, !24}
!59 = distinct !{!59, !24}
!60 = distinct !{!60, !24}
!61 = !{!27, !26, i64 8}
!62 = !{!"p1 _ZTS11PyMethodDef", !11, i64 0}
!63 = !{!"p1 _ZTS11PyMemberDef", !11, i64 0}
!64 = !{!"p1 _ZTS11PyGetSetDef", !11, i64 0}
!65 = !{!"_typeobject", !28, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !11, i64 48, !18, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !18, i64 168, !19, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !18, i64 208, !11, i64 216, !11, i64 224, !62, i64 232, !63, i64 240, !64, i64 248, !26, i64 256, !12, i64 264, !11, i64 272, !11, i64 280, !18, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !11, i64 360, !12, i64 368, !11, i64 376, !9, i64 384, !11, i64 392, !11, i64 400, !8, i64 408, !35, i64 410}
!66 = !{!65, !18, i64 168}
!67 = !{!"_PyUnicodeObject_state", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!68 = !{!"", !27, i64 0, !18, i64 16, !18, i64 24, !67, i64 32}
!69 = !{!68, !18, i64 16}
!70 = !{!65, !19, i64 24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = distinct !{!73, !24}
end_hunk_4
