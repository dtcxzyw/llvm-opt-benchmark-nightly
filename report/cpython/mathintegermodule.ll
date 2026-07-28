inline.NumInlined: 33
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@math_integer_comb:bb.a
Py_DECREF.exit66.i:                               ; preds = %bb.u, %bb.t, %bb.s
  %i.am = call ptr @PyLong_FromLong(i64 noundef 0) #6
  br label %bb.ae

bb.v:                                             ; preds = %bb.r
  %i.an = call i32 @PyObject_RichCompareBool(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.h, i32 noundef 0) #6 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !13  ; 2 uses
  %.not.i63.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i63.i, label %bb.x, label %Py_DECREF.exit64.i

bb.x:                                             ; preds = %bb.w
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.h, align 8, !tbaa !13
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.y, label %Py_DECREF.exit64.i

bb.y:                                             ; preds = %bb.x
  call void @_Py_Dealloc(ptr noundef nonnull %i.h) #6
  br label %Py_DECREF.exit64.i

bb.z:                                             ; preds = %bb.v
  %i.as = load i32, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %.not.i61.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i61.i, label %bb.aa, label %Py_DECREF.exit62.i

bb.aa:                                            ; preds = %bb.z
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.ae, align 8, !tbaa !13
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.ab, label %Py_DECREF.exit62.i

bb.ab:                                            ; preds = %bb.aa
  call void @_Py_Dealloc(ptr noundef nonnull %i.ae) #6
  br label %Py_DECREF.exit62.i

Py_DECREF.exit62.i:                               ; preds = %bb.ab, %bb.aa, %bb.z
  %i.av = icmp slt i32 %i.an, 0
  br i1 %i.av, label %bb.aj, label %Py_DECREF.exit64.i

Py_DECREF.exit64.i:                               ; preds = %Py_DECREF.exit62.i, %bb.y, %bb.x, %bb.w
  %.044.i = phi ptr [ %i.h, %Py_DECREF.exit62.i ], [ %i.ae, %bb.w ], [ %i.ae, %bb.x ], [ %i.ae, %bb.y ] ; 3 uses
  %i.aw = call i64 @PyLong_AsLongLongAndOverflow(ptr noundef nonnull %.044.i, ptr noundef nonnull %i.a) #6
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !6
  %.not54.i = icmp eq i32 %i.ax, 0
  br i1 %.not54.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %Py_DECREF.exit64.i
  %i.ay = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !10
  %i.az = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ay, ptr noundef nonnull @.str.10, i64 noundef 9223372036854775807) #6 ; 0 uses
  br label %bb.aj

bb.ad:                                            ; preds = %Py_DECREF.exit64.i, %bb.o
  %.1.i = phi ptr [ %.044.i, %Py_DECREF.exit64.i ], [ %i.h, %bb.o ]
  %.034.i = phi i64 [ %i.aw, %Py_DECREF.exit64.i ], [ %i.ab, %bb.o ]
  %i.ba = call fastcc ptr @perm_comb(ptr noundef %i.f, i64 noundef %.034.i, i32 noundef 1)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %Py_DECREF.exit66.i, %bb.p, %bb.n
  %.2.i = phi ptr [ %i.h, %Py_DECREF.exit66.i ], [ %.1.i, %bb.ad ], [ %i.h, %bb.n ], [ %i.h, %bb.p ] ; 3 uses
  %.033.i = phi ptr [ %i.am, %Py_DECREF.exit66.i ], [ %i.ba, %bb.ad ], [ %i.z, %bb.n ], [ %i.ad, %bb.p ] ; 3 uses
  %i.bb = load i32, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i59.i = icmp sgt i32 %i.bb, -1
  br i1 %.not.i59.i, label %bb.af, label %Py_DECREF.exit60.i

bb.af:                                            ; preds = %bb.ae
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.f, align 8, !tbaa !13
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.ag, label %Py_DECREF.exit60.i

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit60.i

Py_DECREF.exit60.i:                               ; preds = %bb.ag, %bb.af, %bb.ae
  %i.be = load i32, ptr %.2.i, align 8, !tbaa !13 ; 2 uses
  %.not.i57.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i57.i, label %bb.ah, label %math_integer_comb_impl.exit

bb.ah:                                            ; preds = %Py_DECREF.exit60.i
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %.2.i, align 8, !tbaa !13
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.ai, label %math_integer_comb_impl.exit

bb.ai:                                            ; preds = %bb.ah
  call void @_Py_Dealloc(ptr noundef nonnull %.2.i) #6
  br label %math_integer_comb_impl.exit

bb.aj:                                            ; preds = %bb.ac, %Py_DECREF.exit62.i, %bb.q, %bb.k, %bb.i
  %.3.i = phi ptr [ %i.h, %bb.i ], [ %i.h, %bb.k ], [ %i.h, %bb.q ], [ %.044.i, %bb.ac ], [ %i.h, %Py_DECREF.exit62.i ] ; 3 uses
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i55.i, label %bb.ak, label %Py_DECREF.exit56.i

bb.ak:                                            ; preds = %bb.aj
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.f, align 8, !tbaa !13
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.al, label %Py_DECREF.exit56.i

bb.al:                                            ; preds = %bb.ak
  call void @_Py_Dealloc(ptr noundef nonnull %i.f) #6
  br label %Py_DECREF.exit56.i

