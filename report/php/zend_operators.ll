Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_operators?download=true
inline.NumInlined: 54
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@convert_to_boolean:bb.a
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %0, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = call ptr @zend_get_type_by_const(i32 noundef 18) #24
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %i.aq, ptr noundef %i.ar) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.at = and i32 %i.as, -2
  %or.cond = icmp eq i32 %i.at, 2
  %. = select i1 %or.cond, i32 %i.as, i32 3
  store i32 %., ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %zend_string_release_ex.exit

bb.r:                                             ; preds = %zend_unwrap_reference.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21 ; 3 uses
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !19
  store ptr %i.ay, ptr %0, align 8, !tbaa !19
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !19
  tail call void @_efree_32(ptr noundef nonnull %i.au) #24
  br label %zend_unwrap_reference.exit.backedge

zend_unwrap_reference.exit.backedge:              ; preds = %bb.s, %bb.t, %bb.u
  br label %zend_unwrap_reference.exit

bb.t:                                             ; preds = %bb.r
  %i.bb = icmp ne i32 %i.av, 0
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add i32 %i.av, -1
  store i32 %i.bc, ptr %i.au, align 4, !tbaa !21
  %i.bd = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !19 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !19 ; 2 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !19
  store i32 %i.bh, ptr %i.a, align 8, !tbaa !19
  %i.bi = and i32 %i.bh, 65280
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %zend_unwrap_reference.exit.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !21
  br label %zend_unwrap_reference.exit.backedge

bb.v:                                             ; preds = %zend_unwrap_reference.exit
  unreachable

zend_string_release_ex.exit:                      ; preds = %zend_unwrap_reference.exit, %zend_unwrap_reference.exit, %bb.m, %bb.l, %bb.k, %bb.q, %bb.n, %bb.g, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_convert_to_string(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1077 x i8], align 16             ; 5 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  br label %zend_unwrap_reference.exit

zend_unwrap_reference.exit:                       ; preds = %zend_unwrap_reference.exit.backedge, %bb.a
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19
  switch i8 %i.d, label %bb.x [
    i8 0, label %bb.b
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 6, label %.loopexit
    i8 9, label %bb.d
    i8 4, label %bb.e
    i8 5, label %zend_string_init.exit.i52
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 10, label %bb.t
  ]

bb.b:                                             ; preds = %zend_unwrap_reference.exit, %zend_unwrap_reference.exit, %zend_unwrap_reference.exit
  %i.e = load ptr, ptr @zend_empty_string, align 8, !tbaa !87
  store ptr %i.e, ptr %0, align 8, !tbaa !19
  store i32 6, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

bb.c:                                             ; preds = %zend_unwrap_reference.exit
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_one_char_string, i64 392), align 8, !tbaa !87
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  store i32 6, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

bb.d:                                             ; preds = %zend_unwrap_reference.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef %i.i) #24
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  store ptr %i.j, ptr %0, align 8, !tbaa !19
  store i32 262, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

bb.e:                                             ; preds = %zend_unwrap_reference.exit
  %i.k = load i64, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.l = icmp ult i64 %i.k, 10
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  br label %zend_long_to_str.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  %i.q = icmp slt i64 %i.k, 0
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = sub i64 0, %i.k
  store i8 0, ptr %i.p, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.05.i.i = phi ptr [ %i.p, %bb.h ], [ %i.v, %bb.i ] ; 2 uses
  %.0.i8.i = phi i64 [ %i.r, %bb.h ], [ %i.w, %bb.i ] ; 3 uses
  %i.s = urem i64 %.0.i8.i, 10
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !19
  %i.w = udiv i64 %.0.i8.i, 10
  %.not.i.i = icmp ult i64 %.0.i8.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.i, !llvm.loop !0

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.i
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.x, align 1, !tbaa !19
  br label %zend_print_long_to_buf.exit.i

bb.j:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 4, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.05.i9.i = phi ptr [ %i.p, %bb.j ], [ %i.ab, %bb.k ]
  %.0.i10.i = phi i64 [ %i.k, %bb.j ], [ %i.ac, %bb.k ] ; 3 uses
  %i.y = urem i64 %.0.i10.i, 10
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.05.i9.i, i64 -1 ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !19
  %i.ac = udiv i64 %.0.i10.i, 10
  %.not.i11.i = icmp ult i64 %.0.i10.i, 10
  br i1 %.not.i11.i, label %zend_print_long_to_buf.exit.i, label %bb.k, !llvm.loop !0

zend_print_long_to_buf.exit.i:                    ; preds = %bb.k, %zend_print_ulong_to_buf.exit.i
  %.0.i.i = phi ptr [ %i.x, %zend_print_ulong_to_buf.exit.i ], [ %i.ab, %bb.k ] ; 2 uses
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 32
  %i.ai = call noalias ptr @_emalloc(i64 noundef %i.ah) #26 ; 6 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.af, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 1 %.0.i.i, i64 %i.af, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af
  store i8 0, ptr %i.an, align 1, !tbaa !19
  store i32 534, ptr %i.aj, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %zend_long_to_str.exit

zend_long_to_str.exit:                            ; preds = %bb.f, %zend_print_long_to_buf.exit.i
  %.0.i = phi ptr [ %i.o, %bb.f ], [ %i.ai, %zend_print_long_to_buf.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %2 = shl i32 %i.ap, 2
  %3 = and i32 %2, 256
  %4 = xor i32 %3, 262
  store i32 %4, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

zend_string_init.exit.i52:                        ; preds = %zend_unwrap_reference.exit
  %i.aq = load double, ptr %0, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 552), align 8, !tbaa !90
  %i.as = trunc i64 %i.ar to i32
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.as, i32 1)
  %i.au = call ptr @zend_gcvt(double noundef %i.aq, i32 noundef %i.at, i8 noundef signext 46, i8 noundef signext 69, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.av = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 4 uses
  %i.aw = and i64 %i.av, -8
  %i.ax = add i64 %i.aw, 32
  %i.ay = call noalias ptr @_emalloc(i64 noundef %i.ax) #26 ; 6 uses
  store i32 1, ptr %i.ay, align 4, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store i32 22, ptr %i.az, align 4, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr nonnull align 16 %i.a, i64 %i.av, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.av
  store i8 0, ptr %i.bd, align 1, !tbaa !19
  %i.be = fcmp uno double %i.aq, 0.000000e+00
  br i1 %i.be, label %bb.l, label %zend_double_to_str.exit, !prof !54

bb.l:                                             ; preds = %zend_string_init.exit.i52
  call void @zend_nan_coerced_to_type_warning(i8 noundef zeroext 6)
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !19
  %i.bf = or i32 %.pre.i, 512
  br label %zend_double_to_str.exit

zend_double_to_str.exit:                          ; preds = %zend_string_init.exit.i52, %bb.l
  %i.bg = phi i32 [ 534, %zend_string_init.exit.i52 ], [ %i.bf, %bb.l ]
  store i32 %i.bg, ptr %i.az, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  store ptr %i.ay, ptr %0, align 8, !tbaa !19
  store i32 262, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

bb.m:                                             ; preds = %zend_unwrap_reference.exit
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.2) #24
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  %i.bh = load ptr, ptr @zend_known_strings, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 408
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  store ptr %i.bj, ptr %0, align 8, !tbaa !19
  store i32 6, ptr %i.c, align 8, !tbaa !19
  br label %.loopexit

bb.n:                                             ; preds = %zend_unwrap_reference.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.bk = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34
  %i.bp = call i32 %i.bo(ptr noundef %i.bk, ptr noundef nonnull %1, i32 noundef 6) #24
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !19
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %0, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bz) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %storemerge53.in = phi ptr [ @zend_empty_string, %bb.r ], [ %1, %bb.o ]
  %storemerge = phi i32 [ 6, %bb.r ], [ %i.bs, %bb.o ]
  %storemerge53 = load ptr, ptr %storemerge53.in, align 8, !tbaa !19
  store ptr %storemerge53, ptr %0, align 8, !tbaa !19
  store i32 %storemerge, ptr %i.c, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

bb.t:                                             ; preds = %zend_unwrap_reference.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !21 ; 3 uses
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !19
  store ptr %i.ce, ptr %0, align 8, !tbaa !19
  store i32 %i.cg, ptr %i.c, align 8, !tbaa !19
  tail call void @_efree_32(ptr noundef nonnull %i.ca) #24
  br label %zend_unwrap_reference.exit.backedge

