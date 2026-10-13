Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_compile?download=true
inline.NumInlined: 808
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@zend_compile_namespace:bb.a

bb.i:                                             ; preds = %.lr.ph
  %i.v = load i16, ptr %i.t, align 8, !tbaa !223
  %.not.us.i = icmp eq i16 %i.v, 538
  %i.w = add nuw i32 %.013.us.i35, 1              ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.q
  %or.cond.i = select i1 %.not.us.i, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.split.us.backedge.i, label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %.old.i = add nuw i32 %.013.us.i35, 1           ; 2 uses
  %.old22.i = icmp ult i32 %.old.i, %i.q
  br i1 %.old22.i, label %.lr.ph.split.us.backedge.i, label %.loopexit

.lr.ph.split.us.backedge.i:                       ; preds = %bb.j, %bb.i
  %.013.us.be.i = phi i32 [ %.old.i, %bb.j ], [ %i.w, %bb.i ] ; 2 uses
  %i.y = zext i32 %.013.us.be.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !117 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %zend_is_first_statement.exit, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %bb.j, %bb.i, %.critedge
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.344) #29
  unreachable

zend_is_first_statement.exit:                     ; preds = %.lr.ph.split.us.backedge.i, %.lr.ph.split.us.i.preheader
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %zend_string_release_ex.exit, label %zend_is_first_statement.exit.thread47

zend_is_first_statement.exit.thread47:            ; preds = %bb.h, %zend_is_first_statement.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !87
  %i.ae = and i32 %i.ad, 64
  %.not.i30 = icmp eq i32 %i.ae, 0
  br i1 %.not.i30, label %bb.k, label %zend_string_release_ex.exit

bb.k:                                             ; preds = %zend_is_first_statement.exit.thread47
  %i.af = load i32, ptr %i.h, align 4, !tbaa !92  ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !92
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %zend_string_release_ex.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_efree(ptr noundef nonnull %i.h) #30
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.f, %bb.l, %bb.k, %zend_is_first_statement.exit.thread47, %zend_is_first_statement.exit
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %zend_string_copy.exit, label %bb.m

bb.m:                                             ; preds = %zend_string_release_ex.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !87 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = icmp eq i64 %i.am, 9
  br i1 %i.an, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ao, i64 noundef 9, ptr noundef nonnull @.str.345, i64 noundef 9) #30
  %.not27 = icmp eq i32 %i.ap, 0
  br i1 %.not27, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.346, ptr noundef nonnull %i.ao) #29
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !87
  %i.as = and i32 %i.ar, 64
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.q, label %zend_string_copy.exit

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !92
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.ak, align 8, !tbaa !92
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.q, %bb.p, %zend_string_release_ex.exit
  %storemerge = phi ptr [ null, %zend_string_release_ex.exit ], [ %i.ak, %bb.p ], [ %i.ak, %bb.q ]
  store ptr %storemerge, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 264), align 8, !tbaa !91
  tail call fastcc void @zend_reset_import_tables()
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 272), align 8, !tbaa !90
  br i1 %i.e, label %bb.r, label %.critedge29

bb.r:                                             ; preds = %zend_string_copy.exit
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 273), align 1, !tbaa !236
  tail call void @zend_compile_top_stmt(ptr noundef nonnull %i.d)
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 272), align 8, !tbaa !90
  tail call fastcc void @zend_reset_import_tables()
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 264), align 8, !tbaa !91 ; 5 uses
  %.not.i31 = icmp eq ptr %i.av, null
  br i1 %.not.i31, label %.critedge29, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !87
  %i.ay = and i32 %i.ax, 64
  %.not.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i, label %bb.t, label %zend_string_release_ex.exit.i

bb.t:                                             ; preds = %bb.s
  %i.az = load i32, ptr %i.av, align 4, !tbaa !92 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !92
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %zend_string_release_ex.exit.i

bb.u:                                             ; preds = %bb.t
  tail call void @_efree(ptr noundef nonnull %i.av) #30
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.u, %bb.t, %bb.s
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 264), align 8, !tbaa !91
  br label %.critedge29

.critedge29:                                      ; preds = %zend_string_release_ex.exit.i, %bb.r, %zend_string_copy.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_halt_compiler(i16 %.8.val.0.val, i64 %.8.val.8.val) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 273), align 1, !tbaa !236, !range !107, !noundef !108
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 272), align 8, !range !107
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %zend_mangle_property_name.exit

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.347) #29
  unreachable

