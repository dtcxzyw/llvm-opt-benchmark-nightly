Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sqlite_driver?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0_@php_sqlite3_collation_callback:zend_string_alloc.exit

bb.c:                                             ; preds = %zend_call_known_fcc.exit
  %i.ap = call ptr @get_active_function_or_method_name() #12 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = call ptr @zend_zval_value_name(ptr noundef nonnull %6) #12
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.aq, ptr noundef %i.ar) #12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !36 ; 2 uses
  %i.au = and i32 %i.at, 64
  %.not.i20 = icmp eq i32 %i.au, 0
  br i1 %.not.i20, label %bb.d, label %zend_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !67 ; 2 uses
  %i.aw = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.ap, align 4, !tbaa !67
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %zend_string_release.exit

bb.e:                                             ; preds = %bb.d
  %i.az = and i32 %i.at, 128
  %.not5.i = icmp eq i32 %i.az, 0
  br i1 %.not5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.ap) #12
  br label %zend_string_release.exit

bb.g:                                             ; preds = %bb.e
  call void @_efree(ptr noundef nonnull %i.ap) #12
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  call void @zval_ptr_dtor(ptr noundef nonnull %6) #12
  br label %bb.i

bb.h:                                             ; preds = %zend_call_known_fcc.exit
  %i.ba = load i64, ptr %6, align 8, !tbaa !36
  %i.bb = call i32 @llvm.scmp.i32.i64(i64 %i.ba, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %zend_call_known_fcc.exit, %bb.h, %zend_string_release.exit
  %.0 = phi i32 [ -1, %zend_string_release.exit ], [ 0, %zend_call_known_fcc.exit ], [ %i.bb, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @pdo_sqlite_handle_factory(ptr noundef initializes((8, 16), (33, 34)) %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(96) ptr @__zend_calloc(i64 noundef 1, i64 noundef 96) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(96) ptr @_ecalloc(i64 noundef 1, i64 noundef 96) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 123, ptr %i.j, align 1, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.m = tail call fastcc ptr @make_filename_safe(ptr noundef %i.l) ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @php_pdo_get_exception() #12
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !103
  %i.p = tail call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef %i.n, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %i.o) #12 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %pdo_attr_lval.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !36
  %i.r = tail call ptr @zend_hash_index_find(ptr noundef %i.q, i64 noundef 1000) #12 ; 4 uses
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %pdo_attr_lval.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !36
  %i.u = icmp eq i8 %i.t, 4
  br i1 %i.u, label %bb.i, label %bb.j, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.v = load i64, ptr %i.r, align 8, !tbaa !36
  br label %pdo_attr_lval.exit

bb.j:                                             ; preds = %bb.h
  %i.w = tail call i64 @zval_get_long_func(ptr noundef nonnull %i.r, i1 noundef zeroext false) #12
  br label %pdo_attr_lval.exit

pdo_attr_lval.exit:                               ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ 6, %bb.f ], [ 6, %bb.g ], [ %i.v, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 96), align 8, !tbaa !90 ; 2 uses
  %.not32 = icmp eq ptr %i.x, null
  br i1 %.not32, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pdo_attr_lval.exit
  %i.y = load i8, ptr %i.x, align 1, !tbaa !36
  %.not33 = icmp eq i8 %i.y, 0
  br i1 %.not33, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %pdo_attr_lval.exit
  %i.z = or i64 %.0.i, 64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i64 [ %.0.i, %bb.k ], [ %i.z, %bb.l ]
  %i.aa = trunc i64 %.0 to i32
  %i.ab = tail call i32 @sqlite3_open_v2(ptr noundef nonnull %i.m, ptr noundef nonnull %i.f, i32 noundef %i.aa, ptr noundef null) #12
  tail call void @_efree(ptr noundef nonnull %i.m) #12
  %.not34 = icmp eq i32 %i.ab, 0
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call i32 @_pdo_sqlite_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 934) ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ae = tail call i32 @sqlite3_set_authorizer(ptr noundef %i.ad, ptr noundef nonnull @authorizer, ptr noundef nonnull %i.f) #12 ; 0 uses
  br i1 %.not.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load ptr, ptr %1, align 8, !tbaa !36
  %i.ag = tail call ptr @zend_hash_index_find(ptr noundef %i.af, i64 noundef 2) #12 ; 4 uses
  %.not7.i37 = icmp eq ptr %i.ag, null
  br i1 %.not7.i37, label %pdo_attr_lval.exit39, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !36
  %i.aj = icmp eq i8 %i.ai, 4
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !39

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !36
  br label %pdo_attr_lval.exit39

