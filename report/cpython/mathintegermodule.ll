inline.NumInlined: 33
inline.NumDeleted: 17
begin_hunk_0_@math_integer_factorial:bb.a
  br label %Py_DECREF.exit50.i

Py_DECREF.exit50.i:                               ; preds = %bb.v, %bb.u, %bb.t, %bb.l
  %.139.i = phi ptr [ %.03862.i, %bb.l ], [ %i.an, %bb.t ], [ %i.an, %bb.u ], [ %i.an, %bb.v ] ; 4 uses
  %.137.i = phi ptr [ %.03663.i, %bb.l ], [ %i.af, %bb.t ], [ %i.af, %bb.u ], [ %i.af, %bb.v ] ; 4 uses
  %.1.i = phi i64 [ %.02564.i, %bb.l ], [ %i.z, %bb.t ], [ %i.z, %bb.u ], [ %i.z, %bb.v ]
  %i.as = add nsw i64 %.02465.i, -1
  %i.at = icmp sgt i64 %.02465.i, 0
  br i1 %i.at, label %bb.l, label %bb.w, !llvm.loop !21

bb.w:                                             ; preds = %Py_DECREF.exit50.i
  %i.au = load i32, ptr %.137.i, align 8, !tbaa !13 ; 2 uses
  %.not.i47.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i47.i, label %bb.x, label %factorial_odd_part.exit

bb.x:                                             ; preds = %bb.w
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %.137.i, align 8, !tbaa !13
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %Py_DECREF.exit48.sink.split.i, label %factorial_odd_part.exit

bb.y:                                             ; preds = %Py_DECREF.exit52.i, %Py_DECREF.exit54.i, %bb.m
  %.2.i = phi ptr [ %.03663.i, %bb.m ], [ %.03663.i, %Py_DECREF.exit54.i ], [ %i.af, %Py_DECREF.exit52.i ] ; 3 uses
  %i.ax = load i32, ptr %.03862.i, align 8, !tbaa !13 ; 2 uses
  %.not.i45.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i45.i, label %bb.z, label %Py_DECREF.exit46.i

bb.z:                                             ; preds = %bb.y
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %.03862.i, align 8, !tbaa !13
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.aa, label %Py_DECREF.exit46.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %.03862.i) #6
  br label %Py_DECREF.exit46.i

Py_DECREF.exit46.i:                               ; preds = %bb.aa, %bb.z, %bb.y
  %i.ba = load i32, ptr %.2.i, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i.i, label %bb.ab, label %Py_DECREF.exit

bb.ab:                                            ; preds = %Py_DECREF.exit46.i
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.2.i, align 8, !tbaa !13
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %Py_DECREF.exit48.sink.split.i, label %Py_DECREF.exit

Py_DECREF.exit48.sink.split.i:                    ; preds = %bb.ab, %bb.x
  %.2.sink.i = phi ptr [ %.137.i, %bb.x ], [ %.2.i, %bb.ab ]
  %.0.ph.i = phi ptr [ %.139.i, %bb.x ], [ null, %bb.ab ]
  call void @_Py_Dealloc(ptr noundef nonnull %.2.sink.i) #6
  br label %factorial_odd_part.exit

factorial_odd_part.exit:                          ; preds = %bb.w, %bb.x, %Py_DECREF.exit48.sink.split.i
  %.0.i = phi ptr [ %.139.i, %bb.x ], [ %.0.ph.i, %Py_DECREF.exit48.sink.split.i ], [ %.139.i, %bb.w ] ; 5 uses
  %i.bd = icmp eq ptr %.0.i, null
  br i1 %i.bd, label %Py_DECREF.exit, label %.preheader

.preheader:                                       ; preds = %factorial_odd_part.exit, %.preheader
  %.07.i = phi i64 [ %i.be, %.preheader ], [ 0, %factorial_odd_part.exit ]
  %.056.i = phi i64 [ %i.bg, %.preheader ], [ %i.b, %factorial_odd_part.exit ] ; 2 uses
  %i.be = add i64 %.07.i, 1                       ; 2 uses
  %i.bf = add nsw i64 %.056.i, -1
  %i.bg = and i64 %i.bf, %.056.i                  ; 2 uses
  %.not.i17 = icmp eq i64 %i.bg, 0
  br i1 %.not.i17, label %count_set_bits.exit, label %.preheader, !llvm.loop !23

