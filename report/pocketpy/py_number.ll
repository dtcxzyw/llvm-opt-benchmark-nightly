Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/py_number?download=true
inline.NumInlined: 39
inline.NumDeleted: 3
begin_hunk_0_@float__new__:bb.a
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.l = tail call ptr (...) @py_retval() #7
  %i.m = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.f) #7
  %i.n = uitofp i1 %i.m to double
  tail call void @py_newfloat(ptr noundef %i.l, double noundef %i.n) #7
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.o = tail call { ptr, i32 } @py_tosv(ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 5 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1        ; 4 uses
  %i.r = tail call zeroext i1 @c11__sveq2(ptr %i.p, i32 %i.q, ptr noundef nonnull @.str.7) #7
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr (...) @py_retval() #7
  tail call void @py_newfloat(ptr noundef %i.s, double noundef +inf) #7
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.t = tail call zeroext i1 @c11__sveq2(ptr %i.p, i32 %i.q, ptr noundef nonnull @.str.8) #7
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call ptr (...) @py_retval() #7
  tail call void @py_newfloat(ptr noundef %i.u, double noundef -inf) #7
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.v = call double @strtod(ptr noundef %i.p, ptr noundef nonnull %i.a) #7
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.x = sext i32 %i.q to i64
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  %.not = icmp eq ptr %i.w, %i.y
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.9, ptr %i.p, i32 %i.q) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.aa = tail call ptr (...) @py_retval() #7
  tail call void @py_newfloat(ptr noundef %i.aa, double noundef %i.v) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ %i.z, %bb.n ], [ true, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.ab = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.10) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.j, %bb.l, %bb.p, %bb.q, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.2 = phi i1 [ true, %bb.b ], [ %i.e, %bb.d ], [ %i.ab, %bb.q ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.j ], [ true, %bb.l ], [ %.0, %bb.p ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__truediv__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  switch i16 %i.d, label %try_castfloat.exit [
    i16 3, label %bb.d
    i16 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = sitofp i64 %i.f to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.07.ph = phi double [ %i.g, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = fcmp oeq double %.07.ph, 0.000000e+00
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.11) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = tail call ptr (...) @py_retval() #7
  %i.m = sitofp i64 %i.b to double
  %i.n = fdiv double %i.m, %.07.ph
  tail call void @py_newfloat(ptr noundef %i.l, double noundef %i.n) #7
  br label %bb.i

try_castfloat.exit:                               ; preds = %bb.c
  %i.o = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.o) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %try_castfloat.exit, %bb.h, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.k, %bb.g ], [ true, %try_castfloat.exit ], [ true, %bb.h ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @float__truediv__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = tail call double @py_tofloat(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  switch i16 %i.d, label %try_castfloat.exit [
    i16 3, label %bb.d
    i16 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = sitofp i64 %i.f to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.07.ph = phi double [ %i.g, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = fcmp oeq double %.07.ph, 0.000000e+00
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.11) #7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = tail call ptr (...) @py_retval() #7
  %i.m = fdiv double %i.b, %.07.ph
  tail call void @py_newfloat(ptr noundef %i.l, double noundef %i.m) #7
  br label %bb.i

try_castfloat.exit:                               ; preds = %bb.c
  %i.n = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.n) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %try_castfloat.exit, %bb.h, %bb.b
  %.1 = phi i1 [ %i.a, %bb.b ], [ %i.k, %bb.g ], [ true, %try_castfloat.exit ], [ true, %bb.h ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @number__pow__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 3) #7
  br i1 %i.c, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.d, i16 noundef signext 3) #7
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @py_toint(ptr noundef nonnull %1) #7 ; 4 uses
  %i.g = tail call i64 @py_toint(ptr noundef nonnull %i.d) #7 ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %2 = and i64 %i.g, 1
  %.not3344 = icmp eq i64 %2, 0
  %i.i = select i1 %.not3344, i64 1, i64 %i.f     ; 2 uses
  %i.j = lshr i64 %i.g, 1                         ; 2 uses
  %.not3445 = icmp eq i64 %i.j, 0
  br i1 %.not3445, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.k = icmp eq i64 %i.f, 0
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr (...) @py_retval() #7
  %i.m = sitofp i64 %i.f to double
  %i.n = sitofp i64 %i.g to double
  %i.o = tail call double @dmath_pow(double noundef %i.m, double noundef %i.n) #7
  tail call void @py_newfloat(ptr noundef %i.l, double noundef %i.o) #7
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.p = phi i64 [ %i.s, %.lr.ph ], [ %i.j, %.preheader ] ; 2 uses
  %spec.select47 = phi i64 [ %spec.select, %.lr.ph ], [ %i.i, %.preheader ]
  %.02546 = phi i64 [ %i.q, %.lr.ph ], [ %i.f, %.preheader ] ; 2 uses
  %i.q = mul nsw i64 %.02546, %.02546             ; 2 uses
  %3 = and i64 %i.p, 1
  %.not33 = icmp eq i64 %3, 0
  %i.r = select i1 %.not33, i64 1, i64 %i.q
  %spec.select = mul nsw i64 %i.r, %spec.select47 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %.not34 = icmp eq i64 %i.s, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %spec.select.lcssa = phi i64 [ %i.i, %.preheader ], [ %spec.select, %.lr.ph ]
  %i.t = tail call ptr (...) @py_retval() #7
  tail call void @py_newint(ptr noundef %i.t, i64 noundef %spec.select.lcssa) #7
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.u = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.12) #7
  br label %.thread