bb.s:                                             ; preds = %bb.q
  %i.al = tail call i64 @zval_get_long_func(ptr noundef nonnull %i.ag, i1 noundef zeroext false) #12
  br label %pdo_attr_lval.exit39

pdo_attr_lval.exit39:                             ; preds = %bb.p, %bb.r, %bb.s
  %.0.i38 = phi i64 [ %i.al, %bb.s ], [ 60, %bb.p ], [ %i.ak, %bb.r ]
  %i.am = trunc i64 %.0.i38 to i32
  %i.an = mul i32 %i.am, 1000
  br label %bb.t

bb.t:                                             ; preds = %pdo_attr_lval.exit39, %bb.o
  %.027 = phi i32 [ %i.an, %pdo_attr_lval.exit39 ], [ 60000, %bb.o ]
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ap = tail call i32 @sqlite3_busy_timeout(ptr noundef %i.ao, i32 noundef %.027) #12 ; 0 uses
  %i.aq = load i8, ptr %i.a, align 8
  %i.ar = or i8 %i.aq, 8
  store i8 %i.ar, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 2, ptr %i.as, align 2, !tbaa !104
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n, %bb.e
  %.028 = phi i32 [ 0, %bb.n ], [ 1, %bb.t ], [ 0, %bb.e ]
  store ptr @sqlite_methods, ptr %0, align 8, !tbaa !34
  ret i32 %.028
}

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @zend_fcall_info_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @zend_parse_arg_long_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @sqlite3_user_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_callback(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zval_struct, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %6 = icmp ne i32 %4, 0                          ; 4 uses
  %spec.store.select = select i1 %6, i32 2, i32 0 ; 3 uses
  %i.a = add nsw i32 %spec.store.select, %1       ; 4 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @_safe_emalloc(i64 noundef %i.b, i64 noundef 16, i64 noundef 0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0100 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 14 uses
  br i1 %6, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @sqlite3_aggregate_context(ptr noundef %3, i32 noundef 24) #12 ; 6 uses
  %.not107 = icmp eq ptr %i.d, null
  br i1 %.not107, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_efree(ptr noundef %.0100) #12
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !36
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.g, label %._crit_edge123

._crit_edge123:                                   ; preds = %bb.f
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !36
  %.pre124 = load i32, ptr %i.e, align 8, !tbaa !36
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noalias ptr @_emalloc_32() #12 ; 7 uses
  store i32 1, ptr %i.h, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 26, ptr %i.i, align 4, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr @executor_globals, align 8, !tbaa !36
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 8), align 8, !tbaa !36
  store ptr %i.k, ptr %i.j, align 8, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %i.l, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !36
  store ptr %i.h, ptr %i.d, align 8, !tbaa !36
  store i32 778, ptr %i.e, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge123, %bb.g
  %i.o = phi i32 [ %.pre124, %._crit_edge123 ], [ 778, %bb.g ]
  %i.p = phi ptr [ %.pre, %._crit_edge123 ], [ %i.h, %bb.g ]
  store ptr %i.p, ptr %.0100, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.0100, i64 8
  store i32 %i.o, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !108
  %i.u = add nsw i64 %i.t, 1                      ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !108
  store i64 %i.u, ptr %i.r, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %.0100, i64 24
  store i32 4, ptr %i.v, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %.0104 = phi ptr [ %i.d, %bb.h ], [ null, %bb.c ] ; 5 uses
  %i.w = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.x = zext nneg i32 %spec.store.select to i64  ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %.0100, i64 %i.x
  %invariant.gep129 = getelementptr inbounds nuw [16 x i8], ptr %.0100, i64 %i.x
  %invariant.gep131 = getelementptr inbounds nuw [16 x i8], ptr %.0100, i64 %i.x
  %invariant.gep133 = getelementptr inbounds nuw [16 x i8], ptr %.0100, i64 %i.x
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.aa = tail call i32 @sqlite3_value_type(ptr noundef %i.z) #12
  switch i32 %i.aa, label %zend_string_alloc.exit [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 5, label %bb.l
  ]

bb.j:                                             ; preds = %.lr.ph
  %gep132 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep131, i64 %indvars.iv ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.ac = tail call i32 @sqlite3_value_int(ptr noundef %i.ab) #12
  %i.ad = sext i32 %i.ac to i64
  store i64 %i.ad, ptr %gep132, align 8, !tbaa !36
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %gep130 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep129, i64 %indvars.iv ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.af = tail call double @sqlite3_value_double(ptr noundef %i.ae) #12
  store double %i.af, ptr %gep130, align 8, !tbaa !36
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  br label %bb.m

zend_string_alloc.exit:                           ; preds = %.lr.ph
  %gep134 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep133, i64 %indvars.iv ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.ah = tail call ptr @sqlite3_value_text(ptr noundef %i.ag) #12
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !110
  %i.aj = tail call i32 @sqlite3_value_bytes(ptr noundef %i.ai) #12
  %i.ak = sext i32 %i.aj to i64                   ; 4 uses
  %i.al = and i64 %i.ak, -8
  %i.am = add nsw i64 %i.al, 32
  %i.an = tail call noalias ptr @_emalloc(i64 noundef %i.am) #14 ; 6 uses
  store i32 1, ptr %i.an, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 22, ptr %i.ao, align 4, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.ak, ptr %i.aq, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ak
  store i8 0, ptr %i.as, align 1, !tbaa !36
  store ptr %i.an, ptr %gep134, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %zend_string_alloc.exit
  %gep132.sink = phi ptr [ %gep132, %bb.j ], [ %gep130, %bb.k ], [ %gep, %bb.l ], [ %gep134, %zend_string_alloc.exit ]
  %.sink = phi i32 [ 4, %bb.j ], [ 5, %bb.k ], [ 1, %bb.l ], [ 262, %zend_string_alloc.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %gep132.sink, i64 8
  store i32 %.sink, ptr %i.at, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %i.au = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = and i32 %i.aw, 262144
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %zend_call_known_fcc.exit, label %bb.n, !prof !39

bb.n:                                             ; preds = %._crit_edge
  %i.ay = tail call noalias ptr @_emalloc_256() #12 ; 4 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ay, ptr noundef nonnull align 8 dereferenceable(256) %i.az, i64 256, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !36
  %i.be = and i32 %i.bd, 64
  %.not.i112 = icmp eq i32 %i.be, 0
  br i1 %.not.i112, label %bb.o, label %zend_call_known_fcc.exit

bb.o:                                             ; preds = %bb.n
  %i.bf = load i32, ptr %i.bb, align 4, !tbaa !67
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !67
  br label %zend_call_known_fcc.exit

zend_call_known_fcc.exit:                         ; preds = %bb.o, %bb.n, %._crit_edge
  %.0.i = phi ptr [ %i.au, %._crit_edge ], [ %i.ay, %bb.n ], [ %i.ay, %bb.o ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !84
  call void @zend_call_known_function(ptr noundef nonnull %.0.i, ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef nonnull %5, i32 noundef %i.a, ptr noundef %.0100, ptr noundef null) #12
  %.not108 = icmp eq ptr %.0100, null
  br i1 %.not108, label %bb.r, label %.preheader

.preheader:                                       ; preds = %zend_call_known_fcc.exit
  br i1 %i.w, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %.preheader
  %i.bl = zext nneg i32 %spec.store.select to i64
  %i.bm = zext nneg i32 %i.a to i64
  br label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.preheader, %.lr.ph117
  %indvars.iv120 = phi i64 [ %i.bl, %.lr.ph117.preheader ], [ %indvars.iv.next121, %.lr.ph117 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.0100, i64 %indvars.iv120
  call void @zval_ptr_dtor(ptr noundef nonnull %i.bn) #12
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.bo = icmp samesign ult i64 %indvars.iv.next121, %i.bm
  br i1 %i.bo, label %.lr.ph117, label %._crit_edge118, !llvm.loop !106

._crit_edge118:                                   ; preds = %.lr.ph117, %.preheader
  br i1 %6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge118
  %i.bp = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  call void @zval_ptr_dtor(ptr noundef nonnull %i.bp) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge118
  call void @_efree(ptr noundef nonnull %.0100) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %zend_call_known_fcc.exit
  %i.bq = icmp ne ptr %2, null
  %or.cond = and i1 %i.bq, %6
  br i1 %or.cond, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !36
  switch i8 %i.bs, label %try_convert_to_string.exit [
    i8 0, label %bb.w
    i8 4, label %bb.t
    i8 1, label %bb.u
    i8 5, label %bb.v
    i8 6, label %try_convert_to_string.exit.thread
  ]

bb.t:                                             ; preds = %bb.s
  %i.bt = load i64, ptr %5, align 8, !tbaa !36
  %i.bu = trunc i64 %i.bt to i32
  call void @sqlite3_result_int(ptr noundef %3, i32 noundef %i.bu) #12
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @sqlite3_result_null(ptr noundef %3) #12
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bv = load double, ptr %5, align 8, !tbaa !36
  call void @sqlite3_result_double(ptr noundef %3, double noundef %i.bv) #12
  br label %bb.x

try_convert_to_string.exit:                       ; preds = %bb.s
  %i.bw = call zeroext i1 @_try_convert_to_string(ptr noundef nonnull %5) #12
  br i1 %i.bw, label %try_convert_to_string.exit.thread, label %bb.x

try_convert_to_string.exit.thread:                ; preds = %bb.s, %try_convert_to_string.exit
  %i.bx = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83
  %i.cb = trunc i64 %i.ca to i32
  call void @sqlite3_result_text(ptr noundef %3, ptr noundef nonnull %i.by, i32 noundef %i.cb, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #12
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  call void @sqlite3_result_error(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef 0) #12
  br label %bb.x

bb.x:                                             ; preds = %try_convert_to_string.exit, %bb.t, %bb.u, %bb.v, %try_convert_to_string.exit.thread, %bb.w
  %.not109 = icmp eq ptr %.0104, null
  br i1 %.not109, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @zval_ptr_dtor(ptr noundef nonnull %.0104) #12
  br label %bb.ac

bb.z:                                             ; preds = %bb.r
  %.not110 = icmp eq ptr %.0104, null
  br i1 %.not110, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !36
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %.0104, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  call void @zval_ptr_dtor(ptr noundef nonnull %i.cg) #12
  %i.ch = load ptr, ptr %.0104, align 8, !tbaa !36 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %5, align 8, !tbaa !36
  %i.ck = load i32, ptr %i.cc, align 8, !tbaa !36
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !36
  store i32 0, ptr %i.cc, align 8, !tbaa !36
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab, %bb.x, %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !36
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @zval_ptr_dtor(ptr noundef nonnull %5) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.aa, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @_emalloc_32() local_unnamed_addr #2

declare i32 @sqlite3_value_type(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_value_int(ptr noundef) local_unnamed_addr #2

declare double @sqlite3_value_double(ptr noundef) local_unnamed_addr #2

declare ptr @sqlite3_value_text(ptr noundef) local_unnamed_addr #2

declare i32 @sqlite3_value_bytes(ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sqlite3_result_null(ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_double(ptr noundef, double noundef) local_unnamed_addr #2

declare void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noalias ptr @_emalloc_256() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #7

declare void @zend_call_known_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @_try_convert_to_string(ptr noundef) local_unnamed_addr #2

declare ptr @get_active_function_or_method_name() local_unnamed_addr #2

declare void @zend_type_error(ptr noundef, ...) local_unnamed_addr #2

declare ptr @zend_zval_value_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @__zend_calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_filename_safe(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !36
  %.not16 = icmp eq i8 %i.a, 0
  br i1 %.not16, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef 5) #15
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 96), align 8, !tbaa !90 ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i8, ptr %i.d, align 1, !tbaa !36
  %.not22 = icmp eq i8 %i.e, 0
  br i1 %.not22, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call noalias ptr @_estrdup(ptr noundef nonnull %0) #12
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.15) #15
  %.not18 = icmp eq i32 %i.g, 0
end_hunk_0