zend_mangle_property_name.exit:                   ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 32), align 8, !tbaa !105 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = add i64 %i.h, 26                         ; 2 uses
  %i.j = and i64 %i.i, -8
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias ptr @_emalloc(i64 noundef %i.k) #32 ; 11 uses
  store i32 1, ptr %i.l, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 22, ptr %i.m, align 4, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %i.i, ptr %i.o, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i8 0, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(25) @__const.zend_compile_halt_compiler.const_name, i64 25, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 50
  %i.s = add i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.r, ptr nonnull readonly align 8 %i.f, i64 %i.s, i1 false)
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 472), align 8, !tbaa !255
  %i.u = tail call ptr @zend_hash_find(ptr noundef %i.t, ptr noundef nonnull %i.l) #30
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %zend_mangle_property_name.exit
  %i.v = load i64, ptr %i.o, align 8, !tbaa !46
  %i.w = tail call ptr @zend_register_long_constant(ptr noundef nonnull %i.p, i64 noundef %i.v, i64 noundef %.8.val.8.val, i32 noundef 0, i32 noundef 0) #30 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %zend_mangle_property_name.exit
  %i.x = load i32, ptr %i.m, align 4, !tbaa !87
  %i.y = and i32 %i.x, 64
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.ab, ptr %i.l, align 8, !tbaa !92
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_efree(ptr noundef nonnull %i.l) #30
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_expr(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.b = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i = icmp ugt ptr %i.b, %i.a
  br i1 %.not.i, label %zend_check_stack_limit.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  call fastcc void @zend_stack_limit_error()
  unreachable

zend_check_stack_limit.exit:                      ; preds = %bb.a
  %i.c = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30
  call fastcc void @zend_compile_expr_inner(ptr noundef %0, ptr noundef %1)
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.c, ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_void_cast(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._znode, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.d = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i = icmp ugt ptr %i.d, %i.c
  br i1 %.not.i, label %zend_check_stack_limit.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  call fastcc void @zend_stack_limit_error()
  unreachable

zend_check_stack_limit.exit:                      ; preds = %bb.a
  %i.e = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %1, ptr noundef %i.b), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.e, ptr noundef nonnull %1, ptr noundef %i.b), !inline_history !279
  %i.f = load i8, ptr %1, align 8, !tbaa !203
  switch i8 %i.f, label %bb.e [
    i8 2, label %bb.c
    i8 4, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %zend_check_stack_limit.exit, %zend_check_stack_limit.exit
  %i.g = call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext 70, ptr noundef nonnull %1, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i32 4, ptr %i.h, align 4, !tbaa !204
  br label %bb.e

bb.d:                                             ; preds = %zend_check_stack_limit.exit
  call fastcc void @zend_do_free(ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %zend_check_stack_limit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_do_free(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !203
  switch i8 %i.a, label %zval_ptr_dtor_nogc.exit [
    i8 2, label %bb.b
    i8 4, label %bb.j
    i8 1, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !198
  %i.g = add i32 %i.f, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.047 = phi ptr [ %i.i, %bb.b ], [ %i.l, %.critedge ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.047, i64 28
  %i.k = load i8, ptr %i.j, align 4, !tbaa !193   ; 3 uses
  switch i8 %i.k, label %bb.d [
    i8 58, label %.critedge
    i8 -119, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c, %bb.c
  %i.l = getelementptr inbounds i8, ptr %.047, i64 -32
  br label %bb.c, !llvm.loop !459

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.047, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %.047, i64 31 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !207
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.047, i64 16 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !87
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  switch i8 %i.k, label %bb.i [
    i8 52, label %zval_ptr_dtor_nogc.exit
    i8 14, label %zval_ptr_dtor_nogc.exit
    i8 40, label %bb.g
    i8 41, label %bb.g
    i8 -122, label %bb.g
    i8 -121, label %bb.g
    i8 36, label %bb.g
    i8 37, label %bb.g
    i8 22, label %bb.h
    i8 23, label %bb.h
    i8 24, label %bb.h
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 27, label %bb.h
    i8 28, label %bb.h
    i8 29, label %bb.h
    i8 38, label %bb.h
    i8 39, label %bb.h
    i8 -124, label %bb.h
    i8 -123, label %bb.h
    i8 34, label %bb.h
    i8 35, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.v = add i8 %i.k, -2
  store i8 %i.v, ptr %i.m, align 4, !tbaa !193
  store i8 0, ptr %i.n, align 1, !tbaa !207
  store i32 -1, ptr %i.q, align 8, !tbaa !87
  br label %zval_ptr_dtor_nogc.exit

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 0, ptr %i.n, align 1, !tbaa !207
  store i32 -1, ptr %i.q, align 8, !tbaa !87
  br label %zval_ptr_dtor_nogc.exit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = tail call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext 70, ptr noundef nonnull %0, ptr noundef null) ; 0 uses
  br label %zval_ptr_dtor_nogc.exit

bb.j:                                             ; preds = %bb.a
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !198
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ad
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.j
  %.0 = phi ptr [ %i.ae, %bb.j ], [ %i.ah, %.critedge2 ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !193 ; 3 uses
  switch i8 %i.ag, label %bb.l [
    i8 58, label %.critedge2
    i8 103, label %.critedge2
    i8 -119, label %.critedge2
  ]

.critedge2:                                       ; preds = %bb.k, %bb.k, %bb.k
  %i.ah = getelementptr inbounds i8, ptr %.0, i64 -32
  br label %bb.k, !llvm.loop !460

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 31 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !207
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !87
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq i8 %i.ag, -72
  br i1 %i.ar, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  store i8 0, ptr %i.ai, align 4, !tbaa !193
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = and i8 %i.ag, -4
end_hunk_0
begin_hunk_1_@zend_delayed_compile_dim:bb.a

bb.aa:                                            ; preds = %zend_separate_if_call_and_write.exit
  switch i32 %2, label %bb.ad [
    i32 3, label %bb.ab
    i32 0, label %bb.ab
    i32 5, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.225) #29
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.217) #29
  unreachable

bb.ad:                                            ; preds = %bb.aa
  store i8 0, ptr %5, align 8, !tbaa !203
  br label %bb.ag

bb.ae:                                            ; preds = %zend_separate_if_call_and_write.exit
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.bv = call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i.i47 = icmp ugt ptr %i.bv, %i.bu
  br i1 %.not.i.i47, label %zend_compile_expr.exit48, label %bb.af, !prof !192

bb.af:                                            ; preds = %bb.ae
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit48:                         ; preds = %bb.ae
  %i.bw = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %5, ptr noundef nonnull %i.d), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.bw, ptr noundef nonnull %5, ptr noundef nonnull %i.d), !inline_history !279
  br label %bb.ag

bb.ag:                                            ; preds = %zend_compile_expr.exit48, %bb.ad
  %i.bx = call fastcc ptr @zend_delayed_emit_op(ptr noundef %0, i8 noundef zeroext 81, ptr noundef %4, ptr noundef nonnull %5) ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 28 ; 6 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !193 ; 6 uses
  %i.ca = icmp eq i8 %i.bz, -83
  %i.cb = select i1 %i.ca, i8 1, i8 3             ; 5 uses
  switch i32 %2, label %default.unreachable60 [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
    i32 4, label %bb.al
    i32 5, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 31
  store i8 2, ptr %i.cc, align 1, !tbaa !207
  store i8 2, ptr %0, align 8, !tbaa !203
  br label %zend_adjust_for_fetch_type.exit52

bb.ai:                                            ; preds = %bb.ag
  %i.cd = add i8 %i.cb, %i.bz
  store i8 %i.cd, ptr %i.by, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit52

bb.aj:                                            ; preds = %bb.ag
  %i.ce = shl nuw nsw i8 %i.cb, 1
  %i.cf = add i8 %i.ce, %i.bz
  store i8 %i.cf, ptr %i.by, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit52

bb.ak:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 31
  store i8 2, ptr %i.cg, align 1, !tbaa !207
  store i8 2, ptr %0, align 8, !tbaa !203
  %narrow15.i50 = mul nuw nsw i8 %i.cb, 3
  %i.ch = add i8 %narrow15.i50, %i.bz
  store i8 %i.ch, ptr %i.by, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit52

bb.al:                                            ; preds = %bb.ag
  %i.ci = shl nuw nsw i8 %i.cb, 2
  %i.cj = add i8 %i.ci, %i.bz
  store i8 %i.cj, ptr %i.by, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit52

bb.am:                                            ; preds = %bb.ag
  %narrow.i49 = mul nuw nsw i8 %i.cb, 5
  %i.ck = add i8 %narrow.i49, %i.bz
  store i8 %i.ck, ptr %i.by, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit52

zend_adjust_for_fetch_type.exit52:                ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  br i1 %3, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %zend_adjust_for_fetch_type.exit52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 1, ptr %i.cl, align 4, !tbaa !204
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %zend_adjust_for_fetch_type.exit52
  %i.cm = load i8, ptr %5, align 8, !tbaa !203
  %i.cn = icmp eq i8 %i.cm, 1
  br i1 %i.cn, label %bb.ap, label %zend_adjust_for_fetch_type.exit

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @zend_handle_numeric_dim(ptr noundef nonnull %i.bx, ptr noundef %5)
  br label %zend_adjust_for_fetch_type.exit

zend_adjust_for_fetch_type.exit:                  ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.ao, %bb.ap
  %.0 = phi ptr [ %i.bx, %bb.ao ], [ %i.bx, %bb.ap ], [ %i.aj, %bb.k ], [ %i.aj, %bb.l ], [ %i.aj, %bb.m ], [ %i.aj, %bb.n ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_delayed_compile_end(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_stack_base(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30
  %i.b = tail call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30 ; 3 uses
  %i.c = icmp uge i32 %i.b, %0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i32 %0, %i.b
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = zext i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.h = load i8, ptr %i.g, align 4, !tbaa !193
  %.not = icmp eq i8 %i.h, 0
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.b, !prof !152

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198  ; 3 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !198
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199 ; 2 uses
  %.not.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i, label %._crit_edge.i, label %bb.c, !prof !192

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !200
  br label %get_next_op.exit

bb.c:                                             ; preds = %bb.b
  %i.n = shl i32 %i.m, 2                          ; 2 uses
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200
  %i.q = zext i32 %i.n to i64
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = tail call ptr @_erealloc(ptr noundef %i.p, i64 noundef %i.r) #34 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !200
  br label %get_next_op.exit

get_next_op.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.s, %bb.c ]
  %i.u = zext i32 %i.k to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.u ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store <4 x i8> zeroinitializer, ptr %i.w, align 4, !tbaa !87
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.x, align 8, !tbaa !87
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.y, ptr %i.z, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !204
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.e

bb.e:                                             ; preds = %get_next_op.exit, %bb.d
  %.1 = phi ptr [ %i.v, %get_next_op.exit ], [ %i.af, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !462

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.014.lcssa = phi ptr [ null, %bb.a ], [ %.1, %bb.e ]
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 468), align 4, !tbaa !463
  ret ptr %.014.lcssa
}

declare i32 @zend_stack_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_delayed_compile_var(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 6) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.b = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i = icmp ugt ptr %i.b, %i.a
  br i1 %.not.i, label %zend_check_stack_limit.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  call fastcc void @zend_stack_limit_error()
  unreachable

zend_check_stack_limit.exit:                      ; preds = %bb.a
  %i.c = load i16, ptr %1, align 8, !tbaa !223
  switch i16 %i.c, label %zend_compile_var.exit [
    i16 256, label %bb.c
    i16 512, label %bb.d
    i16 513, label %bb.e
    i16 514, label %bb.e
    i16 515, label %bb.g
  ]

bb.c:                                             ; preds = %zend_check_stack_limit.exit
  %i.d = call fastcc ptr @zend_compile_simple_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext true)
  br label %bb.h

bb.d:                                             ; preds = %zend_check_stack_limit.exit
  %i.e = call fastcc ptr @zend_delayed_compile_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext %3)
  br label %bb.h

bb.e:                                             ; preds = %zend_check_stack_limit.exit, %zend_check_stack_limit.exit
  %i.f = call fastcc ptr @zend_delayed_compile_prop(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) ; 3 uses
  br i1 %3, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !204
  %i.i = or i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !204
  br label %bb.h

bb.g:                                             ; preds = %zend_check_stack_limit.exit
  %i.j = call fastcc ptr @zend_compile_static_prop(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext true)
  br label %bb.h

zend_compile_var.exit:                            ; preds = %zend_check_stack_limit.exit
  %i.k = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !18
  %i.l = call fastcc ptr @zend_compile_var_inner(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 6) %2, i1 noundef zeroext false), !inline_history !18
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.k, ptr noundef %0, ptr noundef nonnull %1), !inline_history !18
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %zend_compile_var.exit, %bb.g, %bb.d, %bb.c
  %.0 = phi ptr [ %i.l, %zend_compile_var.exit ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.j, %bb.g ], [ %i.f, %bb.f ], [ %i.f, %bb.e ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @zend_handle_numeric_dim(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #21 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i8 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !46
  %i.j = load i8, ptr %i.g, align 8, !tbaa !87    ; 3 uses
  %i.k = icmp sgt i8 %i.j, 57
  br i1 %i.k, label %_zend_handle_numeric_str.exit.thread, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i8 %i.j, 48
  br i1 %i.l, label %bb.d, label %_zend_handle_numeric_str.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i8 %i.j, 45
  br i1 %.not.i, label %bb.e, label %_zend_handle_numeric_str.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %i.n = load i8, ptr %i.m, align 1, !tbaa !87
  %i.o = add i8 %i.n, -58
  %or.cond.i = icmp ult i8 %i.o, -10
  br i1 %or.cond.i, label %_zend_handle_numeric_str.exit.thread, label %_zend_handle_numeric_str.exit

_zend_handle_numeric_str.exit:                    ; preds = %bb.c, %bb.e
  %i.p = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.g, i64 noundef %i.i, ptr noundef nonnull %i.a) #30
  br i1 %i.p, label %bb.f, label %_zend_handle_numeric_str.exit.thread

bb.f:                                             ; preds = %_zend_handle_numeric_str.exit
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !208  ; 4 uses
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !208
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 200), align 8, !tbaa !209 ; 3 uses
  %.not.i9 = icmp slt i32 %i.s, %i.u
  br i1 %.not.i9, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr i8, ptr %i.q, i64 192
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !210
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = add i32 %i.u, 16                         ; 2 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.v, i32 %i.t)
  %i.w = xor i32 %i.u, -1
  %i.x = add i32 %smax.i, %i.w
  %i.y = and i32 %i.x, -16
  %i.z = add i32 %i.v, %i.y                       ; 2 uses
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 200), align 8, !tbaa !209
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 192 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !210
  %i.ac = sext i32 %i.z to i64
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = call ptr @_erealloc(ptr noundef %i.ab, i64 noundef %i.ad) #34 ; 2 uses
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !210
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.val.i = phi ptr [ %.val.pre.i, %._crit_edge.i ], [ %i.ae, %bb.g ]
  %i.af = load i8, ptr %i.c, align 8, !tbaa !87
  %i.ag = icmp eq i8 %i.af, 6
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !87 ; 2 uses
  br i1 %i.ag, label %bb.i, label %zend_add_literal.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr @zend_new_interned_string, align 8, !tbaa !88
  %i.ai = call ptr %i.ah(ptr noundef %.pre.i.i) #30, !inline_history !3 ; 4 uses
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !87
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.al = and i32 %i.ak, 64
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %zend_add_literal.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.am, align 1, !tbaa !87
  br label %zend_add_literal.exit