zend_unwrap_reference.exit.backedge:              ; preds = %bb.u, %bb.v, %bb.w
  br label %zend_unwrap_reference.exit

bb.v:                                             ; preds = %bb.t
  %i.ch = icmp ne i32 %i.cb, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add i32 %i.cb, -1
  store i32 %i.ci, ptr %i.ca, align 4, !tbaa !21
  %i.cj = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !19 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !19 ; 2 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !19
  store i32 %i.cn, ptr %i.c, align 8, !tbaa !19
  %i.co = and i32 %i.cn, 65280
  %.not.i = icmp eq i32 %i.co, 0
  br i1 %.not.i, label %zend_unwrap_reference.exit.backedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !21
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !21
  br label %zend_unwrap_reference.exit.backedge

bb.x:                                             ; preds = %zend_unwrap_reference.exit
  unreachable

.loopexit:                                        ; preds = %zend_unwrap_reference.exit, %bb.s, %bb.m, %zend_double_to_str.exit, %zend_long_to_str.exit, %bb.d, %bb.c, %bb.b
  ret void
}

declare ptr @zend_strpprintf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_long_to_str(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 3 uses
  %i.b = icmp ult i64 %0, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %0
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 5 uses
  %i.g = icmp slt i64 %0, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = sub i64 0, %0
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.05.i = phi ptr [ %i.f, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.0.i8 = phi i64 [ %i.h, %bb.d ], [ %i.m, %bb.e ] ; 3 uses
  %i.i = urem i64 %.0.i8, 10
  %i.j = trunc nuw nsw i64 %i.i to i8
  %i.k = or disjoint i8 %i.j, 48
  %i.l = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !19
  %i.m = udiv i64 %.0.i8, 10
  %.not.i = icmp ult i64 %.0.i8, 10
  br i1 %.not.i, label %zend_print_ulong_to_buf.exit, label %bb.e, !llvm.loop !0

zend_print_ulong_to_buf.exit:                     ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.05.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.n, align 1, !tbaa !19
  br label %zend_print_long_to_buf.exit

bb.f:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.05.i9 = phi ptr [ %i.f, %bb.f ], [ %i.r, %bb.g ]
  %.0.i10 = phi i64 [ %0, %bb.f ], [ %i.s, %bb.g ] ; 3 uses
  %i.o = urem i64 %.0.i10, 10
  %i.p = trunc nuw nsw i64 %i.o to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.05.i9, i64 -1 ; 3 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !19
  %i.s = udiv i64 %.0.i10, 10
  %.not.i11 = icmp ult i64 %.0.i10, 10
  br i1 %.not.i11, label %zend_print_long_to_buf.exit, label %bb.g, !llvm.loop !0

zend_print_long_to_buf.exit:                      ; preds = %bb.g, %zend_print_ulong_to_buf.exit
  %.0.i = phi ptr [ %i.n, %zend_print_ulong_to_buf.exit ], [ %i.r, %bb.g ] ; 2 uses
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = ptrtoint ptr %.0.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 4 uses
  %i.w = and i64 %i.v, -8
  %i.x = add i64 %i.w, 32
  %i.y = call noalias ptr @_emalloc(i64 noundef %i.x) #26 ; 6 uses
  store i32 1, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.v, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 1 %.0.i, i64 %i.v, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  store i32 534, ptr %i.z, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.h

bb.h:                                             ; preds = %zend_print_long_to_buf.exit, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.y, %zend_print_long_to_buf.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @zend_double_to_str(double noundef %0) local_unnamed_addr #0 {
zend_string_init.exit:
  %i.a = alloca [1077 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 552), align 8, !tbaa !90
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1)
  %i.e = call ptr @zend_gcvt(double noundef %0, i32 noundef %i.d, i8 noundef signext 46, i8 noundef signext 69, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 4 uses
  %i.g = and i64 %i.f, -8
  %i.h = add i64 %i.g, 32
  %i.i = call noalias ptr @_emalloc(i64 noundef %i.h) #26 ; 6 uses
  store i32 1, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 22, ptr %i.j, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !89
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.f, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 16 %i.a, i64 %i.f, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.f
  store i8 0, ptr %i.n, align 1, !tbaa !19
  %i.o = fcmp uno double %0, 0.000000e+00
  br i1 %i.o, label %bb.a, label %bb.b, !prof !54

bb.a:                                             ; preds = %zend_string_init.exit
  call void @zend_nan_coerced_to_type_warning(i8 noundef zeroext 6)
  %.pre = load i32, ptr %i.j, align 4, !tbaa !19
  %i.p = or i32 %.pre, 512
  br label %bb.b

bb.b:                                             ; preds = %zend_string_init.exit, %bb.a
  %i.q = phi i32 [ 534, %zend_string_init.exit ], [ %i.p, %bb.a ]
  store i32 %i.q, ptr %i.j, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.i
}

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @_try_convert_to_string(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zval_try_get_string_func(ptr noundef %0) ; 3 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %bb.a
  tail call void @zval_ptr_dtor(ptr noundef %0) #24
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19
  %1 = shl i32 %i.c, 2
  %2 = and i32 %1, 256
  %3 = xor i32 %2, 262
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.d, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zval_try_get_string_func(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1077 x i8], align 16             ; 5 uses
  %i.b = alloca [21 x i8], align 16               ; 3 uses
  %1 = alloca %struct._zval_struct, align 8       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.u, %bb.a
  %.011.i = phi ptr [ %0, %bb.a ], [ %i.bz, %bb.u ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19
  switch i8 %i.d, label %bb.x [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 9, label %bb.e
    i8 4, label %bb.f
    i8 5, label %zend_string_init.exit.i3
    i8 7, label %bb.n
    i8 8, label %bb.p
    i8 10, label %bb.u
    i8 6, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.e = load ptr, ptr @zend_empty_string, align 8, !tbaa !87
  br label %__zval_get_string_func.exit

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_one_char_string, i64 392), align 8, !tbaa !87
  br label %__zval_get_string_func.exit

bb.e:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %.011.i, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef %i.i) #24
  br label %__zval_get_string_func.exit

bb.f:                                             ; preds = %bb.b
  %i.k = load i64, ptr %.011.i, align 8, !tbaa !19 ; 5 uses
  %i.l = icmp ult i64 %i.k, 10
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @zend_one_char_string, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87
  br label %__zval_get_string_func.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 5 uses
  %i.q = icmp slt i64 %i.k, 0
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = sub i64 0, %i.k
  store i8 0, ptr %i.p, align 4, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.05.i.i = phi ptr [ %i.p, %bb.i ], [ %i.v, %bb.j ] ; 2 uses
  %.0.i8.i = phi i64 [ %i.r, %bb.i ], [ %i.w, %bb.j ] ; 3 uses
  %i.s = urem i64 %.0.i8.i, 10
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.05.i.i, i64 -1 ; 2 uses
  store i8 %i.u, ptr %i.v, align 1, !tbaa !19
  %i.w = udiv i64 %.0.i8.i, 10
  %.not.i.i = icmp ult i64 %.0.i8.i, 10
  br i1 %.not.i.i, label %zend_print_ulong_to_buf.exit.i, label %bb.j, !llvm.loop !0

zend_print_ulong_to_buf.exit.i:                   ; preds = %bb.j
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.x, align 1, !tbaa !19
  br label %zend_print_long_to_buf.exit.i

bb.k:                                             ; preds = %bb.h
  store i8 0, ptr %i.p, align 4, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.05.i9.i = phi ptr [ %i.p, %bb.k ], [ %i.ab, %bb.l ]
  %.0.i10.i = phi i64 [ %i.k, %bb.k ], [ %i.ac, %bb.l ] ; 3 uses
  %i.y = urem i64 %.0.i10.i, 10
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.05.i9.i, i64 -1 ; 3 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !19
  %i.ac = udiv i64 %.0.i10.i, 10
  %.not.i11.i = icmp ult i64 %.0.i10.i, 10
  br i1 %.not.i11.i, label %zend_print_long_to_buf.exit.i, label %bb.l, !llvm.loop !0

zend_print_long_to_buf.exit.i:                    ; preds = %bb.l, %zend_print_ulong_to_buf.exit.i
  %.0.i.i = phi ptr [ %i.x, %zend_print_ulong_to_buf.exit.i ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ad = ptrtoint ptr %i.p to i64
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 32
  %i.ai = call noalias ptr @_emalloc(i64 noundef %i.ah) #26 ; 6 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !89
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.af, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 1 %.0.i.i, i64 %i.af, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.af
  store i8 0, ptr %i.an, align 1, !tbaa !19
  store i32 534, ptr %i.aj, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %__zval_get_string_func.exit

zend_string_init.exit.i3:                         ; preds = %bb.b
  %i.ao = load double, ptr %.011.i, align 8, !tbaa !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 552), align 8, !tbaa !90
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 1)
  %i.as = call ptr @zend_gcvt(double noundef %i.ao, i32 noundef %i.ar, i8 noundef signext 46, i8 noundef signext 69, ptr noundef nonnull %i.a) #24 ; 0 uses
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25 ; 4 uses
  %i.au = and i64 %i.at, -8
  %i.av = add i64 %i.au, 32
  %i.aw = call noalias ptr @_emalloc(i64 noundef %i.av) #26 ; 6 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 3 uses
  store i32 22, ptr %i.ax, align 4, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %i.at, ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull align 16 %i.a, i64 %i.at, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.at
  store i8 0, ptr %i.bb, align 1, !tbaa !19
  %i.bc = fcmp uno double %i.ao, 0.000000e+00
  br i1 %i.bc, label %bb.m, label %zend_double_to_str.exit, !prof !54

bb.m:                                             ; preds = %zend_string_init.exit.i3
  call void @zend_nan_coerced_to_type_warning(i8 noundef zeroext 6)
  %.pre.i = load i32, ptr %i.ax, align 4, !tbaa !19
  %i.bd = or i32 %.pre.i, 512
  br label %zend_double_to_str.exit

zend_double_to_str.exit:                          ; preds = %zend_string_init.exit.i3, %bb.m
  %i.be = phi i32 [ 534, %zend_string_init.exit.i3 ], [ %i.bd, %bb.m ]
  store i32 %i.be, ptr %i.ax, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %__zval_get_string_func.exit

bb.n:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.2) #24
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8
  %.not12.i = icmp eq ptr %i.bf, null
  br i1 %.not12.i, label %bb.o, label %__zval_get_string_func.exit, !prof !93

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr @zend_known_strings, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 408
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  br label %__zval_get_string_func.exit

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.bj = load ptr, ptr %.011.i, align 8, !tbaa !19 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = call i32 %i.bn(ptr noundef %i.bj, ptr noundef nonnull %1, i32 noundef 6) #24, !inline_history !1
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %.011.i, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
end_hunk_0
begin_hunk_1_@concat_function:bb.a
bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.f
  %i.ac = tail call ptr @zval_try_get_string_func(ptr noundef nonnull %.0145) ; 4 uses
  %.not179 = icmp eq ptr %i.ac, null
  br i1 %.not179, label %bb.k, label %bb.m, !prof !54

