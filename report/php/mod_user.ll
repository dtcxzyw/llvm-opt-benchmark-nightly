Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/mod_user?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ps_open_user:zend_string_alloc.exit
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.ae, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  call void @zval_ptr_dtor(ptr noundef nonnull %i.k) #8
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  %i.ai = icmp eq ptr %i.ah, %5
  call void @llvm.assume(i1 %i.ai)
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 344), align 8, !tbaa !63
  %i.aj = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %4)
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %i.aj

bb.h:                                             ; preds = %zend_string_alloc.exit
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  %i.al = icmp eq ptr %i.ak, %5
  call void @llvm.assume(i1 %i.al)
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 104), align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !14
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @_zend_bailout(ptr noundef nonnull @.str.1, i32 noundef 100) #12
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @ps_close_user(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 11 uses
  %2 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 344), align 8, !tbaa !63, !range !61, !noundef !62
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %2, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  %i.d = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !14
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.h = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 208), ptr noundef nonnull %1, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !14
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.k, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  %i.o = icmp eq ptr %i.n, %2
  call void @llvm.assume(i1 %i.o)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 344), align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !14
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @_zend_bailout(ptr noundef nonnull @.str.1, i32 noundef 135) #12
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  %i.t = icmp eq ptr %i.s, %2
  call void @llvm.assume(i1 %i.t)
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 344), align 8, !tbaa !63
  %i.u = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %1)
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.04 = phi i32 [ %i.u, %bb.m ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @ps_read_user(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 %3) #0 {
bb.a:
  %4 = alloca [1 x %struct._zval_struct], align 16 ; 6 uses
  %5 = alloca %struct._zval_struct, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %1, ptr %4, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = and i32 %i.b, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 262, %bb.b ], [ 6, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sink, ptr %i.f, align 8, !tbaa !14
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.j = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 224), ptr noundef nonnull %5, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null) #8
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !14
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !14
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.m, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.d
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !14
  switch i8 %i.q, label %bb.l [
    i8 0, label %bb.m
    i8 6, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.r = load ptr, ptr %5, align 8, !tbaa !14     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !14
  %i.u = and i32 %i.t, 64
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.k, label %zend_string_copy.exit

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %i.r, align 4, !tbaa !13
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.r, align 4, !tbaa !13
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.j, %bb.k
  store ptr %i.r, ptr %2, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.i, %zend_string_copy.exit
  %.0 = phi i32 [ 0, %zend_string_copy.exit ], [ -1, %.lr.ph.i ]
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i, %bb.l
  %.1 = phi i32 [ -1, %.lr.ph.i ], [ %.0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @ps_write_user(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 {
bb.a:
  %4 = alloca [2 x %struct._zval_struct], align 16 ; 8 uses
  %5 = alloca %struct._zval_struct, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %1, ptr %4, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = and i32 %i.b, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 262, %bb.b ], [ 6, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sink, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %2, ptr %i.g, align 16, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = and i32 %i.i, 64
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %2, align 4, !tbaa !13
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %2, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink15 = phi i32 [ 262, %bb.d ], [ 6, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sink15, ptr %i.m, align 8, !tbaa !14
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.e
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.q = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 240), ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #8
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !14
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !14
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.t, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.f
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  call void @zval_ptr_dtor(ptr noundef nonnull %i.g) #8
  %i.w = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %5)
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @ps_delete_user(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca [1 x %struct._zval_struct], align 16 ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %1, ptr %2, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = and i32 %i.b, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 262, %bb.b ], [ 6, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.f, align 8, !tbaa !14
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.c
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.j = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 256), ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #8
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !14
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !14
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.m, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.d
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #8
  %i.p = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %3)
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define hidden i64 @ps_gc_user(ptr nofree readnone captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %3 = alloca [1 x %struct._zval_struct], align 16 ; 6 uses
  %4 = alloca %struct._zval_struct, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store i64 %1, ptr %3, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.a, align 8, !tbaa !14
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.e = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 272), ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %3, ptr noundef null) #8
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !14
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.h, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.b
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !14
  switch i8 %i.l, label %bb.i [
    i8 4, label %bb.h
    i8 3, label %bb.j
  ]

bb.h:                                             ; preds = %.lr.ph.i
  %i.m = load i64, ptr %4, align 8, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i, %bb.i, %bb.h
  %.sink = phi i64 [ %i.m, %bb.h ], [ -1, %bb.i ], [ 1, %.lr.ph.i ]
  store i64 %.sink, ptr %2, align 8, !tbaa !69
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  %i.n = load i64, ptr %2, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define hidden ptr @ps_create_sid_user(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 10 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 296), align 8, !tbaa !14
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %ps_call_handler.exit.thread, label %bb.c

ps_call_handler.exit.thread:                      ; preds = %bb.b
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.f = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 288), ptr noundef nonnull %1, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %ps_call_handler.exit.thread8, label %bb.d