zend_add_literal.exit:                            ; preds = %bb.h, %bb.i, %bb.j
  %i.an = phi ptr [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %.pre.i.i, %bb.h ]
  %i.ao = sext i32 %i.s to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %.val.i, i64 %i.ao ; 3 uses
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !87
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !87
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87 ; 2 uses
  %i.av = add i32 %i.au, 1
  %i.aw = icmp eq i32 %i.av, %i.s
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210
  %i.ba = zext i32 %i.au to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !86
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 4, ptr %i.bd, align 8, !tbaa !87
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !210
  %i.bh = load i32, ptr %i.at, align 4, !tbaa !87
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 1, ptr %i.bk, align 4, !tbaa !87
  br label %_zend_handle_numeric_str.exit.thread

_zend_handle_numeric_str.exit.thread:             ; preds = %bb.e, %bb.d, %bb.b, %_zend_handle_numeric_str.exit, %zend_add_literal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.k

bb.k:                                             ; preds = %_zend_handle_numeric_str.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_compile_simple_var(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 6) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !223
  %i.b = icmp eq i16 %i.a, 256
  br i1 %i.b, label %bb.b, label %is_globals_fetch.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !223
  %i.f = icmp eq i16 %i.e, 64
end_hunk_1
begin_hunk_2_@zend_delayed_compile_prop:bb.a
  %i.ak = load ptr, ptr %.0716.i, align 8, !tbaa !290 ; 2 uses
  %.not.i58 = icmp eq ptr %i.ak, null
  br i1 %.not.i58, label %bb.i, label %is_this_fetch.exit.thread63, !llvm.loop !23

this_guaranteed_exists.exit:                      ; preds = %bb.f
  store i8 0, ptr %3, align 8, !tbaa !203
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g, %is_this_fetch.exit.thread63
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !198 ; 3 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !198
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199 ; 2 uses
  %.not.i.i = icmp ult i32 %i.an, %i.ap
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.j, !prof !192

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200
  br label %zend_emit_op.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = shl i32 %i.ap, 2                        ; 2 uses
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !200
  %i.at = zext i32 %i.aq to i64
  %i.au = shl nuw nsw i64 %i.at, 5
  %i.av = tail call ptr @_erealloc(ptr noundef %i.as, i64 noundef %i.au) #34 ; 2 uses
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !200
  br label %zend_emit_op.exit

zend_emit_op.exit:                                ; preds = %._crit_edge.i.i, %bb.j
  %i.aw = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.av, %bb.j ]
  %i.ax = zext i32 %i.an to i64
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.ba, align 8, !tbaa !87
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !201
  store <4 x i8> <i8 -72, i8 0, i8 0, i8 4>, ptr %i.az, align 4, !tbaa !87
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !211 ; 2 uses
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !211
  store i32 %i.bg, ptr %i.bb, align 8, !tbaa !87
  store i8 4, ptr %3, align 8, !tbaa !203
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !87
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %zend_emit_op.exit, %this_guaranteed_exists.exit
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194
  %i.bn = or i32 %i.bm, 131072
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !194
  br label %bb.af

is_this_fetch.exit.thread:                        ; preds = %is_this_fetch.exit.is_this_fetch.exit.threadthread-pre-split_crit_edge, %bb.a
  %i.bo = phi i16 [ %i.h, %bb.a ], [ %.pr.pre, %is_this_fetch.exit.is_this_fetch.exit.threadthread-pre-split_crit_edge ]
  switch i16 %i.bo, label %zend_short_circuiting_mark_inner.exit [
    i16 512, label %bb.l
    i16 513, label %bb.l
    i16 514, label %bb.l
    i16 515, label %bb.l
    i16 768, label %bb.l
    i16 769, label %bb.l
    i16 770, label %bb.l
  ]

bb.l:                                             ; preds = %is_this_fetch.exit.thread, %is_this_fetch.exit.thread, %is_this_fetch.exit.thread, %is_this_fetch.exit.thread, %is_this_fetch.exit.thread, %is_this_fetch.exit.thread, %is_this_fetch.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !228
  %i.br = or i16 %i.bq, -32768
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !228
  br label %zend_short_circuiting_mark_inner.exit

