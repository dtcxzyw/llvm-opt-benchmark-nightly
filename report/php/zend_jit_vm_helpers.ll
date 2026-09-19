Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit_vm_helpers?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@zend_jit_check_constant:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !121
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  store ptr %.sink, ptr %i.s, align 8, !tbaa !92
  ret ptr %.031.i
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_func_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 80), align 8, !tbaa !112 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !117
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !117
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !117
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !32

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !117
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !124

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !4
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !4
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_ret_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 88), align 8, !tbaa !135 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !117
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !117
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !117
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !32

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !117
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !124

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !4
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !4
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_loop_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !123
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 72), align 8, !tbaa !118 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !117
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !117
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !117
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !32

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !117
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !71 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !124

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !4
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !17
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !4
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 70) i32 @zend_jit_trace_execute(ptr noundef initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef initializes((0, 2), (3, 4), (8, 20), (24, 32)) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [14 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %1, ptr %0, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !144
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = and i32 %i.q, 4194304
  %.not776 = icmp eq i32 %i.r, 0
  br i1 %.not776, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !125
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0707 = phi ptr [ %i.t, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  store i8 9, ptr %2, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %3, ptr %i.u, align 1, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 6 uses
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.0707, ptr %i.w, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i32 0, ptr %i.x, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !145
  %i.ab = icmp eq i8 %i.aa, -107
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !32

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 13, ptr %i.ad, align 2, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 13, ptr %i.ae, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.af, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ag, align 8, !tbaa !17
  br label %bb.fp

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !17
  %i.ak = and i8 %i.aj, 64
  %.not777 = icmp eq i8 %i.ak, 0
  br i1 %.not777, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.al, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 12, ptr %i.am, align 2, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 12, ptr %i.an, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.ao, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ap, align 8, !tbaa !17
  br label %bb.fp

bb.h:                                             ; preds = %bb.f
  %.not778 = icmp eq ptr %i.d, null
  br i1 %.not778, label %.thread.preheader, label %bb.i

.thread.preheader:                                ; preds = %bb.i, %bb.h
  %.2699.ph = phi i32 [ %i.aq, %bb.i ], [ 2, %bb.h ]
  br label %.thread.outer

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef 2, i32 noundef %4, i32 noundef 0) ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.thread.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.x, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.as, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 8, ptr %i.at, align 2, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 8, ptr %i.au, align 2, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.av, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.aw, align 8, !tbaa !17
  br label %bb.fp

.thread:                                          ; preds = %.thread.backedge, %.thread.outer1702
  %.0720 = phi i32 [ %.0720.ph1703, %.thread.outer1702 ], [ %.2722, %.thread.backedge ] ; 9 uses
  %.0712 = phi i32 [ %.0712.ph1704, %.thread.outer1702 ], [ %.2714, %.thread.backedge ] ; 44 uses
  %.1708 = phi ptr [ %.1708.ph1705, %.thread.outer1702 ], [ %.3710, %.thread.backedge ] ; 2 uses
  %.0704 = phi i64 [ %.0704.ph1706, %.thread.outer1702 ], [ %.1705, %.thread.backedge ] ; 2 uses
  %.2699 = phi i32 [ %.2699.ph1707, %.thread.outer1702 ], [ %.17, %.thread.backedge ] ; 3 uses
  %.0667 = phi i32 [ %.0667.ph1708, %.thread.outer1702 ], [ %.3670, %.thread.backedge ] ; 20 uses
  %.0661 = phi i32 [ %.0661.ph1709, %.thread.outer1702 ], [ %.3664, %.thread.backedge ] ; 19 uses
  %.0655 = phi i32 [ %.0655.ph1710, %.thread.outer1702 ], [ %.3658, %.thread.backedge ] ; 19 uses
  %.0636 = phi ptr [ %.0636.ph1714, %.thread.outer1702 ], [ %.3639, %.thread.backedge ] ; 3 uses
  %.0633 = phi ptr [ %.0633.ph1715, %.thread.outer1702 ], [ %.1634, %.thread.backedge ] ; 4 uses
  %.0629 = phi ptr [ %.0629.ph1716, %.thread.outer1702 ], [ %.1630, %.thread.backedge ] ; 23 uses
  %.0624 = phi ptr [ %.0624.ph1717, %.thread.outer1702 ], [ %.2626, %.thread.backedge ] ; 35 uses
  %.0619 = phi ptr [ %.0619.ph1718, %.thread.outer1702 ], [ %.3622, %.thread.backedge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0624, i64 29 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !146 ; 2 uses
  %i.az = and i8 %i.ay, 14
  %.not779 = icmp eq i8 %i.az, 0
  br i1 %.not779, label %bb.t, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !145
  switch i8 %i.bb, label %bb.l [
    i8 55, label %.thread931
    i8 56, label %.thread931
    i8 68, label %.thread931
    i8 -75, label %.thread931
    i8 113, label %.thread931
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !17
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.0629, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !17  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 12
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0692 = phi i8 [ %i.bl, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  %.0614 = phi ptr [ %i.bj, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  %.0611 = phi i8 [ 64, %bb.m ], [ 0, %bb.l ]     ; 2 uses
  %i.bm = icmp eq i8 %.0692, 10
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %.0614, align 8, !tbaa !17 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !17
  %i.br = or disjoint i8 %.0611, 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1693 = phi i8 [ %i.bq, %bb.o ], [ %.0692, %bb.n ]
  %.1615 = phi ptr [ %i.bo, %bb.o ], [ %.0614, %bb.n ] ; 3 uses
  %.1612 = phi i8 [ %i.br, %bb.o ], [ %.0611, %bb.n ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1615, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !17
  switch i8 %i.bt, label %bb.s [
    i8 8, label %bb.q
    i8 7, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %.1615, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !149
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %.1615, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !17
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = shl i8 %i.ca, 2
  %i.cc = and i8 %i.cb, 16
  %spec.select = or i8 %i.cc, %.1612
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.0683 = phi ptr [ %i.bw, %bb.q ], [ null, %bb.p ], [ null, %bb.r ]
  %.2613 = phi i8 [ %.1612, %bb.q ], [ %.1612, %bb.p ], [ %spec.select, %bb.r ]
  %i.cd = or i8 %.2613, %.1693
  br label %.thread931

bb.t:                                             ; preds = %.thread
  %i.ce = icmp eq i8 %i.ay, 0
  br i1 %i.ce, label %bb.u, label %.thread931

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.1708, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.ch = and i32 %i.cg, 4194304
  %.not785 = icmp eq i32 %i.ch, 0
  br i1 %.not785, label %.thread931, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !145
  %i.ck = call i32 @zend_get_opcode_flags(i8 noundef zeroext %i.cj) #8
  %i.cl = and i32 %i.ck, 240
  %i.cm = icmp eq i32 %i.cl, 80
  br i1 %i.cm, label %bb.w, label %.thread931

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %.0629, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !149
  br label %.thread931

.thread931:                                       ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.v, %bb.w, %bb.t, %bb.u, %bb.s
  %.3695 = phi i8 [ %i.cd, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ], [ 8, %bb.w ], [ -1, %bb.v ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ] ; 2 uses
  %.2685 = phi ptr [ %.0683, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %i.cq, %bb.w ], [ null, %bb.v ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0624, i64 30 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !87  ; 2 uses
  %i.ct = and i8 %i.cs, 14
  %.not787 = icmp eq i8 %i.ct, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !145 ; 4 uses
  br i1 %.not787, label %.thread931._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread931
  switch i8 %.pre, label %bb.y [
    i8 -118, label %.thread931._crit_edge
    i8 -77, label %.thread931._crit_edge
    i8 -76, label %.thread931._crit_edge
    i8 25, label %.thread931._crit_edge
    i8 33, label %.thread931._crit_edge
    i8 29, label %.thread931._crit_edge
    i8 38, label %.thread931._crit_edge
    i8 40, label %.thread931._crit_edge
    i8 39, label %.thread931._crit_edge
    i8 41, label %.thread931._crit_edge
    i8 -83, label %.thread931._crit_edge
    i8 -82, label %.thread931._crit_edge
    i8 -81, label %.thread931._crit_edge
    i8 -80, label %.thread931._crit_edge
    i8 -79, label %.thread931._crit_edge
    i8 -78, label %.thread931._crit_edge
  ]

bb.y:                                             ; preds = %bb.x
  %i.cu = icmp eq i8 %i.cs, 8
  br i1 %i.cu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i8 %.pre, label %bb.aa [
    i8 78, label %.thread931._crit_edge
    i8 126, label %.thread931._crit_edge
  ]

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.0629, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !17  ; 2 uses
  %i.db = icmp eq i8 %i.da, 12
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0689 = phi i8 [ %i.de, %bb.ab ], [ %i.da, %bb.aa ] ; 2 uses
  %.0609 = phi ptr [ %i.dc, %bb.ab ], [ %i.cy, %bb.aa ] ; 2 uses
  %.0607 = phi i8 [ 64, %bb.ab ], [ 0, %bb.aa ]   ; 2 uses
  %i.df = icmp eq i8 %.0689, 10
  br i1 %i.df, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load ptr, ptr %.0609, align 8, !tbaa !17 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !17
  %i.dk = or disjoint i8 %.0607, 32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1690 = phi i8 [ %i.dj, %bb.ad ], [ %.0689, %bb.ac ]
  %.1610 = phi ptr [ %i.dh, %bb.ad ], [ %.0609, %bb.ac ] ; 2 uses
  %.1608 = phi i8 [ %i.dk, %bb.ad ], [ %.0607, %bb.ac ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.1610, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !17
  %i.dn = icmp eq i8 %i.dm, 8
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %.1610, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !149
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0681 = phi ptr [ %i.dq, %bb.af ], [ null, %bb.ae ]
  %i.dr = or i8 %.1608, %.1690
  br label %.thread931._crit_edge

.thread931._crit_edge:                            ; preds = %.thread931, %bb.z, %bb.z, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.ag
  %.2691 = phi i8 [ %i.dr, %bb.ag ], [ -1, %bb.z ], [ -1, %bb.z ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %bb.x ], [ -1, %.thread931 ]
  %.1682 = phi ptr [ %.0681, %bb.ag ], [ null, %bb.z ], [ null, %bb.z ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ], [ null, %.thread931 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0624, i64 28 ; 3 uses
  switch i8 %.pre, label %bb.ah [
    i8 23, label %bb.ai
    i8 24, label %bb.ai
    i8 25, label %bb.ai
    i8 27, label %bb.ai
    i8 28, label %bb.ai
    i8 29, label %bb.ai
  ]

bb.ah:                                            ; preds = %.thread931._crit_edge
  %i.dt = and i8 %.pre, -2
  %switch = icmp eq i8 %i.dt, 32
  br i1 %switch, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge, %.thread931._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %.0624, i64 61
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !146
  %i.dw = and i8 %i.dv, 14
  %.not806 = icmp eq i8 %i.dw, 0
  br i1 %.not806, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %.0624, i64 40
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !17
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %.0629, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !17  ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 12
  br i1 %i.ed, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !17 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !17
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0686 = phi i8 [ %i.eg, %bb.ak ], [ %i.ec, %bb.aj ] ; 2 uses
  %.0606 = phi ptr [ %i.ee, %bb.ak ], [ %i.ea, %bb.aj ]
  %.0604 = phi i8 [ 64, %bb.ak ], [ 0, %bb.aj ]   ; 2 uses
  %i.eh = icmp eq i8 %.0686, 10
  br i1 %i.eh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ei = load ptr, ptr %.0606, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !17
  %i.el = or disjoint i8 %.0604, 32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1687 = phi i8 [ %i.ek, %bb.am ], [ %.0686, %bb.al ]
  %.1605 = phi i8 [ %i.el, %bb.am ], [ %.0604, %bb.al ]
  %i.em = or i8 %.1605, %.1687
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.ai, %bb.an
  %.2688 = phi i8 [ %i.em, %bb.an ], [ -1, %bb.ai ], [ -1, %bb.ah ]
  %i.en = zext nneg i32 %.2699 to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.en ; 5 uses
  store i8 0, ptr %i.eo, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store i8 %.3695, ptr %i.ep, align 1, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i8 %.2691, ptr %i.eq, align 2, !tbaa !17
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %.2688, ptr %i.er, align 1, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %.0624, ptr %i.es, align 8, !tbaa !17
  %i.et = add nuw nsw i32 %.2699, 1               ; 3 uses
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.ew = add nsw i64 %i.ev, -2
  %.not807 = icmp sgt i64 %i.ew, %i.eu
  br i1 %.not807, label %bb.ap, label %.thread1014

bb.ap:                                            ; preds = %bb.ao
  %.not808 = icmp eq ptr %.2685, null
  br i1 %.not808, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.eu ; 2 uses
  store i32 1, ptr %i.ex, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %.2685, ptr %i.ey, align 8, !tbaa !17
  %i.ez = add nuw nsw i32 %.2699, 2               ; 3 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.fc = add nsw i64 %i.fb, -2
  %.not809 = icmp sgt i64 %i.fc, %i.fa
  br i1 %.not809, label %bb.ar, label %.thread1014

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3700 = phi i32 [ %i.ez, %bb.aq ], [ %i.et, %bb.ap ] ; 3 uses
  %.not810 = icmp eq ptr %.1682, null
  br i1 %.not810, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = zext nneg i32 %.3700 to i64
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fd ; 2 uses
  store i32 2, ptr %i.fe, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %.1682, ptr %i.ff, align 8, !tbaa !17
  %i.fg = add nuw nsw i32 %.3700, 1               ; 3 uses
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.fj = add nsw i64 %i.fi, -2
  %.not811 = icmp sgt i64 %i.fj, %i.fh
  br i1 %.not811, label %bb.at, label %.thread1014

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.4701 = phi i32 [ %i.fg, %bb.as ], [ %.3700, %bb.ar ] ; 16 uses
  %i.fk = load i8, ptr %i.ds, align 4, !tbaa !145 ; 2 uses
  switch i8 %i.fk, label %bb.cd [
    i8 81, label %bb.au
    i8 84, label %bb.au
    i8 87, label %bb.au
    i8 90, label %bb.au
    i8 93, label %bb.au
    i8 96, label %bb.au
    i8 98, label %bb.au
    i8 -101, label %bb.au
    i8 23, label %bb.au
    i8 27, label %bb.au
    i8 75, label %bb.au
    i8 115, label %bb.au
    i8 82, label %bb.bo
    i8 85, label %bb.br
    i8 88, label %bb.br
    i8 91, label %bb.br
    i8 94, label %bb.br
    i8 97, label %bb.br
    i8 24, label %bb.br
    i8 28, label %bb.br
    i8 32, label %bb.br
    i8 76, label %bb.br
    i8 -108, label %bb.br
    i8 -124, label %bb.br
    i8 -123, label %bb.br
    i8 -122, label %bb.br
    i8 -121, label %bb.br
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  %i.fl = load i8, ptr %i.ax, align 1, !tbaa !146
  %i.fm = icmp eq i8 %i.fl, 1                     ; 2 uses
  br i1 %i.fm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fn = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !17
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr %.0624, i64 %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !17
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.4696 = phi i8 [ %i.fs, %bb.av ], [ %.3695, %bb.au ]
  %i.ft = and i8 %.4696, 15
  %i.fu = icmp eq i8 %i.ft, 7
  br i1 %i.fu, label %bb.ax, label %thread-pre-split

bb.ax:                                            ; preds = %bb.aw
  %i.fv = load i8, ptr %i.cr, align 2, !tbaa !87
  switch i8 %i.fv, label %bb.ay [
    i8 0, label %thread-pre-split
    i8 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.0629.sink = phi ptr [ %.0629, %bb.ay ], [ %.0624, %bb.ax ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !17
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.0629.sink, i64 %i.fy ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !17  ; 2 uses
  %i.gc = icmp eq i8 %i.gb, 4
  switch i8 %i.gb, label %thread-pre-split [
    i8 6, label %bb.ba
    i8 4, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.gd = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !17
  %i.gf = sext i32 %i.ge to i64
  %.0624..0629 = select i1 %i.fm, ptr %.0624, ptr %.0629
  %i.gg = getelementptr inbounds i8, ptr %.0624..0629, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !17  ; 2 uses
  %i.gj = icmp eq i8 %i.gi, 12
  br i1 %i.gj, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gk = load ptr, ptr %i.gg, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert1359 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.pre1360 = load i8, ptr %.phi.trans.insert1359, align 8, !tbaa !17
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.gl = phi i8 [ %.pre1360, %bb.bb ], [ %i.gi, %bb.ba ]
  %.1601 = phi ptr [ %i.gk, %bb.bb ], [ %i.gg, %bb.ba ] ; 2 uses
  %i.gm = icmp eq i8 %i.gl, 10
  br i1 %i.gm, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gn = load ptr, ptr %.1601, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.2 = phi ptr [ %i.go, %bb.bd ], [ %.1601, %bb.bc ]
  %i.gp = load ptr, ptr %.2, align 8, !tbaa !17   ; 3 uses
  br i1 %i.gc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gq = load i64, ptr %i.fz, align 8, !tbaa !17
  %i.gr = call ptr @zend_hash_index_find(ptr noundef %i.gp, i64 noundef %i.gq) #8
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.gs = load ptr, ptr %i.fz, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !89
  %i.gw = load i8, ptr %i.gt, align 8, !tbaa !17  ; 3 uses
  %i.gx = icmp sgt i8 %i.gw, 57
  br i1 %i.gx, label %_zend_handle_numeric_str.exit.i.thread, label %bb.bh, !prof !18

bb.bh:                                            ; preds = %bb.bg
  %i.gy = icmp slt i8 %i.gw, 48
  br i1 %i.gy, label %bb.bi, label %_zend_handle_numeric_str.exit.i

bb.bi:                                            ; preds = %bb.bh
  %.not.i.i = icmp eq i8 %i.gw, 45
  br i1 %.not.i.i, label %bb.bj, label %_zend_handle_numeric_str.exit.i.thread

bb.bj:                                            ; preds = %bb.bi
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 25
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !17
  %i.hb = add i8 %i.ha, -58
  %or.cond.i.i = icmp ult i8 %i.hb, -10
  br i1 %or.cond.i.i, label %_zend_handle_numeric_str.exit.i.thread, label %_zend_handle_numeric_str.exit.i

_zend_handle_numeric_str.exit.i:                  ; preds = %bb.bh, %bb.bj
  %i.hc = call zeroext i1 @_zend_handle_numeric_str_ex(ptr noundef nonnull %i.gt, i64 noundef %i.gv, ptr noundef nonnull %i.a) #8
  br i1 %i.hc, label %bb.bk, label %_zend_handle_numeric_str.exit.i.thread

bb.bk:                                            ; preds = %_zend_handle_numeric_str.exit.i
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !90
  %i.he = call ptr @zend_hash_index_find(ptr noundef %i.gp, i64 noundef %i.hd) #8
  br label %zend_symtable_find.exit

_zend_handle_numeric_str.exit.i.thread:           ; preds = %bb.bj, %bb.bi, %bb.bg, %_zend_handle_numeric_str.exit.i
  %i.hf = call ptr @zend_hash_find(ptr noundef %i.gp, ptr noundef nonnull %i.gs) #8
  br label %zend_symtable_find.exit

zend_symtable_find.exit:                          ; preds = %bb.bk, %_zend_handle_numeric_str.exit.i.thread
  %.0.i = phi ptr [ %i.he, %bb.bk ], [ %i.hf, %_zend_handle_numeric_str.exit.i.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bl

bb.bl:                                            ; preds = %zend_symtable_find.exit, %bb.bf
  %.0598 = phi ptr [ %i.gr, %bb.bf ], [ %.0.i, %zend_symtable_find.exit ] ; 2 uses
  %.not820 = icmp eq ptr %.0598, null
  br i1 %.not820, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hg = getelementptr inbounds nuw i8, ptr %.0598, i64 8
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0597 = phi i8 [ %i.hh, %bb.bm ], [ 0, %bb.bl ]
  %i.hi = zext nneg i32 %.4701 to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.hi ; 2 uses
  store i8 3, ptr %i.hj, align 8, !tbaa !17
  br label %thread-pre-split.sink.split

bb.bo:                                            ; preds = %bb.at
  %i.hk = load i8, ptr %i.cr, align 2, !tbaa !87
  %i.hl = icmp eq i8 %i.hk, 1
  br i1 %i.hl, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw i8, ptr %.0629, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !106
  %i.ho = getelementptr inbounds nuw i8, ptr %.0624, i64 20
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !121
  %i.hq = and i32 %i.hp, -2
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !92 ; 3 uses
  %i.hv = icmp sgt ptr %i.hu, null
  %i.hw = icmp slt ptr %i.hu, inttoptr (i64 16 to ptr)
  %or.cond = and i1 %i.hv, %i.hw
  br i1 %or.cond, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = and i64 %i.hx, 4294967287
  %i.hz = inttoptr i64 %i.hy to ptr
  store ptr %i.hz, ptr %i.ht, align 8, !tbaa !92
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  %i.ia = load i8, ptr %i.ax, align 1, !tbaa !146 ; 2 uses
  %.not812 = icmp eq i8 %i.ia, 1
  br i1 %.not812, label %thread-pre-split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ib = load i8, ptr %i.cr, align 2, !tbaa !87
  %i.ic = icmp eq i8 %i.ib, 1
  br i1 %i.ic, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.id = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !17
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %.0624, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !17
  %i.ij = icmp eq i8 %i.ii, 6
  br i1 %i.ij, label %bb.bu, label %thread-pre-split

bb.bu:                                            ; preds = %bb.bt
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !17 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load i8, ptr %i.il, align 8, !tbaa !17
  %.not813 = icmp eq i8 %i.im, 0
  br i1 %.not813, label %thread-pre-split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.in = icmp eq i8 %i.ia, 0
  br i1 %i.in, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.io = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !17
  %i.iq = sext i32 %i.ip to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.sink = phi i64 [ %i.iq, %bb.bw ], [ 32, %bb.bv ]
  %i.ir = getelementptr inbounds i8, ptr %.0629, i64 %.sink ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i8, ptr %i.is, align 8, !tbaa !17
  %.not814 = icmp eq i8 %i.it, 8
  br i1 %.not814, label %bb.by, label %thread-pre-split

bb.by:                                            ; preds = %bb.bx
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !17 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !151
  %.not815 = icmp eq ptr %i.iw, @std_object_handlers
  br i1 %.not815, label %bb.bz, label %thread-pre-split

bb.bz:                                            ; preds = %bb.by
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !149
  %i.iz = call ptr @zend_get_property_info(ptr noundef %i.iy, ptr noundef nonnull %i.ik, i32 noundef 1) #8 ; 4 uses
  %magicptr = ptrtoint ptr %i.iz to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch914 = icmp ult i64 %magicptr.off, -2
  br i1 %switch914, label %bb.ca, label %thread-pre-split

bb.ca:                                            ; preds = %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !155
  %.not816 = icmp eq ptr %i.jb, null
  br i1 %.not816, label %bb.cb, label %thread-pre-split

bb.cb:                                            ; preds = %bb.ca
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !156
  %i.je = and i32 %i.jd, 16
  %.not817 = icmp eq i32 %i.je, 0
  br i1 %.not817, label %bb.cc, label %thread-pre-split

bb.cc:                                            ; preds = %bb.cb
  %i.jf = load ptr, ptr %i.ir, align 8, !tbaa !17
  %i.jg = load i32, ptr %i.iz, align 8, !tbaa !157
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh
  %i.jj = zext nneg i32 %.4701 to i64
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.jj ; 2 uses
  store i8 3, ptr %i.jk, align 8, !tbaa !17
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !17
  br label %thread-pre-split.sink.split

thread-pre-split.sink.split:                      ; preds = %bb.cc, %bb.bn
  %.sink1560 = phi ptr [ %i.hj, %bb.bn ], [ %i.jk, %bb.cc ] ; 4 uses
  %.0597.sink = phi i8 [ %.0597, %bb.bn ], [ %i.jm, %bb.cc ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.sink1560, i64 1
  store i8 %.0597.sink, ptr %i.jn, align 1, !tbaa !17
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink1560, i64 2
  store i8 0, ptr %i.jo, align 1, !tbaa !17
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink1560, i64 3
  store i8 0, ptr %i.jp, align 1, !tbaa !17
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink1560, i64 8
  store ptr null, ptr %i.jq, align 8, !tbaa !17
  %i.jr = add nuw nsw i32 %.4701, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.az, %bb.aw, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.ax, %bb.ca, %bb.cb, %bb.bx, %bb.by, %bb.bz
  %.9.ph = phi i32 [ %.4701, %bb.bz ], [ %.4701, %bb.ax ], [ %.4701, %bb.by ], [ %.4701, %bb.br ], [ %.4701, %bb.bx ], [ %.4701, %bb.az ], [ %.4701, %bb.cb ], [ %.4701, %bb.bs ], [ %.4701, %bb.bt ], [ %.4701, %bb.bu ], [ %.4701, %bb.ca ], [ %.4701, %bb.aw ], [ %i.jr, %thread-pre-split.sink.split ]
  %.pr = load i8, ptr %i.ds, align 4, !tbaa !145
  br label %bb.cd

bb.cd:                                            ; preds = %thread-pre-split, %bb.at
  %i.js = phi i8 [ %.pr, %thread-pre-split ], [ %i.fk, %bb.at ]
  %.9 = phi i32 [ %.9.ph, %thread-pre-split ], [ %.4701, %bb.at ] ; 8 uses
  switch i8 %i.js, label %bb.ck [
    i8 60, label %bb.ce
    i8 -127, label %bb.ce
    i8 -126, label %bb.ce
    i8 -125, label %bb.ce
    i8 73, label %.critedge
    i8 -54, label %.critedge
  ]

bb.ce:                                            ; preds = %bb.cd, %bb.cd, %bb.cd, %bb.cd
  %i.jt = getelementptr inbounds nuw i8, ptr %.0629, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !143 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !17
  %i.jx = and i32 %i.jw, 536870912
  %.not822 = icmp eq i32 %i.jx, 0
  br i1 %.not822, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !29 ; 4 uses
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !17
  %i.kb = icmp eq i8 %i.ka, 1
  br i1 %i.kb, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !17 ; 2 uses
  %i.ke = and i32 %i.kd, 786432
  %or.cond889 = icmp eq i32 %i.ke, 0
  br i1 %or.cond889, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 80
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !17
  %.not825 = icmp eq ptr %i.kg, null
  br i1 %.not825, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kh = and i32 %i.kd, 12582912
  %.not826 = icmp eq i32 %i.kh, 0
  br i1 %.not826, label %bb.cj, label %.critedge

bb.cj:                                            ; preds = %bb.cg, %bb.ch, %bb.ci
  %.0595 = phi ptr [ %i.jz, %bb.ci ], [ null, %bb.ch ], [ null, %bb.cg ]
  %i.ki = zext nneg i32 %.9 to i64
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ki ; 2 uses
  store i32 5, ptr %i.kj, align 8, !tbaa !17
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.0595, ptr %i.kk, align 8, !tbaa !17
  %i.kl = add nuw nsw i32 %.9, 1                  ; 3 uses
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.ko = add nsw i64 %i.kn, -2
  %.not827 = icmp sgt i64 %i.ko, %i.km
  br i1 %.not827, label %bb.ck, label %.thread1014

bb.ck:                                            ; preds = %bb.cj, %bb.cd, %bb.cf
  %.11 = phi i32 [ %.9, %bb.cd ], [ %.9, %bb.cf ], [ %i.kl, %bb.cj ] ; 22 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0624, i64 %.0704
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !17
  %i.ks = call ptr %i.kr(ptr noundef %.0629, ptr noundef nonnull %.0624) #8 ; 3 uses
  %i.kt = load ptr, ptr @zend_jit_interrupt_op, align 8, !tbaa !126
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %.lr.ph, label %._crit_edge, !prof !158

.lr.ph:                                           ; preds = %bb.ck, %.lr.ph
  %.16251232 = phi ptr [ %i.kv, %.lr.ph ], [ %i.ks, %bb.ck ]
  %i.kv = call ptr @zend_vm_handle_interrupt(ptr noundef %.0629, ptr noundef %.16251232) #8 ; 3 uses
  %i.kw = load ptr, ptr @zend_jit_interrupt_op, align 8, !tbaa !126
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph, label %._crit_edge, !prof !159, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph, %bb.ck
  %.1625.lcssa = phi ptr [ %i.ks, %bb.ck ], [ %i.kv, %.lr.ph ] ; 2 uses
  %i.ky = ptrtoint ptr %.1625.lcssa to i64        ; 2 uses
  %i.kz = and i64 %i.ky, -2                       ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.cl, label %bb.cn, !prof !32

bb.cl:                                            ; preds = %._crit_edge
  %i.lb = load i8, ptr %i.ds, align 4, !tbaa !145
  switch i8 %i.lb, label %bb.cm [
    i8 -96, label %.critedge
    i8 -90, label %.critedge
  ]

bb.cm:                                            ; preds = %bb.cl
  br label %.critedge

bb.cn:                                            ; preds = %._crit_edge
  %i.lc = and i64 %i.ky, 1
  %.not828 = icmp eq i64 %i.lc, 0                 ; 2 uses
  %i.ld = inttoptr i64 %i.kz to ptr
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8
  %.1630 = select i1 %.not828, ptr %.0629, ptr %i.le ; 50 uses
  %.2626 = select i1 %.not828, ptr %.1625.lcssa, ptr %i.ld ; 69 uses
  %.not829 = icmp eq ptr %.1630, %.0633
  br i1 %.not829, label %bb.ea, label %bb.co, !prof !18

bb.co:                                            ; preds = %bb.cn
  %i.lf = getelementptr inbounds nuw i8, ptr %.1630, i64 24 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !29 ; 7 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 208
  %i.li = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !92 ; 4 uses
  %.not830 = icmp eq ptr %i.ll, null
  br i1 %.not830, label %bb.cq, label %bb.cp, !prof !32

bb.cp:                                            ; preds = %bb.co
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !127
  %i.lo = and i32 %i.ln, 65536
  %.not831 = icmp eq i32 %i.lo, 0
  br i1 %.not831, label %bb.cq, label %bb.cr, !prof !32

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.lp = getelementptr inbounds nuw i8, ptr %.1630, i64 48
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !35
  %.not885 = icmp eq ptr %i.lq, %.0633
  %.890 = select i1 %.not885, i32 5, i32 3        ; 2 uses
  br label %.critedge

bb.cr:                                            ; preds = %bb.cp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 160
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !123 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !144
  %.not832 = icmp eq ptr %i.lu, null
  br i1 %.not832, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !81
  %i.lx = and i32 %i.lw, 4194304
  %.not833 = icmp eq i32 %i.lx, 0
  br i1 %.not833, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 152
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !125
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.2709 = phi ptr [ %i.lz, %bb.ct ], [ %i.lg, %bb.cs ] ; 10 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.1630, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !35 ; 4 uses
  %i.mc = icmp eq ptr %i.mb, %.0633
  br i1 %i.mc, label %bb.cv, label %bb.de

bb.cv:                                            ; preds = %bb.cu
  %i.md = icmp sgt i32 %.0720, 10
  br i1 %i.md, label %.thread1014, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !17 ; 2 uses
  %i.mg = and i32 %i.mf, 262144
  %.not851 = icmp eq i32 %i.mg, 0
  br i1 %.not851, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !17
  %.not852 = icmp eq ptr %i.mi, null
  br i1 %.not852, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %bb.cx
  %i.mj = and i32 %i.mf, 8388608
  %.not853 = icmp eq i32 %i.mj, 0
  br i1 %.not853, label %bb.cz, label %.critedge

bb.cz:                                            ; preds = %bb.cy
  %i.mk = getelementptr inbounds nuw i8, ptr %.1630, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !160
  %.not854 = icmp eq ptr %i.ml, null
  %i.mm = select i1 %.not854, i32 6, i32 262
  %i.mn = zext nneg i32 %.11 to i64
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.mn ; 2 uses
  store i32 %i.mm, ptr %i.mo, align 8, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %.2709, ptr %i.mp, align 8, !tbaa !17
  %i.mq = add nuw nsw i32 %.11, 1                 ; 6 uses
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.mt = add nsw i64 %i.ms, -2
  %.not855 = icmp sgt i64 %i.mt, %i.mr
  br i1 %.not855, label %bb.da, label %.thread1014

bb.da:                                            ; preds = %bb.cz
  %i.mu = load ptr, ptr %i.lf, align 8, !tbaa !29 ; 3 uses
  %i.mv = icmp slt i32 %.0712, %.0720
  br i1 %i.mv, label %.lr.ph.preheader.i, label %zend_jit_trace_recursive_call_count.exit

.lr.ph.preheader.i:                               ; preds = %bb.da
  %i.mw = sext i32 %.0712 to i64                  ; 4 uses
  %wide.trip.count.i = sext i32 %.0720 to i64     ; 2 uses
  %i.mx = sub nsw i64 %wide.trip.count.i, %i.mw   ; 3 uses
  %min.iters.check = icmp ult i64 %i.mx, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.mx, -4                      ; 3 uses
  %i.my = add nsw i64 %n.vec, %i.mw
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.mu, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.mw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ne, %vector.body ]
  %vec.phi1679 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.nf, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x ptr>, ptr %gep, align 8, !tbaa !161
  %wide.load1680 = load <2 x ptr>, ptr %i.mz, align 8, !tbaa !161
  %i.na = icmp eq <2 x ptr> %wide.load, %broadcast.splat
  %i.nb = icmp eq <2 x ptr> %wide.load1680, %broadcast.splat
  %i.nc = zext <2 x i1> %i.na to <2 x i32>
  %i.nd = zext <2 x i1> %i.nb to <2 x i32>
  %i.ne = add <2 x i32> %vec.phi, %i.nc           ; 2 uses
  %i.nf = add <2 x i32> %vec.phi1679, %i.nd       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.nf, %i.ne
  %i.nh = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.mx, %n.vec
  br i1 %cmp.n, label %zend_jit_trace_recursive_call_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.mw, %.lr.ph.preheader.i ], [ %i.my, %middle.block ]
  %.010.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.nh, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.010.i = phi i32 [ %i.nm, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader ]
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !161
  %i.nk = icmp eq ptr %i.nj, %i.mu
  %i.nl = zext i1 %i.nk to i32
  %i.nm = add nuw nsw i32 %.010.i, %i.nl          ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zend_jit_trace_recursive_call_count.exit, label %.lr.ph.i, !llvm.loop !138

zend_jit_trace_recursive_call_count.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.da
  %.0.lcssa.i = phi i32 [ 0, %bb.da ], [ %i.nh, %middle.block ], [ %i.nm, %.lr.ph.i ] ; 2 uses
  %i.nn = icmp eq ptr %.2626, %1
  br i1 %i.nn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %zend_jit_trace_recursive_call_count.exit
  %i.no = add nsw i32 %.0.lcssa.i, 1
  %i.np = sext i32 %i.no to i64
  %i.nq = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 128), align 8, !tbaa !164
  %.not857 = icmp sgt i64 %i.nq, %i.np
  br i1 %.not857, label %bb.dd, label %.critedge

bb.dc:                                            ; preds = %zend_jit_trace_recursive_call_count.exit
  %i.nr = sext i32 %.0.lcssa.i to i64
  %i.ns = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 128), align 8, !tbaa !164
  %.not856 = icmp sgt i64 %i.ns, %i.nr
  br i1 %.not856, label %bb.dd, label %.thread1014

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.1668 = phi i32 [ %.0667, %bb.dc ], [ %i.mq, %bb.db ]
  %i.nt = add nsw i32 %.0712, %.0720
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nu
  store ptr %i.mu, ptr %i.nv, align 8, !tbaa !161
  %i.nw = add nsw i32 %.0720, 1
  br label %bb.ea

bb.de:                                            ; preds = %bb.cu
  %i.nx = getelementptr inbounds nuw i8, ptr %.1630, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !143 ; 7 uses
  %i.nz = icmp eq i32 %.0720, 0
  br i1 %i.nz, label %bb.df, label %bb.dz

bb.df:                                            ; preds = %bb.de
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8
  %i.ob = icmp slt i64 %i.oa, 1
  %or.cond9.not1109 = select i1 %i.tx, i1 true, i1 %i.ob
  %.not836 = icmp eq ptr %i.mb, null              ; 2 uses
  %or.cond891 = or i1 %.not836, %or.cond9.not1109
  br i1 %or.cond891, label %zend_jit_trace_has_recursive_ret.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !29 ; 2 uses
  %.not837 = icmp eq ptr %i.od, null
  br i1 %.not837, label %.critedge, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !17
  %i.of = icmp eq i8 %i.oe, 2
  br i1 %i.of, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.og = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %.lr.ph.i920

.lr.ph.i920:                                      ; preds = %bb.di, %bb.dl
  %.015.i = phi i32 [ %i.or, %bb.dl ], [ %.0712, %bb.di ] ; 2 uses
  %.01114.i = phi ptr [ %i.oq, %bb.dl ], [ %.1630, %bb.di ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.01114.i, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !29 ; 2 uses
  %i.oj = icmp ne ptr %i.oi, null
  %i.ok = icmp slt i32 %.015.i, 4
  %or.cond.i = select i1 %i.oj, i1 %i.ok, i1 false
  br i1 %or.cond.i, label %bb.dj, label %zend_jit_trace_has_recursive_ret.exit.thread

bb.dj:                                            ; preds = %.lr.ph.i920
  %i.ol = icmp eq ptr %i.oi, %i.og
  br i1 %i.ol, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.om = load ptr, ptr %.01114.i, align 8, !tbaa !69
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = icmp eq ptr %i.on, %1
  br i1 %i.oo, label %zend_jit_trace_has_recursive_ret.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.op = getelementptr inbounds nuw i8, ptr %.01114.i, i64 48
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !35 ; 2 uses
  %i.or = add nsw i32 %.015.i, 1
  %.not.i922 = icmp eq ptr %i.oq, null
  br i1 %.not.i922, label %zend_jit_trace_has_recursive_ret.exit.thread, label %.lr.ph.i920, !llvm.loop !139

zend_jit_trace_has_recursive_ret.exit:            ; preds = %bb.dk
  %i.os = zext nneg i32 %.11 to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.os ; 2 uses
  store i32 7, ptr %i.ot, align 8, !tbaa !17
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr %.2709, ptr %i.ou, align 8, !tbaa !17
  %i.ov = add nuw nsw i32 %.11, 1                 ; 8 uses
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.oy = add nsw i64 %i.ox, -2
  %.not847 = icmp sgt i64 %i.oy, %i.ow
  br i1 %.not847, label %bb.dm, label %.thread1014

bb.dm:                                            ; preds = %zend_jit_trace_has_recursive_ret.exit
  %i.oz = load ptr, ptr %i.lf, align 8, !tbaa !29 ; 3 uses
  %i.pa = icmp sgt i32 %.0712, 0
  br i1 %i.pa, label %.lr.ph.preheader.i924, label %zend_jit_trace_recursive_ret_count.exit

.lr.ph.preheader.i924:                            ; preds = %bb.dm
  %wide.trip.count.i925 = zext nneg i32 %.0712 to i64 ; 3 uses
  %min.iters.check1682 = icmp ult i32 %.0712, 4
  br i1 %min.iters.check1682, label %.lr.ph.i926.preheader, label %vector.ph1683

vector.ph1683:                                    ; preds = %.lr.ph.preheader.i924
  %n.vec1684 = and i64 %wide.trip.count.i925, 2147483644 ; 3 uses
  %broadcast.splatinsert1685 = insertelement <2 x ptr> poison, ptr %i.oz, i64 0
  %broadcast.splat1686 = shufflevector <2 x ptr> %broadcast.splatinsert1685, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1687

vector.body1687:                                  ; preds = %vector.body1687, %vector.ph1683
  %index1688 = phi i64 [ 0, %vector.ph1683 ], [ %index.next1693, %vector.body1687 ] ; 2 uses
  %vec.phi1689 = phi <2 x i32> [ zeroinitializer, %vector.ph1683 ], [ %12, %vector.body1687 ]
  %vec.phi1690 = phi <2 x i32> [ zeroinitializer, %vector.ph1683 ], [ %13, %vector.body1687 ]
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index1688 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %wide.load1691 = load <2 x ptr>, ptr %6, align 16, !tbaa !161
  %wide.load1692 = load <2 x ptr>, ptr %7, align 16, !tbaa !161
  %8 = icmp eq <2 x ptr> %wide.load1691, %broadcast.splat1686
  %9 = icmp eq <2 x ptr> %wide.load1692, %broadcast.splat1686
  %10 = zext <2 x i1> %8 to <2 x i32>
  %11 = zext <2 x i1> %9 to <2 x i32>
  %12 = add <2 x i32> %vec.phi1689, %10           ; 2 uses
  %13 = add <2 x i32> %vec.phi1690, %11           ; 2 uses
  %index.next1693 = add nuw i64 %index1688, 4     ; 2 uses
  %i.pb = icmp eq i64 %index.next1693, %n.vec1684
  br i1 %i.pb, label %middle.block1694, label %vector.body1687, !llvm.loop !140

middle.block1694:                                 ; preds = %vector.body1687
  %bin.rdx1695 = add <2 x i32> %13, %12
  %14 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx1695) ; 2 uses
  %cmp.n1696 = icmp eq i64 %n.vec1684, %wide.trip.count.i925
  br i1 %cmp.n1696, label %zend_jit_trace_recursive_ret_count.exit, label %.lr.ph.i926.preheader

.lr.ph.i926.preheader:                            ; preds = %.lr.ph.preheader.i924, %middle.block1694
  %indvars.iv.i927.ph = phi i64 [ 0, %.lr.ph.preheader.i924 ], [ %n.vec1684, %middle.block1694 ]
  %.09.i.ph = phi i32 [ 0, %.lr.ph.preheader.i924 ], [ %14, %middle.block1694 ]
  br label %.lr.ph.i926

.lr.ph.i926:                                      ; preds = %.lr.ph.i926.preheader, %.lr.ph.i926
  %indvars.iv.i927 = phi i64 [ %indvars.iv.next.i928, %.lr.ph.i926 ], [ %indvars.iv.i927.ph, %.lr.ph.i926.preheader ] ; 2 uses
  %.09.i = phi i32 [ %i.pf, %.lr.ph.i926 ], [ %.09.i.ph, %.lr.ph.i926.preheader ]
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i927
  %i.pc = load ptr, ptr %15, align 8, !tbaa !161
  %i.pd = icmp eq ptr %i.pc, %i.oz
  %i.pe = zext i1 %i.pd to i32
  %i.pf = add nuw nsw i32 %.09.i, %i.pe           ; 2 uses
  %indvars.iv.next.i928 = add nuw nsw i64 %indvars.iv.i927, 1 ; 2 uses
  %exitcond.not.i929 = icmp eq i64 %indvars.iv.next.i928, %wide.trip.count.i925
  br i1 %exitcond.not.i929, label %zend_jit_trace_recursive_ret_count.exit, label %.lr.ph.i926, !llvm.loop !141

zend_jit_trace_recursive_ret_count.exit:          ; preds = %.lr.ph.i926, %middle.block1694, %bb.dm
  %.0.lcssa.i923 = phi i32 [ 0, %bb.dm ], [ %14, %middle.block1694 ], [ %i.pf, %.lr.ph.i926 ] ; 2 uses
  %i.pg = icmp eq ptr %.2626, %1
  br i1 %i.pg, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %zend_jit_trace_recursive_ret_count.exit
  %i.ph = add nsw i32 %.0.lcssa.i923, 1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8, !tbaa !165
  %.not849 = icmp sgt i64 %i.pj, %i.pi
  br i1 %.not849, label %bb.dp, label %.critedge

bb.do:                                            ; preds = %zend_jit_trace_recursive_ret_count.exit
  %i.pk = sext i32 %.0.lcssa.i923 to i64
  %i.pl = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8, !tbaa !165
  %.not848 = icmp sgt i64 %i.pl, %i.pk
  br i1 %.not848, label %bb.dp, label %.thread1014

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %.1662 = phi i32 [ %.0661, %bb.do ], [ %i.ov, %bb.dn ] ; 2 uses
  %.1656 = phi i32 [ %.0655, %bb.do ], [ %.0712, %bb.dn ] ; 2 uses
  %i.pm = sext i32 %.0712 to i64
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pm
  store ptr %i.oz, ptr %i.pn, align 8, !tbaa !161
  %i.po = add nsw i32 %.0712, 1                   ; 3 uses
  %.not850 = icmp eq ptr %i.ny, null
  br i1 %.not850, label %bb.ea, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pp = call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.ny, ptr noundef nonnull %2, i32 noundef range(i32 -2147483647, -2147483648) %i.ov, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.pq = icmp sgt i32 %i.pp, -1
  br i1 %i.pq, label %bb.ea, label %.critedge

zend_jit_trace_has_recursive_ret.exit.thread:     ; preds = %bb.dl, %.lr.ph.i920, %bb.df
  br i1 %.not839, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %zend_jit_trace_has_recursive_ret.exit.thread
  %i.pr = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !166
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = add i32 %i.ps, -1
  %i.pu = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.pt)
  %.not840 = icmp eq i8 %i.pu, 19
  br i1 %.not840, label %bb.ds, label %.thread1014

bb.ds:                                            ; preds = %bb.dr, %zend_jit_trace_has_recursive_ret.exit.thread
  %brmerge = or i1 %.not841, %.not836
  br i1 %brmerge, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !29
  %i.px = icmp eq ptr %i.lg, %i.pw
  br i1 %i.px, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.py = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !166
  %i.pz = trunc i64 %i.py to i32
  %i.qa = add i32 %i.pz, -1
  %i.qb = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.qa)
  %.not843 = icmp eq i8 %i.qb, 20
  br i1 %.not843, label %bb.dv, label %.thread1014

bb.dv:                                            ; preds = %bb.ds, %bb.du, %bb.dt
  %i.qc = icmp slt i32 %.0712, %5
  %or.cond894 = select i1 %.not844, i1 %i.qc, i1 false
  br i1 %or.cond894, label %bb.dw, label %.critedge

bb.dw:                                            ; preds = %bb.dv
  %i.qd = zext nneg i32 %.11 to i64
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qd ; 2 uses
  store i32 7, ptr %i.qe, align 8, !tbaa !17
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store ptr %.2709, ptr %i.qf, align 8, !tbaa !17
  %i.qg = add nuw nsw i32 %.11, 1                 ; 5 uses
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.qj = add nsw i64 %i.qi, -2
  %.not845 = icmp sgt i64 %i.qj, %i.qh
  br i1 %.not845, label %bb.dx, label %.thread1014

bb.dx:                                            ; preds = %bb.dw
  %i.qk = add nsw i32 %.0712, 1                   ; 3 uses
  %.not846 = icmp eq ptr %i.ny, null
  br i1 %.not846, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ql = call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.ny, ptr noundef nonnull %2, i32 noundef range(i32 -2147483647, -2147483648) %i.qg, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.qm = icmp sgt i32 %i.ql, -1
  br i1 %i.qm, label %bb.ea, label %.critedge

bb.dz:                                            ; preds = %bb.de
  %i.qn = add nsw i32 %.0720, -1
  %.not834 = icmp sgt i32 %.0720, %.0643.ph1713
  %spec.select898 = select i1 %.not834, ptr %.0636, ptr null
  %i.qo = zext nneg i32 %.11 to i64
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qo ; 2 uses
  store i32 7, ptr %i.qp, align 8, !tbaa !17
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store ptr %.2709, ptr %i.qq, align 8, !tbaa !17
  %i.qr = add nuw nsw i32 %.11, 1                 ; 3 uses
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.qu = add nsw i64 %i.qt, -2
  %.not835 = icmp sgt i64 %i.qu, %i.qs
  br i1 %.not835, label %bb.ea, label %.thread1014

bb.ea:                                            ; preds = %bb.dd, %bb.dz, %bb.dq, %bb.dp, %bb.dx, %bb.dy, %bb.cn
  %.2722 = phi i32 [ %.0720, %bb.cn ], [ %i.nw, %bb.dd ], [ 0, %bb.dq ], [ 0, %bb.dp ], [ 0, %bb.dy ], [ 0, %bb.dx ], [ %i.qn, %bb.dz ] ; 7 uses
  %.2714 = phi i32 [ %.0712, %bb.cn ], [ %.0712, %bb.dd ], [ %i.po, %bb.dq ], [ %i.po, %bb.dp ], [ %i.qk, %bb.dy ], [ %i.qk, %bb.dx ], [ %.0712, %bb.dz ] ; 17 uses
  %.3710 = phi ptr [ %.1708, %bb.cn ], [ %.2709, %bb.dd ], [ %.2709, %bb.dq ], [ %.2709, %bb.dp ], [ %.2709, %bb.dy ], [ %.2709, %bb.dx ], [ %.2709, %bb.dz ] ; 4 uses
  %.1705 = phi i64 [ %.0704, %bb.cn ], [ %i.ls, %bb.dd ], [ %i.ls, %bb.dq ], [ %i.ls, %bb.dp ], [ %i.ls, %bb.dy ], [ %i.ls, %bb.dx ], [ %i.ls, %bb.dz ] ; 4 uses
  %.15 = phi i32 [ %.11, %bb.cn ], [ %i.mq, %bb.dd ], [ %i.pp, %bb.dq ], [ %i.ov, %bb.dp ], [ %i.ql, %bb.dy ], [ %i.qg, %bb.dx ], [ %i.qr, %bb.dz ] ; 5 uses
  %.3670 = phi i32 [ %.0667, %bb.cn ], [ %.1668, %bb.dd ], [ %.0667, %bb.dq ], [ %.0667, %bb.dp ], [ %.0667, %bb.dy ], [ %.0667, %bb.dx ], [ %.0667, %bb.dz ] ; 11 uses
  %.3664 = phi i32 [ %.0661, %bb.cn ], [ %.0661, %bb.dd ], [ %.1662, %bb.dq ], [ %.1662, %bb.dp ], [ %.0661, %bb.dy ], [ %.0661, %bb.dx ], [ %.0661, %bb.dz ] ; 11 uses
  %.3658 = phi i32 [ %.0655, %bb.cn ], [ %.0655, %bb.dd ], [ %.1656, %bb.dq ], [ %.1656, %bb.dp ], [ %.0655, %bb.dy ], [ %.0655, %bb.dx ], [ %.0655, %bb.dz ] ; 11 uses
  %.3639 = phi ptr [ %.0636, %bb.cn ], [ %.0636, %bb.dd ], [ null, %bb.dq ], [ null, %bb.dp ], [ null, %bb.dy ], [ null, %bb.dx ], [ %spec.select898, %bb.dz ] ; 3 uses
  %.1634 = phi ptr [ %.0633, %bb.cn ], [ %.1630, %bb.dd ], [ %.1630, %bb.dq ], [ %.1630, %bb.dp ], [ %.1630, %bb.dy ], [ %.1630, %bb.dx ], [ %.1630, %bb.dz ] ; 3 uses
  %.2621 = phi ptr [ %.0619, %bb.cn ], [ null, %bb.dd ], [ %i.ny, %bb.dq ], [ null, %bb.dp ], [ %i.ny, %bb.dy ], [ null, %bb.dx ], [ %i.ny, %bb.dz ] ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.1630, i64 8 ; 3 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !143 ; 6 uses
  %.not858 = icmp eq ptr %i.qw, %.2621
  br i1 %.not858, label %bb.ep, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.not859 = icmp eq ptr %i.qw, null
  br i1 %.not859, label %bb.ep, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 48
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !35
  %i.qz = icmp eq ptr %i.qy, %.2621
  br i1 %i.qz, label %bb.ed, label %bb.ep

bb.ed:                                            ; preds = %bb.ec
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !29 ; 8 uses
  %i.rc = load i8, ptr %i.rb, align 8, !tbaa !17
  switch i8 %i.rc, label %.thread954 [
    i8 1, label %bb.ee
    i8 2, label %bb.ef
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !17
  %i.rf = and i32 %i.re, 12582912
  %.not860 = icmp eq i32 %i.rf, 0
  br i1 %.not860, label %.thread954, label %.thread950

bb.ef:                                            ; preds = %bb.ed
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 208
  %i.rh = load i32, ptr @zend_func_info_rid, align 4, !tbaa !91
  %i.ri = sext i32 %i.rh to i64
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.ri
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !17 ; 3 uses
  %.not861 = icmp eq ptr %i.rk, null
  br i1 %.not861, label %bb.eg, label %.critedge916

bb.eg:                                            ; preds = %bb.ef
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !17 ; 2 uses
  %i.rn = and i32 %i.rm, 4194304
  %.not1110 = icmp eq i32 %i.rn, 0
  br i1 %.not1110, label %.critedge900, label %.thread950, !prof !18

.critedge916:                                     ; preds = %bb.ef
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !127
  %i.rq = and i32 %i.rp, 65536
  %.not862 = icmp eq i32 %i.rq, 0
  br i1 %.not862, label %.thread950, label %.critedge916..critedge900_crit_edge

.critedge916..critedge900_crit_edge:              ; preds = %.critedge916
  %.phi.trans.insert1361 = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %.pre1362 = load i32, ptr %.phi.trans.insert1361, align 4, !tbaa !17
  br label %.critedge900

.critedge900:                                     ; preds = %.critedge916..critedge900_crit_edge, %bb.eg
  %i.rr = phi i32 [ %.pre1362, %.critedge916..critedge900_crit_edge ], [ %i.rm, %bb.eg ] ; 2 uses
  %i.rs = and i32 %i.rr, 8388608
  %.not863 = icmp eq i32 %i.rs, 0
  br i1 %.not863, label %bb.eh, label %.thread950

bb.eh:                                            ; preds = %.critedge900
  %i.rt = and i32 %i.rr, 4194304
  %.not864 = icmp eq i32 %i.rt, 0
  br i1 %.not864, label %.thread954, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rk, i64 152
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !125 ; 2 uses
  %.not865 = icmp eq ptr %i.rv, null
  br i1 %.not865, label %.thread950, label %.thread954

.thread954:                                       ; preds = %bb.ed, %bb.ee, %bb.eh, %bb.ei
  %.0594957 = phi ptr [ %i.rv, %bb.ei ], [ %i.rb, %bb.ed ], [ %i.rb, %bb.eh ], [ %i.rb, %bb.ee ] ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0594957, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !17
  %i.ry = and i32 %i.rx, 786432
  %or.cond901 = icmp eq i32 %i.ry, 0
  br i1 %or.cond901, label %bb.ej, label %.thread950

bb.ej:                                            ; preds = %.thread954
  %i.rz = getelementptr inbounds nuw i8, ptr %.0594957, i64 80
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !17
  %.not868 = icmp eq ptr %i.sa, null
  br i1 %.not868, label %bb.ek, label %.thread950

bb.ek:                                            ; preds = %bb.ej
  %i.sb = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 144), align 8, !tbaa !167
  %i.sc = icmp eq i64 %i.sb, 0
  br i1 %i.sc, label %bb.el, label %zend_jit_may_be_polymorphic_call.exit.thread960

bb.el:                                            ; preds = %bb.ek
  %i.sd = getelementptr inbounds i8, ptr %.2626, i64 -4
  %i.se = load i8, ptr %i.sd, align 4, !tbaa !145
  switch i8 %i.se, label %.unreachabledefault.i [
    i8 61, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 59, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 69, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 -47, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 112, label %.thread950.sink.split
    i8 -128, label %.thread950.sink.split
    i8 113, label %bb.em
    i8 118, label %.split962
    i8 68, label %.split
  ]

bb.em:                                            ; preds = %bb.el
  %i.sf = getelementptr inbounds i8, ptr %.2626, i64 -3
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !146
  %.not.i = icmp eq i8 %i.sg, 1
  br i1 %.not.i, label %zend_jit_may_be_polymorphic_call.exit, label %.thread950.sink.split

.split962:                                        ; preds = %bb.el
  %i.sh = getelementptr inbounds i8, ptr %.2626, i64 -2
  %i.si = load i8, ptr %i.sh, align 2, !tbaa !87
  %.not1112 = icmp eq i8 %i.si, 1
  br i1 %.not1112, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

.unreachabledefault.i:                            ; preds = %bb.el
  unreachable

.split:                                           ; preds = %bb.el
  %i.sj = getelementptr inbounds i8, ptr %.2626, i64 -3
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !146
  %.not1111 = icmp eq i8 %i.sk, 1
  br i1 %.not1111, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

zend_jit_may_be_polymorphic_call.exit:            ; preds = %bb.em
  %i.sl = getelementptr inbounds i8, ptr %.2626, i64 -2
  %i.sm = load i8, ptr %i.sl, align 2, !tbaa !87
  %.not1113 = icmp eq i8 %i.sm, 1
  br i1 %.not1113, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

zend_jit_may_be_polymorphic_call.exit.thread960:  ; preds = %bb.el, %bb.el, %bb.el, %bb.el, %.split962, %.split, %zend_jit_may_be_polymorphic_call.exit, %bb.ek
  switch i32 %4, label %bb.eo [
    i32 512, label %bb.en
    i32 256, label %bb.en
  ]

bb.en:                                            ; preds = %zend_jit_may_be_polymorphic_call.exit.thread960, %zend_jit_may_be_polymorphic_call.exit.thread960
  %i.sn = load ptr, ptr %i.y, align 8, !tbaa !17
  %i.so = getelementptr inbounds i8, ptr %.2626, i64 -32
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %.thread950.sink.split, label %bb.eo

.thread950.sink.split:                            ; preds = %bb.en, %zend_jit_may_be_polymorphic_call.exit, %.split, %.split962, %bb.em, %bb.el, %bb.el
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qw, i64 40 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !17
  %i.ss = or i32 %i.sr, 536870912
  store i32 %i.ss, ptr %i.sq, align 8, !tbaa !17
  br label %.thread950

.thread950:                                       ; preds = %.thread950.sink.split, %bb.eg, %.critedge916, %.critedge900, %bb.ee, %bb.ej, %.thread954, %bb.ei
  %i.st = load ptr, ptr %i.qv, align 8, !tbaa !143
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 44
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !17
  %i.sw = shl i32 %i.sv, 16
  %i.sx = or disjoint i32 %i.sw, 4
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %zend_jit_may_be_polymorphic_call.exit.thread960, %.thread950
  %.1967 = phi ptr [ null, %.thread950 ], [ %.0594957, %zend_jit_may_be_polymorphic_call.exit.thread960 ], [ %.0594957, %bb.en ]
  %.0 = phi i32 [ %i.sx, %.thread950 ], [ 4, %zend_jit_may_be_polymorphic_call.exit.thread960 ], [ 4, %bb.en ]
  %i.sy = zext nneg i32 %.15 to i64
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sy ; 2 uses
  store i32 %.0, ptr %i.sz, align 8, !tbaa !17
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store ptr %.1967, ptr %i.ta, align 8, !tbaa !17
  %i.tb = add nuw nsw i32 %.15, 1                 ; 3 uses
  %i.tc = zext nneg i32 %i.tb to i64
  %i.td = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.te = add nsw i64 %i.td, -2
  %.not870 = icmp sgt i64 %i.te, %i.tc
  br i1 %.not870, label %._crit_edge1363, label %.thread1014

._crit_edge1363:                                  ; preds = %bb.eo
  %.pre1364 = load ptr, ptr %i.qv, align 8, !tbaa !143
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eb, %bb.ec, %._crit_edge1363, %bb.ea
  %.17 = phi i32 [ %.15, %bb.ea ], [ %i.tb, %._crit_edge1363 ], [ %.15, %bb.ec ], [ %.15, %bb.eb ] ; 18 uses
  %.3622 = phi ptr [ %.2621, %bb.ea ], [ %.pre1364, %._crit_edge1363 ], [ %i.qw, %bb.ec ], [ null, %bb.eb ] ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.2626, i64 28
  %i.tg = load i8, ptr %i.tf, align 4, !tbaa !145
  %i.th = icmp eq i8 %i.tg, -107
  br i1 %i.th, label %.thread1014, label %bb.eq, !prof !32

bb.eq:                                            ; preds = %bb.ep
  %i.ti = getelementptr inbounds nuw i8, ptr %.2626, i64 %.1705
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 24
  %i.tk = load i8, ptr %i.tj, align 8, !tbaa !17  ; 2 uses
  %.not871 = icmp eq i8 %i.tk, 0
  br i1 %.not871, label %.thread.backedge, label %bb.er

.thread.backedge:                                 ; preds = %bb.eq, %bb.fi
  br label %.thread

bb.er:                                            ; preds = %bb.eq
  %i.tl = zext i8 %i.tk to i32                    ; 6 uses
  %i.tm = and i32 %i.tl, 16
  %.not872 = icmp eq i32 %i.tm, 0
  br i1 %.not872, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.tn = and i32 %i.tl, 1
  %.not880 = icmp eq i32 %i.tn, 0
  br i1 %.not880, label %bb.ev, label %bb.et

bb.et:                                            ; preds = %bb.es
  %.not883 = trunc i8 %.0748.ph to i1
  %i.to = sub i32 0, %.2714
  %i.tp = icmp eq i32 %.2722, %i.to
  %or.cond904 = select i1 %.not883, i1 %i.tp, i1 false
  br i1 %or.cond904, label %bb.eu, label %.preheader

bb.eu:                                            ; preds = %bb.et
  %i.tq = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !166
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = add i32 %i.tr, -1
  %i.tt = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.ts)
  %.not884 = icmp eq i8 %i.tt, 23
  br i1 %.not884, label %.preheader, label %.thread1014

bb.ev:                                            ; preds = %bb.es
  %i.tu = and i32 %i.tl, 2
  %.not881 = icmp ne i32 %i.tu, 0
  %.not882 = icmp eq i8 %.0748.ph, 4
  %or.cond917 = and i1 %.not881, %.not882
  br i1 %or.cond917, label %bb.ew, label %.preheader

bb.ew:                                            ; preds = %bb.ev
  %i.tv = icmp slt i32 %.0673.ph, 0               ; 2 uses
  %spec.select905 = select i1 %i.tv, ptr %.2626, ptr %.0677.ph
  %spec.select906 = select i1 %i.tv, i32 %.17, i32 %.0673.ph
  br label %.thread.outer

.thread.outer:                                    ; preds = %.thread.preheader, %bb.ew
  %.0748.ph = phi i8 [ %3, %.thread.preheader ], [ 4, %bb.ew ] ; 5 uses
  %.0720.ph = phi i32 [ 0, %.thread.preheader ], [ %.2722, %bb.ew ]
  %.0712.ph = phi i32 [ 0, %.thread.preheader ], [ %.2714, %bb.ew ]
  %.1708.ph = phi ptr [ %.0707, %.thread.preheader ], [ %.3710, %bb.ew ]
  %.0704.ph = phi i64 [ %i.m, %.thread.preheader ], [ %.1705, %bb.ew ]
  %.2699.ph1701 = phi i32 [ %.2699.ph, %.thread.preheader ], [ %.17, %bb.ew ]
  %.0677.ph = phi ptr [ null, %.thread.preheader ], [ %spec.select905, %bb.ew ] ; 2 uses
  %.0673.ph = phi i32 [ -1, %.thread.preheader ], [ %spec.select906, %bb.ew ] ; 4 uses
  %.0667.ph = phi i32 [ -1, %.thread.preheader ], [ %.3670, %bb.ew ]
  %.0661.ph = phi i32 [ -1, %.thread.preheader ], [ %.3664, %bb.ew ]
  %.0655.ph = phi i32 [ 0, %.thread.preheader ], [ %.3658, %bb.ew ]
  %.0651.ph = phi i32 [ 0, %.thread.preheader ], [ %.0651.ph1711, %bb.ew ]
  %.0647.ph = phi i32 [ -1, %.thread.preheader ], [ %.0647.ph1712, %bb.ew ]
  %.0643.ph = phi i32 [ -1, %.thread.preheader ], [ %.0643.ph1713, %bb.ew ]
  %.0636.ph = phi ptr [ null, %.thread.preheader ], [ %.3639, %bb.ew ]
  %.0633.ph = phi ptr [ %0, %.thread.preheader ], [ %.1634, %bb.ew ]
  %.0629.ph = phi ptr [ %0, %.thread.preheader ], [ %.1630, %bb.ew ]
  %.0624.ph = phi ptr [ %1, %.thread.preheader ], [ %.2626, %bb.ew ]
  %.0619.ph = phi ptr [ %i.d, %.thread.preheader ], [ %.3622, %bb.ew ]
  %i.tw = zext i8 %.0748.ph to i32                ; 3 uses
  %i.tx = icmp ne i8 %.0748.ph, 4
  %i.ty = and i32 %i.tw, 1
  %.not839 = icmp eq i32 %i.ty, 0
  %i.tz = and i32 %i.tw, 2
  %.not841 = icmp eq i32 %i.tz, 0
  %i.ua = and i32 %i.tw, 8
  %.not844 = icmp ne i32 %i.ua, 0
  %.not877 = icmp eq i8 %.0748.ph, 8              ; 3 uses
  %.not877.not = xor i1 %.not877, true
  br label %.thread.outer1702

bb.ex:                                            ; preds = %bb.er
  %i.ub = and i32 %i.tl, 32
  %.not873 = icmp eq i32 %i.ub, 0
  br i1 %.not873, label %bb.ey, label %.thread1014

bb.ey:                                            ; preds = %bb.ex
  %i.uc = and i32 %i.tl, 1
  %.not874 = icmp eq i32 %i.uc, 0
  br i1 %.not874, label %bb.fi, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ud = icmp eq ptr %.2626, %1
  %or.cond907 = and i1 %i.ud, %.not877.not
  %i.ue = sub i32 0, %.2714
  %i.uf = icmp eq i32 %.2722, %i.ue               ; 2 uses
  %or.cond909 = select i1 %or.cond907, i1 %i.uf, i1 false
  br i1 %or.cond909, label %.critedge, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %or.cond910 = select i1 %.not877, i1 %i.uf, i1 false
  br i1 %or.cond910, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ug = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !166
  %i.uh = sdiv i64 %i.ug, 2
  %i.ui = trunc i64 %i.uh to i32                  ; 2 uses
  %i.uj = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef nonnull %.2626, i32 noundef %i.ui)
  switch i8 %i.uj, label %bb.fc [
    i8 22, label %bb.fe
    i8 19, label %bb.fe
  ]

bb.fc:                                            ; preds = %bb.fb
  br i1 %.not877, label %.thread1014, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uk = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.ui)
  %.not879 = icmp eq i8 %i.uk, 22
  br i1 %.not879, label %bb.fe, label %.thread1014

bb.fe:                                            ; preds = %bb.fb, %bb.fb, %bb.fa, %bb.fd
  %i.ul = icmp eq ptr %.2626, %.3639
  %i.um = icmp eq i32 %.2722, %.0643.ph1713
  %or.cond911 = select i1 %i.ul, i1 %i.um, i1 false
  br i1 %or.cond911, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  store i8 9, ptr %2, align 8, !tbaa !17
  store i8 1, ptr %i.u, align 1, !tbaa !17
  store i8 0, ptr %i.v, align 1, !tbaa !17
  store ptr %.3710, ptr %i.w, align 8, !tbaa !17
  store i32 0, ptr %i.x, align 8, !tbaa !17
  store ptr %.2626, ptr %i.y, align 8, !tbaa !17
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.uo = sext i32 %.0647.ph1712 to i64
  %i.up = getelementptr inbounds [16 x i8], ptr %2, i64 %i.uo
  %i.uq = sub nsw i32 %.17, %.0647.ph1712         ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = shl nsw i64 %i.ur, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.un, ptr nonnull align 8 %i.up, i64 %i.us, i1 false)
  %i.ut = add nsw i32 %i.uq, 2
  br label %.critedge

bb.fg:                                            ; preds = %bb.fe
  %i.uu = sext i32 %.0651.ph1711 to i64
  %i.uv = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 120), align 8, !tbaa !168
  %i.uw = icmp sgt i64 %i.uv, %i.uu
  br i1 %i.uw, label %bb.fh, label %.thread1014

bb.fh:                                            ; preds = %bb.fg
  %i.ux = add nsw i32 %.0651.ph1711, 1
  br label %.thread.outer1702

.thread.outer1702:                                ; preds = %.thread.outer, %bb.fh
  %.0720.ph1703 = phi i32 [ %.0720.ph, %.thread.outer ], [ %.2722, %bb.fh ]
  %.0712.ph1704 = phi i32 [ %.0712.ph, %.thread.outer ], [ %.2714, %bb.fh ]
  %.1708.ph1705 = phi ptr [ %.1708.ph, %.thread.outer ], [ %.3710, %bb.fh ]
  %.0704.ph1706 = phi i64 [ %.0704.ph, %.thread.outer ], [ %.1705, %bb.fh ]
  %.2699.ph1707 = phi i32 [ %.2699.ph1701, %.thread.outer ], [ %.17, %bb.fh ]
  %.0667.ph1708 = phi i32 [ %.0667.ph, %.thread.outer ], [ %.3670, %bb.fh ]
  %.0661.ph1709 = phi i32 [ %.0661.ph, %.thread.outer ], [ %.3664, %bb.fh ]
  %.0655.ph1710 = phi i32 [ %.0655.ph, %.thread.outer ], [ %.3658, %bb.fh ]
  %.0651.ph1711 = phi i32 [ %.0651.ph, %.thread.outer ], [ %i.ux, %bb.fh ] ; 3 uses
  %.0647.ph1712 = phi i32 [ %.0647.ph, %.thread.outer ], [ %.17, %bb.fh ] ; 3 uses
  %.0643.ph1713 = phi i32 [ %.0643.ph, %.thread.outer ], [ %.2722, %bb.fh ] ; 3 uses
  %.0636.ph1714 = phi ptr [ %.0636.ph, %.thread.outer ], [ %.2626, %bb.fh ]
  %.0633.ph1715 = phi ptr [ %.0633.ph, %.thread.outer ], [ %.1634, %bb.fh ]
  %.0629.ph1716 = phi ptr [ %.0629.ph, %.thread.outer ], [ %.1630, %bb.fh ]
  %.0624.ph1717 = phi ptr [ %.0624.ph, %.thread.outer ], [ %.2626, %bb.fh ]
  %.0619.ph1718 = phi ptr [ %.0619.ph, %.thread.outer ], [ %.3622, %bb.fh ]
  br label %.thread

bb.fi:                                            ; preds = %bb.ey
  %i.uy = and i32 %i.tl, 64
  %.not875 = icmp eq i32 %i.uy, 0
  br i1 %.not875, label %.thread.backedge, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.uz = zext nneg i32 %.17 to i64
  %i.va = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.uz ; 2 uses
  store i32 0, ptr %i.va, align 8, !tbaa !17
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store ptr %.2626, ptr %i.vb, align 8, !tbaa !17
  %i.vc = add nuw nsw i32 %.17, 1                 ; 2 uses
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !150
  %i.vf = add nsw i64 %i.ve, -2
  %.not876 = icmp sgt i64 %i.vf, %i.vd
  %.912 = select i1 %.not876, i32 12, i32 14
  br label %.thread1014

.thread1014:                                      ; preds = %bb.cj, %bb.cv, %bb.cz, %bb.dz, %bb.ep, %bb.ex, %bb.dc, %zend_jit_trace_has_recursive_ret.exit, %bb.do, %bb.dr, %bb.du, %bb.dw, %bb.as, %bb.aq, %bb.ao, %bb.eo, %bb.fc, %bb.fd, %bb.fg, %bb.eu, %bb.fj
  %.46281038 = phi ptr [ %.2626, %bb.fj ], [ %.2626, %bb.eu ], [ %.0624, %bb.cj ], [ %.2626, %bb.eo ], [ %.0624, %bb.aq ], [ %.0624, %bb.as ], [ %.2626, %bb.dw ], [ %.2626, %bb.du ], [ %.2626, %bb.dr ], [ %.2626, %bb.do ], [ %.2626, %zend_jit_trace_has_recursive_ret.exit ], [ %.0624, %bb.ao ], [ %.2626, %bb.dc ], [ %.2626, %bb.ex ], [ %.2626, %bb.ep ], [ %.2626, %bb.dz ], [ %.2626, %bb.cz ], [ %.2626, %bb.cv ], [ %.2626, %bb.fc ], [ %.2626, %bb.fd ], [ %.2626, %bb.fg ] ; 7 uses
  %.36321036 = phi ptr [ %.1630, %bb.fj ], [ %.1630, %bb.eu ], [ %.0629, %bb.cj ], [ %.1630, %bb.eo ], [ %.0629, %bb.aq ], [ %.0629, %bb.as ], [ %.1630, %bb.dw ], [ %.1630, %bb.du ], [ %.1630, %bb.dr ], [ %.1630, %bb.do ], [ %.1630, %zend_jit_trace_has_recursive_ret.exit ], [ %.0629, %bb.ao ], [ %.1630, %bb.dc ], [ %.1630, %bb.ex ], [ %.1630, %bb.ep ], [ %.1630, %bb.dz ], [ %.1630, %bb.cz ], [ %.1630, %bb.cv ], [ %.1630, %bb.fc ], [ %.1630, %bb.fd ], [ %.1630, %bb.fg ] ; 5 uses
  %.56601035 = phi i32 [ %.3658, %bb.fj ], [ %.3658, %bb.eu ], [ %.0655, %bb.cj ], [ %.3658, %bb.eo ], [ %.0655, %bb.aq ], [ %.0655, %bb.as ], [ %.0655, %bb.dw ], [ %.0655, %bb.du ], [ %.0655, %bb.dr ], [ %.0655, %bb.do ], [ %.0655, %zend_jit_trace_has_recursive_ret.exit ], [ %.0655, %bb.ao ], [ %.0655, %bb.dc ], [ %.3658, %bb.ex ], [ %.3658, %bb.ep ], [ %.0655, %bb.dz ], [ %.0655, %bb.cz ], [ %.0655, %bb.cv ], [ %.3658, %bb.fc ], [ %.3658, %bb.fd ], [ %.3658, %bb.fg ]
  %.56661034 = phi i32 [ %.3664, %bb.fj ], [ %.3664, %bb.eu ], [ %.0661, %bb.cj ], [ %.3664, %bb.eo ], [ %.0661, %bb.aq ], [ %.0661, %bb.as ], [ %.0661, %bb.dw ], [ %.0661, %bb.du ], [ %.0661, %bb.dr ], [ %.0661, %bb.do ], [ %.0661, %zend_jit_trace_has_recursive_ret.exit ], [ %.0661, %bb.ao ], [ %.0661, %bb.dc ], [ %.3664, %bb.ex ], [ %.3664, %bb.ep ], [ %.0661, %bb.dz ], [ %.0661, %bb.cz ], [ %.0661, %bb.cv ], [ %.3664, %bb.fc ], [ %.3664, %bb.fd ], [ %.3664, %bb.fg ] ; 2 uses
  %.56721033 = phi i32 [ %.3670, %bb.fj ], [ %.3670, %bb.eu ], [ %.0667, %bb.cj ], [ %.3670, %bb.eo ], [ %.0667, %bb.aq ], [ %.0667, %bb.as ], [ %.0667, %bb.dw ], [ %.0667, %bb.du ], [ %.0667, %bb.dr ], [ %.0667, %bb.do ], [ %.0667, %zend_jit_trace_has_recursive_ret.exit ], [ %.0667, %bb.ao ], [ %.0667, %bb.dc ], [ %.3670, %bb.ex ], [ %.3670, %bb.ep ], [ %.0667, %bb.dz ], [ %.0667, %bb.cz ], [ %.0667, %bb.cv ], [ %.3670, %bb.fc ], [ %.3670, %bb.fd ], [ %.3670, %bb.fg ] ; 2 uses
  %.211030 = phi i32 [ %i.vc, %bb.fj ], [ %.17, %bb.eu ], [ %i.kl, %bb.cj ], [ %i.tb, %bb.eo ], [ %i.ez, %bb.aq ], [ %i.fg, %bb.as ], [ %i.qg, %bb.dw ], [ %.11, %bb.du ], [ %.11, %bb.dr ], [ %i.ov, %bb.do ], [ %i.ov, %zend_jit_trace_has_recursive_ret.exit ], [ %i.et, %bb.ao ], [ %i.mq, %bb.dc ], [ %.17, %bb.ex ], [ %.17, %bb.ep ], [ %i.qr, %bb.dz ], [ %i.mq, %bb.cz ], [ %.11, %bb.cv ], [ %.17, %bb.fc ], [ %.17, %bb.fd ], [ %.17, %bb.fg ] ; 2 uses
  %.67181029 = phi i32 [ %.2714, %bb.fj ], [ %.2714, %bb.eu ], [ %.0712, %bb.cj ], [ %.2714, %bb.eo ], [ %.0712, %bb.aq ], [ %.0712, %bb.as ], [ %.0712, %bb.dw ], [ %.0712, %bb.du ], [ %.0712, %bb.dr ], [ %.0712, %bb.do ], [ %.0712, %zend_jit_trace_has_recursive_ret.exit ], [ %.0712, %bb.ao ], [ %.0712, %bb.dc ], [ %.2714, %bb.ex ], [ %.2714, %bb.ep ], [ %.0712, %bb.dz ], [ %.0712, %bb.cz ], [ %.0712, %bb.cv ], [ %.2714, %bb.fc ], [ %.2714, %bb.fd ], [ %.2714, %bb.fg ] ; 4 uses
  %.187451026 = phi i32 [ %.912, %bb.fj ], [ 23, %bb.eu ], [ 14, %bb.cj ], [ 14, %bb.eo ], [ 14, %bb.aq ], [ 14, %bb.as ], [ 14, %bb.dw ], [ 20, %bb.du ], [ 19, %bb.dr ], [ 17, %bb.do ], [ 14, %zend_jit_trace_has_recursive_ret.exit ], [ 14, %bb.ao ], [ 17, %bb.dc ], [ 21, %bb.ex ], [ 13, %bb.ep ], [ 14, %bb.dz ], [ 14, %bb.cz ], [ 15, %bb.cv ], [ 18, %bb.fg ], [ 22, %bb.fd ], [ 22, %bb.fc ] ; 3 uses
  %i.vg = icmp sgt i32 %.56721033, 0
  br i1 %i.vg, label %.critedge, label %bb.fk

bb.fk:                                            ; preds = %.thread1014
  %i.vh = icmp sgt i32 %.56661034, 0
  br i1 %i.vh, label %.critedge, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.vi = icmp sgt i32 %.0673.ph, 0
  %i.vj = icmp eq i32 %.187451026, 17
  %or.cond16 = and i1 %i.vi, %i.vj
  br i1 %or.cond16, label %bb.fm, label %.critedge

bb.fm:                                            ; preds = %bb.fl
  %i.vk = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !166
  %i.vl = sdiv i64 %i.vk, 2
  %i.vm = trunc i64 %i.vl to i32
  %i.vn = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.vm)
  %i.vo = icmp eq i8 %i.vn, 17
  br i1 %i.vo, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.ev, %bb.fm, %bb.et, %bb.eu
  %.46281039.ph = phi ptr [ %.46281038, %bb.fm ], [ %.2626, %bb.eu ], [ %.2626, %bb.et ], [ %.2626, %bb.ev ] ; 2 uses
  %.36321037.ph = phi ptr [ %.36321036, %bb.fm ], [ %.1630, %bb.eu ], [ %.1630, %bb.et ], [ %.1630, %bb.ev ] ; 2 uses
  %.0747.ph = phi ptr [ %.0677.ph, %bb.fm ], [ %.2626, %bb.eu ], [ %.2626, %bb.et ], [ %.2626, %bb.ev ] ; 2 uses
  %.7719.ph = phi i32 [ %.67181029, %bb.fm ], [ %.2714, %bb.eu ], [ %.2714, %bb.et ], [ %.2714, %bb.ev ] ; 2 uses
  %.22.ph = phi i32 [ %.0673.ph, %bb.fm ], [ %.17, %bb.eu ], [ %.17, %bb.et ], [ %.17, %bb.ev ] ; 2 uses
  %i.vp = zext nneg i32 %.22.ph to i64            ; 2 uses
  %i.vq = getelementptr [16 x i8], ptr %2, i64 %i.vp
  %i.vr = getelementptr i8, ptr %i.vq, i64 -16    ; 2 uses
  %i.vs = load i8, ptr %i.vr, align 8, !tbaa !17
  %i.vt = icmp eq i8 %i.vs, 4
  br i1 %i.vt, label %.lr.ph1234, label %.critedge

.lr.ph1234:                                       ; preds = %.preheader, %bb.fn
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fn ], [ %i.vp, %.preheader ] ; 2 uses
  %i.vu = phi ptr [ %i.vy, %bb.fn ], [ %i.vr, %.preheader ]
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !17
  %i.vw = and i32 %i.vv, 256
  %.not886 = icmp eq i32 %i.vw, 0
  br i1 %.not886, label %.critedge.loopexit, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph1234
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.vx = getelementptr [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.vy = getelementptr i8, ptr %i.vx, i64 -16    ; 2 uses
  %i.vz = load i8, ptr %i.vy, align 8, !tbaa !17
  %i.wa = icmp eq i8 %i.vz, 4
  br i1 %i.wa, label %.lr.ph1234, label %.critedge.loopexit, !llvm.loop !142

.critedge.loopexit:                               ; preds = %.lr.ph1234, %bb.fn
  %.24.ph.in = phi i64 [ %indvars.iv.next, %bb.fn ], [ %indvars.iv, %.lr.ph1234 ]
  %.24.ph = trunc i64 %.24.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.dg, %bb.ci, %bb.dh, %bb.dn, %bb.cy, %bb.cx, %bb.db, %bb.cw, %bb.dv, %bb.cd, %bb.cd, %bb.ce, %bb.dq, %bb.dy, %bb.ez, %.critedge.loopexit, %.preheader, %bb.cm, %bb.cq, %bb.ff, %bb.cl, %bb.cl, %bb.fk, %bb.fm, %.thread1014, %bb.fl
  %.77191067 = phi i32 [ %.0712, %bb.cl ], [ %.0712, %bb.cl ], [ %.7719.ph, %.critedge.loopexit ], [ %.67181029, %bb.fl ], [ %.56601035, %bb.fk ], [ %.67181029, %bb.fm ], [ %.67181029, %.thread1014 ], [ %.0712, %bb.cm ], [ %.7719.ph, %.preheader ], [ %.0712, %bb.cq ], [ 0, %bb.ff ], [ %.0712, %bb.ce ], [ %i.qk, %bb.dy ], [ %i.po, %bb.dq ], [ %.0712, %bb.cd ], [ %.0712, %bb.cd ], [ %.0712, %bb.dg ], [ %.0712, %bb.ci ], [ %.0712, %bb.dh ], [ %.0712, %bb.dn ], [ %.0712, %bb.cy ], [ %.0712, %bb.cx ], [ %.0712, %bb.db ], [ %.0712, %bb.cw ], [ %.0712, %bb.dv ], [ %.2714, %bb.ez ]
  %.197461066 = phi i32 [ 5, %bb.cl ], [ 5, %bb.cl ], [ 4, %.critedge.loopexit ], [ %.187451026, %bb.fl ], [ 2, %bb.fk ], [ 17, %bb.fm ], [ 1, %.thread1014 ], [ 3, %bb.cm ], [ 4, %.preheader ], [ %.890, %bb.cq ], [ 0, %bb.ff ], [ 5, %bb.ce ], [ 8, %bb.dy ], [ 8, %bb.dq ], [ 5, %bb.cd ], [ 5, %bb.cd ], [ 3, %bb.dg ], [ 8, %bb.ci ], [ 3, %bb.dh ], [ 2, %bb.dn ], [ 5, %bb.cy ], [ 7, %bb.cx ], [ 1, %bb.db ], [ 6, %bb.cw ], [ 3, %bb.dv ], [ 0, %bb.ez ]
  %.07471065 = phi ptr [ null, %bb.cl ], [ null, %bb.cl ], [ %.0747.ph, %.critedge.loopexit ], [ %.46281038, %bb.fl ], [ %1, %bb.fk ], [ %.46281038, %bb.fm ], [ %1, %.thread1014 ], [ null, %bb.cm ], [ %.0747.ph, %.preheader ], [ %.2626, %bb.cq ], [ %.2626, %bb.ff ], [ %.0624, %bb.ce ], [ %.2626, %bb.dy ], [ %.2626, %bb.dq ], [ %.0624, %bb.cd ], [ %.0624, %bb.cd ], [ %.2626, %bb.dg ], [ %.0624, %bb.ci ], [ %.2626, %bb.dh ], [ %.2626, %bb.dn ], [ %.2626, %bb.cy ], [ %.2626, %bb.cx ], [ %.2626, %bb.db ], [ %.2626, %bb.cw ], [ %.2626, %bb.dv ], [ %.2626, %bb.ez ]
  %.not888 = phi i1 [ false, %bb.cl ], [ false, %bb.cl ], [ true, %.critedge.loopexit ], [ true, %bb.fl ], [ true, %bb.fk ], [ true, %bb.fm ], [ true, %.thread1014 ], [ false, %bb.cm ], [ true, %.preheader ], [ true, %bb.cq ], [ true, %bb.ff ], [ true, %bb.ez ], [ true, %bb.dy ], [ true, %bb.dq ], [ true, %bb.ce ], [ true, %bb.cd ], [ true, %bb.cd ], [ true, %bb.dv ], [ true, %bb.cw ], [ true, %bb.db ], [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.dn ], [ true, %bb.dh ], [ true, %bb.ci ], [ true, %bb.dg ]
  %.272610281064 = phi i32 [ 69, %bb.cl ], [ 69, %bb.cl ], [ 4, %.critedge.loopexit ], [ %.187451026, %bb.fl ], [ 2, %bb.fk ], [ 17, %bb.fm ], [ 1, %.thread1014 ], [ 67, %bb.cm ], [ 4, %.preheader ], [ %.890, %bb.cq ], [ 0, %bb.ff ], [ 5, %bb.ce ], [ 8, %bb.dy ], [ 8, %bb.dq ], [ 5, %bb.cd ], [ 5, %bb.cd ], [ 3, %bb.dg ], [ 8, %bb.ci ], [ 3, %bb.dh ], [ 2, %bb.dn ], [ 5, %bb.cy ], [ 7, %bb.cx ], [ 1, %bb.db ], [ 6, %bb.cw ], [ 3, %bb.dv ], [ 0, %bb.ez ] ; 2 uses
  %.363210371063 = phi ptr [ %.0629, %bb.cl ], [ %.0629, %bb.cl ], [ %.36321037.ph, %.critedge.loopexit ], [ %.36321036, %bb.fl ], [ %.36321036, %bb.fk ], [ %.36321036, %bb.fm ], [ %.36321036, %.thread1014 ], [ %.0629, %bb.cm ], [ %.36321037.ph, %.preheader ], [ %.1630, %bb.cq ], [ %.1630, %bb.ff ], [ %.0629, %bb.ce ], [ %.1630, %bb.dy ], [ %.1630, %bb.dq ], [ %.0629, %bb.cd ], [ %.0629, %bb.cd ], [ %.1630, %bb.dg ], [ %.0629, %bb.ci ], [ %.1630, %bb.dh ], [ %.1630, %bb.dn ], [ %.1630, %bb.cy ], [ %.1630, %bb.cx ], [ %.1630, %bb.db ], [ %.1630, %bb.cw ], [ %.1630, %bb.dv ], [ %.1630, %bb.ez ]
  %.462810391062 = phi ptr [ null, %bb.cl ], [ null, %bb.cl ], [ %.46281039.ph, %.critedge.loopexit ], [ %.46281038, %bb.fl ], [ %.46281038, %bb.fk ], [ %.46281038, %bb.fm ], [ %.46281038, %.thread1014 ], [ null, %bb.cm ], [ %.46281039.ph, %.preheader ], [ %.2626, %bb.cq ], [ %.2626, %bb.ff ], [ %.0624, %bb.ce ], [ %.2626, %bb.dy ], [ %.2626, %bb.dq ], [ %.0624, %bb.cd ], [ %.0624, %bb.cd ], [ %.2626, %bb.dg ], [ %.0624, %bb.ci ], [ %.2626, %bb.dh ], [ %.2626, %bb.dn ], [ %.2626, %bb.cy ], [ %.2626, %bb.cx ], [ %.2626, %bb.db ], [ %.2626, %bb.cw ], [ %.2626, %bb.dv ], [ %.2626, %bb.ez ]
  %.24 = phi i32 [ %.11, %bb.cl ], [ %.11, %bb.cl ], [ %.24.ph, %.critedge.loopexit ], [ %.211030, %bb.fl ], [ %.56661034, %bb.fk ], [ %.211030, %bb.fm ], [ %.56721033, %.thread1014 ], [ %.11, %bb.cm ], [ %.22.ph, %.preheader ], [ %.11, %bb.cq ], [ %i.ut, %bb.ff ], [ %.9, %bb.ce ], [ %i.qg, %bb.dy ], [ %i.ov, %bb.dq ], [ %.9, %bb.cd ], [ %.9, %bb.cd ], [ %.11, %bb.dg ], [ %.9, %bb.ci ], [ %.11, %bb.dh ], [ %i.ov, %bb.dn ], [ %.11, %bb.cy ], [ %.11, %bb.cx ], [ %i.mq, %bb.db ], [ %.11, %bb.cw ], [ %.11, %bb.dv ], [ %.17, %bb.ez ] ; 2 uses
  %.77191067.fr = freeze i32 %.77191067           ; 2 uses
  store i32 %.24, ptr %i.x, align 8, !tbaa !17
  %i.wb = sext i32 %.24 to i64
  %i.wc = getelementptr inbounds [16 x i8], ptr %2, i64 %i.wb ; 4 uses
  store i8 8, ptr %i.wc, align 8, !tbaa !17
  %i.wd = trunc nuw nsw i32 %.197461066 to i8     ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.wd, ptr %i.we, align 2, !tbaa !17
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 2
  store i8 %i.wd, ptr %i.wf, align 2, !tbaa !17
  %.not887 = icmp eq i32 %.77191067.fr, 0
  %i.wg = trunc i32 %.77191067.fr to i8
  %i.wh = add i8 %i.wg, 1
  %spec.select1106 = select i1 %.not887, i8 0, i8 %i.wh ; 2 uses
  store i8 %spec.select1106, ptr %i.v, align 1, !tbaa !17
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wc, i64 3
  store i8 %spec.select1106, ptr %i.wi, align 1, !tbaa !17
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  store ptr %.07471065, ptr %i.wj, align 8, !tbaa !17
  br i1 %.not888, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.critedge
  store ptr %.462810391062, ptr %.363210371063, align 8, !tbaa !69
  br label %bb.fp

bb.fp:                                            ; preds = %.critedge, %bb.fo, %bb.j, %bb.g, %bb.e
  %.1603 = phi i32 [ 13, %bb.e ], [ 12, %bb.g ], [ 8, %bb.j ], [ %.272610281064, %bb.fo ], [ %.272610281064, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.1603
}

declare i32 @zend_get_opcode_flags(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_get_property_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @zend_vm_handle_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr nofree noundef readnone captures(address) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 192), align 8, !tbaa !126
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 200), align 8, !tbaa !126
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 208), align 8, !tbaa !126
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 216), align 8, !tbaa !126
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.bm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 224), align 8, !tbaa !126
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.bm, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 232), align 8, !tbaa !126
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.bm, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 240), align 8, !tbaa !126
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.bm, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 248), align 8, !tbaa !126
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.bm, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 256), align 8, !tbaa !126
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 264), align 8, !tbaa !126
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %bb.bm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 272), align 8, !tbaa !126
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.bm, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 280), align 8, !tbaa !126
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %bb.bm, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 288), align 8, !tbaa !126
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.bm, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 296), align 8, !tbaa !126
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %bb.bm, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 304), align 8, !tbaa !126
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.bm, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 312), align 8, !tbaa !126
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.bm, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 320), align 8, !tbaa !126
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.bm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 328), align 8, !tbaa !126
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.bm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 336), align 8, !tbaa !126
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.bm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 344), align 8, !tbaa !126
  %i.an = icmp eq ptr %i.am, %0
  br i1 %i.an, label %bb.bm, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 352), align 8, !tbaa !126
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.bm, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 360), align 8, !tbaa !126
  %i.ar = icmp eq ptr %i.aq, %0
  br i1 %i.ar, label %bb.bm, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 368), align 8, !tbaa !126
  %i.at = icmp eq ptr %i.as, %0
  br i1 %i.at, label %bb.bm, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 376), align 8, !tbaa !126
  %i.av = icmp eq ptr %i.au, %0
  br i1 %i.av, label %bb.bm, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 384), align 8, !tbaa !126
  %i.ax = icmp eq ptr %i.aw, %0
  br i1 %i.ax, label %bb.bm, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 392), align 8, !tbaa !126
  %i.az = icmp eq ptr %i.ay, %0
  br i1 %i.az, label %bb.bm, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 400), align 8, !tbaa !126
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %bb.bm, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 408), align 8, !tbaa !126
  %i.bd = icmp eq ptr %i.bc, %0
  br i1 %i.bd, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 416), align 8, !tbaa !126
  %i.bf = icmp eq ptr %i.be, %0
  br i1 %i.bf, label %bb.bm, label %bb.ad
