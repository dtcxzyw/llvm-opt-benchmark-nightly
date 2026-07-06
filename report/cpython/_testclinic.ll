inline.NumInlined: 454
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@unsigned_char_converter:bb.a

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__.unsigned_char_converter_impl) #12
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 16
  %i.ai = call ptr @PyLong_FromUnsignedLong(i64 noundef %.130) #11 ; 6 uses
  store ptr %i.ai, ptr %i.a, align 16, !tbaa !11
  %.not30.i = icmp eq ptr %i.ai, null
  br i1 %.not30.i, label %.thread.i, label %bb.z

bb.v:                                             ; preds = %bb.aa, %bb.z
  %.0286.lcssa.wide.i = phi i64 [ 2, %bb.aa ], [ 1, %bb.z ]
  %i.aj = call ptr @PyErr_Occurred() #11
  %.not31.i = icmp eq ptr %i.aj, null
  br i1 %.not31.i, label %bb.w, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.u
  %i.ak = call ptr @PyErr_Occurred() #11
  %.not3130.i = icmp eq ptr %i.ak, null
  br i1 %.not3130.i, label %bb.w, label %unsigned_char_converter_impl.exit

bb.w:                                             ; preds = %.thread.i, %bb.v
  call void @__assert_fail(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__.unsigned_char_converter_impl) #12
  unreachable

.lr.ph.i:                                         ; preds = %bb.v, %Py_DECREF.exit35.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Py_DECREF.exit35.i ], [ 0, %bb.v ] ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !11 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %.not.i34.i = icmp sgt i32 %i.an, -1
  br i1 %.not.i34.i, label %bb.x, label %Py_DECREF.exit35.i

bb.x:                                             ; preds = %.lr.ph.i
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !10
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.y, label %Py_DECREF.exit35.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #11
  br label %Py_DECREF.exit35.i

Py_DECREF.exit35.i:                               ; preds = %bb.y, %bb.x, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next.i, %.0286.lcssa.wide.i
  br i1 %exitcond20.not.i, label %unsigned_char_converter_impl.exit, label %.lr.ph.i, !llvm.loop !31

bb.z:                                             ; preds = %bb.u
  %i.aq = call ptr @PyLong_FromUnsignedLong(i64 noundef %.132) #11 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !11
  %.not30.1.i = icmp eq ptr %i.aq, null
  br i1 %.not30.1.i, label %bb.v, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = zext i8 %i.af to i64
  %i.at = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.as) #11 ; 6 uses
  store ptr %i.at, ptr %i.ah, align 16, !tbaa !11
  %.not30.2.i = icmp eq ptr %i.at, null
  br i1 %.not30.2.i, label %bb.v, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa
  %i.au = call ptr @PyTuple_New(i64 noundef 3) #11 ; 7 uses
  %.not33.i = icmp eq ptr %i.au, null
  br i1 %.not33.i, label %.preheader.preheader.i, label %.preheader1.i

.preheader.preheader.i:                           ; preds = %.critedge.i
  %i.av = load i32, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.av, -1
  br i1 %.not.i.i, label %bb.ab, label %Py_DECREF.exit.i

.preheader1.i:                                    ; preds = %.critedge.i
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  %.val.i.i = load ptr, ptr %i.aw, align 8, !tbaa !14 ; 3 uses
  %i.ax = getelementptr i8, ptr %.val.i.i, i64 168
  %.val7.i.i = load i64, ptr %i.ax, align 8, !tbaa !17
  %i.ay = and i64 %.val7.i.i, 67108864
  %.not.i37.i = icmp eq i64 %i.ay, 0
  %.not3.i.i.i = icmp eq ptr %.val.i.i, @PyBool_Type
  %i.az = getelementptr i8, ptr %i.au, i64 16
  %i.ba = getelementptr i8, ptr %i.au, i64 32
  br i1 %.not.i37.i, label %bb.ah, label %.preheader1.split.i

