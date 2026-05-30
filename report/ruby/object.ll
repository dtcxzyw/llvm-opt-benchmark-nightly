inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_str_to_dbl_raise:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.j, %bb.a ] ; 5 uses
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !98   ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @memchr(ptr noundef nonnull %i.l, i32 noundef 0, i64 noundef %i.n) #24
  %.not30 = icmp eq ptr %i.o, null
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not33 = icmp eq i32 %2, 0
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.157) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !7
  br label %bb.p

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %.not31 = icmp eq i8 %i.r, 0
  br i1 %.not31, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = add i64 %i.n, 1                          ; 3 uses
  %i.t = icmp ult i64 %i.s, 1024
  br i1 %i.t, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  %i.u = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.s) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.v = alloca i8, i64 %i.s, align 16            ; 2 uses
  %.not.i35 = icmp eq i64 %i.n, 0
  br i1 %.not.i35, label %ruby_nonempty_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.w = phi ptr [ %i.u, %.thread ], [ %i.v, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.n, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.k, %bb.l
  %i.x = phi ptr [ %i.v, %bb.k ], [ %i.w, %bb.l ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  store i8 0, ptr %i.y, align 1, !tbaa !34
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %ruby_nonempty_memcpy.exit, %RSTRING_PTR.exit
  %i.z = phi i64 [ %.pre, %ruby_nonempty_memcpy.exit ], [ %i.f, %bb.i ], [ %i.f, %RSTRING_PTR.exit ]
  %.024 = phi ptr [ %i.x, %ruby_nonempty_memcpy.exit ], [ %i.l, %bb.i ], [ null, %RSTRING_PTR.exit ]
  %i.aa = call ptr @rb_enc_get(i64 noundef %i.z) #21
  %i.ab = call fastcc double @rb_cstr_to_dbl_raise(ptr noundef %.024, ptr noundef %i.aa, i32 noundef %1, i32 noundef %2, ptr noundef %3) ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !11
  %.not32 = icmp eq i64 %i.ac, 0
  br i1 %.not32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !100
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #21, !srcloc !101
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.ae = load volatile i64, ptr %i.ad, align 8, !tbaa !11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.g, %bb.h
  %.0 = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.ab, %bb.o ], [ %i.ab, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  ret double %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_Float(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_convert_to_float(i64 noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.d = call fastcc i32 @to_float(ptr noundef %i.a, i32 noundef %1)
  switch i32 %i.d, label %bb.p [
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 0, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  br label %rb_float_new_inline.exit15

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11
  %i.g = call fastcc double @rb_str_to_dbl_raise(i64 noundef %i.f, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) ; 2 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !7
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.e, label %rb_float_new_inline.exit

bb.e:                                             ; preds = %bb.d
  %i.i = bitcast double %i.g to i64               ; 5 uses
  %cond.i = icmp eq i64 %i.i, 3458764513820540928
  br i1 %cond.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i64 %i.i, 60
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 7
  %i.m = add nsw i32 %i.l, -5
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 3)
  %i.p = and i64 %i.o, -4
  %i.q = or disjoint i64 %i.p, 2
  br label %rb_float_new_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %rb_float_new_inline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.s = call i64 @rb_float_new_in_heap(double noundef %i.g) #21
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.t = phi i64 [ 4, %bb.d ], [ %i.q, %bb.g ], [ %i.s, %bb.i ], [ -9223372036854775806, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %rb_float_new_inline.exit15

bb.j:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.a, align 8, !tbaa !11
  %i.v = tail call fastcc double @rb_str_to_dbl_raise(i64 noundef %i.u, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.w = bitcast double %i.v to i64               ; 5 uses
  %cond.i13 = icmp eq i64 %i.w, 3458764513820540928
  br i1 %cond.i13, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = lshr i64 %i.w, 60
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 7
  %i.aa = add nsw i32 %i.z, -5
  %i.ab = icmp ult i32 %i.aa, -2
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.w, i64 range(i64 3458764513820540929, 3458764513820540928) %i.w, i64 3)
  %i.ad = and i64 %i.ac, -4
  %i.ae = or disjoint i64 %i.ad, 2
  br label %rb_float_new_inline.exit15

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.w, 0
  br i1 %i.af, label %rb_float_new_inline.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.ag = tail call i64 @rb_float_new_in_heap(double noundef %i.v) #21
  br label %rb_float_new_inline.exit15

bb.o:                                             ; preds = %bb.a
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %2 = icmp eq i64 %i.ah, 0
  %i.ai = and i64 %i.ah, 7
  %3 = icmp ne i64 %i.ai, 0
  %4 = or i1 %2, %3
  %5 = icmp eq i32 %1, 0
  %or.cond.not = and i1 %5, %4
  br i1 %or.cond.not, label %rb_float_new_inline.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  %.not11 = icmp eq i32 %1, 0
  br i1 %.not11, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ak = call i64 @rb_protect(ptr noundef nonnull @convert_type_to_float_protected, i64 noundef %i.aj, ptr noundef nonnull %i.c) #21
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7
  %.not12 = icmp eq i32 %i.al, 0
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @rb_set_errinfo(i64 noundef 4) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %rb_float_new_inline.exit15

bb.t:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.a, align 8, !tbaa !11
  %i.an = tail call i64 @rb_convert_type_with_id(i64 noundef %i.am, i32 noundef 4, ptr noundef nonnull @.str.19, i64 noundef 3409)
  br label %rb_float_new_inline.exit15

rb_float_new_inline.exit15:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.o, %bb.t, %bb.s, %rb_float_new_inline.exit, %bb.b
  %.0 = phi i64 [ %i.an, %bb.t ], [ %i.ak, %bb.s ], [ %i.e, %bb.b ], [ 4, %bb.o ], [ %i.t, %rb_float_new_inline.exit ], [ %i.ae, %bb.l ], [ %i.ag, %bb.n ], [ -9223372036854775806, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_to_float(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = call fastcc i32 @to_float(ptr noundef %i.a, i32 noundef 1)
  %cond = icmp eq i32 %i.b, 4
  %i.c = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  br i1 %cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.e = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.c, i64 noundef %i.d)
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %numeric_to_float.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.g = tail call i64 @rb_obj_class(i64 noundef %i.c)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.158, i64 noundef %i.g) #22
  unreachable

numeric_to_float.exit:                            ; preds = %bb.b
  %i.h = tail call i64 @rb_convert_type_with_id(i64 noundef %i.c, i32 noundef 4, ptr noundef nonnull @.str.19, i64 noundef 3409)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %numeric_to_float.exit
  %.0 = phi i64 [ %i.h, %numeric_to_float.exit ], [ %i.c, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 6) i32 @to_float(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11     ; 9 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.a to i1
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i64 %i.a, 1                         ; 2 uses
  %i.h = sitofp i64 %i.g to double                ; 2 uses
  %i.i = bitcast double %i.h to i64               ; 4 uses
  %cond.i = icmp eq i64 %i.i, 3458764513820540928
  br i1 %cond.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %i.i, 60
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 7
  %i.m = add nsw i32 %i.l, -5
  %i.n = icmp ult i32 %i.m, -2
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 range(i64 3458764513820540929, 3458764513820540928) %i.i, i64 3)
  %i.p = and i64 %i.o, -4
  %i.q = or disjoint i64 %i.p, 2
  br label %rb_float_new_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %rb_float_new_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.s = tail call i64 @rb_float_new_in_heap(double noundef %i.h) #21
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.s, %bb.g ], [ -9223372036854775806, %bb.f ]
  store i64 %.0.i, ptr %0, align 8, !tbaa !11
  br label %conversion_to_float.exit

bb.h:                                             ; preds = %bb.b
  %i.t = and i64 %i.a, 2
  %.not24 = icmp eq i64 %i.t, 0
  br i1 %.not24, label %bb.i, label %conversion_to_float.exit

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %conversion_to_float.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i64 %i.a, label %conversion_to_float.exit [
    i64 4, label %bb.k
    i64 20, label %bb.l
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.v = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.159, i64 noundef 28) #21
  tail call fastcc void @rb_raise_cstr_i(i64 noundef %i.u, i64 noundef %i.v) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.x = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.160, i64 noundef 29) #21
  tail call fastcc void @rb_raise_cstr_i(i64 noundef %i.w, i64 noundef %i.x) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.y = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.z = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.161, i64 noundef 30) #21
  tail call fastcc void @rb_raise_cstr_i(i64 noundef %i.y, i64 noundef %i.z) #25
  unreachable

bb.n:                                             ; preds = %bb.a
  %i.aa = inttoptr i64 %i.a to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 31                       ; 2 uses
  switch i32 %i.ad, label %conversion_to_float.exit [
    i32 4, label %.thread
    i32 10, label %bb.o
    i32 15, label %bb.t
    i32 5, label %.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call double @rb_big2dbl(i64 noundef %i.a) #21 ; 2 uses
  %i.af = bitcast double %i.ae to i64             ; 5 uses
  %cond.i16 = icmp eq i64 %i.af, 3458764513820540928
  br i1 %cond.i16, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = lshr i64 %i.af, 60
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 7
  %i.aj = add nsw i32 %i.ai, -5
  %i.ak = icmp ult i32 %i.aj, -2
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.af, i64 range(i64 3458764513820540929, 3458764513820540928) %i.af, i64 3)
  %i.am = and i64 %i.al, -4
  %i.an = or disjoint i64 %i.am, 2
  br label %rb_float_new_inline.exit18

bb.r:                                             ; preds = %bb.p
  %i.ao = icmp eq i64 %i.af, 0
  br i1 %i.ao, label %rb_float_new_inline.exit18, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ap = tail call i64 @rb_float_new_in_heap(double noundef %i.ae) #21
  br label %rb_float_new_inline.exit18

rb_float_new_inline.exit18:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i17 = phi i64 [ %i.an, %bb.q ], [ %i.ap, %bb.s ], [ -9223372036854775806, %bb.r ]
  store i64 %.0.i17, ptr %0, align 8, !tbaa !11
  br label %conversion_to_float.exit

bb.t:                                             ; preds = %bb.n
  %i.aq = tail call fastcc double @rat2dbl_without_to_f(i64 noundef %i.a) ; 2 uses
  %i.ar = bitcast double %i.aq to i64             ; 5 uses
  %cond.i19 = icmp eq i64 %i.ar, 3458764513820540928
  br i1 %cond.i19, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = lshr i64 %i.ar, 60
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 7
  %i.av = add nsw i32 %i.au, -5
end_hunk_0