count_set_bits.exit:                              ; preds = %.preheader
  %i.bh = sub i64 %i.b, %i.be
  %i.bi = call ptr @_PyLong_Lshift(ptr noundef nonnull %.0.i, i64 noundef %i.bh) #6 ; 3 uses
  %i.bj = load i32, ptr %.0.i, align 8, !tbaa !13 ; 2 uses
  %.not.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i, label %bb.ac, label %Py_DECREF.exit

bb.ac:                                            ; preds = %count_set_bits.exit
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %.0.i, align 8, !tbaa !13
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #6
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit46.i, %bb.ab, %bb.i, %bb.ad, %bb.ac, %count_set_bits.exit, %factorial_odd_part.exit, %bb.b, %bb.h, %bb.f, %bb.d
  %.0 = phi ptr [ %i.bi, %bb.ad ], [ null, %bb.d ], [ null, %bb.f ], [ %i.o, %bb.h ], [ null, %bb.b ], [ null, %factorial_odd_part.exit ], [ %i.bi, %count_set_bits.exit ], [ %i.bi, %bb.ac ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %Py_DECREF.exit46.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @math_integer_gcd(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  switch i64 %2, label %._crit_edge.i [
    i64 2, label %bb.b
    i64 0, label %bb.e
  ]

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !10
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !10     ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val61.i = load ptr, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq ptr %.val61.i, @PyLong_Type
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !24
  %.not3.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not3.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_PyLong_GCD(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6
  br label %math_integer_gcd_impl.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %math_integer_gcd_impl.exit

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i
  %i.h = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  %i.i = tail call ptr @PyNumber_Index(ptr noundef %i.h) #6 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %math_integer_gcd_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.not475.i = icmp sgt i64 %2, 1
  br i1 %.not475.i, label %.lr.ph.i, label %math_integer_gcd_impl.exit

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @PyNumber_Absolute(ptr noundef nonnull %i.i) #6 ; 3 uses
  %i.m = load i32, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i55.i, label %bb.i, label %math_integer_gcd_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.i, align 8, !tbaa !13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %math_integer_gcd_impl.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #6
  br label %math_integer_gcd_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %Py_DECREF.exit54.i
  %.0287.i = phi i64 [ %i.ai, %Py_DECREF.exit54.i ], [ 1, %.preheader.i ] ; 2 uses
  %.0386.i = phi ptr [ %.139.i, %Py_DECREF.exit54.i ], [ %i.i, %.preheader.i ] ; 8 uses
  %i.p = getelementptr [8 x i8], ptr %1, i64 %.0287.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = tail call ptr @_PyNumber_Index(ptr noundef %i.q) #6 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.t = load i32, ptr %.0386.i, align 8, !tbaa !13 ; 2 uses
  %.not.i53.i = icmp sgt i32 %i.t, -1
  br i1 %.not.i53.i, label %bb.l, label %math_integer_gcd_impl.exit

bb.l:                                             ; preds = %bb.k
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %.0386.i, align 8, !tbaa !13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %math_integer_gcd_impl.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0386.i) #6
  br label %math_integer_gcd_impl.exit

bb.n:                                             ; preds = %.lr.ph.i
  %i.w = icmp eq ptr %.0386.i, getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)
  br i1 %i.w, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.x = load i32, ptr %i.r, align 8, !tbaa !13   ; 2 uses
  %.not.i51.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i51.i, label %bb.p, label %Py_DECREF.exit54.i

bb.p:                                             ; preds = %bb.o
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.r, align 8, !tbaa !13
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %Py_DECREF.exit54.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #6
  br label %Py_DECREF.exit54.i

bb.r:                                             ; preds = %bb.n
  %i.aa = tail call ptr @_PyLong_GCD(ptr noundef %.0386.i, ptr noundef nonnull %i.r) #6 ; 2 uses
  %i.ab = load i32, ptr %.0386.i, align 8, !tbaa !13 ; 2 uses
  %.not.i49.i = icmp sgt i32 %i.ab, -1
  br i1 %.not.i49.i, label %bb.s, label %Py_DECREF.exit50.i

bb.s:                                             ; preds = %bb.r
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %.0386.i, align 8, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.t, label %Py_DECREF.exit50.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0386.i) #6
  br label %Py_DECREF.exit50.i