bb.k:                                             ; preds = %bb.j
  %.not180 = icmp eq ptr %1, %0
  br i1 %.not180, label %zend_string_release_ex.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ad, align 8, !tbaa !19
  br label %zend_string_release_ex.exit

bb.m:                                             ; preds = %bb.j
  %i.ae = icmp eq ptr %0, %.0145
  %i.af = icmp eq ptr %.0145, %2
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.ab, label %bb.n, !prof !131

bb.n:                                             ; preds = %bb.d, %bb.b, %bb.m
  %.0161 = phi i8 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.m ] ; 3 uses
  %.0150 = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.d ], [ %i.ac, %bb.m ] ; 10 uses
  %.1146 = phi ptr [ %1, %bb.b ], [ %i.e, %bb.d ], [ %.0145, %bb.m ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !19
  switch i8 %i.ah, label %bb.r [
    i8 6, label %bb.o
    i8 10, label %bb.p
  ], !prof !106

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %2, align 8, !tbaa !19
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !19
  %i.an = icmp eq i8 %i.am, 6
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !19
  br label %bb.ab

bb.r:                                             ; preds = %bb.n, %bb.p
  %.0148 = phi ptr [ %i.ak, %bb.p ], [ %2, %bb.n ] ; 5 uses
  %i.ap = trunc nuw i8 %.0161 to i1
  br i1 %i.ap, label %zend_string_copy.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %.0150, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %i.as = and i32 %i.ar, 64
  %.not.i204 = icmp eq i32 %i.as, 0
  br i1 %.not.i204, label %bb.t, label %zend_string_copy.exit

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %.0150, align 4, !tbaa !21
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %.0150, align 4, !tbaa !21
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.t, %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.0148, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !19
  %i.ax = icmp eq i8 %i.aw, 8
  br i1 %i.ax, label %bb.u, label %bb.w, !prof !54

bb.u:                                             ; preds = %zend_string_copy.exit
  %i.ay = load ptr, ptr %.0148, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !99 ; 2 uses
  %.not181 = icmp eq ptr %i.bc, null
  br i1 %.not181, label %bb.w, label %bb.v, !prof !51

bb.v:                                             ; preds = %bb.u
  %i.bd = tail call i32 %i.bc(i8 noundef zeroext 8, ptr noundef %0, ptr noundef nonnull %.1146, ptr noundef nonnull %.0148) #24
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %zend_string_release_ex.exit, label %bb.w, !prof !51

bb.w:                                             ; preds = %bb.v, %bb.u, %zend_string_copy.exit
  %i.bf = tail call ptr @zval_try_get_string_func(ptr noundef nonnull %.0148) ; 2 uses
  %.not182 = icmp eq ptr %i.bf, null
  br i1 %.not182, label %bb.x, label %bb.ab, !prof !54

bb.x:                                             ; preds = %bb.w
  %i.bg = getelementptr inbounds nuw i8, ptr %.0150, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !19
  %i.bi = and i32 %i.bh, 64
  %.not.i202 = icmp eq i32 %i.bi, 0
  br i1 %.not.i202, label %bb.y, label %zend_string_release_ex.exit203

bb.y:                                             ; preds = %bb.x
  %i.bj = load i32, ptr %.0150, align 4, !tbaa !21 ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bl, ptr %.0150, align 4, !tbaa !21
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.z, label %zend_string_release_ex.exit203

bb.z:                                             ; preds = %bb.y
  tail call void @_efree(ptr noundef nonnull %.0150) #24
  br label %zend_string_release_ex.exit203

zend_string_release_ex.exit203:                   ; preds = %bb.x, %bb.y, %bb.z
  %.not183 = icmp eq ptr %1, %0
  br i1 %.not183, label %zend_string_release_ex.exit, label %bb.aa

bb.aa:                                            ; preds = %zend_string_release_ex.exit203
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bn, align 8, !tbaa !19
  br label %zend_string_release_ex.exit

bb.ab:                                            ; preds = %bb.w, %bb.m, %bb.q, %bb.o
  %.2163 = phi i8 [ %.0161, %bb.o ], [ %.0161, %bb.q ], [ 1, %bb.m ], [ 1, %bb.w ] ; 14 uses
  %.0157 = phi i8 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.m ], [ 1, %bb.w ] ; 15 uses
  %.0153 = phi ptr [ %i.ai, %bb.o ], [ %i.ao, %bb.q ], [ %i.ac, %bb.m ], [ %i.bf, %bb.w ] ; 28 uses
  %.2152 = phi ptr [ %.0150, %bb.o ], [ %.0150, %bb.q ], [ %i.ac, %bb.m ], [ %.0150, %bb.w ] ; 20 uses
  %.1149 = phi ptr [ %2, %bb.o ], [ %i.ak, %bb.q ], [ %2, %bb.m ], [ %.0148, %bb.w ]
  %.2 = phi ptr [ %.1146, %bb.o ], [ %.1146, %bb.q ], [ %2, %bb.m ], [ %.1146, %bb.w ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.2152, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !24 ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ac, label %bb.ap, !prof !54

bb.ac:                                            ; preds = %bb.ab
  %.not189 = icmp eq ptr %0, %.1149
  br i1 %.not189, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !19
  %.not249 = icmp eq i8 %i.bs, 6
  br i1 %.not249, label %bb.ck, label %.critedge, !prof !54

.critedge:                                        ; preds = %bb.ac, %bb.ad
  %i.bt = icmp eq ptr %0, %1
  br i1 %i.bt, label %bb.ae, label %i_zval_ptr_dtor.exit214

bb.ae:                                            ; preds = %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19
  %.not.i212 = icmp eq i8 %i.bv, 0
  br i1 %.not.i212, label %i_zval_ptr_dtor.exit214, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = load ptr, ptr %0, align 8, !tbaa !19    ; 7 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !21 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !21
  %.not5.i213 = icmp eq i32 %i.bz, 0
  br i1 %.not5.i213, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @rc_dtor_func(ptr noundef nonnull %i.bw) #24
  br label %i_zval_ptr_dtor.exit214

bb.ah:                                            ; preds = %bb.af
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 26
  br i1 %i.cc, label %bb.ai, label %bb.aj, !prof !51

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %i.cf = and i8 %i.ce, 2
  %.not.i216 = icmp eq i8 %i.cf, 0
  br i1 %.not.i216, label %i_zval_ptr_dtor.exit214, label %.thread

.thread:                                          ; preds = %bb.ai
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.pre259 = load i32, ptr %.phi.trans.insert258, align 4, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ah
  %i.ci = phi i32 [ %.pre259, %.thread ], [ %i.cb, %bb.ah ]
  %.1.i = phi ptr [ %i.ch, %.thread ], [ %i.bw, %bb.ah ]
  %i.cj = and i32 %i.ci, -1008
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ak, label %i_zval_ptr_dtor.exit214, !prof !54

bb.ak:                                            ; preds = %bb.aj
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i) #24
  br label %i_zval_ptr_dtor.exit214