zend_short_circuiting_mark_inner.exit:            ; preds = %bb.e, %bb.b, %bb.c, %is_this_fetch.exit.thread, %bb.l
  %i.bs = call fastcc ptr @zend_delayed_compile_var(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i32 noundef %2, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %zend_short_circuiting_mark_inner.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !193
  switch i8 %i.bu, label %bb.o [
    i8 84, label %bb.n
    i8 87, label %bb.n
    i8 93, label %bb.n
    i8 96, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  store i32 3, ptr %i.bv, align 4, !tbaa !204
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %zend_short_circuiting_mark_inner.exit
  %i.bw = icmp ne i32 %2, 3                       ; 2 uses
  %i.bx = and i32 %2, 3
  %i.by = icmp ne i32 %i.bx, 0
  %or.cond3.i = and i1 %i.bw, %i.by
  br i1 %or.cond3.i, label %bb.p, label %zend_separate_if_call_and_write.exit

bb.p:                                             ; preds = %bb.o
  %.val.i = load i16, ptr %i.c, align 8, !tbaa !223
  switch i16 %.val.i, label %zend_separate_if_call_and_write.exit [
    i16 516, label %bb.q
    i16 768, label %bb.q
    i16 769, label %bb.q
    i16 770, label %bb.q
    i16 551, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.bz = load i8, ptr %3, align 8, !tbaa !203
  %i.ca = icmp eq i8 %i.bz, 4
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext -100, ptr noundef nonnull %3, ptr noundef null) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 31
  store i8 4, ptr %i.cc, align 1, !tbaa !207
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !87
  br label %zend_separate_if_call_and_write.exit

bb.s:                                             ; preds = %bb.q
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.276) #29
  unreachable

zend_separate_if_call_and_write.exit:             ; preds = %bb.o, %bb.p, %bb.r
  br i1 %i.g, label %bb.t, label %bb.af

bb.t:                                             ; preds = %zend_separate_if_call_and_write.exit
  %i.cg = load i8, ptr %3, align 8, !tbaa !203
  %i.ch = icmp eq i8 %i.cg, 2
  br i1 %i.ch, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ci = call ptr @zend_stack_base(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !87
  %i.cl = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30 ; 4 uses
  %.not5566 = icmp eq i32 %i.cl, 0
  br i1 %.not5566, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.cm = zext i32 %i.cl to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %indvars.iv = phi i64 [ %i.cm, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %.05267 = phi i32 [ %i.ck, %.lr.ph.preheader ], [ %i.cz, %bb.x ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.cn = and i64 %indvars.iv.next, 4294967295
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 31
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !207
  %i.cr = icmp eq i8 %i.cq, 2
  br i1 %i.cr, label %bb.v, label %.critedge.loopexit.split.loop.exit

bb.v:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !87
  %i.cu = icmp eq i32 %i.ct, %.05267
  br i1 %i.cu, label %bb.w, label %.critedge.loopexit.split.loop.exit100

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 29
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !205
  %i.cx = icmp eq i8 %i.cw, 2
  br i1 %i.cx, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !87
  %.not55 = icmp eq i32 %indvars, 0
  br i1 %.not55, label %.critedge, label %.lr.ph, !llvm.loop !464

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.da = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit100:            ; preds = %bb.v
  %i.db = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.w, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit100, %bb.u
  %.1 = phi i32 [ 0, %bb.u ], [ %i.da, %.critedge.loopexit.split.loop.exit ], [ %i.db, %.critedge.loopexit.split.loop.exit100 ], [ %indvars, %bb.w ], [ 0, %bb.x ] ; 2 uses
  %i.dc = icmp ult i32 %.1, %i.cl
  br i1 %i.dc, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.critedge
  %i.dd = zext i32 %.1 to i64
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.aa
  %indvars.iv78 = phi i64 [ %i.dd, %.lr.ph76.preheader ], [ %indvars.iv.next79, %bb.aa ] ; 2 uses
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv78 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !193
  %.not56 = icmp eq i8 %i.dg, 0
  br i1 %.not56, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph76
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !198 ; 3 uses
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !198
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199 ; 2 uses
  %.not.i59 = icmp ult i32 %i.dj, %i.dl
  br i1 %.not.i59, label %._crit_edge.i, label %bb.z, !prof !192

._crit_edge.i:                                    ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 104
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !200
  br label %get_next_op.exit

bb.z:                                             ; preds = %bb.y
  %i.dm = shl i32 %i.dl, 2                        ; 2 uses
  store i32 %i.dm, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !199
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 104 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !200
  %i.dp = zext i32 %i.dm to i64
  %i.dq = shl nuw nsw i64 %i.dp, 5
  %i.dr = call ptr @_erealloc(ptr noundef %i.do, i64 noundef %i.dq) #34 ; 2 uses
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !200
  br label %get_next_op.exit

get_next_op.exit:                                 ; preds = %._crit_edge.i, %bb.z
  %i.ds = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dr, %bb.z ]
  %i.dt = zext i32 %i.dj to i64
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %i.dt ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store <4 x i8> zeroinitializer, ptr %i.dv, align 4, !tbaa !87
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.dw, align 8, !tbaa !87
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false)
  store i8 0, ptr %i.df, align 4, !tbaa !193
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 104
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !200
  %i.ec = ptrtoint ptr %i.du to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 5
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !204
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph76, %get_next_op.exit
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next79 to i32
  %exitcond.not = icmp eq i32 %i.cl, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph76, !llvm.loop !465

.loopexit:                                        ; preds = %bb.aa, %.critedge, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !198
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !52
  %i.el = call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext -58, ptr noundef nonnull %3, ptr noundef null) ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 29
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205
  %i.eo = icmp eq i8 %i.en, 1
  br i1 %i.eo, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.loopexit
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 192
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !210
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.et = load i32, ptr %i.es, align 8, !tbaa !87
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !87
  %.not.i60 = icmp eq i8 %i.ex, 0
  br i1 %.not.i60, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = load ptr, ptr %i.ev, align 8, !tbaa !87 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !92
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !92
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %.loopexit
  br i1 %i.bw, label %zend_emit_jmp_null.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 20 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !204
  %i.fd = or i32 %i.fc, 4
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !204
  br label %zend_emit_jmp_null.exit

zend_emit_jmp_null.exit:                          ; preds = %bb.ad, %bb.ae
  %i.fe = call i32 @zend_stack_push(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592), ptr noundef nonnull %i.a) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.af

bb.af:                                            ; preds = %zend_separate_if_call_and_write.exit, %zend_emit_jmp_null.exit, %bb.k
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.fg = call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i.i61 = icmp ugt ptr %i.fg, %i.ff
  br i1 %.not.i.i61, label %zend_compile_expr.exit, label %bb.ag, !prof !192

bb.ag:                                            ; preds = %bb.af
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit:                           ; preds = %bb.af
  %i.fh = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %4, ptr noundef %i.e), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.fh, ptr noundef nonnull %4, ptr noundef %i.e), !inline_history !279
  %i.fi = call fastcc ptr @zend_delayed_emit_op(ptr noundef %0, i8 noundef zeroext 82, ptr noundef %3, ptr noundef nonnull %4) ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 30
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !206
  %i.fl = icmp eq i8 %i.fk, 1
  br i1 %i.fl, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %zend_compile_expr.exit
  %i.fm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 192
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !210 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 12 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !87
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !87
  %.not57 = icmp eq i8 %i.fu, 6
  br i1 %.not57, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_convert_to_string(ptr noundef nonnull %i.fs) #30
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre84 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !210
  %.pre85 = load i32, ptr %i.fp, align 4, !tbaa !87
  %.pre87 = zext i32 %.pre85 to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pre-phi = phi i64 [ %.pre87, %bb.ai ], [ %i.fr, %bb.ah ]
  %i.fv = phi ptr [ %.pre84, %bb.ai ], [ %i.fo, %bb.ah ]
  %i.fw = phi ptr [ %.pre, %bb.ai ], [ %i.fm, %bb.ah ]
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.pre-phi
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !87 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !172
  %.not.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i, label %bb.ak, label %zend_string_hash_val.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gb = call i64 @zend_string_hash_func(ptr noundef nonnull %i.fy) #30 ; 0 uses
  %.pre86 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  br label %zend_string_hash_val.exit