bb.i:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.v = call zeroext i1 @py_castfloat(ptr noundef %1, ptr noundef nonnull %i.a) #7
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i16, ptr %i.w, align 8, !tbaa !14
  switch i16 %i.x, label %try_castfloat.exit [
    i16 3, label %bb.k
    i16 4, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = sitofp i64 %i.z to double
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.035.ph = phi double [ %i.aa, %bb.k ], [ %i.ac, %bb.l ]
  %i.ad = call ptr (...) @py_retval() #7
  %i.ae = load double, ptr %i.a, align 8, !tbaa !9
  %i.af = call double @dmath_pow(double noundef %i.ae, double noundef %.035.ph) #7
  call void @py_newfloat(ptr noundef %i.ad, double noundef %i.af) #7
  br label %.thread42

try_castfloat.exit:                               ; preds = %bb.j
  %i.ag = call ptr (...) @py_retval() #7
  call void @py_newnotimplemented(ptr noundef %i.ag) #7
  br label %.thread42

.thread42:                                        ; preds = %bb.m, %try_castfloat.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread

.thread:                                          ; preds = %bb.g, %._crit_edge, %.thread42, %bb.n, %bb.h, %bb.b
  %.2 = phi i1 [ %i.b, %bb.b ], [ false, %bb.n ], [ %i.u, %bb.h ], [ true, %.thread42 ], [ true, %._crit_edge ], [ true, %bb.g ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__floordiv__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7 ; 4 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.13) #7
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr (...) @py_retval() #7
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.unshifted.i = xor i64 %i.e, %i.b
  %i.i = icmp sgt i64 %.unshifted.i, -1
  %i.j = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.l = udiv i64 %i.j, %i.k
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = add nsw i64 %i.j, -1
  %i.n = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.o = udiv i64 %i.m, %i.n
  %i.p = xor i64 %i.o, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.0.i = phi i64 [ %i.p, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.e ]
  tail call void @py_newint(ptr noundef %i.g, i64 noundef %.0.i) #7
  br label %bb.k

bb.j:                                             ; preds = %bb.c
  %i.q = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.q) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.thread, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ %i.f, %.thread ], [ true, %bb.i ], [ true, %bb.j ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__mod__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7 ; 5 uses
  %.not12 = icmp eq i64 %i.e, 0
  br i1 %.not12, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 50, ptr noundef nonnull @.str.14) #7
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr (...) @py_retval() #7
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp slt i64 %i.e, 0
  %.unshifted.i = xor i64 %i.e, %i.b
  %i.j = icmp sgt i64 %.unshifted.i, -1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.b, i1 true)
  %i.l = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.e, i1 true)
  %i.m = urem i64 %i.k, %i.l
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.e, i1 true) ; 2 uses
  %i.o = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.b, i1 true)
  %i.p = add nsw i64 %i.o, -1
  %i.q = urem i64 %i.p, %i.n
  %i.r = xor i64 %i.q, -1
  %i.s = add nsw i64 %i.n, %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.m, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.t = sub nsw i64 0, %.0.i
  %i.u = select i1 %i.i, i64 %i.t, i64 %.0.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.012.i = phi i64 [ %i.u, %bb.i ], [ 0, %bb.e ]
  tail call void @py_newint(ptr noundef %i.g, i64 noundef %.012.i) #7
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.v = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.v) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread, %bb.b
  %.2 = phi i1 [ %i.a, %bb.b ], [ %i.f, %.thread ], [ true, %bb.j ], [ true, %bb.k ]
  ret i1 %.2
}

end_hunk_0