Py_DECREF.exit50.i:                               ; preds = %bb.t, %bb.s, %bb.r
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !13  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i, label %bb.u, label %Py_DECREF.exit.i

bb.u:                                             ; preds = %Py_DECREF.exit50.i
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.r, align 8, !tbaa !13
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.v, label %Py_DECREF.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.v, %bb.u, %Py_DECREF.exit50.i
  %i.ah = icmp eq ptr %i.aa, null
  br i1 %i.ah, label %math_integer_gcd_impl.exit, label %Py_DECREF.exit54.i

Py_DECREF.exit54.i:                               ; preds = %Py_DECREF.exit.i, %bb.q, %bb.p, %bb.o
  %.139.i = phi ptr [ %i.aa, %Py_DECREF.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), %bb.q ] ; 2 uses
  %i.ai = add nuw nsw i64 %.0287.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %2
  br i1 %exitcond.not.i, label %math_integer_gcd_impl.exit, label %.lr.ph.i, !llvm.loop !25

math_integer_gcd_impl.exit:                       ; preds = %Py_DECREF.exit.i, %Py_DECREF.exit54.i, %bb.d, %bb.e, %bb.f, %.preheader.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.5.i = phi ptr [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.l, %bb.j ], [ null, %bb.f ], [ %i.l, %bb.h ], [ %i.l, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.l ], [ %i.i, %.preheader.i ], [ %.139.i, %Py_DECREF.exit54.i ], [ null, %Py_DECREF.exit.i ]
  ret ptr %.5.i
}

; Function Attrs: nounwind uwtable
define internal ptr @math_integer_isqrt(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @_PyNumber_Index(ptr noundef %1) #6 ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit116, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !14
  %i.d = and i64 %.val, 3
  switch i64 %i.d, label %bb.g [
    i64 2, label %bb.c
    i64 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.13) #6
  br label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i135 = icmp sgt i32 %i.f, -1
  br i1 %.not.i135, label %bb.e, label %Py_DECREF.exit136

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit136

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit136

Py_DECREF.exit136:                                ; preds = %bb.d, %bb.e, %bb.f
  %i.i = tail call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %Py_DECREF.exit116

bb.g:                                             ; preds = %bb.b
  %i.j = tail call i64 @_PyLong_NumBits(ptr noundef nonnull %i.a) #6
  %i.k = add i64 %i.j, -1                         ; 2 uses
  %i.l = sdiv i64 %i.k, 2                         ; 5 uses
  %i.m = icmp slt i64 %i.k, 64
  br i1 %i.m, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.n = trunc i64 %i.l to i32
  %i.o = sub i32 31, %i.n                         ; 2 uses
  %i.p = tail call i64 @PyLong_AsUnsignedLongLong(ptr noundef nonnull %i.a) #6 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.a, align 8, !tbaa !13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #6
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.h, %bb.i, %bb.j
  %i.t = icmp eq i64 %i.p, -1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Py_DECREF.exit134
  %i.u = tail call ptr @PyErr_Occurred() #6
  %.not112 = icmp eq ptr %i.u, null
  br i1 %.not112, label %bb.l, label %Py_DECREF.exit116

bb.l:                                             ; preds = %bb.k, %Py_DECREF.exit134
  %i.v = shl i32 %i.o, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 56
  %i.z = getelementptr i8, ptr @_approximate_isqrt_tab, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -64
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !13
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.ac, 7
  %i.ae = lshr i64 %i.x, 41
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = udiv i32 %i.af, %i.ac
  %i.ah = add nuw nsw i32 %i.ad, %i.ag            ; 2 uses
  %i.ai = shl i32 %i.ah, 15
  %i.aj = lshr i64 %i.x, 17
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = udiv i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add i32 %i.ai, %i.am
  %i.ao = lshr i32 %i.an, %i.o                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = mul nuw i64 %i.ap, %i.ap
  %i.ar = icmp ugt i64 %i.aq, %i.p
  %.neg = sext i1 %i.ar to i32
  %i.as = add i32 %i.ao, %.neg
  %i.at = zext i32 %i.as to i64
  %i.au = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.at) #6
  br label %Py_DECREF.exit116