zend_string_hash_val.exit:                        ; preds = %bb.aj, %bb.ak
  %i.gc = phi ptr [ %i.fw, %bb.aj ], [ %.pre86, %bb.ak ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 88 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !249 ; 2 uses
  %i.gf = add i32 %i.ge, 24
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !249
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !204
  br label %bb.al

bb.al:                                            ; preds = %zend_string_hash_val.exit, %zend_compile_expr.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fi, i64 28 ; 6 uses
  %i.gi = load i8, ptr %i.gh, align 4, !tbaa !193 ; 6 uses
  %i.gj = icmp eq i8 %i.gi, -83
  %i.gk = select i1 %i.gj, i8 1, i8 3             ; 5 uses
  switch i32 %2, label %default.unreachable115 [
    i32 0, label %bb.am
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
    i32 5, label %bb.ar
  ]

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fi, i64 31
  store i8 2, ptr %i.gl, align 1, !tbaa !207
  store i8 2, ptr %0, align 8, !tbaa !203
  br label %zend_adjust_for_fetch_type.exit

bb.an:                                            ; preds = %bb.al
  %i.gm = add i8 %i.gk, %i.gi
  store i8 %i.gm, ptr %i.gh, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit

bb.ao:                                            ; preds = %bb.al
  %i.gn = shl nuw nsw i8 %i.gk, 1
  %i.go = add i8 %i.gn, %i.gi
  store i8 %i.go, ptr %i.gh, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit

bb.ap:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fi, i64 31
  store i8 2, ptr %i.gp, align 1, !tbaa !207
  store i8 2, ptr %0, align 8, !tbaa !203
  %narrow15.i = mul nuw nsw i8 %i.gk, 3
  %i.gq = add i8 %narrow15.i, %i.gi
  store i8 %i.gq, ptr %i.gh, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit

bb.aq:                                            ; preds = %bb.al
  %i.gr = shl nuw nsw i8 %i.gk, 2
  %i.gs = add i8 %i.gr, %i.gi
  store i8 %i.gs, ptr %i.gh, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit

bb.ar:                                            ; preds = %bb.al
  %narrow.i = mul nuw nsw i8 %i.gk, 5
  %i.gt = add i8 %narrow.i, %i.gi
  store i8 %i.gt, ptr %i.gh, align 4, !tbaa !193
  br label %zend_adjust_for_fetch_type.exit

default.unreachable115:                           ; preds = %bb.al
  unreachable

zend_adjust_for_fetch_type.exit:                  ; preds = %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %i.fi
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @zend_stack_limit_error() unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 592), align 8, !tbaa !466 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227 ; 2 uses
  %i.c = icmp ugt ptr %i.a, %i.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.d
  %.0 = select i1 %i.c, i64 %i.f, i64 0
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.226, i64 noundef %.0) #29
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

declare ptr @zend_stack_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_compile_var_inner(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 6) %2, i1 noundef zeroext %3) unnamed_addr #0 {
zend_ast_get_lineno.exit:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct._znode, align 8             ; 5 uses
  %5 = alloca %struct._znode, align 8             ; 13 uses
  %6 = alloca %struct._znode, align 8             ; 9 uses
  %7 = alloca %struct._znode, align 8             ; 8 uses
  %8 = alloca %struct._znode, align 8             ; 12 uses
  %i.b = load i16, ptr %1, align 8, !tbaa !223    ; 4 uses
  %i.c = and i16 %i.b, -2
  %switch.selectcmp = icmp eq i16 %i.c, 64
  %i.d = select i1 %switch.selectcmp, i64 20, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %.0.i = load i32, ptr %i.e, align 4, !tbaa !87
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 496), align 8, !tbaa !98
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %zend_ast_get_lineno.exit
  switch i16 %i.b, label %bb.cq [
    i16 516, label %bb.b
    i16 768, label %bb.b
    i16 769, label %bb.b
    i16 770, label %bb.b
    i16 256, label %bb.d
    i16 512, label %bb.e
    i16 513, label %bb.f
    i16 514, label %bb.f
    i16 515, label %bb.h
    i16 550, label %bb.aj
    i16 67, label %bb.cp
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @zend_compile_memoized_expr(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.cu

bb.c:                                             ; preds = %zend_ast_get_lineno.exit
  switch i16 %i.b, label %bb.cq [
    i16 256, label %bb.d
    i16 512, label %bb.e
    i16 513, label %bb.f
    i16 514, label %bb.f
    i16 515, label %bb.h
    i16 516, label %bb.i
    i16 550, label %bb.aj
    i16 768, label %bb.ak
    i16 769, label %bb.ak
    i16 770, label %bb.bp
    i16 67, label %bb.cp
  ]

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.g = tail call fastcc ptr @zend_compile_simple_var(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext false)
  br label %bb.cu

bb.e:                                             ; preds = %bb.a, %bb.c
  %i.h = tail call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30
  %i.i = tail call fastcc ptr @zend_delayed_compile_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 6) %2, i1 noundef zeroext %3), !inline_history !16 ; 0 uses
  %i.j = tail call fastcc ptr @zend_delayed_compile_end(i32 noundef %i.h), !inline_history !16
  br label %bb.cu

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.c
  %i.k = tail call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 464)) #30
  %i.l = tail call fastcc ptr @zend_delayed_compile_prop(ptr noundef %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 6) %2), !inline_history !17
  br i1 %3, label %bb.g, label %zend_compile_prop.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !204
  %i.o = or i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !204
  br label %zend_compile_prop.exit

zend_compile_prop.exit:                           ; preds = %bb.f, %bb.g
  %i.p = tail call fastcc ptr @zend_delayed_compile_end(i32 noundef %i.k), !inline_history !17
  br label %bb.cu

bb.h:                                             ; preds = %bb.a, %bb.c
  %i.q = tail call fastcc ptr @zend_compile_static_prop(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  br label %bb.cu

bb.i:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !117  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117  ; 8 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !223
  %i.w = icmp eq i16 %i.v, 3                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.x = load i16, ptr %i.s, align 8, !tbaa !223
  %.not71.i = icmp eq i16 %i.x, 64
  br i1 %.not71.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !87
  %.not72.i = icmp eq i8 %i.aa, 6
  br i1 %.not72.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.ac = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i.i56 = icmp ugt ptr %i.ac, %i.ab
  br i1 %.not.i.i56, label %zend_compile_expr.exit57, label %bb.l, !prof !192

bb.l:                                             ; preds = %bb.k
  call fastcc void @zend_stack_limit_error(), !inline_history !467
  unreachable

zend_compile_expr.exit57:                         ; preds = %bb.k
  %i.ad = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !467
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %8, ptr noundef nonnull %i.s), !inline_history !467
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.ad, ptr noundef nonnull %8, ptr noundef nonnull %i.s), !inline_history !467
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !234
  call fastcc void @zend_compile_dynamic_call(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %i.u, i32 noundef %i.af), !inline_history !468
  br label %zend_compile_call.exit

bb.m:                                             ; preds = %bb.j
  %i.ag = call fastcc zeroext i1 @zend_compile_function_name(ptr noundef %8, ptr noundef nonnull %i.s), !inline_history !468
  br i1 %i.ag, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !87  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !46
  %i.ak = icmp eq i64 %i.aj, 6
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.am = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.al, i64 noundef 6, ptr noundef nonnull @.str.121, i64 noundef 6) #30, !inline_history !468
  %i.an = icmp ne i32 %i.am, 0
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.w
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !234
  tail call fastcc void @zend_compile_assert(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef %i.ap, ptr noundef null, i32 noundef %i.ar), !inline_history !468
  br label %zend_compile_call.exit

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !234
  call fastcc void @zend_compile_ns_call(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %i.u, i32 noundef %i.at, i32 noundef range(i32 0, 6) %2), !inline_history !468
  br label %zend_compile_call.exit