end_hunk_0
begin_hunk_1_@zend_jit_trace_record_fake_init_call_ex:bb.a
  br i1 %.not55, label %bb.j, label %.thread60

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i32 %3, 16
  br i1 %i.ag, label %bb.k, label %.thread60

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.aj = and i32 %i.ai, 33554432
  %.not56 = icmp eq i32 %i.aj, 0
  br i1 %.not56, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.03867, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not57 = icmp eq ptr %i.al, null
  br i1 %.not57, label %.thread60, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = or i32 %i.ai, 536870912
  store i32 %i.am, ptr %i.ah, align 8, !tbaa !17
  br label %.thread60

.thread60:                                        ; preds = %bb.f, %.critedge59, %.critedge, %bb.d, %bb.h, %.thread64, %bb.i, %bb.j, %bb.l, %bb.m
  %.1 = phi ptr [ %.03867, %bb.j ], [ null, %bb.m ], [ %.03867, %bb.l ], [ null, %bb.i ], [ null, %.thread64 ], [ null, %bb.h ], [ null, %bb.d ], [ null, %.critedge ], [ null, %.critedge59 ], [ null, %bb.f ]
  %i.an = shl i32 %4, 16
  %i.ao = or disjoint i32 %i.an, 260
  %i.ap = sext i32 %.041 to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ap ; 2 uses
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.1, ptr %i.ar, align 8, !tbaa !17
  %i.as = add nsw i32 %.041, 1
  br label %select.unfold