.preheader1.split.i:                              ; preds = %.preheader1.i
  %.not.i.i.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i.i.i, label %bb.ai, label %.preheader1.split.split.i

.preheader1.split.split.i:                        ; preds = %.preheader1.split.i
  br i1 %.not3.i.i.i, label %bb.aj, label %.preheader1.split.split.split.i

.preheader1.split.split.split.i:                  ; preds = %.preheader1.split.split.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !26 ; 3 uses
  %exitcond.not.i = icmp slt i64 %i.bb, 1
  br i1 %exitcond.not.i, label %bb.ak, label %PyTuple_SET_ITEM.exit.i

bb.ab:                                            ; preds = %.preheader.preheader.i
  %i.bc = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ai, align 8, !tbaa !10
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ac, label %Py_DECREF.exit.i

bb.ac:                                            ; preds = %bb.ab
  call void @_Py_Dealloc(ptr noundef nonnull %i.ai) #11
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.ac, %bb.ab, %.preheader.preheader.i
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !10 ; 2 uses
  %.not.i.1.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.1.i, label %bb.ad, label %Py_DECREF.exit.1.i

bb.ad:                                            ; preds = %Py_DECREF.exit.i
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !10
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.ae, label %Py_DECREF.exit.1.i

bb.ae:                                            ; preds = %bb.ad
  call void @_Py_Dealloc(ptr noundef nonnull %i.aq) #11
  br label %Py_DECREF.exit.1.i

Py_DECREF.exit.1.i:                               ; preds = %bb.ae, %bb.ad, %Py_DECREF.exit.i
  %i.bh = load i32, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %.not.i.2.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i.2.i, label %bb.af, label %unsigned_char_converter_impl.exit

bb.af:                                            ; preds = %Py_DECREF.exit.1.i
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.at, align 8, !tbaa !10
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.ag, label %unsigned_char_converter_impl.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.at) #11
  br label %unsigned_char_converter_impl.exit

bb.ah:                                            ; preds = %.preheader1.i
  call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 34, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

bb.ai:                                            ; preds = %.preheader1.split.i
  call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.aj:                                            ; preds = %.preheader1.split.split.i
  call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.ak:                                            ; preds = %PyTuple_SET_ITEM.exit.1.i, %PyTuple_SET_ITEM.exit.i, %.preheader1.split.split.split.i
  call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef 36, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

PyTuple_SET_ITEM.exit.i:                          ; preds = %.preheader1.split.split.split.i
  store ptr %i.ai, ptr %i.ba, align 8, !tbaa !11
  %exitcond.1.not.i = icmp eq i64 %i.bb, 1
  br i1 %exitcond.1.not.i, label %bb.ak, label %PyTuple_SET_ITEM.exit.1.i

PyTuple_SET_ITEM.exit.1.i:                        ; preds = %PyTuple_SET_ITEM.exit.i
  %i.bk = getelementptr i8, ptr %i.au, i64 40
  store ptr %i.aq, ptr %i.bk, align 8, !tbaa !11
  %exitcond.2.not.i = icmp eq i64 %i.bb, 2
  br i1 %exitcond.2.not.i, label %bb.ak, label %PyTuple_SET_ITEM.exit.2.i

PyTuple_SET_ITEM.exit.2.i:                        ; preds = %PyTuple_SET_ITEM.exit.1.i
  %i.bl = getelementptr i8, ptr %i.au, i64 48
  store ptr %i.at, ptr %i.bl, align 8, !tbaa !11
  br label %unsigned_char_converter_impl.exit