.critedge.i:                                      ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !87
  %i.aw = tail call ptr @zend_string_tolower_ex(ptr noundef %i.av, i1 noundef zeroext false) #30, !inline_history !468 ; 20 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !275
  %i.ay = tail call ptr @zend_hash_find(ptr noundef %i.ax, ptr noundef %i.aw) #30, !inline_history !468 ; 3 uses
  %.not73.i = icmp eq ptr %i.ay, null
  br i1 %.not73.i, label %.critedge77.i, label %bb.r

bb.r:                                             ; preds = %.critedge.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !87 ; 8 uses
  %.not74.i = icmp eq ptr %i.az, null
  br i1 %.not74.i, label %.critedge77.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !46
  %i.bc = icmp eq i64 %i.bb, 6
  br i1 %i.bc, label %zend_string_equals_cstr.exit.i, label %zend_string_equals_cstr.exit.i.thread

zend_string_equals_cstr.exit.i:                   ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = xor i32 %i.be, 1702064993
  %i.bg = getelementptr i8, ptr %i.bd, i64 4
  %i.bh = load i16, ptr %i.bg, align 1
  %i.bi = zext i16 %i.bh to i32
  %i.bj = xor i32 %i.bi, 29810
  %i.bk = or i32 %i.bf, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0                    ; 2 uses
  %i.bm = zext i1 %i.bl to i32                    ; 0 uses
  %or.cond4.i = select i1 %i.bl, i1 true, i1 %i.w
  br i1 %or.cond4.i, label %zend_string_equals_cstr.exit.i.thread, label %bb.t

bb.t:                                             ; preds = %zend_string_equals_cstr.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !234
  tail call fastcc void @zend_compile_assert(ptr noundef %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.az, i32 noundef %i.bo), !inline_history !468
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !87 ; 2 uses
  %i.br = and i32 %i.bq, 64
  %.not.i78.i = icmp eq i32 %i.br, 0
  br i1 %.not.i78.i, label %bb.u, label %zend_string_release.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !92 ; 2 uses
  %i.bt = icmp ne i32 %i.bs, 0
  tail call void @llvm.assume(i1 %i.bt)
end_hunk_2
begin_hunk_3_@zend_compile_rope_add:bb.a
  ret ptr %i.n
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @zend_compile_rope_finalize(ptr nofree noundef writeonly captures(none) initializes((0, 1), (8, 12)) %0, i32 noundef %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) initializes((8, 12), (16, 20), (28, 29), (31, 32)) %3) unnamed_addr #24 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 30 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !206   ; 2 uses
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %0, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !210
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !87
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !87
  store ptr %i.l, ptr %i.d, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.n, ptr %i.o, align 8, !tbaa !87
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !210
  %i.s = load i32, ptr %i.h, align 4, !tbaa !87
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.x, align 8, !tbaa !87
  store i32 -1, ptr %i.h, align 4, !tbaa !87
  store <4 x i8> zeroinitializer, ptr %i.w, align 4, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.y, align 8, !tbaa !87
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 51, ptr %i.z, align 4, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 6, ptr %i.aa, align 4, !tbaa !204
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.b, ptr %i.ab, align 1, !tbaa !205
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !87
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !87
  store i8 0, ptr %i.a, align 2, !tbaa !206
  store i32 -1, ptr %i.ad, align 4, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 2, ptr %i.af, align 1, !tbaa !207
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !211 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !87
  store i8 2, ptr %0, align 8, !tbaa !203
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !87
  store i32 %i.am, ptr %i.al, align 8, !tbaa !87
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 53, ptr %i.an, align 4, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.ao, align 4, !tbaa !204
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !206
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !205
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !87
  store i32 %i.au, ptr %i.as, align 8, !tbaa !87
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 2, ptr %i.av, align 1, !tbaa !207
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !211 ; 2 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !211
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 %i.ay, ptr %i.ba, align 8, !tbaa !87
  store i8 2, ptr %0, align 8, !tbaa !203
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !87
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !87
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -1, ptr %i.be, align 8, !tbaa !87
  store i32 -1, ptr %i.at, align 4, !tbaa !87
  store <4 x i8> zeroinitializer, ptr %i.bd, align 4, !tbaa !87
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.bf, align 8, !tbaa !87
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %1, ptr %i.bg, align 4, !tbaa !204
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i8 56, ptr %i.bh, align 4, !tbaa !193
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 2, ptr %i.bi, align 1, !tbaa !207
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !211 ; 2 uses
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !211
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 %i.bl, ptr %i.bn, align 8, !tbaa !87
  store i8 2, ptr %0, align 8, !tbaa !203
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !87
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !87
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !211 ; 5 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !211
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bs, ptr %i.bu, align 8, !tbaa !87
  %i.bv = icmp ugt i32 %1, 2
  br i1 %i.bv, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.f
  %i.bw = zext i32 %1 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 8
  %i.bz = lshr i64 %i.by, 4
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 2 uses
  %.promoted = load i32, ptr %i.cc, align 8, !tbaa !211
  %i.cd = add i32 %.promoted, %i.ca
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !211
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.f
  %.not75 = icmp eq ptr %3, %2
  br i1 %.not75, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader, %.thread
  %.07276 = phi ptr [ %i.cf, %.thread ], [ %3, %.preheader ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %.07276, i64 -32 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.07276, i64 -4
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !193
  switch i8 %i.ch, label %.thread [
    i8 55, label %bb.g
    i8 54, label %bb.i
  ]

bb.g:                                             ; preds = %.lr.ph77
  %i.ci = getelementptr inbounds i8, ptr %.07276, i64 -16 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !87
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds i8, ptr %.07276, i64 -24
  store i32 %i.bs, ptr %i.cl, align 8, !tbaa !87
  store i32 %i.bs, ptr %i.ci, align 8, !tbaa !87
  br label %.thread

bb.i:                                             ; preds = %.lr.ph77
  %i.cm = getelementptr inbounds i8, ptr %.07276, i64 -16 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !87
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  store i32 %i.bs, ptr %i.cm, align 8, !tbaa !87
  br label %.thread

.thread:                                          ; preds = %.lr.ph77, %bb.g, %bb.i, %bb.j, %bb.h
  %.not = icmp eq ptr %i.cf, %2
  br i1 %.not, label %.loopexit, label %.lr.ph77, !llvm.loop !503

.loopexit:                                        ; preds = %.thread, %.preheader, %bb.e, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_class_ref(ptr nofree noundef nonnull writeonly captures(address_is_null) %0, ptr noundef captures(none) %1, i32 noundef range(i32 512, 897) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._znode, align 8             ; 8 uses
  %i.a = load i16, ptr %1, align 8, !tbaa !223
  %.not = icmp eq i16 %i.a, 64
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i.i = icmp ugt ptr %i.c, %i.b
  br i1 %.not.i.i, label %zend_compile_expr.exit, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  call fastcc void @zend_stack_limit_error(), !inline_history !279
  unreachable

zend_compile_expr.exit:                           ; preds = %bb.b
  %i.d = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30, !inline_history !279
  call fastcc void @zend_compile_expr_inner(ptr noundef nonnull %3, ptr noundef nonnull %1), !inline_history !279
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.d, ptr noundef nonnull %3, ptr noundef nonnull %1), !inline_history !279
  %i.e = load i8, ptr %3, align 8, !tbaa !203
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.u

bb.d:                                             ; preds = %zend_compile_expr.exit
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !87
  %.not44 = icmp eq i8 %i.h, 6
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.76) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46   ; 4 uses
  %i.m = load ptr, ptr @zend_known_strings, align 8, !tbaa !170 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  %i.r = icmp eq i64 %i.l, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.s, i64 noundef %i.l, ptr noundef nonnull %i.t, i64 noundef %i.l) #30
  %.not.i46 = icmp eq i32 %i.u, 0
  br i1 %.not.i46, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !46
  %.pre17.i = load ptr, ptr @zend_known_strings, align 8, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.f
  %i.v = phi ptr [ %.pre17.i, %._crit_edge.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.w = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.l, %bb.f ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 520
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ac, i64 noundef %i.w, ptr noundef nonnull %i.ad, i64 noundef %i.w) #30
  %.not15.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i, label %bb.l, label %._crit_edge18.i

