Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_verify_return_slow:bb.a
  br i1 %.not, label %bb.c, label %bb.e, !prof !98

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = tail call zeroext i1 @zend_check_user_type_slow(ptr noundef nonnull %i.i, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext true) #34
  br i1 %i.j, label %bb.e, label %bb.d, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @zend_verify_return_error(ptr noundef %1, ptr noundef nonnull %0) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  ret void
}

declare void @zend_verify_return_error(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_jit_get_constant(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define internal void @zend_jit_invalid_method_call_tmp(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !235 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !72
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = load i8, ptr %i.j, align 1, !tbaa !296
  %i.l = icmp eq i8 %i.k, 8
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %i.s = lshr i32 %i.r, 4
  %i.t = add nsw i32 %i.s, -5
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365
  tail call void (i32, ptr, ...) @zend_error_unchecked(i32 noundef 2, ptr noundef nonnull @.str.119, ptr noundef %i.w) #34
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !427
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %bb.d, label %zend_jit_invalid_method_call.exit

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1.i = phi ptr [ @executor_globals, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = tail call ptr @zend_zval_value_name(ptr noundef nonnull %.1.i) #34
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull %i.z, ptr noundef %i.aa) #34
  br label %zend_jit_invalid_method_call.exit

zend_jit_invalid_method_call.exit:                ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !72
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.a, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !72
  %.not.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.e

bb.e:                                             ; preds = %zend_jit_invalid_method_call.exit
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !294 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !294
  %.not3.i = icmp eq i32 %i.ak, 0
  br i1 %.not3.i, label %bb.f, label %zval_ptr_dtor_nogc.exit

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !72
  tail call void @rc_dtor_func(ptr noundef %i.al) #34
  br label %zval_ptr_dtor_nogc.exit

zval_ptr_dtor_nogc.exit:                          ; preds = %zend_jit_invalid_method_call.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zend_jit_invalid_method_call(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !235 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !72
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = load i8, ptr %i.j, align 1, !tbaa !296
  %i.l = icmp eq i8 %i.k, 8
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !72
  %i.s = lshr i32 %i.r, 4
  %i.t = add nsw i32 %i.s, -5
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !365
  tail call void (i32, ptr, ...) @zend_error_unchecked(i32 noundef 2, ptr noundef nonnull @.str.119, ptr noundef %i.w) #34
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !427
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ @executor_globals, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = tail call ptr @zend_zval_value_name(ptr noundef nonnull %.1) #34
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull %i.z, ptr noundef %i.aa) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_find_method_tmp_helper(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !235 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !458  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !434
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !464
  %i.i = load ptr, ptr %1, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = tail call ptr %i.h(ptr noundef %2, ptr noundef %i.i, ptr noundef nonnull %i.j) #34, !inline_history !743 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.d, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !427
  %.not30.i = icmp eq ptr %i.m, null
  br i1 %.not30.i, label %bb.c, label %zend_jit_find_method_helper.exit, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !72
  tail call void @zend_undefined_method(ptr noundef %i.d, ptr noundef %i.n) #34
  br label %zend_jit_find_method_helper.exit

bb.d:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.k, align 8, !tbaa !72
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !129
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %.not27.i = icmp eq ptr %i.x, null
  br i1 %.not27.i, label %bb.h, label %bb.i, !prof !98

bb.h:                                             ; preds = %bb.g
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %i.k) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !465    ; 3 uses
  %.not28.i = icmp eq ptr %0, %i.y
  br i1 %.not28.i, label %bb.j, label %bb.l, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !72
  %i.ab = and i32 %i.aa, 786432
  %.not29.i = icmp eq i32 %i.ab, 0
  br i1 %.not29.i, label %bb.k, label %bb.l, !prof !80

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !460
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.k, ptr %i.ai, align 8, !tbaa !75
  %.pre = load ptr, ptr %2, align 8, !tbaa !465
  br label %bb.l

zend_jit_find_method_helper.exit:                 ; preds = %bb.c, %bb.b
  %i.aj = load i32, ptr %0, align 8, !tbaa !294   ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !294
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.sink.split, label %bb.n

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %3 = phi ptr [ %i.y, %bb.i ], [ %i.y, %bb.j ], [ %.pre, %bb.k ] ; 3 uses
  %.not13 = icmp eq ptr %0, %3
  br i1 %.not13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr %3, align 4, !tbaa !294
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %3, align 4, !tbaa !294
  %i.ap = load i32, ptr %0, align 8, !tbaa !294   ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.ar, ptr %0, align 8, !tbaa !294
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %zend_jit_find_method_helper.exit
  tail call void @zend_objects_store_del(ptr noundef nonnull %0) #34
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.l, %bb.m, %zend_jit_find_method_helper.exit
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_find_method_helper(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !235 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !458  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !434
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !464
  %i.i = load ptr, ptr %1, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = tail call ptr %i.h(ptr noundef %2, ptr noundef %i.i, ptr noundef nonnull %i.j) #34 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.d, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !427
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.c, label %bb.l, !prof !80

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !72
  tail call void @zend_undefined_method(ptr noundef %i.d, ptr noundef %i.n) #34
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.k, align 8, !tbaa !72
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.i, !prof !80

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !129
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %.not27 = icmp eq ptr %i.x, null
  br i1 %.not27, label %bb.h, label %bb.i, !prof !98

bb.h:                                             ; preds = %bb.g
  tail call void @zend_init_func_run_time_cache(ptr noundef nonnull %i.k) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !465
  %.not28 = icmp eq ptr %0, %i.y
  br i1 %.not28, label %bb.j, label %bb.l, !prof !80

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !72
  %i.ab = and i32 %i.aa, 786432
  %.not29 = icmp eq i32 %i.ab, 0
  br i1 %.not29, label %bb.k, label %bb.l, !prof !80

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !460
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !72
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.k, ptr %i.ai, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %bb.b, %bb.c
  ret ptr %i.k
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_static_method_call_frame_tmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458
  %i.c = load i32, ptr %0, align 8, !tbaa !294    ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.e, ptr %0, align 8, !tbaa !294
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @zend_objects_store_del(ptr noundef nonnull %0) #34
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !427
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %zend_vm_stack_push_call_frame_ex.exit, !prof !80

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = add i32 %2, 5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !72
  %i.k = add i32 %i.h, %i.j                       ; 2 uses
  %i.l = load i8, ptr %1, align 8, !tbaa !72
  %.not.i.i = icmp eq i8 %i.l, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.d, !prof !98

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %2)
  %i.q = add i32 %i.n, %i.k
  %i.r = sub i32 %i.q, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.r, %bb.d ], [ %i.k, %bb.c ]
  %i.s = shl i32 %.0.i.i, 4
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !456 ; 3 uses
  %i.u = zext i32 %i.s to i64                     ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 488), align 8, !tbaa !466
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, %i.u
  br i1 %i.z, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.aa = tail call ptr @zend_vm_stack_extend(i64 noundef %i.u) #34
  br label %zend_vm_stack_push_call_frame_ex.exit.sink.split

bb.f:                                             ; preds = %zend_vm_stack_push_call_frame.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 480), align 8, !tbaa !456
  br label %zend_vm_stack_push_call_frame_ex.exit.sink.split