i_zval_ptr_dtor.exit214:                          ; preds = %bb.ag, %bb.ae, %bb.ai, %bb.aj, %bb.ak, %.critedge
  %i.cl = trunc nuw i8 %.0157 to i1
  store ptr %.0153, ptr %0, align 8, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %.0153, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !19 ; 2 uses
  br i1 %i.cl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %i_zval_ptr_dtor.exit214
  %3 = shl i32 %i.cn, 2
  %4 = and i32 %3, 256
  %5 = xor i32 %4, 262
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %5, ptr %i.co, align 8, !tbaa !19
  br label %bb.ck

bb.am:                                            ; preds = %i_zval_ptr_dtor.exit214
  %6 = and i32 %i.cn, 64
  %.not190 = icmp eq i32 %6, 0
  br i1 %.not190, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.cp, align 8, !tbaa !19
  br label %bb.ck

bb.ao:                                            ; preds = %bb.am
  %i.cq = load i32, ptr %.0153, align 4, !tbaa !21
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %.0153, align 4, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.cs, align 8, !tbaa !19
  br label %bb.ck

bb.ap:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %.0153, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !24 ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.aq, label %bb.bd, !prof !54

bb.aq:                                            ; preds = %bb.ap
  %.not186 = icmp eq ptr %0, %.2
  br i1 %.not186, label %bb.ar, label %.critedge193

bb.ar:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !19
  %.not248 = icmp eq i8 %i.cx, 6
  br i1 %.not248, label %bb.ck, label %.critedge193, !prof !54

.critedge193:                                     ; preds = %bb.aq, %bb.ar
  %i.cy = icmp eq ptr %0, %1
  br i1 %i.cy, label %bb.as, label %i_zval_ptr_dtor.exit211

bb.as:                                            ; preds = %.critedge193
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !19
  %.not.i209 = icmp eq i8 %i.da, 0
  br i1 %.not.i209, label %i_zval_ptr_dtor.exit211, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = load ptr, ptr %0, align 8, !tbaa !19    ; 7 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !21 ; 2 uses
  %i.dd = icmp ne i32 %i.dc, 0
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.de, ptr %i.db, align 4, !tbaa !21
  %.not5.i210 = icmp eq i32 %i.de, 0
  br i1 %.not5.i210, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @rc_dtor_func(ptr noundef nonnull %i.db) #24
  br label %i_zval_ptr_dtor.exit211

bb.av:                                            ; preds = %bb.at
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !19 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 26
  br i1 %i.dh, label %bb.aw, label %bb.ax, !prof !51

bb.aw:                                            ; preds = %bb.av
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 17
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !19
  %i.dk = and i8 %i.dj, 2
  %.not.i218 = icmp eq i8 %i.dk, 0
  br i1 %.not.i218, label %i_zval_ptr_dtor.exit211, label %.thread230

.thread230:                                       ; preds = %bb.aw
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %.pre257 = load i32, ptr %.phi.trans.insert256, align 4, !tbaa !19
  br label %bb.ax

bb.ax:                                            ; preds = %.thread230, %bb.av
  %i.dn = phi i32 [ %.pre257, %.thread230 ], [ %i.dg, %bb.av ]
  %.1.i217 = phi ptr [ %i.dm, %.thread230 ], [ %i.db, %bb.av ]
  %i.do = and i32 %i.dn, -1008
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ay, label %i_zval_ptr_dtor.exit211, !prof !54

bb.ay:                                            ; preds = %bb.ax
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i217) #24
  br label %i_zval_ptr_dtor.exit211

i_zval_ptr_dtor.exit211:                          ; preds = %bb.au, %bb.as, %bb.aw, %bb.ax, %bb.ay, %.critedge193
  %i.dq = trunc nuw i8 %.2163 to i1
  store ptr %.2152, ptr %0, align 8, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %.2152, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !19 ; 2 uses
  br i1 %i.dq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %i_zval_ptr_dtor.exit211
  %7 = shl i32 %i.ds, 2
  %8 = and i32 %7, 256
  %9 = xor i32 %8, 262
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %9, ptr %i.dt, align 8, !tbaa !19
  br label %zend_string_release_ex.exit195

bb.ba:                                            ; preds = %i_zval_ptr_dtor.exit211
  %10 = and i32 %i.ds, 64
  %.not187 = icmp eq i32 %10, 0
  br i1 %.not187, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.du, align 8, !tbaa !19
  br label %zend_string_release_ex.exit195

bb.bc:                                            ; preds = %bb.ba
  %i.dv = load i32, ptr %.2152, align 8, !tbaa !21
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %.2152, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.dx, align 8, !tbaa !19
  br label %zend_string_release_ex.exit195

bb.bd:                                            ; preds = %bb.ap
  %i.dy = add i64 %i.cu, %i.bp                    ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.2152, i64 4 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !19 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0153, i64 4 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !19
  %i.ed = and i32 %i.ea, 512
  %i.ee = and i32 %i.ed, %i.ec
  %i.ef = sub i64 -33, %i.cu
  %.not185 = icmp ugt i64 %i.bp, %i.ef
  br i1 %.not185, label %bb.be, label %bb.bl, !prof !54

bb.be:                                            ; preds = %bb.bd
  %i.eg = trunc nuw i8 %.2163 to i1
  %i.eh = and i32 %i.ea, 64
  %.not.i200 = icmp eq i32 %i.eh, 0
  %or.cond247 = select i1 %i.eg, i1 %.not.i200, i1 false
  br i1 %or.cond247, label %bb.bf, label %zend_string_release_ex.exit201

bb.bf:                                            ; preds = %bb.be
  %i.ei = load i32, ptr %.2152, align 8, !tbaa !21 ; 2 uses
  %i.ej = icmp ne i32 %i.ei, 0
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ek, ptr %.2152, align 8, !tbaa !21
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bg, label %zend_string_release_ex.exit201

bb.bg:                                            ; preds = %bb.bf
  tail call void @_efree(ptr noundef nonnull %.2152) #24
  br label %zend_string_release_ex.exit201

zend_string_release_ex.exit201:                   ; preds = %bb.bg, %bb.bf, %bb.be
  %i.em = trunc nuw i8 %.0157 to i1
  br i1 %i.em, label %bb.bh, label %zend_string_release_ex.exit199

bb.bh:                                            ; preds = %zend_string_release_ex.exit201
  %i.en = load i32, ptr %i.eb, align 4, !tbaa !19
  %i.eo = and i32 %i.en, 64
  %.not.i198 = icmp eq i32 %i.eo, 0
  br i1 %.not.i198, label %bb.bi, label %zend_string_release_ex.exit199