._crit_edge18.i:                                  ; preds = %bb.i
  %.pre19.i = load i64, ptr %i.k, align 8, !tbaa !46
  %.pre20.i = load ptr, ptr @zend_known_strings, align 8, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge18.i, %bb.h
  %i.af = phi ptr [ %.pre20.i, %._crit_edge18.i ], [ %i.v, %bb.h ]
  %i.ag = phi i64 [ %.pre19.i, %._crit_edge18.i ], [ %i.w, %bb.h ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.al = icmp eq i64 %i.ag, %i.ak
  br i1 %i.al, label %bb.k, label %zend_get_class_fetch_type.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.am, i64 noundef %i.ag, ptr noundef nonnull %i.an, i64 noundef %i.ag) #30
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %bb.l, label %zend_get_class_fetch_type.exit

zend_get_class_fetch_type.exit:                   ; preds = %bb.k, %bb.j
  store i8 1, ptr %0, align 8, !tbaa !203
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = call fastcc ptr @zend_resolve_class_name(ptr noundef nonnull %i.j, i32 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !87
  %i.at = and i32 %i.as, 64
  %.not45 = icmp eq i32 %i.at, 0
  %i.au = select i1 %.not45, i32 262, i32 6
  br label %bb.r

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.i
  %i.av = phi i1 [ false, %bb.k ], [ false, %bb.g ], [ true, %bb.i ] ; 2 uses
  %i.aw = phi i1 [ false, %bb.k ], [ true, %bb.g ], [ false, %bb.i ]
  %.0.i.ph = phi i32 [ 3, %bb.k ], [ 1, %bb.g ], [ 2, %bb.i ]
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !104 ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i48, label %zend_ensure_valid_class_fetch_type.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !194
  %i.ba = and i32 %i.az, 4194304
  %.not3.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not3.i.i, label %bb.n, label %zend_ensure_valid_class_fetch_type.exit

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 24), align 8, !tbaa !93 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.bb, null
  br i1 %.not4.i.i, label %.split.i, label %zend_is_scope_known.exit.i

.split.i:                                         ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !259
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %zend_ensure_valid_class_fetch_type.exit, label %bb.o

zend_is_scope_known.exit.i:                       ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 28
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !163
  %i.bg = and i32 %i.bf, 2
  %i.bh = icmp eq i32 %i.bg, 0
  %or.cond.i = and i1 %i.av, %i.bh
  br i1 %or.cond.i, label %bb.p, label %zend_ensure_valid_class_fetch_type.exit

bb.o:                                             ; preds = %.split.i
  %i.bi = select i1 %i.av, ptr @.str.37, ptr @.str.39
  %i.bj = select i1 %i.aw, ptr @.str.38, ptr %i.bi
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.171, ptr noundef nonnull %i.bj) #29
  unreachable

bb.p:                                             ; preds = %zend_is_scope_known.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !87
  %.not7.i = icmp eq ptr %i.bl, null
  br i1 %.not7.i, label %bb.q, label %zend_ensure_valid_class_fetch_type.exit

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.172) #29
  unreachable

zend_ensure_valid_class_fetch_type.exit:          ; preds = %bb.l, %bb.m, %.split.i, %zend_is_scope_known.exit.i, %bb.p
  store i8 0, ptr %0, align 8, !tbaa !203
  %i.bm = or i32 %.0.i.ph, %2
  br label %bb.r