Py_DECREF.exit56.i:                               ; preds = %bb.al, %bb.ak, %bb.aj
  %i.bk = load i32, ptr %.3.i, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bk, -1
  br i1 %.not.i.i, label %bb.am, label %math_integer_comb_impl.exit

bb.am:                                            ; preds = %Py_DECREF.exit56.i
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.3.i, align 8, !tbaa !13
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.an, label %math_integer_comb_impl.exit

bb.an:                                            ; preds = %bb.am
  call void @_Py_Dealloc(ptr noundef nonnull %.3.i) #6
  br label %math_integer_comb_impl.exit

math_integer_comb_impl.exit:                      ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %Py_DECREF.exit60.i, %bb.ah, %bb.ai, %Py_DECREF.exit56.i, %bb.am, %bb.an
  %.0.i = phi ptr [ null, %bb.g ], [ null, %bb.c ], [ %.033.i, %bb.ai ], [ null, %bb.e ], [ null, %bb.f ], [ %.033.i, %Py_DECREF.exit60.i ], [ %.033.i, %bb.ah ], [ null, %Py_DECREF.exit56.i ], [ null, %bb.am ], [ null, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.b, %math_integer_comb_impl.exit
  %.0 = phi ptr [ %.0.i, %math_integer_comb_impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @math_integer_factorial(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i64 @PyLong_AsLongAndOverflow(ptr noundef %1, ptr noundef nonnull %i.a) #6 ; 8 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @PyErr_Occurred() #6
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !10
  %i.h = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.11, i64 noundef 9223372036854775807) #6 ; 0 uses
  br label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.e, -1
  %i.j = icmp slt i64 %i.b, 0
  %or.cond = or i1 %i.j, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !10
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.12) #6
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i64 %i.b, 21
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr [8 x i8], ptr @SmallFactorials, i64 %i.b
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  %i.o = call ptr @PyLong_FromUnsignedLong(i64 noundef %i.n) #6
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.g
  %i.p = call ptr @PyLong_FromLong(i64 noundef 1) #6 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_Py_NewRef.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %i.p, align 8, !tbaa !13
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.k, %bb.j
  %i.u = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 range(i64 21, -9223372036854775808) %i.b, i1 true)
  %i.v = sub nuw nsw i64 62, %i.u
  br label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit50.i, %_Py_NewRef.exit.i
  %.02465.i = phi i64 [ %i.v, %_Py_NewRef.exit.i ], [ %i.as, %Py_DECREF.exit50.i ] ; 3 uses
  %.02564.i = phi i64 [ 3, %_Py_NewRef.exit.i ], [ %.1.i, %Py_DECREF.exit50.i ] ; 2 uses
  %.03663.i = phi ptr [ %i.p, %_Py_NewRef.exit.i ], [ %.137.i, %Py_DECREF.exit50.i ] ; 7 uses
  %.03862.i = phi ptr [ %i.p, %_Py_NewRef.exit.i ], [ %.139.i, %Py_DECREF.exit50.i ] ; 8 uses
  %i.w = lshr i64 %i.b, %.02465.i                 ; 2 uses
  %i.x = icmp samesign ult i64 %i.w, 3
  br i1 %i.x, label %Py_DECREF.exit50.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = add nuw i64 %i.w, 1
  %i.z = or i64 %i.y, 1                           ; 5 uses
  %i.aa = add i64 %i.z, -2
  %i.ab = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = sub nuw nsw i64 64, %i.ab
  %i.ad = call fastcc ptr @factorial_partial_product(i64 noundef %.02564.i, i64 noundef %i.z, i64 noundef %i.ac) ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = call ptr @PyNumber_Multiply(ptr noundef %.03663.i, ptr noundef nonnull %i.ad) #6 ; 6 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %.not.i53.i = icmp sgt i32 %i.ag, -1
  br i1 %.not.i53.i, label %bb.o, label %Py_DECREF.exit54.i

bb.o:                                             ; preds = %bb.n
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %Py_DECREF.exit54.i

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ad) #6
  br label %Py_DECREF.exit54.i

Py_DECREF.exit54.i:                               ; preds = %bb.p, %bb.o, %bb.n
  %i.aj = icmp eq ptr %i.af, null
  br i1 %i.aj, label %bb.y, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit54.i
  %i.ak = load i32, ptr %.03663.i, align 8, !tbaa !13 ; 2 uses
  %.not.i51.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i51.i, label %bb.r, label %Py_DECREF.exit52.i

bb.r:                                             ; preds = %bb.q
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.03663.i, align 8, !tbaa !13
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %Py_DECREF.exit52.i

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.03663.i) #6
  br label %Py_DECREF.exit52.i

Py_DECREF.exit52.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %i.an = call ptr @PyNumber_Multiply(ptr noundef %.03862.i, ptr noundef nonnull %i.af) #6 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.y, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit52.i
  %i.ap = load i32, ptr %.03862.i, align 8, !tbaa !13 ; 2 uses
  %.not.i49.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i49.i, label %bb.u, label %Py_DECREF.exit50.i

bb.u:                                             ; preds = %bb.t
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %.03862.i, align 8, !tbaa !13
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %Py_DECREF.exit50.i

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %.03862.i) #6
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
define internal ptr @math_integer_gcd(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
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
end_hunk_0