bb.bi:                                            ; preds = %bb.bh
  %i.ep = load i32, ptr %.0153, align 8, !tbaa !21 ; 2 uses
  %i.eq = icmp ne i32 %i.ep, 0
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = add i32 %i.ep, -1                       ; 2 uses
  store i32 %i.er, ptr %.0153, align 8, !tbaa !21
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bj, label %zend_string_release_ex.exit199

bb.bj:                                            ; preds = %bb.bi
  tail call void @_efree(ptr noundef nonnull %.0153) #24
  br label %zend_string_release_ex.exit199

zend_string_release_ex.exit199:                   ; preds = %bb.bj, %bb.bi, %bb.bh, %zend_string_release_ex.exit201
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.22) #24
  %.not184 = icmp eq ptr %1, %0
  br i1 %.not184, label %zend_string_release_ex.exit, label %bb.bk

bb.bk:                                            ; preds = %zend_string_release_ex.exit199
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.et, align 8, !tbaa !19
  br label %zend_string_release_ex.exit

bb.bl:                                            ; preds = %bb.bd
  %i.eu = icmp eq ptr %0, %.2
  br i1 %i.eu, label %bb.bm, label %zend_string_alloc.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ev = trunc nuw i8 %.2163 to i1
  br i1 %i.ev, label %bb.bn, label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !19
  %.not.i206 = icmp eq i8 %i.ex, 0
  br i1 %.not.i206, label %i_zval_ptr_dtor.exit208, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ey = load ptr, ptr %0, align 8, !tbaa !19    ; 7 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21 ; 2 uses
  %i.fa = icmp ne i32 %i.ez, 0
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !21
  %.not5.i207 = icmp eq i32 %i.fb, 0
  br i1 %.not5.i207, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void @rc_dtor_func(ptr noundef nonnull %i.ey) #24
  br label %i_zval_ptr_dtor.exit208

bb.bq:                                            ; preds = %bb.bo
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !19 ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 26
  br i1 %i.fe, label %bb.br, label %bb.bs, !prof !51

bb.br:                                            ; preds = %bb.bq
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 17
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !19
  %i.fh = and i8 %i.fg, 2
  %.not.i222 = icmp eq i8 %i.fh, 0
  br i1 %.not.i222, label %i_zval_ptr_dtor.exit208, label %.thread232

.thread232:                                       ; preds = %bb.br
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert252 = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %.pre253 = load i32, ptr %.phi.trans.insert252, align 4, !tbaa !19
  br label %bb.bs

bb.bs:                                            ; preds = %.thread232, %bb.bq
  %i.fk = phi i32 [ %.pre253, %.thread232 ], [ %i.fd, %bb.bq ]
  %.1.i221 = phi ptr [ %i.fj, %.thread232 ], [ %i.ey, %bb.bq ]
  %i.fl = and i32 %i.fk, -1008
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bt, label %i_zval_ptr_dtor.exit208, !prof !54

bb.bt:                                            ; preds = %bb.bs
  tail call void @gc_possible_root(ptr noundef nonnull %.1.i221) #24
  br label %i_zval_ptr_dtor.exit208

i_zval_ptr_dtor.exit208:                          ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bn, %bb.bp
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.fn, align 8, !tbaa !19
  %.pre254 = load i64, ptr %i.bo, align 8, !tbaa !24
  %.pre255 = load i32, ptr %i.dz, align 4, !tbaa !19
  br label %bb.bu

bb.bu:                                            ; preds = %i_zval_ptr_dtor.exit208, %bb.bm
  %i.fo = phi i32 [ %.pre255, %i_zval_ptr_dtor.exit208 ], [ %i.ea, %bb.bm ]
  %i.fp = phi i64 [ %.pre254, %i_zval_ptr_dtor.exit208 ], [ %i.bp, %bb.bm ]
  %i.fq = icmp uge i64 %i.dy, %i.fp
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = and i32 %i.fo, 64
  %.not.i215 = icmp eq i32 %i.fr, 0
  br i1 %.not.i215, label %bb.bv, label %zend_string_alloc.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.fs = load i32, ptr %.2152, align 8, !tbaa !21
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.bw, label %zend_string_alloc.exit.i, !prof !51

bb.bw:                                            ; preds = %bb.bv
  %i.fu = and i64 %i.dy, -8
  %i.fv = add i64 %i.fu, 32
  %i.fw = tail call ptr @_erealloc(ptr noundef nonnull %.2152, i64 noundef %i.fv) #28 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %i.dy, ptr %i.fx, align 8, !tbaa !24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 0, ptr %i.fy, align 8, !tbaa !89
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !19
  %i.gb = and i32 %i.ga, -513
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !19
  br label %zend_string_extend.exit

zend_string_alloc.exit.i:                         ; preds = %bb.bu, %bb.bv
  %i.gc = and i64 %i.dy, -8
  %i.gd = add i64 %i.gc, 32
  %i.ge = tail call noalias ptr @_emalloc(i64 noundef %i.gd) #26 ; 7 uses
  store i32 1, ptr %i.ge, align 4, !tbaa !21
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 22, ptr %i.gf, align 4, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i64 0, ptr %i.gg, align 8, !tbaa !89
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store i64 %i.dy, ptr %i.gh, align 8, !tbaa !24
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %.2152, i64 24
  %i.gk = load i64, ptr %i.bo, align 8, !tbaa !24
  %i.gl = add i64 %i.gk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull align 8 %i.gj, i64 %i.gl, i1 false)
  %i.gm = load i32, ptr %i.dz, align 4, !tbaa !19
  %i.gn = and i32 %i.gm, 64
  %.not21.i = icmp eq i32 %i.gn, 0
  br i1 %.not21.i, label %bb.bx, label %zend_string_extend.exit

bb.bx:                                            ; preds = %zend_string_alloc.exit.i
  %i.go = load i32, ptr %.2152, align 8, !tbaa !21 ; 2 uses
  %i.gp = icmp ne i32 %i.go, 0
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = add i32 %i.go, -1
  store i32 %i.gq, ptr %.2152, align 8, !tbaa !21