ps_call_handler.exit.thread8:                     ; preds = %bb.c
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !14    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %ps_call_handler.exit.thread7, label %ps_call_handler.exit

ps_call_handler.exit.thread7:                     ; preds = %bb.d
  store i32 1, ptr %i.i, align 8, !tbaa !14
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %bb.h

ps_call_handler.exit:                             ; preds = %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %cond = icmp eq i8 %i.j, 6
  br i1 %cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %ps_call_handler.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14
  %i.o = and i32 %i.n, 64
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.f, label %zend_string_copy.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.l, align 4, !tbaa !13
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !13
  br label %zend_string_copy.exit.thread

zend_string_copy.exit.thread:                     ; preds = %bb.e, %bb.f
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  br label %bb.i

bb.g:                                             ; preds = %ps_call_handler.exit.thread8, %ps_call_handler.exit.thread
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.2) #8
  br label %bb.i

bb.h:                                             ; preds = %ps_call_handler.exit, %ps_call_handler.exit.thread7
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #8
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.3) #8
  br label %bb.i

bb.i:                                             ; preds = %zend_string_copy.exit.thread, %bb.h, %bb.g
  %.04 = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.l, %zend_string_copy.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.r = tail call ptr @php_session_create_id(ptr noundef %0) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi ptr [ %i.r, %bb.j ], [ %.04, %bb.i ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden i32 @ps_validate_sid_user(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca [1 x %struct._zval_struct], align 16 ; 6 uses
  %3 = alloca %struct._zval_struct, align 8       ; 9 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 312), align 8, !tbaa !14
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr %1, ptr %2, align 16, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !13
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %1, align 4, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 262, %bb.c ], [ 6, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sink, ptr %i.h, align 8, !tbaa !14
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.l = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 304), ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %2, ptr noundef null) #8
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.n, align 8, !tbaa !14
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !14
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.o, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.e
  call void @zval_ptr_dtor(ptr noundef nonnull %2) #8
  %i.r = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %3)
  call void @zval_ptr_dtor(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.s = tail call i32 @php_session_validate_sid(ptr noundef %0, ptr noundef %1) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.0 = phi i32 [ %i.s, %bb.k ], [ %i.r, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @ps_update_timestamp_user(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3) #0 {
bb.a:
  %4 = alloca [2 x %struct._zval_struct], align 16 ; 9 uses
  %5 = alloca %struct._zval_struct, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %1, ptr %4, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = and i32 %i.b, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !13
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %1, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 262, %bb.b ], [ 6, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sink, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %2, ptr %i.g, align 16, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = and i32 %i.i, 64
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %2, align 4, !tbaa !13
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %2, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink22 = phi i32 [ 262, %bb.d ], [ 6, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sink22, ptr %i.m, align 8, !tbaa !14
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 328), align 8, !tbaa !14
  %i.o = icmp eq i8 %i.n, 0
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60, !range !61, !noundef !62
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.o, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.r, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %ps_call_handler.exit

bb.h:                                             ; preds = %bb.f
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.s = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 320), ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #8
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !14
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !14
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.v, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %ps_call_handler.exit

bb.m:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.y, align 8, !tbaa !14
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.4) #8
  br label %ps_call_handler.exit

bb.o:                                             ; preds = %bb.m
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  %i.z = call i32 @_call_user_function_impl(ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ps_globals, i64 240), ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #8
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ab, align 8, !tbaa !14
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !14
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.ac, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @ps_globals, i64 436), align 4, !tbaa !60
  br label %ps_call_handler.exit

ps_call_handler.exit:                             ; preds = %bb.n, %bb.s, %bb.g, %bb.l
  call void @zval_ptr_dtor(ptr noundef nonnull %4) #8
  call void @zval_ptr_dtor(ptr noundef nonnull %i.g) #8
  %i.af = call fastcc i32 @verify_bool_return_type_userland_calls(ptr noundef %5)
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.af
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @verify_bool_return_type_userland_calls(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14
  switch i8 %i.b, label %bb.g [
    i8 0, label %bb.i
    i8 3, label %.fold.split
    i8 2, label %bb.i
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  switch i64 %i.c, label %bb.g [
    i64 -1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !70
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @zend_zval_value_name(ptr noundef nonnull %0) #8
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.5, ptr noundef %i.e) #8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !70
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.f, label %bb.i

end_hunk_0