zend_vm_stack_push_call_frame_ex.exit.sink.split: ; preds = %bb.e, %bb.f
  %.sink14 = phi ptr [ %i.t, %bb.f ], [ %i.aa, %bb.e ] ; 5 uses
  %.sink = phi i32 [ 0, %bb.f ], [ 262144, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink14, i64 24
  store ptr %1, ptr %i.ac, align 8, !tbaa !168
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink14, i64 32
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink14, i64 40
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !72
  %i.af = getelementptr inbounds nuw i8, ptr %.sink14, i64 44
  store i32 %2, ptr %i.af, align 4, !tbaa !72
  br label %zend_vm_stack_push_call_frame_ex.exit

zend_vm_stack_push_call_frame_ex.exit:            ; preds = %zend_vm_stack_push_call_frame_ex.exit.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %.sink14, %zend_vm_stack_push_call_frame_ex.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zend_jit_push_static_method_call_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !458
  %i.c = add i32 %2, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !72
  %i.f = add i32 %i.c, %i.e                       ; 2 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !72
  %.not.i.i = icmp eq i8 %i.g, 1
  br i1 %.not.i.i, label %zend_vm_stack_push_call_frame.exit, label %bb.b, !prof !98

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %2)
  %i.l = add i32 %i.i, %i.f
  %i.m = sub i32 %i.l, %..i.i
  br label %zend_vm_stack_push_call_frame.exit

zend_vm_stack_push_call_frame.exit:               ; preds = %bb.a, %bb.b
end_hunk_0