end_hunk_1
begin_hunk_2_@zend_string_only_has_ascii_alphanumeric:bb.a
switch.hole_check:                                ; preds = %switch.early.test
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 541165879423, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %switch.hole_check, %bb.b, %.lr.ph, %bb.a
  %.not.not.not.lcssa = phi i1 [ true, %bb.a ], [ false, %switch.hole_check ], [ false, %.lr.ph ], [ true, %bb.b ]
  ret i1 %.not.not.not.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @increment_function(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.am, %bb.a
  %.058.ph = phi ptr [ %i.dq, %bb.am ], [ %0, %bb.a ] ; 39 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.058.ph, i64 8 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.aq
  %i.f = load i8, ptr %i.e, align 8, !tbaa !19
  switch i8 %i.f, label %bb.ar [
    i8 4, label %bb.c
    i8 5, label %bb.e
    i8 1, label %bb.f
    i8 6, label %bb.g
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 10, label %bb.am
    i8 8, label %bb.an
    i8 9, label %.loopexit
    i8 7, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  callbr void asm sideeffect "addq $$1,($0)\0A\09jo  ${1:l}\0A", "r,!i,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.058.ph) #24
          to label %fast_long_increment_function.exit [label %bb.d], !srcloc !138

bb.d:                                             ; preds = %bb.c
  store double f0x43E0000000000000, ptr %.058.ph, align 8, !tbaa !19
  store i32 5, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_increment_function.exit

bb.e:                                             ; preds = %bb.b
  %i.g = load double, ptr %.058.ph, align 8, !tbaa !19
  %i.h = fadd double %i.g, 1.000000e+00
  store double %i.h, ptr %.058.ph, align 8, !tbaa !19
  br label %fast_long_increment_function.exit

bb.f:                                             ; preds = %bb.b
  store i64 1, ptr %.058.ph, align 8, !tbaa !19
  store i32 4, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_increment_function.exit

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.i = load ptr, ptr %.058.ph, align 8, !tbaa !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = icmp sgt i8 %i.k, 57
  br i1 %i.l, label %is_numeric_str_function.exit.thread, label %is_numeric_str_function.exit

is_numeric_str_function.exit:                     ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  %i.o = call zeroext i8 @_is_numeric_string_ex(ptr noundef nonnull %i.j, i64 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  switch i8 %i.o, label %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge [
    i8 4, label %bb.h
    i8 5, label %bb.m
  ]

is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge: ; preds = %is_numeric_str_function.exit
  %.pre = load ptr, ptr %.058.ph, align 8, !tbaa !19
  br label %is_numeric_str_function.exit.thread

bb.h:                                             ; preds = %is_numeric_str_function.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.058.ph, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19
  %.not.i68 = icmp eq i8 %i.q, 0
  br i1 %.not.i68, label %zval_ptr_dtor_str.exit70, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %.058.ph, align 8, !tbaa !19 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.u, ptr %i.r, align 4, !tbaa !21
  %.not3.i69 = icmp eq i32 %i.u, 0
  br i1 %.not3.i69, label %bb.j, label %zval_ptr_dtor_str.exit70

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %.058.ph, align 8, !tbaa !19
  call void @_efree(ptr noundef %i.v) #24
  br label %zval_ptr_dtor_str.exit70

zval_ptr_dtor_str.exit70:                         ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775807
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %zval_ptr_dtor_str.exit70
  store double f0x43E0000000000000, ptr %.058.ph, align 8, !tbaa !19
  br label %.thread.sink.split

bb.l:                                             ; preds = %zval_ptr_dtor_str.exit70
  %i.y = add nsw i64 %i.w, 1
  store i64 %i.y, ptr %.058.ph, align 8, !tbaa !19
  br label %.thread.sink.split

bb.m:                                             ; preds = %is_numeric_str_function.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.058.ph, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %zval_ptr_dtor_str.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %.058.ph, align 8, !tbaa !19 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21 ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !21
  %.not3.i = icmp eq i32 %i.ae, 0
  br i1 %.not3.i, label %bb.o, label %zval_ptr_dtor_str.exit

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %.058.ph, align 8, !tbaa !19
  call void @_efree(ptr noundef %i.af) #24
  br label %zval_ptr_dtor_str.exit

zval_ptr_dtor_str.exit:                           ; preds = %bb.m, %bb.n, %bb.o
  %i.ag = load double, ptr %i.b, align 8, !tbaa !85
  %i.ah = fadd double %i.ag, 1.000000e+00
  store double %i.ah, ptr %.058.ph, align 8, !tbaa !19
  br label %.thread.sink.split

is_numeric_str_function.exit.thread:              ; preds = %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge, %bb.g
  %i.ai = phi ptr [ %.pre, %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge ], [ %i.i, %bb.g ] ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 5 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = and i32 %i.am, 64
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.p, label %zend_string_addref.exit.i

bb.p:                                             ; preds = %is_numeric_str_function.exit.thread
  %i.ao = load i32, ptr %i.ai, align 8, !tbaa !21
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ai, align 8, !tbaa !21
  br label %zend_string_addref.exit.i

zend_string_addref.exit.i:                        ; preds = %bb.p, %is_numeric_str_function.exit.thread
  call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.42) #24
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not.i71 = icmp eq ptr %i.aq, null
  br i1 %.not.i71, label %bb.v, label %bb.q

bb.q:                                             ; preds = %zend_string_addref.exit.i
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !19 ; 2 uses
  %i.as = and i32 %i.ar, 64
  %.not.i93.i = icmp eq i32 %i.as, 0
  br i1 %.not.i93.i, label %bb.r, label %increment_string.exit

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.au = icmp ne i32 %i.at, 0
  call void @llvm.assume(i1 %i.au)
  %i.av = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.av, ptr %i.ai, align 8, !tbaa !21
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %increment_string.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = and i32 %i.ar, 128
  %.not5.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not5.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ai) #24
  br label %increment_string.exit

bb.u:                                             ; preds = %bb.s
  call void @_efree(ptr noundef nonnull %i.ai) #24
  br label %increment_string.exit

bb.v:                                             ; preds = %zend_string_addref.exit.i
  call void @zval_ptr_dtor(ptr noundef nonnull %.058.ph) #24
  store ptr %i.ai, ptr %.058.ph, align 8, !tbaa !19
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !19
  %3 = shl i32 %i.ay, 2
  %4 = and i32 %3, 256                            ; 2 uses
  %5 = xor i32 %4, 262
  store i32 %5, ptr %i.e, align 8, !tbaa !19
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !24 ; 9 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !54

bb.w:                                             ; preds = %bb.v
  call void @zval_ptr_dtor(ptr noundef nonnull %.058.ph) #24
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zend_one_char_string, i64 392), align 8, !tbaa !87
  store ptr %i.bb, ptr %.058.ph, align 8, !tbaa !19
  store i32 6, ptr %i.e, align 8, !tbaa !19
  br label %increment_string.exit

bb.x:                                             ; preds = %bb.v
  %.not88.not.i = icmp eq i32 %4, 0
  br i1 %.not88.not.i, label %bb.y, label %zend_string_init.exit94.i

zend_string_init.exit94.i:                        ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bd = and i64 %i.az, -8
  %i.be = add i64 %i.bd, 32
  %i.bf = call noalias ptr @_emalloc(i64 noundef %i.be) #26 ; 6 uses
  store i32 1, ptr %i.bf, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 22, ptr %i.bg, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.az, ptr %i.bi, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bc, i64 %i.az, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.az
  store i8 0, ptr %i.bk, align 1, !tbaa !19
  store ptr %i.bf, ptr %.058.ph, align 8, !tbaa !19
  store i32 262, ptr %i.e, align 8, !tbaa !19
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bl = load i32, ptr %i.ai, align 8, !tbaa !21
  %i.bm = icmp ugt i32 %i.bl, 1
  br i1 %i.bm, label %zend_string_init.exit.i, label %bb.z

zend_string_init.exit.i:                          ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bo = and i64 %i.az, -8
  %i.bp = add i64 %i.bo, 32
  %i.bq = call noalias ptr @_emalloc(i64 noundef %i.bp) #26 ; 6 uses
  store i32 1, ptr %i.bq, align 4, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 22, ptr %i.br, align 4, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.az, ptr %i.bt, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 8 %i.bn, i64 %i.az, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.az
  store i8 0, ptr %i.bv, align 1, !tbaa !19
  store ptr %i.bq, ptr %.058.ph, align 8, !tbaa !19
  %i.bw = load i32, ptr %i.ai, align 8, !tbaa !21 ; 2 uses
  %i.bx = icmp ne i32 %i.bw, 0
  call void @llvm.assume(i1 %i.bx)
  %i.by = add i32 %i.bw, -1
  store i32 %i.by, ptr %i.ai, align 8, !tbaa !21
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !89
  %i.ca = load i32, ptr %i.al, align 4, !tbaa !19
  %i.cb = and i32 %i.ca, -513
  store i32 %i.cb, ptr %i.al, align 4, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %zend_string_init.exit.i, %zend_string_init.exit94.i
  %i.cc = load ptr, ptr %.058.ph, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  br label %bb.ab

bb.ab:                                            ; preds = %select.unfold.i, %bb.aa
  %.079.in.i = phi i64 [ %i.ak, %bb.aa ], [ %.079.i, %select.unfold.i ]
  %.079.i = add i64 %.079.in.i, -1                ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.079.i ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19  ; 9 uses
  %i.cg = add i8 %i.cf, -97
  %or.cond.i = icmp ult i8 %i.cg, 26
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = icmp eq i8 %i.cf, 122                   ; 2 uses
  %i.ci = add nuw nsw i8 %i.cf, 1
  %storemerge90.i = select i1 %i.ch, i8 97, i8 %i.ci
  store i8 %storemerge90.i, ptr %i.ce, align 1, !tbaa !19
  br i1 %i.ch, label %select.unfold.i, label %increment_string.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cj = add i8 %i.cf, -65
  %or.cond3.i = icmp ult i8 %i.cj, 26
  br i1 %or.cond3.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ck = icmp eq i8 %i.cf, 90                    ; 2 uses
  %i.cl = add nuw nsw i8 %i.cf, 1
  %storemerge89.i = select i1 %i.ck, i8 65, i8 %i.cl
  store i8 %storemerge89.i, ptr %i.ce, align 1, !tbaa !19
  br i1 %i.ck, label %select.unfold.i, label %increment_string.exit