select.unfold:                                    ; preds = %.thread60, %bb.b
  %.140 = phi i32 [ %i.d, %bb.b ], [ %i.as, %.thread60 ]
  ret i32 %.140
}

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = distinct !{!3, !33}
!4 = distinct !{null}
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"any pointer", !13, i64 0}
!20 = !{!"p1 _ZTS8_zend_op", !19, i64 0}
!21 = !{!"p1 _ZTS18_zend_execute_data", !19, i64 0}
!22 = !{!"p1 _ZTS12_zval_struct", !19, i64 0}
!23 = !{!"p1 _ZTS14_zend_function", !19, i64 0}
!24 = !{!"_zval_struct", !13, i64 0, !13, i64 8, !13, i64 12}
!25 = !{!"p1 _ZTS11_zend_array", !19, i64 0}
!26 = !{!"any p2 pointer", !19, i64 0}
!27 = !{!"_zend_execute_data", !20, i64 0, !21, i64 8, !22, i64 16, !23, i64 24, !24, i64 32, !21, i64 48, !25, i64 56, !26, i64 64, !25, i64 72}
!28 = !{!27, !25, i64 56}
!29 = !{!27, !23, i64 24}
!30 = !{!"_zend_refcounted_h", !14, i64 0, !13, i64 4}
!31 = !{!30, !14, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!27, !25, i64 72}
!35 = !{!27, !21, i64 48}
!36 = !{!"p2 _ZTS11_zend_array", !26, i64 0}
!37 = !{!"long", !13, i64 0}
!38 = !{!"_zend_array", !30, i64 0, !13, i64 8, !14, i64 12, !13, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !37, i64 40, !19, i64 48}
!39 = !{!"p1 _ZTS13__jmp_buf_tag", !19, i64 0}
!40 = !{!"_Bool", !13, i64 0}
!41 = !{!"p1 _ZTS14_zend_vm_stack", !19, i64 0}
!42 = !{!"p1 _ZTS17_zend_class_entry", !19, i64 0}
!43 = !{!"zend_atomic_bool_s", !13, i64 0}
!44 = !{!"_zend_stack", !14, i64 0, !14, i64 4, !14, i64 8, !19, i64 16}
!45 = !{!"p1 _ZTS15_zend_ini_entry", !19, i64 0}
!46 = !{!"p2 _ZTS12_zend_object", !26, i64 0}
!47 = !{!"_zend_objects_store", !46, i64 0, !14, i64 8, !14, i64 12, !14, i64 16}
!48 = !{!"_zend_lazy_objects_store", !38, i64 0}
!49 = !{!"p1 _ZTS12_zend_object", !19, i64 0}
!50 = !{!"p1 _ZTS18_zend_module_entry", !19, i64 0}
!51 = !{!"p1 _ZTS18_HashTableIterator", !19, i64 0}
!52 = !{!"_zend_op", !19, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !14, i64 20, !14, i64 24, !13, i64 28, !13, i64 29, !13, i64 30, !13, i64 31}
!53 = !{!"", !22, i64 0, !22, i64 8, !22, i64 16}
!54 = !{!"p1 _ZTS19_zend_fiber_context", !19, i64 0}
!55 = !{!"p1 _ZTS11_zend_fiber", !19, i64 0}
!56 = !{!"p2 _ZTS16_zend_error_info", !26, i64 0}
!57 = !{!"p1 _ZTS12_zend_string", !19, i64 0}
!58 = !{!"_zend_call_stack", !19, i64 0, !37, i64 8}
!59 = !{!"p1 _ZTS19_zend_strtod_bigint", !19, i64 0}
!60 = !{!"p1 omnipotent char", !19, i64 0}
!61 = !{!"_zend_strtod_state", !13, i64 0, !59, i64 64, !60, i64 72}
!62 = !{!"_zend_executor_globals", !24, i64 0, !24, i64 16, !13, i64 32, !36, i64 288, !36, i64 296, !38, i64 304, !38, i64 360, !39, i64 416, !14, i64 424, !40, i64 428, !24, i64 432, !14, i64 448, !25, i64 456, !25, i64 464, !25, i64 472, !22, i64 480, !22, i64 488, !41, i64 496, !37, i64 504, !21, i64 512, !42, i64 520, !14, i64 528, !21, i64 536, !14, i64 544, !37, i64 552, !14, i64 560, !14, i64 564, !14, i64 568, !40, i64 572, !40, i64 573, !43, i64 574, !43, i64 575, !25, i64 576, !37, i64 584, !19, i64 592, !19, i64 600, !38, i64 608, !38, i64 664, !14, i64 720, !40, i64 724, !24, i64 728, !24, i64 744, !44, i64 760, !44, i64 784, !44, i64 808, !42, i64 832, !14, i64 840, !14, i64 844, !37, i64 848, !25, i64 856, !25, i64 864, !45, i64 872, !47, i64 880, !48, i64 904, !49, i64 960, !49, i64 968, !20, i64 976, !13, i64 984, !50, i64 1080, !40, i64 1088, !13, i64 1089, !37, i64 1096, !14, i64 1104, !14, i64 1108, !51, i64 1112, !13, i64 1120, !19, i64 1376, !13, i64 1384, !52, i64 1640, !38, i64 1672, !37, i64 1728, !53, i64 1736, !54, i64 1760, !54, i64 1768, !55, i64 1776, !37, i64 1784, !40, i64 1792, !14, i64 1796, !56, i64 1800, !57, i64 1808, !37, i64 1816, !58, i64 1824, !37, i64 1840, !37, i64 1848, !61, i64 1856, !13, i64 1936}
!63 = !{!62, !41, i64 496}
!64 = !{!"_zend_vm_stack", !22, i64 0, !22, i64 8, !41, i64 16}
!65 = !{!64, !41, i64 16}
!66 = !{!22, !22, i64 0}
!67 = !{!62, !22, i64 480}
!68 = !{!62, !49, i64 960}
!69 = !{!27, !20, i64 0}
!70 = !{!52, !13, i64 31}
!71 = !{!62, !21, i64 512}
!72 = !{!52, !19, i64 0}
!73 = !{!"p1 _ZTS14_zend_arg_info", !19, i64 0}
!74 = !{!"p1 _ZTS19_zend_property_info", !19, i64 0}
!75 = !{!"p2 _ZTS12_zend_string", !26, i64 0}
!76 = !{!"p1 int", !19, i64 0}
!77 = !{!"p1 _ZTS16_zend_live_range", !19, i64 0}
!78 = !{!"p1 _ZTS23_zend_try_catch_element", !19, i64 0}
!79 = !{!"p2 _ZTS14_zend_op_array", !26, i64 0}
!80 = !{!"_zend_op_array", !13, i64 0, !13, i64 1, !14, i64 4, !57, i64 8, !42, i64 16, !23, i64 24, !14, i64 32, !14, i64 36, !73, i64 40, !25, i64 48, !26, i64 56, !57, i64 64, !14, i64 72, !74, i64 80, !14, i64 88, !14, i64 92, !14, i64 96, !20, i64 104, !25, i64 112, !25, i64 120, !75, i64 128, !76, i64 136, !14, i64 144, !14, i64 148, !77, i64 152, !78, i64 160, !57, i64 168, !14, i64 176, !14, i64 180, !14, i64 184, !14, i64 188, !22, i64 192, !79, i64 200, !13, i64 208}
!81 = !{!80, !14, i64 4}
!82 = !{!80, !14, i64 32}
!83 = !{!80, !14, i64 92}
!84 = !{!80, !14, i64 72}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!62, !20, i64 976}
!87 = !{!52, !13, i64 30}
!88 = !{!"_zend_string", !30, i64 0, !37, i64 8, !37, i64 16, !13, i64 24}
!89 = !{!88, !37, i64 16}
!90 = !{!37, !37, i64 0}
!91 = !{!14, !14, i64 0}
!92 = !{!19, !19, i64 0}
!93 = !{!"p1 _ZTS17_zend_basic_block", !19, i64 0}
!94 = !{!"_zend_cfg", !14, i64 0, !14, i64 4, !93, i64 8, !76, i64 16, !76, i64 24, !14, i64 32}
!95 = !{!"p1 _ZTS15_zend_ssa_block", !19, i64 0}
!96 = !{!"p1 _ZTS12_zend_ssa_op", !19, i64 0}
!97 = !{!"p1 _ZTS13_zend_ssa_var", !19, i64 0}
!98 = !{!"p1 _ZTS18_zend_ssa_var_info", !19, i64 0}
!99 = !{!"_zend_ssa", !94, i64 0, !14, i64 40, !14, i64 44, !95, i64 48, !96, i64 56, !97, i64 64, !98, i64 72}
!100 = !{!"p1 _ZTS15_zend_call_info", !19, i64 0}
!101 = !{!"p2 _ZTS15_zend_call_info", !26, i64 0}
!102 = !{!"_zend_ssa_range", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 17}
!103 = !{!"_zend_ssa_var_info", !14, i64 0, !40, i64 4, !40, i64 4, !40, i64 4, !40, i64 4, !40, i64 4, !40, i64 4, !40, i64 4, !40, i64 4, !102, i64 8, !42, i64 32}
!104 = !{!"_zend_func_info", !14, i64 0, !14, i64 4, !99, i64 8, !100, i64 88, !100, i64 96, !101, i64 104, !103, i64 112}
!105 = !{!"p1 _ZTS14_zend_op_array", !19, i64 0}
!106 = !{!27, !26, i64 64}
!107 = !{!"double", !13, i64 0}
!108 = !{!"p1 _ZTS9_sym_node", !19, i64 0}
!109 = !{!"p1 _ZTS19_zend_jit_trace_rec", !19, i64 0}
!110 = !{!"p1 _ZTS27_zend_jit_trace_stack_frame", !19, i64 0}
!111 = !{!"_zend_jit_globals", !40, i64 0, !40, i64 1, !13, i64 2, !13, i64 3, !14, i64 4, !60, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !107, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !108, i64 160, !40, i64 168, !109, i64 176, !110, i64 184, !13, i64 192, !13, i64 704, !13, i64 768, !14, i64 832, !60, i64 840}
!112 = !{!111, !37, i64 80}
!113 = !{!"p1 short", !19, i64 0}
!114 = !{!"_zend_jit_op_array_hot_extension", !104, i64 0, !105, i64 152, !113, i64 160, !13, i64 168}
!115 = !{!114, !113, i64 160}
!116 = !{!"short", !13, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!111, !37, i64 72}
!119 = !{!62, !25, i64 472}
!120 = !{!38, !14, i64 28}
!121 = !{!52, !14, i64 20}
!122 = !{!"_zend_jit_op_array_trace_extension", !104, i64 0, !105, i64 152, !37, i64 160, !13, i64 168}
!123 = !{!122, !37, i64 160}
!124 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!125 = !{!122, !105, i64 152}
!126 = !{!20, !20, i64 0}
!127 = !{!122, !14, i64 4}
!128 = distinct !{!128, !85}
!129 = !{!"branch_weights", i32 2000, i32 2002}
!130 = distinct !{!130, !85}
!131 = !{!"_zend_jit_op_array_extension", !104, i64 0, !105, i64 152, !19, i64 160}
!132 = !{!131, !19, i64 160}
!133 = !{!"_zend_constant", !24, i64 0, !57, i64 16, !57, i64 24, !25, i64 32}
!134 = !{!133, !57, i64 16}
!135 = !{!111, !37, i64 88}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33, !162, !163}
!138 = distinct !{!138, !33, !163, !162}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33, !162, !163}
!141 = distinct !{!141, !33, !163, !162}
!142 = distinct !{!142, !33}
!143 = !{!27, !21, i64 8}
!144 = !{!80, !57, i64 8}
!145 = !{!52, !13, i64 28}
!146 = !{!52, !13, i64 29}
!147 = !{!"p1 _ZTS21_zend_object_handlers", !19, i64 0}
!148 = !{!"_zend_object", !30, i64 0, !14, i64 8, !14, i64 12, !42, i64 16, !147, i64 24, !25, i64 32, !13, i64 40}
!149 = !{!148, !42, i64 16}
!150 = !{!111, !37, i64 152}
!151 = !{!148, !147, i64 24}
!152 = !{!"", !19, i64 0, !14, i64 8}
!153 = !{!"p2 _ZTS14_zend_function", !26, i64 0}
!154 = !{!"_zend_property_info", !14, i64 0, !14, i64 4, !57, i64 8, !57, i64 16, !25, i64 24, !42, i64 32, !152, i64 40, !74, i64 56, !153, i64 64}
!155 = !{!154, !153, i64 64}
!156 = !{!154, !14, i64 4}
!157 = !{!154, !14, i64 0}
!158 = !{!"branch_weights", i32 1, i32 1999}
!159 = !{!"branch_weights", i32 0, i32 1}
!160 = !{!27, !22, i64 16}
!161 = !{!105, !105, i64 0}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = !{!111, !37, i64 128}
!165 = !{!111, !37, i64 136}
!166 = !{!111, !37, i64 104}
!167 = !{!111, !37, i64 144}
!168 = !{!111, !37, i64 120}
end_hunk_1
