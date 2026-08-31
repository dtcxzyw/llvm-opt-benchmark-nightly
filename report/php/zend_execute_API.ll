Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_execute_API?download=true
inline.NumInlined: 26
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zval_update_constant_with_ctx:bb.a
  store i32 %i.az, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge54

.critedge56:                                      ; preds = %.split63, %.split, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge54

.critedge54:                                      ; preds = %zval_ptr_dtor_nogc.exit, %zval_ptr_dtor_nogc.exit59, %bb.h, %.critedge, %bb.a, %.critedge56, %bb.c
  %.4 = phi i32 [ -1, %.critedge56 ], [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %.critedge ], [ 0, %bb.h ], [ 0, %zval_ptr_dtor_nogc.exit59 ], [ 0, %zval_ptr_dtor_nogc.exit ]
  ret i32 %.4
}

declare ptr @zend_get_constant_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @zval_copy_ctor_func(ptr noundef) local_unnamed_addr #1

declare i32 @zend_ast_evaluate_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rc_dtor_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zval_update_constant_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.zend_ast_evaluate_ctx, align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 1
  %i.a = call i32 @zval_update_constant_with_ctx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zval_update_constant(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.zend_ast_evaluate_ctx, align 1 ; 4 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !56 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.014.i = phi ptr [ %.0.i, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = load i8, ptr %i.c, align 8, !tbaa !12
  %.not10.i = icmp eq i8 %i.d, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %.not11.i = icmp eq ptr %i.f, null
  %or.cond = select i1 %.not10.i, i1 %.not11.i, i1 false
  br i1 %or.cond, label %bb.c, label %zend_get_executed_scope.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i, i64 48
  %.0.i = load ptr, ptr %i.g, align 8, !tbaa !176 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %zend_get_executed_scope.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 24), align 8, !tbaa !186
  br label %zend_get_executed_scope.exit

zend_get_executed_scope.exit:                     ; preds = %bb.c, %bb.b, %bb.d
  %i.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i8 0, ptr %1, align 1
  %i.j = call range(i32 -1, 1) i32 @zval_update_constant_with_ctx(ptr noundef %0, ptr noundef %i.i, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_call_user_function_impl(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct._zend_fcall_info, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 64, ptr %6, align 8, !tbaa !187
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %.sink, ptr %i.b, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  store ptr %i.d, ptr %i.c, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.f, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %2, ptr %i.h, align 8, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %3, ptr %i.i, align 8, !tbaa !191
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %4, ptr %i.j, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %5, ptr %i.k, align 8, !tbaa !193
  %i.l = call i32 @zend_call_function(ptr noundef nonnull %6, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_call_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 30 uses
  %2 = alloca %struct._zend_fcall_info_cache, align 8 ; 3 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !12
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1088), align 8, !tbaa !71, !range !88, !noundef !89
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %zend_vm_stack_free_call_frame_ex.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !180
  %.not = icmp eq ptr %i.j, null
  %.not195 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not195, label %zend_vm_stack_free_call_frame_ex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @zend_release_fcall_info_cache(ptr noundef nonnull %1) #23
  br label %zend_vm_stack_free_call_frame_ex.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not195, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %1, align 8, !tbaa !194    ; 2 uses
  %.not196 = icmp eq ptr %i.k, null
  br i1 %.not196, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %spec.store.select = phi ptr [ %1, %bb.f ], [ %2, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !189
  %i.o = call zeroext i1 @zend_is_callable_ex(ptr noundef nonnull %i.l, ptr noundef %i.n, i32 noundef 0, ptr noundef null, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %i.b) #23
  br i1 %i.o, label %zend_string_release_ex.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !189
  %i.q = call ptr @zend_get_callable_name_ex(ptr noundef nonnull %i.l, ptr noundef %i.p) #23 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !160
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.r, ptr noundef %i.s) #23
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !160
  call void @_efree(ptr noundef %i.t) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = and i32 %i.v, 64
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.i, label %zend_string_release_ex.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.q, align 4, !tbaa !95   ; 2 uses
  %i.y = icmp ne i32 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.z, ptr %i.q, align 4, !tbaa !95
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %zend_string_release_ex.exit.thread

bb.j:                                             ; preds = %bb.i
  call void @_efree(ptr noundef nonnull %i.q) #23
  br label %zend_string_release_ex.exit.thread

zend_string_release_ex.exit.thread:               ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %zend_vm_stack_free_call_frame_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.pre = load ptr, ptr %spec.store.select, align 8, !tbaa !194
  br label %bb.k

bb.k:                                             ; preds = %zend_string_release_ex.exit, %bb.f
  %i.ab = phi ptr [ %i.k, %bb.f ], [ %.pre, %zend_string_release_ex.exit ] ; 17 uses
  %.0167 = phi ptr [ %1, %bb.f ], [ %spec.store.select, %zend_string_release_ex.exit ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 10 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = and i32 %i.ad, 16
  %.not198 = icmp eq i32 %i.ae, 0
  br i1 %.not198, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.0167, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !196 ; 2 uses
  %.not199 = icmp eq ptr %i.ag, null
  br i1 %.not199, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.0167, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0170 = phi ptr [ %i.ai, %bb.m ], [ %i.ag, %bb.l ]
  %.0169 = phi i32 [ 33685504, %bb.m ], [ 33686280, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !191 ; 3 uses
  %i.al = add i32 %i.ak, 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.an = load i32, ptr %i.am, align 8, !tbaa !12
  %i.ao = add i32 %i.al, %i.an                    ; 2 uses
  %i.ap = load i8, ptr %i.ab, align 8, !tbaa !12
  %.not.i268 = icmp eq i8 %i.ap, 1
  br i1 %.not.i268, label %zend_vm_calc_used_stack.exit, label %bb.o, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 92
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !12
  %..i = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ak)
  %i.au = add i32 %i.ar, %i.ao
  %i.av = sub i32 %i.au, %..i
  br label %zend_vm_calc_used_stack.exit

zend_vm_calc_used_stack.exit:                     ; preds = %bb.n, %bb.o
  %.0.i269 = phi i32 [ %i.av, %bb.o ], [ %i.ao, %bb.n ]
  %i.aw = shl i32 %.0.i269, 4
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !198 ; 3 uses
  %i.ay = zext i32 %i.aw to i64                   ; 3 uses
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !199
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.ay
  br i1 %i.bd, label %bb.p, label %bb.q, !prof !97

bb.p:                                             ; preds = %zend_vm_calc_used_stack.exit
  %i.be = call ptr @zend_vm_stack_extend(i64 noundef %i.ay) #23
  %i.bf = or disjoint i32 %.0169, 262144
  br label %zend_vm_stack_push_call_frame_ex.exit

bb.q:                                             ; preds = %zend_vm_calc_used_stack.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !198
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %bb.p, %bb.q
  %.sink372 = phi ptr [ %i.be, %bb.p ], [ %i.ax, %bb.q ] ; 5 uses
  %.sink = phi i32 [ %i.bf, %bb.p ], [ %.0169, %bb.q ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink372, i64 24
  store ptr %i.ab, ptr %i.bh, align 8, !tbaa !161
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink372, i64 32
  store ptr %.0170, ptr %i.bi, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink372, i64 40
  store i32 %.sink, ptr %i.bj, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %.sink372, i64 44
  store i32 %i.ak, ptr %i.bk, align 4, !tbaa !12
  store ptr %.sink372, ptr %i.a, align 8, !tbaa !176
  %i.bl = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.bm = and i32 %i.bl, 2048
  %.not200 = icmp eq i32 %i.bm, 0
  br i1 %.not200, label %bb.v, label %bb.r, !prof !96

bb.r:                                             ; preds = %zend_vm_stack_push_call_frame_ex.exit
  call void @zend_deprecated_function(ptr noundef nonnull %i.ab) #23
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !180
  %.not201 = icmp eq ptr %i.bn, null
  br i1 %.not201, label %bb.v, label %bb.s, !prof !96

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !176 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !12
  %i.br = and i32 %i.bq, 262144
  %.not.i273 = icmp eq i32 %i.br, 0
  br i1 %.not.i273, label %bb.u, label %bb.t, !prof !96

bb.t:                                             ; preds = %bb.s
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !200 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !201 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bw = icmp eq ptr %i.bo, %i.bv
  call void @llvm.assume(i1 %i.bw)
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !203
  store <2 x ptr> %i.bx, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !203
  store ptr %i.bu, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 496), align 8, !tbaa !200
  call void @_efree(ptr noundef %i.bs) #23
  br label %zend_vm_stack_free_call_frame_ex.exit

bb.u:                                             ; preds = %bb.s
  store ptr %i.bo, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !198
  br label %zend_vm_stack_free_call_frame_ex.exit

bb.v:                                             ; preds = %bb.r, %zend_vm_stack_push_call_frame_ex.exit
  %i.by = load i32, ptr %i.aj, align 8, !tbaa !191
  %.not318 = icmp eq i32 %i.by, 0
  br i1 %.not318, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.au
  %.0168309 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %bb.au ] ; 5 uses
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.cd = add nuw i32 %.0168309, 1                ; 3 uses
  %i.ce = sext i32 %.0168309 to i64
  %i.cf = getelementptr [16 x i8], ptr %i.cc, i64 %i.ce ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 80     ; 2 uses
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !192
  %i.ci = zext i32 %.0168309 to i64               ; 3 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !12  ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %bb.y, !prof !97

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %i.cf, i64 88
  store i32 0, ptr %i.cn, align 8, !tbaa !12
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !12
  %i.cr = or i32 %i.cq, 67108864
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !12
  br label %bb.au

bb.y:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %i.ca, align 8, !tbaa !12 ; 3 uses
  %.not.i243 = icmp ult i32 %.0168309, %i.cs      ; 2 uses
  br i1 %.not.i243, label %zend_check_arg_send_type.exit246, label %bb.z, !prof !96

bb.z:                                             ; preds = %bb.y
  %i.ct = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.cu = and i32 %i.ct, 16384
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %zend_check_arg_send_type.exit246.thread, label %.zend_check_arg_send_type.exit246_crit_edge, !prof !96

.zend_check_arg_send_type.exit246_crit_edge:      ; preds = %bb.z
  %.pre334 = zext i32 %i.cs to i64
  br label %zend_check_arg_send_type.exit246

zend_check_arg_send_type.exit246:                 ; preds = %.zend_check_arg_send_type.exit246_crit_edge, %bb.y
  %.pre-phi = phi i64 [ %.pre334, %.zend_check_arg_send_type.exit246_crit_edge ], [ %i.ci, %bb.y ]
  %i.cw = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 2 uses
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.pre-phi
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !204
  %i.da = and i32 %i.cz, 100663296
  %.not306 = icmp eq i32 %i.da, 0
  br i1 %.not306, label %zend_check_arg_send_type.exit246.thread, label %bb.aa

bb.aa:                                            ; preds = %zend_check_arg_send_type.exit246
  %.not228 = icmp eq i8 %i.cl, 10
  br i1 %.not228, label %bb.ap, label %bb.ab, !prof !96

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i243, label %zend_check_arg_send_type.exit242, label %bb.ac, !prof !96

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.dc = and i32 %i.db, 16384
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %zend_check_arg_send_type.exit242.thread, label %.zend_check_arg_send_type.exit242_crit_edge, !prof !96

.zend_check_arg_send_type.exit242_crit_edge:      ; preds = %bb.ac
  %.pre335 = zext i32 %i.cs to i64
  br label %zend_check_arg_send_type.exit242

zend_check_arg_send_type.exit242:                 ; preds = %.zend_check_arg_send_type.exit242_crit_edge, %bb.ab
  %.pre-phi336 = phi i64 [ %.pre335, %.zend_check_arg_send_type.exit242_crit_edge ], [ %i.ci, %bb.ab ]
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %.pre-phi336
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !204
  %i.dh = and i32 %i.dg, 67108864
  %.not307 = icmp eq i32 %i.dh, 0
  br i1 %.not307, label %zend_check_arg_send_type.exit242.thread, label %bb.ap

zend_check_arg_send_type.exit242.thread:          ; preds = %bb.ac, %zend_check_arg_send_type.exit242
  call void @zend_param_must_be_ref(ptr noundef nonnull %i.ab, i32 noundef %i.cd) #23
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !180
  %.not229 = icmp eq ptr %i.di, null
  br i1 %.not229, label %bb.ar, label %bb.ad, !prof !96

bb.ad:                                            ; preds = %zend_check_arg_send_type.exit242.thread
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 44
  store i32 %.0168309, ptr %i.dk, align 4, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.bv, %.thread302, %bb.ad
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !176 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !12 ; 2 uses
  %.not.i257 = icmp eq i32 %i.dn, 0
  br i1 %.not.i257, label %zend_vm_stack_free_args.exit264, label %bb.af, !prof !97

bb.af:                                            ; preds = %bb.ae
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  br label %bb.ag

bb.ag:                                            ; preds = %zval_ptr_dtor_nogc.exit.i262, %bb.af
  %.05.i258 = phi i32 [ %i.dn, %bb.af ], [ %i.dx, %zval_ptr_dtor_nogc.exit.i262 ]
  %.0.i259 = phi ptr [ %i.do, %bb.af ], [ %i.dw, %zval_ptr_dtor_nogc.exit.i262 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i259, i64 9
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !12
  %.not.i.i260 = icmp eq i8 %i.dq, 0
  br i1 %.not.i.i260, label %zval_ptr_dtor_nogc.exit.i262, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %.0.i259, align 8, !tbaa !12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !95 ; 2 uses
  %i.dt = icmp ne i32 %i.ds, 0
  call void @llvm.assume(i1 %i.dt)
  %i.du = add i32 %i.ds, -1                       ; 2 uses
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !95
  %.not3.i.i261 = icmp eq i32 %i.du, 0
  br i1 %.not3.i.i261, label %bb.ai, label %zval_ptr_dtor_nogc.exit.i262

bb.ai:                                            ; preds = %bb.ah
  %i.dv = load ptr, ptr %.0.i259, align 8, !tbaa !12
  call void @rc_dtor_func(ptr noundef %i.dv) #23
  br label %zval_ptr_dtor_nogc.exit.i262

zval_ptr_dtor_nogc.exit.i262:                     ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i259, i64 16
  %i.dx = add i32 %.05.i258, -1                   ; 2 uses
  %.not7.i263 = icmp eq i32 %i.dx, 0
  br i1 %.not7.i263, label %zend_vm_stack_free_args.exit264.loopexit, label %bb.ag, !llvm.loop !205

zend_vm_stack_free_args.exit264.loopexit:         ; preds = %zval_ptr_dtor_nogc.exit.i262
  %.pre323 = load ptr, ptr %i.a, align 8, !tbaa !176
  br label %zend_vm_stack_free_args.exit264

zend_vm_stack_free_args.exit264:                  ; preds = %zend_vm_stack_free_args.exit264.loopexit, %bb.ae
  %i.dy = phi ptr [ %.pre323, %zend_vm_stack_free_args.exit264.loopexit ], [ %i.dl, %bb.ae ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !12 ; 2 uses
  %i.eb = and i32 %i.ea, 134217728
  %.not230 = icmp eq i32 %i.eb, 0
  br i1 %.not230, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %zend_vm_stack_free_args.exit264
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !206
  call void @zend_free_extra_named_params(ptr noundef %i.ed) #23
end_hunk_0