bb.r:                                             ; preds = %zend_ensure_valid_class_fetch_type.exit, %zend_get_class_fetch_type.exit
  %.sink90 = phi i64 [ 8, %zend_ensure_valid_class_fetch_type.exit ], [ 16, %zend_get_class_fetch_type.exit ]
  %.sink = phi i32 [ %i.bm, %zend_ensure_valid_class_fetch_type.exit ], [ %i.au, %zend_get_class_fetch_type.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink90
  store i32 %.sink, ptr %i.bn, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !87
  %i.bq = and i32 %i.bp, 64
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.s, label %zend_string_release_ex.exit

bb.s:                                             ; preds = %bb.r
  %i.br = load i32, ptr %i.j, align 8, !tbaa !92  ; 2 uses
  %i.bs = icmp ne i32 %i.br, 0
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.j, align 8, !tbaa !92
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.t, label %zend_string_release_ex.exit

bb.t:                                             ; preds = %bb.s
  call void @_efree(ptr noundef nonnull %i.j) #30
  br label %zend_string_release_ex.exit

bb.u:                                             ; preds = %zend_compile_expr.exit
  %i.bv = call fastcc ptr @zend_emit_op(ptr noundef nonnull %0, i8 noundef zeroext 109, ptr noundef null, ptr noundef nonnull %3)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %2, ptr %i.bw, align 8, !tbaa !87
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.t, %bb.s, %bb.r, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.al

end_hunk_3
begin_hunk_4_@zend_compile_class_const_decl:bb.a
  %i.bb = and i32 %i.ba, 64
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.h, label %zend_string_copy.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !92
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !92
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.h, %bb.g, %zval_make_interned_string.exit
  %i.be = phi ptr [ null, %zval_make_interned_string.exit ], [ %i.ay, %bb.g ], [ %i.ay, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %zend_string_copy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.bf = call fastcc { ptr, i32 } @zend_compile_typename_ex(ptr noundef nonnull %3, i1 noundef zeroext false, ptr noundef %i.a), !inline_history !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0      ; 3 uses
  %i.bh = extractvalue { ptr, i32 } %i.bf, 1      ; 4 uses
  store ptr %i.bg, ptr %7, align 8, !tbaa !88
  store i32 %i.bh, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !52
  %i.bi = and i32 %i.bh, 151552
  %or.cond = icmp eq i32 %i.bi, 0
  br i1 %or.cond, label %bb.j, label %.split.us

.split.us:                                        ; preds = %bb.i, %bb.e
  %.us-phi = phi ptr [ %i.s, %bb.e ], [ %i.as, %bb.i ]
  %.us-phi59 = phi ptr [ %i.af, %bb.e ], [ %i.bg, %bb.i ]
  %.us-phi60 = phi i32 [ %i.ag, %bb.e ], [ %i.bh, %bb.i ]
  %i.bj = call ptr @zend_type_to_string(ptr %.us-phi59, i32 %.us-phi60)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !171
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.327, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo) #29
  unreachable

bb.j:                                             ; preds = %bb.i, %zend_string_copy.exit
  %i.bp = phi ptr [ %i.bg, %bb.i ], [ null, %zend_string_copy.exit ]
  %i.bq = phi i32 [ %i.bh, %bb.i ], [ 0, %zend_string_copy.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store i8 0, ptr %4, align 1, !tbaa !226
  call fastcc void @zend_eval_const_expr(ptr noundef nonnull %i.am), !inline_history !276
  call void @zend_compile_const_expr(ptr noundef nonnull %i.am, ptr noundef nonnull %4), !inline_history !276
  %i.br = load ptr, ptr %i.am, align 8, !tbaa !117 ; 3 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !223
  %.not.i50 = icmp eq i16 %i.bs, 64
  br i1 %.not.i50, label %bb.l, label %bb.k

.split62.us:                                      ; preds = %bb.e, %zend_string_copy.exit.us
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !171
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.328, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw) #29
  unreachable

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bx = call ptr @zend_ast_copy(ptr noundef nonnull %i.br) #30, !inline_history !276
  store ptr %i.bx, ptr %5, align 8, !tbaa !87
  store i32 267, ptr %i.h, align 8, !tbaa !87
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !117
  call void @zend_ast_destroy(ptr noundef %i.by) #30, !inline_history !276
  %i.bz = call ptr @zend_ast_create_zval(ptr noundef nonnull %5) #30, !inline_history !276 ; 2 uses
  store ptr %i.bz, ptr %i.am, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ca = phi ptr [ %i.bz, %bb.k ], [ %i.br, %bb.j ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !87 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !87 ; 3 uses
  store ptr %i.cc, ptr %6, align 8, !tbaa !87
  store i32 %i.ce, ptr %i.i, align 8, !tbaa !87
  %i.cf = and i32 %i.ce, 65280
  %.not18.i = icmp eq i32 %i.cf, 0
  %i.cg = trunc i32 %i.ce to i8
  br i1 %.not18.i, label %zend_const_expr_to_zval.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !92
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !92
  %.pre71 = load i8, ptr %i.i, align 8, !tbaa !87
  br label %zend_const_expr_to_zval.exit

zend_const_expr_to_zval.exit:                     ; preds = %bb.l, %bb.m
  %i.cj = phi i8 [ %i.cg, %bb.l ], [ %.pre71, %bb.m ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ck = icmp eq i8 %i.cj, 11
  %i.cl = and i32 %i.bq, 33554431
  %.not46 = icmp eq i32 %i.cl, 0
  %or.cond85 = or i1 %i.ck, %.not46
  br i1 %or.cond85, label %zend_is_valid_default_value.exit.thread, label %bb.n

bb.n:                                             ; preds = %zend_const_expr_to_zval.exit
  %i.cm = zext nneg i8 %i.cj to i32
  %i.cn = shl nuw i32 1, %i.cm
  %i.co = and i32 %i.bq, %i.cn
  %.not.i51 = icmp eq i32 %i.co, 0
  br i1 %.not.i51, label %bb.o, label %zend_is_valid_default_value.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.cp = and i32 %i.bq, 32
  %.not6.i = icmp ne i32 %i.cp, 0
  %i.cq = icmp eq i8 %i.cj, 4
  %or.cond.i = and i1 %i.cq, %.not6.i
  br i1 %or.cond.i, label %bb.p, label %zend_is_valid_default_value.exit

bb.p:                                             ; preds = %bb.o
  call void @convert_to_double(ptr noundef nonnull %6) #30
  br label %zend_is_valid_default_value.exit.thread

zend_is_valid_default_value.exit:                 ; preds = %bb.o
  %i.cr = call ptr @zend_type_to_string(ptr %i.bp, i32 %i.bq)
  %i.cs = call ptr @zend_zval_type_name(ptr noundef nonnull %6) #30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !171
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.329, ptr noundef %i.cs, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cx) #29
  unreachable

zend_is_valid_default_value.exit.thread:          ; preds = %bb.p, %bb.n, %zend_const_expr_to_zval.exit
  %i.cy = call ptr @zend_declare_typed_class_constant(ptr noundef %i.b, ptr noundef nonnull %i.as, ptr noundef nonnull %6, i32 noundef %1, ptr noundef %i.be, ptr noundef nonnull byval(%struct.zend_type) align 8 %7) #30 ; 2 uses
  br i1 %.not47, label %bb.s, label %bb.q

bb.q:                                             ; preds = %zend_is_valid_default_value.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  call fastcc void @zend_compile_attributes(ptr noundef nonnull %i.cz, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !288
  %i.db = call ptr @zend_get_attribute_str(ptr noundef %i.da, ptr noundef nonnull @.str.95, i64 noundef 10) #30
  %.not48 = icmp eq ptr %i.db, null
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 12 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !87
  %i.de = or i32 %i.dd, 2048
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !87
  %i.df = load i32, ptr %i.j, align 4, !tbaa !163
  %i.dg = and i32 %i.df, -16781313
  %i.dh = or disjoint i32 %i.dg, 16777216
  store i32 %i.dh, ptr %i.j, align 4, !tbaa !163
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %zend_is_valid_default_value.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !510

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void
}

declare ptr @zend_zval_type_name(ptr noundef) local_unnamed_addr #2

declare ptr @zend_declare_typed_class_constant(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.zend_type) align 8) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @str_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !87
  %i.d = and i32 %i.c, 64
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %zend_string_release_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !92
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %zend_string_release_ex.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef nonnull %i.a) #30
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare ptr @zend_register_long_constant(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_compile_expr_inner(ptr noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
zend_ast_get_lineno.exit:
  %i.a = load i16, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.b = and i16 %i.a, -2
  %switch.selectcmp = icmp eq i16 %i.b, 64
  %i.c = select i1 %switch.selectcmp, i64 20, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %.0.i = load i32, ptr %i.d, align 4, !tbaa !87
  store i32 %.0.i, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !106
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 496), align 8, !tbaa !98
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %zend_ast_get_lineno.exit
  tail call fastcc void @zend_compile_memoized_expr(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.b:                                             ; preds = %zend_ast_get_lineno.exit
  switch i16 %i.a, label %bb.ap [
    i16 64, label %bb.c
    i16 67, label %bb.f
    i16 256, label %bb.g
    i16 512, label %bb.g
    i16 513, label %bb.g
    i16 514, label %bb.g
    i16 515, label %bb.g
    i16 516, label %bb.g
    i16 768, label %bb.g
    i16 769, label %bb.g
    i16 770, label %bb.g
    i16 550, label %bb.g
    i16 518, label %bb.i
    i16 519, label %bb.j
    i16 527, label %bb.k
    i16 520, label %bb.l
    i16 521, label %bb.m
    i16 522, label %bb.n
    i16 523, label %bb.n
    i16 269, label %bb.o
    i16 259, label %bb.p
    i16 260, label %bb.p
    i16 524, label %bb.q
    i16 525, label %bb.q
    i16 272, label %bb.r
    i16 273, label %bb.r
    i16 270, label %bb.s
    i16 271, label %bb.s
    i16 261, label %bb.t
    i16 771, label %bb.u
    i16 530, label %bb.v
    i16 531, label %bb.w
    i16 267, label %bb.x
    i16 529, label %bb.y
    i16 274, label %bb.z
    i16 528, label %bb.aa
    i16 268, label %bb.ab
    i16 264, label %bb.ac
    i16 263, label %bb.ac
    i16 265, label %bb.ad
    i16 266, label %bb.ae
    i16 129, label %bb.af
    i16 257, label %bb.ag
    i16 517, label %bb.ah
    i16 275, label %bb.ai
    i16 130, label %bb.aj
    i16 0, label %bb.ak
    i16 69, label %bb.al
    i16 72, label %bb.al
    i16 283, label %bb.am
    i16 547, label %bb.an
    i16 551, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !87
  %i.l = and i32 %i.j, 65280
  %.not84 = icmp eq i32 %i.l, 0
  br i1 %.not84, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.h, align 4, !tbaa !92
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.h, align 4, !tbaa !92
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %0, align 8, !tbaa !203
  br label %bb.aq

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !291
  br label %bb.aq

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 600), align 8, !tbaa !227
  %i.q = tail call ptr @llvm.frameaddress.p0(i32 0)
  %.not.i = icmp ugt ptr %i.q, %i.p
  br i1 %.not.i, label %zend_check_stack_limit.exit, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  call fastcc void @zend_stack_limit_error()
  unreachable

zend_check_stack_limit.exit:                      ; preds = %bb.g
  %i.r = call i32 @zend_stack_count(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 592)) #30
  %i.s = call fastcc ptr @zend_compile_var_inner(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false), !inline_history !18 ; 0 uses
  call fastcc void @zend_short_circuiting_commit(i32 noundef %i.r, ptr noundef %0, ptr noundef nonnull %1), !inline_history !18
  br label %bb.aq

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_assign(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.j:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_assign_ref(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.k:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_new(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.l:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_compound_assign(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.m:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_binary_op(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.n:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_greater(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.o:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_unary_op(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.p:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_unary_pm(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.q:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_short_circuiting(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.r:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_post_incdec(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.s:                                             ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_pre_incdec(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.t:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_cast(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.u:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_conditional(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.v:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_coalesce(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.w:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_assign_coalesce(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.x:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_print(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.y:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_yield(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.z:                                             ; preds = %bb.b
  tail call fastcc void @zend_compile_yield_from(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.aa:                                            ; preds = %bb.b
  tail call fastcc void @zend_compile_instanceof(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.ab:                                            ; preds = %bb.b
  tail call fastcc void @zend_compile_include_or_eval(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

bb.ac:                                            ; preds = %bb.b, %bb.b
  tail call fastcc void @zend_compile_isset_or_empty(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.aq

end_hunk_4