bb.af:                                            ; preds = %bb.ad
  %i.cm = add i8 %i.cf, -48
  %or.cond5.i = icmp ult i8 %i.cm, 10
  br i1 %or.cond5.i, label %bb.ag, label %increment_string.exit

bb.ag:                                            ; preds = %bb.af
  %i.cn = icmp eq i8 %i.cf, 57                    ; 2 uses
  %i.co = add nuw nsw i8 %i.cf, 1
  %storemerge.i = select i1 %i.cn, i8 48, i8 %i.co
  store i8 %storemerge.i, ptr %i.ce, align 1, !tbaa !19
  br i1 %i.cn, label %select.unfold.i, label %increment_string.exit

select.unfold.i:                                  ; preds = %bb.ag, %bb.ae, %bb.ac
  %.181.i = phi i32 [ 1, %bb.ae ], [ 0, %bb.ac ], [ 2, %bb.ag ]
  %.not91.i = icmp eq i64 %.079.i, 0
  br i1 %.not91.i, label %zend_string_alloc.exit.i, label %bb.ab, !llvm.loop !137

zend_string_alloc.exit.i:                         ; preds = %select.unfold.i
  %i.cp = load ptr, ptr %.058.ph, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !24
  %i.cs = add i64 %i.cr, 1                        ; 2 uses
  %i.ct = and i64 %i.cs, -8
  %i.cu = add i64 %i.ct, 32
  %i.cv = call noalias ptr @_emalloc(i64 noundef %i.cu) #26 ; 7 uses
  store i32 1, ptr %i.cv, align 4, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 22, ptr %i.cw, align 4, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !89
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.cs, ptr %i.cy, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 25
  %i.db = load ptr, ptr %.058.ph, align 8, !tbaa !19 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 8 %i.dc, i64 %i.de, i1 false)
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 1
  store i8 0, ptr %i.dg, align 1, !tbaa !19
  %switch.cast = trunc nuw nsw i32 %.181.i to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 3228001, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.cz, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !19 ; 2 uses
  %i.dj = and i32 %i.di, 64
  %.not.i95.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i95.i, label %bb.ah, label %zend_string_free.exit.i

bb.ah:                                            ; preds = %zend_string_alloc.exit.i
  %i.dk = and i32 %i.di, 128
  %.not4.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not4.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.db) #24
  br label %zend_string_free.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @_efree(ptr noundef nonnull %i.db) #24
  br label %zend_string_free.exit.i

zend_string_free.exit.i:                          ; preds = %bb.aj, %bb.ai, %zend_string_alloc.exit.i
  store ptr %i.cv, ptr %.058.ph, align 8, !tbaa !19
  store i32 262, ptr %i.e, align 8, !tbaa !19
  br label %increment_string.exit

increment_string.exit:                            ; preds = %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.q, %bb.r, %bb.t, %bb.u, %bb.w, %zend_string_free.exit.i
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not66 = icmp eq ptr %i.dl, null
  br i1 %.not66, label %.thread, label %bb.ak

.thread.sink.split:                               ; preds = %bb.k, %bb.l, %zval_ptr_dtor_str.exit
  %.sink = phi i32 [ 5, %zval_ptr_dtor_str.exit ], [ 4, %bb.l ], [ 5, %bb.k ]
  store i32 %.sink, ptr %i.e, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %increment_string.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %fast_long_increment_function.exit

bb.ak:                                            ; preds = %increment_string.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit78

bb.al:                                            ; preds = %bb.b, %bb.b
  %i.dm = load ptr, ptr %.058.ph, align 8, !tbaa !19
  %i.dn = load i32, ptr %i.e, align 8, !tbaa !19
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.24) #24
  call void @zval_ptr_dtor(ptr noundef nonnull %.058.ph) #24
  store ptr %i.dm, ptr %.058.ph, align 8, !tbaa !19
  store i32 %i.dn, ptr %i.e, align 8, !tbaa !19
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not65 = icmp eq ptr %i.do, null
  br i1 %.not65, label %fast_long_increment_function.exit, label %.loopexit78

bb.am:                                            ; preds = %bb.b
  %i.dp = load ptr, ptr %.058.ph, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  br label %.outer

bb.an:                                            ; preds = %bb.b
  %i.dr = load ptr, ptr %.058.ph, align 8, !tbaa !19
end_hunk_2
begin_hunk_3_@decrement_function
define dso_local range(i32 -1, 1) i32 @decrement_function(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %1 = alloca %struct._zval_struct, align 8       ; 5 uses
  %2 = alloca %struct._zval_struct, align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.z, %bb.a
  %.088.ph = phi ptr [ %i.bg, %bb.z ], [ %0, %bb.a ] ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.088.ph, i64 8 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.ad
  %i.f = load i8, ptr %i.e, align 8, !tbaa !19
  switch i8 %i.f, label %bb.ae [
    i8 4, label %bb.c
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.y
    i8 10, label %bb.z
    i8 8, label %bb.aa
    i8 9, label %.loopexit
    i8 7, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  callbr void asm sideeffect "subq $$1,($0)\0A\09jo  ${1:l}\0A", "r,!i,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.088.ph) #24
          to label %fast_long_decrement_function.exit [label %bb.d], !srcloc !139

bb.d:                                             ; preds = %bb.c
  store double f0xC3E0000000000000, ptr %.088.ph, align 8, !tbaa !19
  store i32 5, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.e:                                             ; preds = %bb.b
  %i.g = load double, ptr %.088.ph, align 8, !tbaa !19
  %i.h = fadd double %i.g, -1.000000e+00
  store double %i.h, ptr %.088.ph, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.088.ph, align 8, !tbaa !19 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.26) #24
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not104 = icmp eq ptr %i.m, null
  br i1 %.not104, label %bb.h, label %zend_string_release.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @zval_ptr_dtor(ptr noundef nonnull %.088.ph) #24
  store i64 -1, ptr %.088.ph, align 8, !tbaa !19
  store i32 4, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.i:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !19
  %i.p = icmp sgt i8 %i.o, 57
  br i1 %i.p, label %is_numeric_str_function.exit.thread, label %is_numeric_str_function.exit

is_numeric_str_function.exit:                     ; preds = %bb.i
  %i.q = call zeroext i8 @_is_numeric_string_ex(ptr noundef nonnull %i.n, i64 noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  switch i8 %i.q, label %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge [
    i8 4, label %bb.j
    i8 5, label %bb.o
  ]

is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge: ; preds = %is_numeric_str_function.exit
  %.pre = load ptr, ptr %.088.ph, align 8, !tbaa !19
  br label %is_numeric_str_function.exit.thread

bb.j:                                             ; preds = %is_numeric_str_function.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.088.ph, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %.not.i106 = icmp eq i8 %i.s, 0
  br i1 %.not.i106, label %zval_ptr_dtor_str.exit108, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %.088.ph, align 8, !tbaa !19 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  call void @llvm.assume(i1 %i.v)
  %i.w = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !21
  %.not3.i107 = icmp eq i32 %i.w, 0
  br i1 %.not3.i107, label %bb.l, label %zval_ptr_dtor_str.exit108

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %.088.ph, align 8, !tbaa !19
  call void @_efree(ptr noundef %i.x) #24
  br label %zval_ptr_dtor_str.exit108

zval_ptr_dtor_str.exit108:                        ; preds = %bb.j, %bb.k, %bb.l
  %i.y = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %zval_ptr_dtor_str.exit108
  store double f0xC3E0000000000000, ptr %.088.ph, align 8, !tbaa !19
  store i32 5, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.n:                                             ; preds = %zval_ptr_dtor_str.exit108
  %i.aa = add nsw i64 %i.y, -1
  store i64 %i.aa, ptr %.088.ph, align 8, !tbaa !19
  store i32 4, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.o:                                             ; preds = %is_numeric_str_function.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.088.ph, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %zval_ptr_dtor_str.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr %.088.ph, align 8, !tbaa !19 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !21
  %.not3.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i, label %bb.q, label %zval_ptr_dtor_str.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load ptr, ptr %.088.ph, align 8, !tbaa !19
  call void @_efree(ptr noundef %i.ah) #24
  br label %zval_ptr_dtor_str.exit

zval_ptr_dtor_str.exit:                           ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load double, ptr %i.b, align 8, !tbaa !85
  %i.aj = fadd double %i.ai, -1.000000e+00
  store double %i.aj, ptr %.088.ph, align 8, !tbaa !19
  store i32 5, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

is_numeric_str_function.exit.thread:              ; preds = %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge, %bb.i
  %i.ak = phi ptr [ %.pre, %is_numeric_str_function.exit.is_numeric_str_function.exit.thread_crit_edge ], [ %i.i, %bb.i ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = and i32 %i.am, 64
  %.not.i109 = icmp eq i32 %i.an, 0
  br i1 %.not.i109, label %bb.r, label %zend_string_addref.exit

bb.r:                                             ; preds = %is_numeric_str_function.exit.thread
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !21
  br label %zend_string_addref.exit

zend_string_addref.exit:                          ; preds = %is_numeric_str_function.exit.thread, %bb.r
  call void (i32, ptr, ...) @zend_error(i32 noundef 8192, ptr noundef nonnull @.str.27) #24
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not102 = icmp eq ptr %i.aq, null
  br i1 %.not102, label %zend_string_release.exit, label %bb.s

bb.s:                                             ; preds = %zend_string_addref.exit
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !19 ; 2 uses
  %i.as = and i32 %i.ar, 64
  %.not.i110 = icmp eq i32 %i.as, 0
  br i1 %.not.i110, label %bb.t, label %zend_string_release.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !21 ; 2 uses
  %i.au = icmp ne i32 %i.at, 0
  call void @llvm.assume(i1 %i.au)
  %i.av = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.av, ptr %i.ak, align 4, !tbaa !21
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %zend_string_release.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ax = and i32 %i.ar, 128
  %.not5.i = icmp eq i32 %i.ax, 0
  br i1 %.not5.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ak) #24
  br label %zend_string_release.exit.thread

bb.w:                                             ; preds = %bb.u
  call void @_efree(ptr noundef nonnull %i.ak) #24
  br label %zend_string_release.exit.thread

zend_string_release.exit:                         ; preds = %zend_string_addref.exit
  call void @zval_ptr_dtor(ptr noundef nonnull %.088.ph) #24
  store ptr %i.ak, ptr %.088.ph, align 8, !tbaa !19
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !19
  %3 = shl i32 %i.ay, 2
  %4 = and i32 %3, 256
  %5 = xor i32 %4, 262
  store i32 %5, ptr %i.e, align 8, !tbaa !19
  br label %fast_long_decrement_function.exit

bb.x:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %.088.ph, align 8, !tbaa !19
  %i.ba = load i32, ptr %i.e, align 8, !tbaa !19
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.28) #24
  call void @zval_ptr_dtor(ptr noundef nonnull %.088.ph) #24
  store ptr %i.az, ptr %.088.ph, align 8, !tbaa !19
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !19
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not101 = icmp eq ptr %i.bb, null
  br i1 %.not101, label %fast_long_decrement_function.exit, label %zend_string_release.exit.thread

bb.y:                                             ; preds = %bb.b, %bb.b
  %i.bc = load ptr, ptr %.088.ph, align 8, !tbaa !19
  %i.bd = load i32, ptr %i.e, align 8, !tbaa !19
  call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.29) #24
  call void @zval_ptr_dtor(ptr noundef nonnull %.088.ph) #24
  store ptr %i.bc, ptr %.088.ph, align 8, !tbaa !19
  store i32 %i.bd, ptr %i.e, align 8, !tbaa !19
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !80
  %.not100 = icmp eq ptr %i.be, null
  br i1 %.not100, label %fast_long_decrement_function.exit, label %zend_string_release.exit.thread