unsigned_char_converter_impl.exit:                ; preds = %Py_DECREF.exit35.i, %.thread.i, %Py_DECREF.exit.1.i, %bb.af, %bb.ag, %PyTuple_SET_ITEM.exit.2.i
  %.2.i = phi ptr [ null, %.thread.i ], [ null, %Py_DECREF.exit.1.i ], [ null, %bb.af ], [ %i.au, %PyTuple_SET_ITEM.exit.2.i ], [ null, %bb.ag ], [ null, %Py_DECREF.exit35.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread44

.thread44:                                        ; preds = %bb.r, %bb.p, %bb.k, %bb.n, %.thread47, %bb.e, %bb.h, %.thread, %unsigned_char_converter_impl.exit, %bb.b
  %.027 = phi ptr [ %.2.i, %unsigned_char_converter_impl.exit ], [ null, %bb.k ], [ null, %bb.e ], [ null, %bb.b ], [ null, %.thread ], [ null, %bb.h ], [ null, %.thread47 ], [ null, %bb.n ], [ null, %bb.p ], [ null, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret ptr %.027
}

; Function Attrs: nounwind uwtable
define internal ptr @short_converter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.10, i64 noundef %2, i64 noundef 0, i64 noundef 1) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %short_converter_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11
  %i.d = tail call i64 @PyLong_AsLong(ptr noundef %i.c) #11 ; 5 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @PyErr_Occurred() #11
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %.thread20, label %short_converter_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp slt i64 %i.d, -32768
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.159) #11
  br label %short_converter_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.i = icmp sgt i64 %i.d, 32767
  br i1 %i.i, label %bb.i, label %.thread20

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.160) #11
  br label %short_converter_impl.exit

.thread20:                                        ; preds = %bb.h, %bb.e, %bb.c
  %.1 = phi i64 [ 12, %bb.c ], [ %i.d, %bb.e ], [ %i.d, %bb.h ]
  %i.k = tail call ptr @PyErr_Occurred() #11
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread20
  tail call void @__assert_fail(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.short_converter_impl) #12
  unreachable

bb.k:                                             ; preds = %.thread20
  %i.l = tail call ptr @PyLong_FromLong(i64 noundef %.1) #11 ; 5 uses
  %.not28.i = icmp eq ptr %i.l, null
  br i1 %.not28.i, label %bb.l, label %.critedge.i, !llvm.loop !32

.critedge.i:                                      ; preds = %bb.k
  %i.m = tail call ptr @PyTuple_New(i64 noundef 1) #11 ; 5 uses
  %.not31.i = icmp eq ptr %i.m, null
  br i1 %.not31.i, label %.preheader.i, label %.preheader4.i

bb.l:                                             ; preds = %bb.k
  %i.n = tail call ptr @PyErr_Occurred() #11
  %.not29.i = icmp eq ptr %i.n, null
  br i1 %.not29.i, label %bb.m, label %short_converter_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.short_converter_impl) #12
  unreachable

.preheader4.i:                                    ; preds = %.critedge.i
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !14 ; 3 uses
  %i.p = getelementptr i8, ptr %.val.i.i, i64 168
  %.val7.i.i = load i64, ptr %i.p, align 8, !tbaa !17
  %i.q = and i64 %.val7.i.i, 67108864
  %.not.i32.i = icmp eq i64 %i.q, 0
  %.not3.i.i.i = icmp eq ptr %.val.i.i, @PyBool_Type
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %i.s = getelementptr i8, ptr %i.m, i64 32
  br i1 %.not.i32.i, label %bb.o, label %.preheader4.split.i

.preheader4.split.i:                              ; preds = %.preheader4.i
  %.not.i.i.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i.i.i, label %bb.p, label %.preheader4.split.split.i

.preheader4.split.split.i:                        ; preds = %.preheader4.split.i
  br i1 %.not3.i.i.i, label %bb.q, label %.preheader4.split.split.split.i

.preheader4.split.split.split.i:                  ; preds = %.preheader4.split.split.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !26
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.preheader4.split.split.split.split.i, label %bb.r

.preheader4.split.split.split.split.i:            ; preds = %.preheader4.split.split.split.i
  store ptr %i.l, ptr %i.s, align 8, !tbaa !11
  br label %short_converter_impl.exit

.preheader.i:                                     ; preds = %.critedge.i
  %i.v = load i32, ptr %i.l, align 8, !tbaa !10   ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %.preheader.split.i, label %short_converter_impl.exit