.preheader:                                       ; preds = %bb.g, %.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %.068 = phi i32 [ %i.ay, %.preheader ], [ 6, %bb.g ] ; 4 uses
  %i.av = zext nneg i32 %.068 to i64
  %i.aw = lshr i64 %i.l, %i.av
  %i.ax = icmp sgt i64 %i.aw, 0
  %i.ay = add i32 %.068, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.ax, label %.preheader, label %bb.m, !llvm.loop !26

bb.m:                                             ; preds = %.preheader
  %i.az = add i32 %.068, -5
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i64 %i.l, %i.ba                    ; 2 uses
  %i.bc = shl nuw nsw i64 %i.l, 1                 ; 2 uses
  %i.bd = add nsw i64 %i.bc, -62
  %i.be = tail call ptr @_PyLong_Rshift(ptr noundef nonnull %i.a, i64 noundef %i.bd) #6 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %Py_XDECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call i64 @PyLong_AsUnsignedLongLong(ptr noundef nonnull %i.be) #6 ; 4 uses
  %i.bh = load i32, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %.not.i131 = icmp sgt i32 %i.bh, -1
  br i1 %.not.i131, label %bb.o, label %Py_DECREF.exit132

bb.o:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.be, align 8, !tbaa !13
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.p, label %Py_DECREF.exit132

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.be) #6
  br label %Py_DECREF.exit132

Py_DECREF.exit132:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.bk = icmp eq i64 %i.bg, -1
  br i1 %i.bk, label %bb.q, label %.split

.split:                                           ; preds = %Py_DECREF.exit132
  %i.bl = lshr i64 %i.bg, 56
  %i.bm = getelementptr i8, ptr @_approximate_isqrt_tab, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -64
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = shl nuw nsw i32 %i.bp, 7
  %i.br = lshr i64 %i.bg, 41
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = udiv i32 %i.bs, %i.bp
  %i.bu = add nuw nsw i32 %i.bq, %i.bt            ; 2 uses
  %i.bv = shl i32 %i.bu, 15
  %i.bw = lshr i64 %i.bg, 17
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = udiv i64 %i.bw, %i.bx
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %i.bv, %i.bz
  br label %.split95

bb.q:                                             ; preds = %Py_DECREF.exit132
  %i.cb = tail call ptr @PyErr_Occurred() #6
  %.not = icmp eq ptr %i.cb, null
  br i1 %.not, label %.split95, label %Py_XDECREF.exit

.split95:                                         ; preds = %bb.q, %.split
  %phi.call = phi i32 [ %i.ca, %.split ], [ -1, %bb.q ]
  %i.cc = trunc i64 %i.bb to i32
  %i.cd = sub i32 31, %i.cc
  %i.ce = lshr i32 %phi.call, %i.cd
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.cf) #6 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %Py_XDECREF.exit, label %bb.r

bb.r:                                             ; preds = %.split95
  %i.ci = add i32 %.068, -6
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.r
  %.neg166 = or disjoint i64 %i.bc, 1
  %i.ck = zext i32 %indvars.iv to i64
  br label %bb.t

bb.s:                                             ; preds = %Py_DECREF.exit126
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, -1
  %i.cl = icmp sgt i64 %indvars.iv174, 0
end_hunk_0
