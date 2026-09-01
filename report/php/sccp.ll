Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sccp?download=true
inline.NumInlined: 69
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ct_eval_isset_obj:bb.a
  %i.ae = load double, ptr %.0.i.i, align 8, !tbaa !47
  %i.af = fcmp uno double %i.ae, 0.000000e+00
  br i1 %i.af, label %ct_eval_isset_isempty.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ag = call zeroext i1 @zend_is_true(ptr noundef nonnull %.0.i.i) #11
  %i.ah = select i1 %i.ag, i32 2, i32 3
  br label %ct_eval_isset_isempty.exit.sink.split

bb.p:                                             ; preds = %bb.a
  %i.ai = and i32 %1, 1
  %i.aj = or disjoint i32 %i.ai, 2
  br label %ct_eval_isset_isempty.exit.sink.split

ct_eval_isset_isempty.exit.sink.split:            ; preds = %bb.k, %bb.m, %bb.o, %bb.p
  %.sroa.2.0.ph.sink.i.sink = phi i32 [ %i.aj, %bb.p ], [ %i.ah, %bb.o ], [ %i.z, %bb.k ], [ 2, %bb.m ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.2.0.ph.sink.i.sink, ptr %i.ak, align 8, !tbaa !47
  br label %ct_eval_isset_isempty.exit

ct_eval_isset_isempty.exit:                       ; preds = %ct_eval_isset_isempty.exit.sink.split, %bb.b, %bb.i, %bb.h, %bb.m, %bb.n
  %.1 = phi i32 [ -1, %bb.m ], [ -1, %bb.h ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.n ], [ 0, %ct_eval_isset_isempty.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ct_eval_isset_isempty(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  %.not9 = icmp eq ptr %2, null                   ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not9, label %ct_eval_bool_cast.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  %.not10 = icmp eq i8 %i.c, 1
  %i.d = select i1 %.not10, i32 2, i32 3
  br label %ct_eval_bool_cast.exit.sink.split

bb.d:                                             ; preds = %bb.a
  br i1 %.not9, label %ct_eval_bool_cast.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47
  switch i8 %i.f, label %bb.h [
    i8 -3, label %bb.f
    i8 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %2, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !130
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %ct_eval_bool_cast.exit, label %ct_eval_bool_cast.exit.sink.split

bb.g:                                             ; preds = %bb.e
  %i.k = load double, ptr %2, align 8, !tbaa !47
  %i.l = fcmp uno double %i.k, 0.000000e+00
  br i1 %i.l, label %ct_eval_bool_cast.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.m = tail call zeroext i1 @zend_is_true(ptr noundef nonnull %2) #11
  %i.n = select i1 %i.m, i32 2, i32 3
  br label %ct_eval_bool_cast.exit.sink.split

ct_eval_bool_cast.exit.sink.split:                ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.c
  %.sroa.2.0.ph.sink = phi i32 [ 3, %bb.d ], [ %i.d, %bb.c ], [ 2, %bb.b ], [ %i.n, %bb.h ], [ 2, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.2.0.ph.sink, ptr %i.o, align 8, !tbaa !47
  br label %ct_eval_bool_cast.exit

ct_eval_bool_cast.exit:                           ; preds = %ct_eval_bool_cast.exit.sink.split, %bb.g, %bb.f
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.f ], [ 0, %ct_eval_bool_cast.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ct_eval_func_call(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 56), align 8, !tbaa !186
  %i.b = tail call ptr @zend_hash_find(ptr noundef %i.a, ptr noundef %2) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !135, !noundef !135 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !47
  %.not9 = icmp eq i8 %i.d, 1
  br i1 %.not9, label %bb.c, label %zend_hash_find_ptr.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @ct_eval_func_call_ex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %3, ptr noundef %4)
  br label %zend_hash_find_ptr.exit.thread

zend_hash_find_ptr.exit.thread:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ct_eval_func_call_ex(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %5 = alloca %struct._zend_execute_data, align 8 ; 6 uses
  %6 = alloca %struct._zend_op, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 4 uses
  %i.c = icmp eq i32 %3, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !140    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47
  %i.g = icmp eq i8 %i.f, 6
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.i = tail call i32 @zend_optimizer_eval_special_func_call(ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef %i.h) #11
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %can_ct_eval_func_call.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %2, i64 4
  %.val = load i32, ptr %i.k, align 4, !tbaa !47
  %i.l = and i32 %.val, 134217728
  %.not.i52 = icmp eq i32 %i.l, 0
  br i1 %.not.i52, label %bb.e, label %can_ct_eval_func_call.exit.thread54

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !177  ; 2 uses
  %i.o = icmp eq i64 %i.n, 7
  br i1 %i.o, label %zend_string_equals_cstr.exit10.i, label %zend_string_equals_cstr.exit10.thread.i

zend_string_equals_cstr.exit10.i:                 ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 1852991844
  %i.s = getelementptr i8, ptr %i.p, i64 3
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1701667182
  %i.v = or i32 %i.r, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not.i9.i = icmp eq i32 %i.x, 0
  br i1 %.not.i9.i, label %can_ct_eval_func_call.exit.thread54, label %can_ct_eval_func_call.exit.thread

zend_string_equals_cstr.exit10.thread.i:          ; preds = %bb.e
  %i.y = icmp eq i32 %3, 2
  %i.z = icmp eq i64 %i.n, 10
  %or.cond.i = and i1 %i.y, %i.z
  br i1 %or.cond.i, label %zend_string_equals_cstr.exit.i, label %can_ct_eval_func_call.exit.thread

zend_string_equals_cstr.exit.i:                   ; preds = %zend_string_equals_cstr.exit10.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 %i.ab, 7309453737124328563
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i64
  %i.ag = xor i64 %i.af, 29793
  %i.ah = or i64 %i.ac, %i.ag
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.f, label %can_ct_eval_func_call.exit.thread

bb.f:                                             ; preds = %zend_string_equals_cstr.exit.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !140   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 8, !tbaa !47
  %i.an = icmp eq i8 %i.am, 6
  br i1 %i.an, label %bb.g, label %can_ct_eval_func_call.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !140 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !47
  %i.as = icmp eq i8 %i.ar, 4
  br i1 %i.as, label %can_ct_eval_func_call.exit, label %can_ct_eval_func_call.exit.thread

can_ct_eval_func_call.exit:                       ; preds = %bb.g
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !177
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !47
  %i.ax = tail call { i64, i64 } asm "mulq $3\0A\09adc $$0,$1", "=&{ax},=&{dx},%0,rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.av, i64 %i.aw) #15, !srcloc !199 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = icmp ult i64 %i.ay, 65536
  %7 = icmp eq i64 %i.az, 0
  %spec.select.i = select i1 %7, i1 %i.ba, i1 false
  br i1 %spec.select.i, label %can_ct_eval_func_call.exit.thread54, label %can_ct_eval_func_call.exit.thread

can_ct_eval_func_call.exit.thread54:              ; preds = %bb.d, %zend_string_equals_cstr.exit10.i, %can_ct_eval_func_call.exit
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.bd, align 8, !tbaa !221
  store ptr %6, ptr %5, align 8, !tbaa !223
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 60, ptr %i.be, align 4, !tbaa !87
  %i.bf = zext i32 %3 to i64
  %i.bg = call noalias ptr @_safe_emalloc(i64 noundef %i.bf, i64 noundef 16, i64 noundef 80) #11 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, i8 0, i64 80, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr %5, ptr %i.bh, align 8, !tbaa !224
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !200
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 844), align 4, !tbaa !225
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %2, ptr %i.bi, align 8, !tbaa !221
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 %3, ptr %i.bj, align 4, !tbaa !47
  %.not61 = icmp eq i32 %3, 0
  br i1 %.not61, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %can_ct_eval_func_call.exit.thread54
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.bk, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47
  call void %i.bm(ptr noundef nonnull %i.bg, ptr noundef nonnull %1) #11
  br label %._crit_edge60

.lr.ph:                                           ; preds = %can_ct_eval_func_call.exit.thread54, %bb.i
  %.04856 = phi i32 [ %i.ca, %bb.i ], [ 0, %can_ct_eval_func_call.exit.thread54 ] ; 3 uses
  %i.bn = sext i32 %.04856 to i64
  %i.bo = getelementptr [16 x i8], ptr %i.bg, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 80
  %i.bq = zext i32 %.04856 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !140 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !47 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !47
  %i.bw = getelementptr i8, ptr %i.bo, i64 88
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !47
  %i.bx = and i32 %i.bv, 65280
  %.not51 = icmp eq i32 %i.bx, 0
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.by = load i32, ptr %i.bt, align 4, !tbaa !77
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.ca = add nuw i32 %.04856, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %3
  br i1 %exitcond.not, label %.lr.ph59.preheader, label %.lr.ph, !llvm.loop !226

.lr.ph59.preheader:                               ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  call void %i.cd(ptr noundef nonnull %i.bg, ptr noundef nonnull %1) #11
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %zval_ptr_dtor_nogc.exit
  %.157 = phi i32 [ %i.co, %zval_ptr_dtor_nogc.exit ], [ 0, %.lr.ph59.preheader ] ; 2 uses
  %i.ce = sext i32 %.157 to i64
  %i.cf = getelementptr [16 x i8], ptr %i.bg, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 80     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 89
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !47
  %.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph59
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !77 ; 2 uses
  %i.cl = icmp ne i32 %i.ck, 0
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !77
  %.not3.i = icmp eq i32 %i.cm, 0
  br i1 %.not3.i, label %bb.k, label %zval_ptr_dtor_nogc.exit

bb.k:                                             ; preds = %bb.j
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !47
  call void @rc_dtor_func(ptr noundef %i.cn) #11
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %.lr.ph59, %bb.j, %bb.k
  %i.co = add nuw i32 %.157, 1                    ; 2 uses
  %exitcond63.not = icmp eq i32 %i.co, %3
  br i1 %exitcond63.not, label %._crit_edge60, label %.lr.ph59, !llvm.loop !227

._crit_edge60:                                    ; preds = %zval_ptr_dtor_nogc.exit, %._crit_edge.thread
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !228
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge60
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #11
  call void @zend_clear_exception() #11
  br label %bb.o

bb.m:                                             ; preds = %._crit_edge60
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 844), align 4, !tbaa !225
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @zval_ptr_dtor(ptr noundef nonnull %1) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %.0 = phi i32 [ -1, %bb.l ], [ -1, %bb.n ], [ 0, %bb.m ]
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 844), align 4, !tbaa !225
  call void @_efree(ptr noundef nonnull %i.bg) #11
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %can_ct_eval_func_call.exit.thread

can_ct_eval_func_call.exit.thread:                ; preds = %zend_string_equals_cstr.exit10.thread.i, %bb.f, %bb.g, %zend_string_equals_cstr.exit.i, %zend_string_equals_cstr.exit10.i, %can_ct_eval_func_call.exit, %bb.c, %bb.o
  %.049 = phi i32 [ 0, %bb.c ], [ %.0, %bb.o ], [ -1, %can_ct_eval_func_call.exit ], [ -1, %zend_string_equals_cstr.exit10.i ], [ -1, %zend_string_equals_cstr.exit.i ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %zend_string_equals_cstr.exit10.thread.i ]
  ret i32 %.049
}

declare void @rc_dtor_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare ptr @zend_array_dup(ptr noundef) local_unnamed_addr #2

declare i32 @zend_hash_del(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zend_hash_index_del(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @zend_dval_to_lval_slow(double noundef) local_unnamed_addr #2

declare zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_index_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zend_optimizer_eval_binary_op(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @fetch_array_elem(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.c, label %bb.o [
    i8 6, label %bb.j
    i8 2, label %bb.b
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !47
  %i.e = tail call ptr @zend_hash_index_find(ptr noundef %i.d, i64 noundef 0) #11
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = tail call ptr @zend_hash_index_find(ptr noundef %i.f, i64 noundef 1) #11
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !47
  %i.i = load i64, ptr %2, align 8, !tbaa !47
  %i.j = tail call ptr @zend_hash_index_find(ptr noundef %i.h, i64 noundef %i.i) #11
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.k = load double, ptr %2, align 8, !tbaa !47  ; 7 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ueq double %i.l, +inf
  br i1 %i.m, label %zend_dval_to_lval_silent.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.n = fcmp oge double %i.k, f0x43E0000000000000
  %i.o = fcmp olt double %i.k, f0xC3E0000000000000
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.g, label %bb.h
end_hunk_0