.preheader.split.i:                               ; preds = %.preheader.i
  %i.x = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.x, ptr %i.l, align 8, !tbaa !10
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.n, label %short_converter_impl.exit

bb.n:                                             ; preds = %.preheader.split.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #11
  br label %short_converter_impl.exit

bb.o:                                             ; preds = %.preheader4.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 34, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

bb.p:                                             ; preds = %.preheader4.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 320, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.q:                                             ; preds = %.preheader4.split.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Py_SIZE_impl) #12
  unreachable

bb.r:                                             ; preds = %.preheader4.split.split.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef 36, ptr noundef nonnull @__PRETTY_FUNCTION__.PyTuple_SET_ITEM) #12
  unreachable

short_converter_impl.exit:                        ; preds = %bb.e, %bb.i, %bb.g, %bb.n, %.preheader.split.i, %.preheader.i, %.preheader4.split.split.split.split.i, %bb.l, %bb.b
  %.016 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ %i.m, %.preheader4.split.split.split.split.i ], [ null, %bb.l ], [ null, %.preheader.i ], [ null, %.preheader.split.i ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define internal ptr @unsigned_short_converter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i16 12, ptr %i.b, align 2, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i16 34, ptr %i.c, align 2, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i16 56, ptr %i.d, align 2, !tbaa !33
  %or.cond = icmp ult i64 %2, 4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.11, i64 noundef %2, i64 noundef 0, i64 noundef 3) #11
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = icmp slt i64 %2, 1
  br i1 %i.f, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = call i32 @_PyLong_UnsignedShort_Converter(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  %i.l = call i32 @_PyLong_UnsignedShort_Converter(ptr noundef %i.k, ptr noundef nonnull %i.c) #11
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i64 %2, 3
  br i1 %i.m, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.p = call i64 @PyLong_AsNativeBytes(ptr noundef %i.o, ptr noundef nonnull %i.d, i64 noundef 2, i32 noundef 23) #11 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = icmp samesign ugt i64 %i.p, 2
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @PyExc_DeprecationWarning, align 8, !tbaa !11
  %i.t = call i32 @PyErr_WarnEx(ptr noundef %i.s, ptr noundef nonnull @.str.158, i64 noundef 1) #11
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %i.v = load i16, ptr %i.b, align 2, !tbaa !33
  %i.w = load i16, ptr %i.c, align 2, !tbaa !33
  %i.x = load i16, ptr %i.d, align 2, !tbaa !33
  %i.y = call ptr @PyErr_Occurred() #11
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @__assert_fail(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__.unsigned_short_converter_impl) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.z = zext i16 %i.v to i64
  %i.aa = zext i16 %i.x to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ab, align 16
  %i.ac = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.z) #11 ; 6 uses
  store ptr %i.ac, ptr %i.a, align 16, !tbaa !11
  %.not30.i = icmp eq ptr %i.ac, null
  br i1 %.not30.i, label %.thread.i, label %bb.r

bb.n:                                             ; preds = %bb.s, %bb.r
  %.0286.lcssa.wide.i = phi i64 [ 2, %bb.s ], [ 1, %bb.r ]
  %i.ad = call ptr @PyErr_Occurred() #11
  %.not31.i = icmp eq ptr %i.ad, null
  br i1 %.not31.i, label %bb.o, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.m
  %i.ae = call ptr @PyErr_Occurred() #11
  %.not3130.i = icmp eq ptr %i.ae, null
  br i1 %.not3130.i, label %bb.o, label %unsigned_short_converter_impl.exit

bb.o:                                             ; preds = %.thread.i, %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__.unsigned_short_converter_impl) #12
  unreachable

.lr.ph.i:                                         ; preds = %bb.n, %Py_DECREF.exit35.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Py_DECREF.exit35.i ], [ 0, %bb.n ] ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !10 ; 2 uses
  %.not.i34.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i34.i, label %bb.p, label %Py_DECREF.exit35.i

end_hunk_0