bb.z:                                             ; preds = %bb.b
  %i.bf = load ptr, ptr %.088.ph, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %.outer

bb.aa:                                            ; preds = %bb.b
  %i.bh = load ptr, ptr %.088.ph, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !99
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 1, ptr %1, align 8, !tbaa !19
  store i32 4, ptr %i.c, align 8, !tbaa !19
  %i.bm = load ptr, ptr %.088.ph, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.br = call i32 %i.bq(i8 noundef zeroext 2, ptr noundef nonnull %.088.ph, ptr noundef nonnull %.088.ph, ptr noundef nonnull %1) #24
  %.not99 = icmp eq i32 %i.br, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.not99, label %zend_string_release.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bs = load ptr, ptr %.088.ph, align 8, !tbaa !19 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34
  %i.bx = call i32 %i.bw(ptr noundef %i.bs, ptr noundef nonnull %2, i32 noundef 19) #24
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @zval_ptr_dtor(ptr noundef nonnull %.088.ph) #24
  %i.bz = load ptr, ptr %2, align 8, !tbaa !19
  %i.ca = load i32, ptr %i.d, align 8, !tbaa !19
  store ptr %i.bz, ptr %.088.ph, align 8, !tbaa !19
  store i32 %i.ca, ptr %i.e, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.b, %.thread
  %i.cb = call ptr @zend_zval_value_name(ptr noundef nonnull %.088.ph) #24
  call void (ptr, ...) @zend_type_error(ptr noundef nonnull @.str.30, ptr noundef %i.cb) #24
  br label %zend_string_release.exit.thread

bb.ae:                                            ; preds = %bb.b
  unreachable

fast_long_decrement_function.exit:                ; preds = %zend_string_release.exit, %bb.d, %bb.c, %zval_ptr_dtor_str.exit, %bb.n, %bb.m, %bb.x, %bb.y, %bb.h, %bb.e
  br label %zend_string_release.exit.thread

zend_string_release.exit.thread:                  ; preds = %bb.ab, %bb.s, %bb.t, %bb.v, %bb.w, %bb.g, %bb.x, %bb.y, %fast_long_decrement_function.exit, %.loopexit
  %.6 = phi i32 [ 0, %fast_long_decrement_function.exit ], [ -1, %bb.s ], [ -1, %bb.g ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %.loopexit ], [ -1, %bb.w ], [ -1, %bb.v ], [ -1, %bb.t ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @zend_object_is_true(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = call i32 %i.e(ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef 18) #24
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !19
  %i.j = icmp eq i8 %i.i, 3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void (i32, ptr, ...) @zend_error(i32 noundef 4096, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.o) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_update_current_locale() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @__ctype_get_mb_cur_max() #24
  %i.b = icmp ugt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @nl_langinfo(i32 noundef 14) #24 ; 14 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 154), align 2, !tbaa !153
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 155), align 1, !tbaa !154
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 11 uses
  %i.e = icmp eq ptr %i.c, @.str.32
  br i1 %i.e, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i12 = icmp eq i64 %i.d, 0
  br i1 %.not.i12, label %zend_binary_strcasecmp.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.d, 1
  br i1 %.not.i, label %zend_binary_strcasecmp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19
  %i.h = and i8 %i.g, -33
  %.not24.i.121 = icmp eq i8 %i.h, 84
  br i1 %.not24.i.121, label %bb.g, label %.critedge, !llvm.loop !2

bb.g:                                             ; preds = %bb.f
  %.not.i.122 = icmp eq i64 %i.d, 2
  br i1 %.not.i.122, label %zend_binary_strcasecmp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = and i8 %i.j, -33
  %.not24.i.2 = icmp eq i8 %i.k, 70
  br i1 %.not24.i.2, label %bb.i, label %.critedge, !llvm.loop !2

bb.i:                                             ; preds = %bb.h
  %.not.i.2 = icmp eq i64 %i.d, 3
  br i1 %.not.i.2, label %zend_binary_strcasecmp.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %.not24.i.3 = icmp eq i8 %i.m, 45
  br i1 %.not24.i.3, label %bb.k, label %.critedge, !llvm.loop !2

bb.k:                                             ; preds = %bb.j
  %.not.i.3 = icmp eq i64 %i.d, 4
  br i1 %.not.i.3, label %zend_binary_strcasecmp.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %.not24.i.4 = icmp eq i8 %i.o, 56
  br i1 %.not24.i.4, label %zend_binary_strcasecmp.exit, label %.critedge, !llvm.loop !2

.lr.ph:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.c, align 1, !tbaa !19
  %i.q = and i8 %i.p, -33
  %.not24.i = icmp eq i8 %i.q, 85
  br i1 %.not24.i, label %bb.e, label %.critedge, !llvm.loop !2

end_hunk_3
