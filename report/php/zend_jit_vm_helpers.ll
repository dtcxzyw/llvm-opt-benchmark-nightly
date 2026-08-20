inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zend_jit_check_constant:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !125
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  store ptr %.sink, ptr %i.s, align 8, !tbaa !94
  ret ptr %.031.i
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_func_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 80), align 8, !tbaa !111 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !120
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !120
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !27

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !120
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !131
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !131
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_ret_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 88), align 8, !tbaa !132 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !120
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !120
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !27

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !120
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !131
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !131
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden preserve_nonecc ptr @zend_jit_loop_trace_helper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load i64, ptr %i.h, align 8, !tbaa !128
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 72), align 8, !tbaa !122 ; 2 uses
  %i.k = add nsw i64 %i.j, 32530
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !120
  %i.r = sub i16 %i.q, %i.m
  store i16 %i.r, ptr %i.p, align 2, !tbaa !120
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120
  %i.z = icmp slt i16 %i.y, 1
  br i1 %i.z, label %bb.b, label %bb.f, !prof !27

bb.b:                                             ; preds = %bb.a
  store i16 32531, ptr %i.x, align 2, !tbaa !120
  %i.aa = tail call i32 @zend_jit_trace_hot_root(ptr noundef nonnull %0, ptr noundef nonnull %1) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %zend_jit_trace_counter_helper.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 512), align 8, !tbaa !67 ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %zend_jit_trace_counter_helper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 3 uses
  %.not20.i = icmp eq ptr %i.ad, null
  br i1 %.not20.i, label %zend_jit_trace_counter_helper.exit, label %bb.e, !prof !130

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.af = musttail call preserve_nonecc ptr %i.ae(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad) #8, !inline_history !131
  ret ptr %i.af

bb.f:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.ah = musttail call preserve_nonecc ptr %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %1) #8, !inline_history !131
  ret ptr %i.ah

zend_jit_trace_counter_helper.exit:               ; preds = %bb.c, %bb.b, %bb.d
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 70) i32 @zend_jit_trace_execute(ptr noundef initializes((0, 8)) %0, ptr noundef %1, ptr nofree noundef initializes((0, 2), (3, 4), (8, 20), (24, 32)) %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [14 x ptr], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr %1, ptr %0, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.m = load i64, ptr %i.l, align 8, !tbaa !128  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !69
  %i.r = and i32 %i.q, 4194304
  %.not776 = icmp eq i32 %i.r, 0
  br i1 %.not776, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !135
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0707 = phi ptr [ %i.t, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  store i8 9, ptr %2, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %3, ptr %i.u, align 1, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 6 uses
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.0707, ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store i32 0, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %1, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !136
  %i.ab = icmp eq i8 %i.aa, -107
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.x, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 13, ptr %i.ad, align 2, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 13, ptr %i.ae, align 2, !tbaa !12
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.af, align 1, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ag, align 8, !tbaa !12
  br label %bb.fq

bb.f:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !12
  %i.ak = and i8 %i.aj, 64
  %.not777 = icmp eq i8 %i.ak, 0
  br i1 %.not777, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.x, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.al, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 12, ptr %i.am, align 2, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 12, ptr %i.an, align 2, !tbaa !12
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.ao, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.ap, align 8, !tbaa !12
  br label %bb.fq

bb.h:                                             ; preds = %bb.f
  %.not778 = icmp eq ptr %i.d, null
  br i1 %.not778, label %.thread.preheader, label %bb.i

.thread.preheader:                                ; preds = %bb.i, %bb.h
  %.2699.ph = phi i32 [ %i.aq, %bb.i ], [ 2, %bb.h ]
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %.thread.outer

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.d, ptr noundef nonnull %2, i32 noundef 2, i32 noundef %4, i32 noundef 0) ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %.thread.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 2, ptr %i.x, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 8, ptr %i.as, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 8, ptr %i.at, align 2, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 34
  store i8 8, ptr %i.au, align 2, !tbaa !12
  store i8 0, ptr %i.v, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 35
  store i8 0, ptr %i.av, align 1, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %1, ptr %i.aw, align 8, !tbaa !12
  br label %bb.fq

.thread:                                          ; preds = %.thread.backedge, %.thread.outer1684
  %.0720 = phi i32 [ %.0720.ph1685, %.thread.outer1684 ], [ %.2722, %.thread.backedge ] ; 9 uses
  %.0712 = phi i32 [ %.0712.ph1686, %.thread.outer1684 ], [ %.2714, %.thread.backedge ] ; 47 uses
  %.1708 = phi ptr [ %.1708.ph1687, %.thread.outer1684 ], [ %.3710, %.thread.backedge ] ; 2 uses
  %.0704 = phi i64 [ %.0704.ph1688, %.thread.outer1684 ], [ %.1705, %.thread.backedge ] ; 2 uses
  %.2699 = phi i32 [ %.2699.ph1689, %.thread.outer1684 ], [ %.17, %.thread.backedge ] ; 3 uses
  %.0667 = phi i32 [ %.0667.ph1690, %.thread.outer1684 ], [ %.3670, %.thread.backedge ] ; 21 uses
  %.0661 = phi i32 [ %.0661.ph1691, %.thread.outer1684 ], [ %.3664, %.thread.backedge ] ; 20 uses
  %.0655 = phi i32 [ %.0655.ph1692, %.thread.outer1684 ], [ %.3658, %.thread.backedge ] ; 20 uses
  %.0636 = phi ptr [ %.0636.ph1696, %.thread.outer1684 ], [ %.3639, %.thread.backedge ] ; 3 uses
  %.0633 = phi ptr [ %.0633.ph1697, %.thread.outer1684 ], [ %.1634, %.thread.backedge ] ; 4 uses
  %.0629 = phi ptr [ %.0629.ph1698, %.thread.outer1684 ], [ %.1630, %.thread.backedge ] ; 23 uses
  %.0624 = phi ptr [ %.0624.ph1699, %.thread.outer1684 ], [ %.2626, %.thread.backedge ] ; 35 uses
  %.0619 = phi ptr [ %.0619.ph1700, %.thread.outer1684 ], [ %.3622, %.thread.backedge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0624, i64 29 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !137 ; 2 uses
  %i.az = and i8 %i.ay, 14
  %.not779 = icmp eq i8 %i.az, 0
  br i1 %.not779, label %bb.t, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !136
  switch i8 %i.bb, label %bb.l [
    i8 55, label %.thread931
    i8 56, label %.thread931
    i8 68, label %.thread931
    i8 -75, label %.thread931
    i8 113, label %.thread931
  ]

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !12
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.0629, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !12  ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 12
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !12 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0692 = phi i8 [ %i.bl, %bb.m ], [ %i.bh, %bb.l ] ; 2 uses
  %.0614 = phi ptr [ %i.bj, %bb.m ], [ %i.bf, %bb.l ] ; 2 uses
  %.0611 = phi i8 [ 64, %bb.m ], [ 0, %bb.l ]     ; 2 uses
  %i.bm = icmp eq i8 %.0692, 10
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %.0614, align 8, !tbaa !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !12
  %i.br = or disjoint i8 %.0611, 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1693 = phi i8 [ %i.bq, %bb.o ], [ %.0692, %bb.n ]
  %.1615 = phi ptr [ %i.bo, %bb.o ], [ %.0614, %bb.n ] ; 3 uses
  %.1612 = phi i8 [ %i.br, %bb.o ], [ %.0611, %bb.n ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1615, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !12
  switch i8 %i.bt, label %bb.s [
    i8 8, label %bb.q
    i8 7, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %.1615, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !138
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bx = load ptr, ptr %.1615, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !12
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !69
  %i.ch = and i32 %i.cg, 4194304
  %.not785 = icmp eq i32 %i.ch, 0
  br i1 %.not785, label %.thread931, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !136
  %i.ck = call i32 @zend_get_opcode_flags(i8 noundef zeroext %i.cj) #8
  %i.cl = and i32 %i.ck, 240
  %i.cm = icmp eq i32 %i.cl, 80
  br i1 %i.cm, label %bb.w, label %.thread931

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %.0629, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !138
  br label %.thread931

.thread931:                                       ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.v, %bb.w, %bb.t, %bb.u, %bb.s
  %.3695 = phi i8 [ %i.cd, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ], [ 8, %bb.w ], [ -1, %bb.v ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %bb.k ] ; 2 uses
  %.2685 = phi ptr [ %.0683, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %i.cq, %bb.w ], [ null, %bb.v ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ], [ null, %bb.k ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0624, i64 30 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !89  ; 2 uses
  %i.ct = and i8 %i.cs, 14
  %.not787 = icmp eq i8 %i.ct, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0624, i64 28
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !136 ; 4 uses
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
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.0629, i64 %i.cx ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !12  ; 2 uses
  %i.db = icmp eq i8 %i.da, 12
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0689 = phi i8 [ %i.de, %bb.ab ], [ %i.da, %bb.aa ] ; 2 uses
  %.0609 = phi ptr [ %i.dc, %bb.ab ], [ %i.cy, %bb.aa ] ; 2 uses
  %.0607 = phi i8 [ 64, %bb.ab ], [ 0, %bb.aa ]   ; 2 uses
  %i.df = icmp eq i8 %.0689, 10
  br i1 %i.df, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load ptr, ptr %.0609, align 8, !tbaa !12 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !12
  %i.dk = or disjoint i8 %.0607, 32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1690 = phi i8 [ %i.dj, %bb.ad ], [ %.0689, %bb.ac ]
  %.1610 = phi ptr [ %i.dh, %bb.ad ], [ %.0609, %bb.ac ] ; 2 uses
  %.1608 = phi i8 [ %i.dk, %bb.ad ], [ %.0607, %bb.ac ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.1610, i64 8
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !12
  %i.dn = icmp eq i8 %i.dm, 8
  br i1 %i.dn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.do = load ptr, ptr %.1610, align 8, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !138
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
end_hunk_0
begin_hunk_1_@zend_jit_trace_execute:bb.a
bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0597 = phi i8 [ %i.hh, %bb.bm ], [ 0, %bb.bl ]
  %i.hi = zext nneg i32 %.4701 to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.hi ; 2 uses
  store i8 3, ptr %i.hj, align 8, !tbaa !12
  br label %thread-pre-split.sink.split

bb.bo:                                            ; preds = %bb.at
  %i.hk = load i8, ptr %i.cr, align 2, !tbaa !89
  %i.hl = icmp eq i8 %i.hk, 1
  br i1 %i.hl, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.hm = getelementptr inbounds nuw i8, ptr %.0629, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !110
  %i.ho = getelementptr inbounds nuw i8, ptr %.0624, i64 20
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !125
  %i.hq = and i32 %i.hp, -2
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !94 ; 3 uses
  %i.hv = icmp sgt ptr %i.hu, null
  %i.hw = icmp slt ptr %i.hu, inttoptr (i64 16 to ptr)
  %or.cond = and i1 %i.hv, %i.hw
  br i1 %or.cond, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = and i64 %i.hx, 4294967287
  %i.hz = inttoptr i64 %i.hy to ptr
  store ptr %i.hz, ptr %i.ht, align 8, !tbaa !94
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq, %bb.bo, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at
  %i.ia = load i8, ptr %i.ax, align 1, !tbaa !137 ; 2 uses
  %.not812 = icmp eq i8 %i.ia, 1
  br i1 %.not812, label %thread-pre-split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ib = load i8, ptr %i.cr, align 2, !tbaa !89
  %i.ic = icmp eq i8 %i.ib, 1
  br i1 %i.ic, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.id = getelementptr inbounds nuw i8, ptr %.0624, i64 12
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !12
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %.0624, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !12
  %i.ij = icmp eq i8 %i.ii, 6
  br i1 %i.ij, label %bb.bu, label %thread-pre-split

bb.bu:                                            ; preds = %bb.bt
  %i.ik = load ptr, ptr %i.ig, align 8, !tbaa !12 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load i8, ptr %i.il, align 8, !tbaa !12
  %.not813 = icmp eq i8 %i.im, 0
  br i1 %.not813, label %thread-pre-split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.in = icmp eq i8 %i.ia, 0
  br i1 %i.in, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.io = getelementptr inbounds nuw i8, ptr %.0624, i64 8
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !12
  %i.iq = sext i32 %i.ip to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %.sink = phi i64 [ %i.iq, %bb.bw ], [ 32, %bb.bv ]
  %i.ir = getelementptr inbounds i8, ptr %.0629, i64 %.sink ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load i8, ptr %i.is, align 8, !tbaa !12
  %.not814 = icmp eq i8 %i.it, 8
  br i1 %.not814, label %bb.by, label %thread-pre-split

bb.by:                                            ; preds = %bb.bx
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !12 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !142
  %.not815 = icmp eq ptr %i.iw, @std_object_handlers
  br i1 %.not815, label %bb.bz, label %thread-pre-split

bb.bz:                                            ; preds = %bb.by
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !138
  %i.iz = call ptr @zend_get_property_info(ptr noundef %i.iy, ptr noundef nonnull %i.ik, i32 noundef 1) #8 ; 4 uses
  %magicptr = ptrtoint ptr %i.iz to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch914 = icmp ult i64 %magicptr.off, -2
  br i1 %switch914, label %bb.ca, label %thread-pre-split

bb.ca:                                            ; preds = %bb.bz
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !143
  %.not816 = icmp eq ptr %i.jb, null
  br i1 %.not816, label %bb.cb, label %thread-pre-split

bb.cb:                                            ; preds = %bb.ca
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !147
  %i.je = and i32 %i.jd, 16
  %.not817 = icmp eq i32 %i.je, 0
  br i1 %.not817, label %bb.cc, label %thread-pre-split

bb.cc:                                            ; preds = %bb.cb
  %i.jf = load ptr, ptr %i.ir, align 8, !tbaa !12
  %i.jg = load i32, ptr %i.iz, align 8, !tbaa !148
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh
  %i.jj = zext nneg i32 %.4701 to i64
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.jj ; 2 uses
  store i8 3, ptr %i.jk, align 8, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !12
  br label %thread-pre-split.sink.split

thread-pre-split.sink.split:                      ; preds = %bb.cc, %bb.bn
  %.sink1560 = phi ptr [ %i.hj, %bb.bn ], [ %i.jk, %bb.cc ] ; 4 uses
  %.0597.sink = phi i8 [ %.0597, %bb.bn ], [ %i.jm, %bb.cc ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.sink1560, i64 1
  store i8 %.0597.sink, ptr %i.jn, align 1, !tbaa !12
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink1560, i64 2
  store i8 0, ptr %i.jo, align 1, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink1560, i64 3
  store i8 0, ptr %i.jp, align 1, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink1560, i64 8
  store ptr null, ptr %i.jq, align 8, !tbaa !12
  %i.jr = add nuw nsw i32 %.4701, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.az, %bb.aw, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.ax, %bb.ca, %bb.cb, %bb.bx, %bb.by, %bb.bz
  %.9.ph = phi i32 [ %.4701, %bb.bz ], [ %.4701, %bb.ax ], [ %.4701, %bb.by ], [ %.4701, %bb.br ], [ %.4701, %bb.bx ], [ %.4701, %bb.az ], [ %.4701, %bb.cb ], [ %.4701, %bb.bs ], [ %.4701, %bb.bt ], [ %.4701, %bb.bu ], [ %.4701, %bb.ca ], [ %.4701, %bb.aw ], [ %i.jr, %thread-pre-split.sink.split ]
  %.pr = load i8, ptr %i.ds, align 4, !tbaa !136
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
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !133 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !12
  %i.jx = and i32 %i.jw, 536870912
  %.not822 = icmp eq i32 %i.jx, 0
  br i1 %.not822, label %bb.cf, label %.critedge

bb.cf:                                            ; preds = %bb.ce
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !24 ; 4 uses
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !12
  %i.kb = icmp eq i8 %i.ka, 1
  br i1 %i.kb, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !12 ; 2 uses
  %i.ke = and i32 %i.kd, 786432
  %or.cond889 = icmp eq i32 %i.ke, 0
  br i1 %or.cond889, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 80
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !12
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
  store i32 5, ptr %i.kj, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store ptr %.0595, ptr %i.kk, align 8, !tbaa !12
  %i.kl = add nuw nsw i32 %.9, 1                  ; 3 uses
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.ko = add nsw i64 %i.kn, -2
  %.not827 = icmp sgt i64 %i.ko, %i.km
  br i1 %.not827, label %bb.ck, label %.thread1014

bb.ck:                                            ; preds = %bb.cj, %bb.cd, %bb.cf
  %.11 = phi i32 [ %.9, %bb.cd ], [ %.9, %bb.cf ], [ %i.kl, %bb.cj ] ; 23 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0624, i64 %.0704
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !12
  %i.ks = call ptr %i.kr(ptr noundef %.0629, ptr noundef nonnull %.0624) #8 ; 3 uses
  %i.kt = load ptr, ptr @zend_jit_interrupt_op, align 8, !tbaa !149
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %.lr.ph, label %._crit_edge, !prof !150

.lr.ph:                                           ; preds = %bb.ck, %.lr.ph
  %.16251232 = phi ptr [ %i.kv, %.lr.ph ], [ %i.ks, %bb.ck ]
  %i.kv = call ptr @zend_vm_handle_interrupt(ptr noundef %.0629, ptr noundef %.16251232) #8 ; 3 uses
  %i.kw = load ptr, ptr @zend_jit_interrupt_op, align 8, !tbaa !149
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %.lr.ph, label %._crit_edge, !prof !151, !llvm.loop !152

._crit_edge:                                      ; preds = %.lr.ph, %bb.ck
  %.1625.lcssa = phi ptr [ %i.ks, %bb.ck ], [ %i.kv, %.lr.ph ] ; 2 uses
  %i.ky = ptrtoint ptr %.1625.lcssa to i64        ; 2 uses
  %i.kz = and i64 %i.ky, -2                       ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.cl, label %bb.cn, !prof !27

bb.cl:                                            ; preds = %._crit_edge
  %i.lb = load i8, ptr %i.ds, align 4, !tbaa !136
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
  %.1630 = select i1 %.not828, ptr %.0629, ptr %i.le ; 51 uses
  %.2626 = select i1 %.not828, ptr %.1625.lcssa, ptr %i.ld ; 70 uses
  %.not829 = icmp eq ptr %.1630, %.0633
  br i1 %.not829, label %bb.eb, label %bb.co, !prof !13

bb.co:                                            ; preds = %bb.cn
  %i.lf = getelementptr inbounds nuw i8, ptr %.1630, i64 24 ; 3 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !24 ; 7 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 208
  %i.li = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !94 ; 4 uses
  %.not830 = icmp eq ptr %i.ll, null
  br i1 %.not830, label %bb.cq, label %bb.cp, !prof !27

bb.cp:                                            ; preds = %bb.co
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !153
  %i.lo = and i32 %i.ln, 65536
  %.not831 = icmp eq i32 %i.lo, 0
  br i1 %.not831, label %bb.cq, label %bb.cr, !prof !27

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.lp = getelementptr inbounds nuw i8, ptr %.1630, i64 48
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !31
  %.not885 = icmp eq ptr %i.lq, %.0633
  %.890 = select i1 %.not885, i32 5, i32 3        ; 2 uses
  br label %.critedge

bb.cr:                                            ; preds = %bb.cp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 160
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !128 ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !134
  %.not832 = icmp eq ptr %i.lu, null
  br i1 %.not832, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !69
  %i.lx = and i32 %i.lw, 4194304
  %.not833 = icmp eq i32 %i.lx, 0
  br i1 %.not833, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ll, i64 152
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !135
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.2709 = phi ptr [ %i.lz, %bb.ct ], [ %i.lg, %bb.cs ] ; 10 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.1630, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !31 ; 4 uses
  %i.mc = icmp eq ptr %i.mb, %.0633
  br i1 %i.mc, label %bb.cv, label %bb.de

bb.cv:                                            ; preds = %bb.cu
  %i.md = icmp sgt i32 %.0720, 10
  br i1 %i.md, label %.thread1014, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.me = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !12 ; 2 uses
  %i.mg = and i32 %i.mf, 262144
  %.not851 = icmp eq i32 %i.mg, 0
  br i1 %.not851, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lg, i64 80
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !12
  %.not852 = icmp eq ptr %i.mi, null
  br i1 %.not852, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %bb.cx
  %i.mj = and i32 %i.mf, 8388608
  %.not853 = icmp eq i32 %i.mj, 0
  br i1 %.not853, label %bb.cz, label %.critedge

bb.cz:                                            ; preds = %bb.cy
  %i.mk = getelementptr inbounds nuw i8, ptr %.1630, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !154
  %.not854 = icmp eq ptr %i.ml, null
  %i.mm = select i1 %.not854, i32 6, i32 262
  %i.mn = zext nneg i32 %.11 to i64
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.mn ; 2 uses
  store i32 %i.mm, ptr %i.mo, align 8, !tbaa !12
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store ptr %.2709, ptr %i.mp, align 8, !tbaa !12
  %i.mq = add nuw nsw i32 %.11, 1                 ; 6 uses
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.mt = add nsw i64 %i.ms, -2
  %.not855 = icmp sgt i64 %i.mt, %i.mr
  br i1 %.not855, label %bb.da, label %.thread1014

bb.da:                                            ; preds = %bb.cz
  %i.mu = load ptr, ptr %i.lf, align 8, !tbaa !24 ; 3 uses
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
  %wide.load = load <2 x ptr>, ptr %gep, align 8, !tbaa !155
  %wide.load1680 = load <2 x ptr>, ptr %i.mz, align 8, !tbaa !155
  %i.na = icmp eq <2 x ptr> %wide.load, %broadcast.splat
  %i.nb = icmp eq <2 x ptr> %wide.load1680, %broadcast.splat
  %i.nc = zext <2 x i1> %i.na to <2 x i32>
  %i.nd = zext <2 x i1> %i.nb to <2 x i32>
  %i.ne = add <2 x i32> %vec.phi, %i.nc           ; 2 uses
  %i.nf = add <2 x i32> %vec.phi1679, %i.nd       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !156

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
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !155
  %i.nk = icmp eq ptr %i.nj, %i.mu
  %i.nl = zext i1 %i.nk to i32
  %i.nm = add nuw nsw i32 %.010.i, %i.nl          ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %zend_jit_trace_recursive_call_count.exit, label %.lr.ph.i, !llvm.loop !159

zend_jit_trace_recursive_call_count.exit:         ; preds = %.lr.ph.i, %middle.block, %bb.da
  %.0.lcssa.i = phi i32 [ 0, %bb.da ], [ %i.nh, %middle.block ], [ %i.nm, %.lr.ph.i ] ; 2 uses
  %i.nn = icmp eq ptr %.2626, %1
  br i1 %i.nn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %zend_jit_trace_recursive_call_count.exit
  %i.no = add nsw i32 %.0.lcssa.i, 1
  %i.np = sext i32 %i.no to i64
  %i.nq = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 128), align 8, !tbaa !160
  %.not857 = icmp sgt i64 %i.nq, %i.np
  br i1 %.not857, label %bb.dd, label %.critedge

bb.dc:                                            ; preds = %zend_jit_trace_recursive_call_count.exit
  %i.nr = sext i32 %.0.lcssa.i to i64
  %i.ns = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 128), align 8, !tbaa !160
  %.not856 = icmp sgt i64 %i.ns, %i.nr
  br i1 %.not856, label %bb.dd, label %.thread1014

bb.dd:                                            ; preds = %bb.db, %bb.dc
  %.1668 = phi i32 [ %.0667, %bb.dc ], [ %i.mq, %bb.db ]
  %i.nt = add nsw i32 %.0712, %.0720
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nu
  store ptr %i.mu, ptr %i.nv, align 8, !tbaa !155
  %i.nw = add nsw i32 %.0720, 1
  br label %bb.eb

bb.de:                                            ; preds = %bb.cu
  %i.nx = getelementptr inbounds nuw i8, ptr %.1630, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !133 ; 7 uses
  %i.nz = icmp eq i32 %.0720, 0
  br i1 %i.nz, label %bb.df, label %bb.ea

bb.df:                                            ; preds = %bb.de
  %i.oa = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8
  %i.ob = icmp slt i64 %i.oa, 1
  %or.cond9.not1109 = select i1 %i.tw, i1 true, i1 %i.ob
  %.not836 = icmp eq ptr %i.mb, null              ; 2 uses
  %or.cond891 = or i1 %.not836, %or.cond9.not1109
  br i1 %or.cond891, label %zend_jit_trace_has_recursive_ret.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !24 ; 2 uses
  %.not837 = icmp eq ptr %i.od, null
  br i1 %.not837, label %.critedge, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !12
  %i.of = icmp eq i8 %i.oe, 2
  br i1 %i.of, label %bb.di, label %.critedge

bb.di:                                            ; preds = %bb.dh
  %i.og = load ptr, ptr %i.w, align 8, !tbaa !12
  br label %.lr.ph.i920

.lr.ph.i920:                                      ; preds = %bb.di, %bb.dl
  %.015.i = phi i32 [ %i.or, %bb.dl ], [ %.0712, %bb.di ] ; 2 uses
  %.01114.i = phi ptr [ %i.oq, %bb.dl ], [ %.1630, %bb.di ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.01114.i, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !24 ; 2 uses
  %i.oj = icmp ne ptr %i.oi, null
  %i.ok = icmp slt i32 %.015.i, 4
  %or.cond.i = select i1 %i.oj, i1 %i.ok, i1 false
  br i1 %or.cond.i, label %bb.dj, label %zend_jit_trace_has_recursive_ret.exit.thread

bb.dj:                                            ; preds = %.lr.ph.i920
  %i.ol = icmp eq ptr %i.oi, %i.og
  br i1 %i.ol, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.om = load ptr, ptr %.01114.i, align 8, !tbaa !65
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oo = icmp eq ptr %i.on, %1
  br i1 %i.oo, label %zend_jit_trace_has_recursive_ret.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.op = getelementptr inbounds nuw i8, ptr %.01114.i, i64 48
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !31 ; 2 uses
  %i.or = add nsw i32 %.015.i, 1
  %.not.i922 = icmp eq ptr %i.oq, null
  br i1 %.not.i922, label %zend_jit_trace_has_recursive_ret.exit.thread, label %.lr.ph.i920, !llvm.loop !161

zend_jit_trace_has_recursive_ret.exit:            ; preds = %bb.dk
  %9 = icmp sgt i32 %.0712, 4
  br i1 %9, label %.thread1014, label %bb.dm

bb.dm:                                            ; preds = %zend_jit_trace_has_recursive_ret.exit
  %i.os = zext nneg i32 %.11 to i64
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.os ; 2 uses
  store i32 7, ptr %i.ot, align 8, !tbaa !12
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store ptr %.2709, ptr %i.ou, align 8, !tbaa !12
  %i.ov = add nuw nsw i32 %.11, 1                 ; 8 uses
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.oy = add nsw i64 %i.ox, -2
  %.not847 = icmp sgt i64 %i.oy, %i.ow
  br i1 %.not847, label %bb.dn, label %.thread1014

bb.dn:                                            ; preds = %bb.dm
  %i.oz = load ptr, ptr %i.lf, align 8, !tbaa !24 ; 5 uses
  %i.pa = icmp sgt i32 %.0712, 0
  br i1 %i.pa, label %.lr.ph.i926.a, label %zend_jit_trace_recursive_ret_count.exit

.lr.ph.i926.a:                                    ; preds = %bb.dn
  %10 = load ptr, ptr %i.b, align 16, !tbaa !155
  %11 = icmp eq ptr %10, %i.oz
  %12 = zext i1 %11 to i32                        ; 2 uses
  %exitcond.not.i929 = icmp eq i32 %.0712, 1
  br i1 %exitcond.not.i929, label %zend_jit_trace_recursive_ret_count.exit, label %.lr.ph.i926.1

.lr.ph.i926.1:                                    ; preds = %.lr.ph.i926.a
  %13 = load ptr, ptr %6, align 8, !tbaa !155
  %14 = icmp eq ptr %13, %i.oz
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %12, %15                  ; 2 uses
  %exitcond.not.i929.1 = icmp eq i32 %.0712, 2
  br i1 %exitcond.not.i929.1, label %zend_jit_trace_recursive_ret_count.exit, label %.lr.ph.i926.2

.lr.ph.i926.2:                                    ; preds = %.lr.ph.i926.1
  %17 = load ptr, ptr %7, align 16, !tbaa !155
  %18 = icmp eq ptr %17, %i.oz
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %16, %19                  ; 2 uses
  %exitcond.not.i929.2 = icmp eq i32 %.0712, 3
  br i1 %exitcond.not.i929.2, label %zend_jit_trace_recursive_ret_count.exit, label %.lr.ph.i926.3

.lr.ph.i926.3:                                    ; preds = %.lr.ph.i926.2
  %i.pb = load ptr, ptr %8, align 8, !tbaa !155
  %i.pc = icmp eq ptr %i.pb, %i.oz
  %i.pd = zext i1 %i.pc to i32
  %i.pe = add nuw nsw i32 %20, %i.pd
  br label %zend_jit_trace_recursive_ret_count.exit

zend_jit_trace_recursive_ret_count.exit:          ; preds = %.lr.ph.i926.a, %.lr.ph.i926.1, %.lr.ph.i926.2, %.lr.ph.i926.3, %bb.dn
  %.0.lcssa.i923 = phi i32 [ 0, %bb.dn ], [ %12, %.lr.ph.i926.a ], [ %16, %.lr.ph.i926.1 ], [ %20, %.lr.ph.i926.2 ], [ %i.pe, %.lr.ph.i926.3 ] ; 2 uses
  %i.pf = icmp eq ptr %.2626, %1
  br i1 %i.pf, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %zend_jit_trace_recursive_ret_count.exit
  %i.pg = add nsw i32 %.0.lcssa.i923, 1
  %i.ph = sext i32 %i.pg to i64
  %i.pi = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8, !tbaa !162
  %.not849 = icmp sgt i64 %i.pi, %i.ph
  br i1 %.not849, label %bb.dq, label %.critedge

bb.dp:                                            ; preds = %zend_jit_trace_recursive_ret_count.exit
  %i.pj = sext i32 %.0.lcssa.i923 to i64
  %i.pk = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 136), align 8, !tbaa !162
  %.not848 = icmp sgt i64 %i.pk, %i.pj
  br i1 %.not848, label %bb.dq, label %.thread1014

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %.1662 = phi i32 [ %.0661, %bb.dp ], [ %i.ov, %bb.do ] ; 2 uses
  %.1656 = phi i32 [ %.0655, %bb.dp ], [ %.0712, %bb.do ] ; 2 uses
  %i.pl = sext i32 %.0712 to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pl
  store ptr %i.oz, ptr %i.pm, align 8, !tbaa !155
  %i.pn = add nsw i32 %.0712, 1                   ; 3 uses
  %.not850 = icmp eq ptr %i.ny, null
  br i1 %.not850, label %bb.eb, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.po = call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.ny, ptr noundef nonnull %2, i32 noundef range(i32 -2147483647, -2147483648) %i.ov, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.pp = icmp sgt i32 %i.po, -1
  br i1 %i.pp, label %bb.eb, label %.critedge

zend_jit_trace_has_recursive_ret.exit.thread:     ; preds = %bb.dl, %.lr.ph.i920, %bb.df
  br i1 %.not839, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %zend_jit_trace_has_recursive_ret.exit.thread
  %i.pq = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !163
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = add i32 %i.pr, -1
  %i.pt = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.ps)
  %.not840 = icmp eq i8 %i.pt, 19
  br i1 %.not840, label %bb.dt, label %.thread1014

bb.dt:                                            ; preds = %bb.ds, %zend_jit_trace_has_recursive_ret.exit.thread
  %brmerge = or i1 %.not841, %.not836
  br i1 %brmerge, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pu = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !24
  %i.pw = icmp eq ptr %i.lg, %i.pv
  br i1 %i.pw, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.px = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !163
  %i.py = trunc i64 %i.px to i32
  %i.pz = add i32 %i.py, -1
  %i.qa = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.pz)
  %.not843 = icmp eq i8 %i.qa, 20
  br i1 %.not843, label %bb.dw, label %.thread1014

bb.dw:                                            ; preds = %bb.dt, %bb.dv, %bb.du
  %i.qb = icmp slt i32 %.0712, %5
  %or.cond894 = select i1 %.not844, i1 %i.qb, i1 false
  br i1 %or.cond894, label %bb.dx, label %.critedge

bb.dx:                                            ; preds = %bb.dw
  %i.qc = zext nneg i32 %.11 to i64
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qc ; 2 uses
  store i32 7, ptr %i.qd, align 8, !tbaa !12
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store ptr %.2709, ptr %i.qe, align 8, !tbaa !12
  %i.qf = add nuw nsw i32 %.11, 1                 ; 5 uses
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.qi = add nsw i64 %i.qh, -2
  %.not845 = icmp sgt i64 %i.qi, %i.qg
  br i1 %.not845, label %bb.dy, label %.thread1014

bb.dy:                                            ; preds = %bb.dx
  %i.qj = add nsw i32 %.0712, 1                   ; 3 uses
  %.not846 = icmp eq ptr %i.ny, null
  br i1 %.not846, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qk = call fastcc i32 @zend_jit_trace_record_fake_init_call_ex(ptr noundef nonnull %i.ny, ptr noundef nonnull %2, i32 noundef range(i32 -2147483647, -2147483648) %i.qf, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.ql = icmp sgt i32 %i.qk, -1
  br i1 %i.ql, label %bb.eb, label %.critedge

bb.ea:                                            ; preds = %bb.de
  %i.qm = add nsw i32 %.0720, -1
  %.not834 = icmp sgt i32 %.0720, %.0643.ph1695
  %spec.select898 = select i1 %.not834, ptr %.0636, ptr null
  %i.qn = zext nneg i32 %.11 to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.qn ; 2 uses
  store i32 7, ptr %i.qo, align 8, !tbaa !12
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %.2709, ptr %i.qp, align 8, !tbaa !12
  %i.qq = add nuw nsw i32 %.11, 1                 ; 3 uses
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.qt = add nsw i64 %i.qs, -2
  %.not835 = icmp sgt i64 %i.qt, %i.qr
  br i1 %.not835, label %bb.eb, label %.thread1014

bb.eb:                                            ; preds = %bb.dd, %bb.ea, %bb.dr, %bb.dq, %bb.dy, %bb.dz, %bb.cn
  %.2722 = phi i32 [ %.0720, %bb.cn ], [ %i.nw, %bb.dd ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ 0, %bb.dz ], [ 0, %bb.dy ], [ %i.qm, %bb.ea ] ; 7 uses
  %.2714 = phi i32 [ %.0712, %bb.cn ], [ %.0712, %bb.dd ], [ %i.pn, %bb.dr ], [ %i.pn, %bb.dq ], [ %i.qj, %bb.dz ], [ %i.qj, %bb.dy ], [ %.0712, %bb.ea ] ; 17 uses
  %.3710 = phi ptr [ %.1708, %bb.cn ], [ %.2709, %bb.dd ], [ %.2709, %bb.dr ], [ %.2709, %bb.dq ], [ %.2709, %bb.dz ], [ %.2709, %bb.dy ], [ %.2709, %bb.ea ] ; 4 uses
  %.1705 = phi i64 [ %.0704, %bb.cn ], [ %i.ls, %bb.dd ], [ %i.ls, %bb.dr ], [ %i.ls, %bb.dq ], [ %i.ls, %bb.dz ], [ %i.ls, %bb.dy ], [ %i.ls, %bb.ea ] ; 4 uses
  %.15 = phi i32 [ %.11, %bb.cn ], [ %i.mq, %bb.dd ], [ %i.po, %bb.dr ], [ %i.ov, %bb.dq ], [ %i.qk, %bb.dz ], [ %i.qf, %bb.dy ], [ %i.qq, %bb.ea ] ; 5 uses
  %.3670 = phi i32 [ %.0667, %bb.cn ], [ %.1668, %bb.dd ], [ %.0667, %bb.dr ], [ %.0667, %bb.dq ], [ %.0667, %bb.dz ], [ %.0667, %bb.dy ], [ %.0667, %bb.ea ] ; 11 uses
  %.3664 = phi i32 [ %.0661, %bb.cn ], [ %.0661, %bb.dd ], [ %.1662, %bb.dr ], [ %.1662, %bb.dq ], [ %.0661, %bb.dz ], [ %.0661, %bb.dy ], [ %.0661, %bb.ea ] ; 11 uses
  %.3658 = phi i32 [ %.0655, %bb.cn ], [ %.0655, %bb.dd ], [ %.1656, %bb.dr ], [ %.1656, %bb.dq ], [ %.0655, %bb.dz ], [ %.0655, %bb.dy ], [ %.0655, %bb.ea ] ; 11 uses
  %.3639 = phi ptr [ %.0636, %bb.cn ], [ %.0636, %bb.dd ], [ null, %bb.dr ], [ null, %bb.dq ], [ null, %bb.dz ], [ null, %bb.dy ], [ %spec.select898, %bb.ea ] ; 3 uses
  %.1634 = phi ptr [ %.0633, %bb.cn ], [ %.1630, %bb.dd ], [ %.1630, %bb.dr ], [ %.1630, %bb.dq ], [ %.1630, %bb.dz ], [ %.1630, %bb.dy ], [ %.1630, %bb.ea ] ; 3 uses
  %.2621 = phi ptr [ %.0619, %bb.cn ], [ null, %bb.dd ], [ %i.ny, %bb.dr ], [ null, %bb.dq ], [ %i.ny, %bb.dz ], [ null, %bb.dy ], [ %i.ny, %bb.ea ] ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.1630, i64 8 ; 3 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !133 ; 6 uses
  %.not858 = icmp eq ptr %i.qv, %.2621
  br i1 %.not858, label %bb.eq, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not859 = icmp eq ptr %i.qv, null
  br i1 %.not859, label %bb.eq, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 48
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !31
  %i.qy = icmp eq ptr %i.qx, %.2621
  br i1 %i.qy, label %bb.ee, label %bb.eq

bb.ee:                                            ; preds = %bb.ed
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !24 ; 8 uses
  %i.rb = load i8, ptr %i.ra, align 8, !tbaa !12
  switch i8 %i.rb, label %.thread954 [
    i8 1, label %bb.ef
    i8 2, label %bb.eg
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !12
  %i.re = and i32 %i.rd, 12582912
  %.not860 = icmp eq i32 %i.re, 0
  br i1 %.not860, label %.thread954, label %.thread950

bb.eg:                                            ; preds = %bb.ee
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ra, i64 208
  %i.rg = load i32, ptr @zend_func_info_rid, align 4, !tbaa !93
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.rf, i64 %i.rh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !12 ; 3 uses
  %.not861 = icmp eq ptr %i.rj, null
  br i1 %.not861, label %bb.eh, label %.critedge916

bb.eh:                                            ; preds = %bb.eg
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !12 ; 2 uses
  %i.rm = and i32 %i.rl, 4194304
  %.not1110 = icmp eq i32 %i.rm, 0
  br i1 %.not1110, label %.critedge900, label %.thread950, !prof !13

.critedge916:                                     ; preds = %bb.eg
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !153
  %i.rp = and i32 %i.ro, 65536
  %.not862 = icmp eq i32 %i.rp, 0
  br i1 %.not862, label %.thread950, label %.critedge916..critedge900_crit_edge

.critedge916..critedge900_crit_edge:              ; preds = %.critedge916
  %.phi.trans.insert1361 = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %.pre1362 = load i32, ptr %.phi.trans.insert1361, align 4, !tbaa !12
  br label %.critedge900

.critedge900:                                     ; preds = %.critedge916..critedge900_crit_edge, %bb.eh
  %i.rq = phi i32 [ %.pre1362, %.critedge916..critedge900_crit_edge ], [ %i.rl, %bb.eh ] ; 2 uses
  %i.rr = and i32 %i.rq, 8388608
  %.not863 = icmp eq i32 %i.rr, 0
  br i1 %.not863, label %bb.ei, label %.thread950

bb.ei:                                            ; preds = %.critedge900
  %i.rs = and i32 %i.rq, 4194304
  %.not864 = icmp eq i32 %i.rs, 0
  br i1 %.not864, label %.thread954, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rj, i64 152
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !135 ; 2 uses
  %.not865 = icmp eq ptr %i.ru, null
  br i1 %.not865, label %.thread950, label %.thread954

.thread954:                                       ; preds = %bb.ee, %bb.ef, %bb.ei, %bb.ej
  %.0594957 = phi ptr [ %i.ru, %bb.ej ], [ %i.ra, %bb.ee ], [ %i.ra, %bb.ei ], [ %i.ra, %bb.ef ] ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0594957, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !12
  %i.rx = and i32 %i.rw, 786432
  %or.cond901 = icmp eq i32 %i.rx, 0
  br i1 %or.cond901, label %bb.ek, label %.thread950

bb.ek:                                            ; preds = %.thread954
  %i.ry = getelementptr inbounds nuw i8, ptr %.0594957, i64 80
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !12
  %.not868 = icmp eq ptr %i.rz, null
  br i1 %.not868, label %bb.el, label %.thread950

bb.el:                                            ; preds = %bb.ek
  %i.sa = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 144), align 8, !tbaa !164
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %bb.em, label %zend_jit_may_be_polymorphic_call.exit.thread960

bb.em:                                            ; preds = %bb.el
  %i.sc = getelementptr inbounds i8, ptr %.2626, i64 -4
  %i.sd = load i8, ptr %i.sc, align 4, !tbaa !136
  switch i8 %i.sd, label %.unreachabledefault.i [
    i8 61, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 59, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 69, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 -47, label %zend_jit_may_be_polymorphic_call.exit.thread960
    i8 112, label %.thread950.sink.split
    i8 -128, label %.thread950.sink.split
    i8 113, label %bb.en
    i8 118, label %.split962
    i8 68, label %.split
  ]

bb.en:                                            ; preds = %bb.em
  %i.se = getelementptr inbounds i8, ptr %.2626, i64 -3
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !137
  %.not.i = icmp eq i8 %i.sf, 1
  br i1 %.not.i, label %zend_jit_may_be_polymorphic_call.exit, label %.thread950.sink.split

.split962:                                        ; preds = %bb.em
  %i.sg = getelementptr inbounds i8, ptr %.2626, i64 -2
  %i.sh = load i8, ptr %i.sg, align 2, !tbaa !89
  %.not1112 = icmp eq i8 %i.sh, 1
  br i1 %.not1112, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

.unreachabledefault.i:                            ; preds = %bb.em
  unreachable

.split:                                           ; preds = %bb.em
  %i.si = getelementptr inbounds i8, ptr %.2626, i64 -3
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !137
  %.not1111 = icmp eq i8 %i.sj, 1
  br i1 %.not1111, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

zend_jit_may_be_polymorphic_call.exit:            ; preds = %bb.en
  %i.sk = getelementptr inbounds i8, ptr %.2626, i64 -2
  %i.sl = load i8, ptr %i.sk, align 2, !tbaa !89
  %.not1113 = icmp eq i8 %i.sl, 1
  br i1 %.not1113, label %zend_jit_may_be_polymorphic_call.exit.thread960, label %.thread950.sink.split

zend_jit_may_be_polymorphic_call.exit.thread960:  ; preds = %bb.em, %bb.em, %bb.em, %bb.em, %.split962, %.split, %zend_jit_may_be_polymorphic_call.exit, %bb.el
  switch i32 %4, label %bb.ep [
    i32 512, label %bb.eo
    i32 256, label %bb.eo
  ]

bb.eo:                                            ; preds = %zend_jit_may_be_polymorphic_call.exit.thread960, %zend_jit_may_be_polymorphic_call.exit.thread960
  %i.sm = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.sn = getelementptr inbounds i8, ptr %.2626, i64 -32
  %i.so = icmp eq ptr %i.sm, %i.sn
  br i1 %i.so, label %.thread950.sink.split, label %bb.ep

.thread950.sink.split:                            ; preds = %bb.eo, %zend_jit_may_be_polymorphic_call.exit, %.split, %.split962, %bb.en, %bb.em, %bb.em
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qv, i64 40 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !12
  %i.sr = or i32 %i.sq, 536870912
  store i32 %i.sr, ptr %i.sp, align 8, !tbaa !12
  br label %.thread950

.thread950:                                       ; preds = %.thread950.sink.split, %bb.eh, %.critedge916, %.critedge900, %bb.ef, %bb.ek, %.thread954, %bb.ej
  %i.ss = load ptr, ptr %i.qu, align 8, !tbaa !133
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 44
  %i.su = load i32, ptr %i.st, align 4, !tbaa !12
  %i.sv = shl i32 %i.su, 16
  %i.sw = or disjoint i32 %i.sv, 4
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %zend_jit_may_be_polymorphic_call.exit.thread960, %.thread950
  %.1967 = phi ptr [ null, %.thread950 ], [ %.0594957, %zend_jit_may_be_polymorphic_call.exit.thread960 ], [ %.0594957, %bb.eo ]
  %.0 = phi i32 [ %i.sw, %.thread950 ], [ 4, %zend_jit_may_be_polymorphic_call.exit.thread960 ], [ 4, %bb.eo ]
  %i.sx = zext nneg i32 %.15 to i64
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.sx ; 2 uses
  store i32 %.0, ptr %i.sy, align 8, !tbaa !12
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store ptr %.1967, ptr %i.sz, align 8, !tbaa !12
  %i.ta = add nuw nsw i32 %.15, 1                 ; 3 uses
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.td = add nsw i64 %i.tc, -2
  %.not870 = icmp sgt i64 %i.td, %i.tb
  br i1 %.not870, label %._crit_edge1363, label %.thread1014

._crit_edge1363:                                  ; preds = %bb.ep
  %.pre1364 = load ptr, ptr %i.qu, align 8, !tbaa !133
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ec, %bb.ed, %._crit_edge1363, %bb.eb
  %.17 = phi i32 [ %.15, %bb.eb ], [ %i.ta, %._crit_edge1363 ], [ %.15, %bb.ed ], [ %.15, %bb.ec ] ; 18 uses
  %.3622 = phi ptr [ %.2621, %bb.eb ], [ %.pre1364, %._crit_edge1363 ], [ %i.qv, %bb.ed ], [ null, %bb.ec ] ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.2626, i64 28
  %i.tf = load i8, ptr %i.te, align 4, !tbaa !136
  %i.tg = icmp eq i8 %i.tf, -107
  br i1 %i.tg, label %.thread1014, label %bb.er, !prof !27

bb.er:                                            ; preds = %bb.eq
  %i.th = getelementptr inbounds nuw i8, ptr %.2626, i64 %.1705
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24
  %i.tj = load i8, ptr %i.ti, align 8, !tbaa !12  ; 2 uses
  %.not871 = icmp eq i8 %i.tj, 0
  br i1 %.not871, label %.thread.backedge, label %bb.es

.thread.backedge:                                 ; preds = %bb.er, %bb.fj
  br label %.thread

bb.es:                                            ; preds = %bb.er
  %i.tk = zext i8 %i.tj to i32                    ; 6 uses
  %i.tl = and i32 %i.tk, 16
  %.not872 = icmp eq i32 %i.tl, 0
  br i1 %.not872, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.tm = and i32 %i.tk, 1
  %.not880 = icmp eq i32 %i.tm, 0
  br i1 %.not880, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.not883 = trunc i8 %.0748.ph to i1
  %i.tn = sub i32 0, %.2714
  %i.to = icmp eq i32 %.2722, %i.tn
  %or.cond904 = select i1 %.not883, i1 %i.to, i1 false
  br i1 %or.cond904, label %bb.ev, label %.preheader

bb.ev:                                            ; preds = %bb.eu
  %i.tp = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !163
  %i.tq = trunc i64 %i.tp to i32
  %i.tr = add i32 %i.tq, -1
  %i.ts = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.tr)
  %.not884 = icmp eq i8 %i.ts, 23
  br i1 %.not884, label %.preheader, label %.thread1014

bb.ew:                                            ; preds = %bb.et
  %i.tt = and i32 %i.tk, 2
  %.not881 = icmp ne i32 %i.tt, 0
  %.not882 = icmp eq i8 %.0748.ph, 4
  %or.cond917 = and i1 %.not881, %.not882
  br i1 %or.cond917, label %bb.ex, label %.preheader

bb.ex:                                            ; preds = %bb.ew
  %i.tu = icmp slt i32 %.0673.ph, 0               ; 2 uses
  %spec.select905 = select i1 %i.tu, ptr %.2626, ptr %.0677.ph
  %spec.select906 = select i1 %i.tu, i32 %.17, i32 %.0673.ph
  br label %.thread.outer

.thread.outer:                                    ; preds = %.thread.preheader, %bb.ex
  %.0748.ph = phi i8 [ %3, %.thread.preheader ], [ 4, %bb.ex ] ; 5 uses
  %.0720.ph = phi i32 [ 0, %.thread.preheader ], [ %.2722, %bb.ex ]
  %.0712.ph = phi i32 [ 0, %.thread.preheader ], [ %.2714, %bb.ex ]
  %.1708.ph = phi ptr [ %.0707, %.thread.preheader ], [ %.3710, %bb.ex ]
  %.0704.ph = phi i64 [ %i.m, %.thread.preheader ], [ %.1705, %bb.ex ]
  %.2699.ph1683 = phi i32 [ %.2699.ph, %.thread.preheader ], [ %.17, %bb.ex ]
  %.0677.ph = phi ptr [ null, %.thread.preheader ], [ %spec.select905, %bb.ex ] ; 2 uses
  %.0673.ph = phi i32 [ -1, %.thread.preheader ], [ %spec.select906, %bb.ex ] ; 4 uses
  %.0667.ph = phi i32 [ -1, %.thread.preheader ], [ %.3670, %bb.ex ]
  %.0661.ph = phi i32 [ -1, %.thread.preheader ], [ %.3664, %bb.ex ]
  %.0655.ph = phi i32 [ 0, %.thread.preheader ], [ %.3658, %bb.ex ]
  %.0651.ph = phi i32 [ 0, %.thread.preheader ], [ %.0651.ph1693, %bb.ex ]
  %.0647.ph = phi i32 [ -1, %.thread.preheader ], [ %.0647.ph1694, %bb.ex ]
  %.0643.ph = phi i32 [ -1, %.thread.preheader ], [ %.0643.ph1695, %bb.ex ]
  %.0636.ph = phi ptr [ null, %.thread.preheader ], [ %.3639, %bb.ex ]
  %.0633.ph = phi ptr [ %0, %.thread.preheader ], [ %.1634, %bb.ex ]
  %.0629.ph = phi ptr [ %0, %.thread.preheader ], [ %.1630, %bb.ex ]
  %.0624.ph = phi ptr [ %1, %.thread.preheader ], [ %.2626, %bb.ex ]
  %.0619.ph = phi ptr [ %i.d, %.thread.preheader ], [ %.3622, %bb.ex ]
  %i.tv = zext i8 %.0748.ph to i32                ; 3 uses
  %i.tw = icmp ne i8 %.0748.ph, 4
  %i.tx = and i32 %i.tv, 1
  %.not839 = icmp eq i32 %i.tx, 0
  %i.ty = and i32 %i.tv, 2
  %.not841 = icmp eq i32 %i.ty, 0
  %i.tz = and i32 %i.tv, 8
  %.not844 = icmp ne i32 %i.tz, 0
  %.not877 = icmp eq i8 %.0748.ph, 8              ; 3 uses
  %.not877.not = xor i1 %.not877, true
  br label %.thread.outer1684

bb.ey:                                            ; preds = %bb.es
  %i.ua = and i32 %i.tk, 32
  %.not873 = icmp eq i32 %i.ua, 0
  br i1 %.not873, label %bb.ez, label %.thread1014

bb.ez:                                            ; preds = %bb.ey
  %i.ub = and i32 %i.tk, 1
  %.not874 = icmp eq i32 %i.ub, 0
  br i1 %.not874, label %bb.fj, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.uc = icmp eq ptr %.2626, %1
  %or.cond907 = and i1 %i.uc, %.not877.not
  %i.ud = sub i32 0, %.2714
  %i.ue = icmp eq i32 %.2722, %i.ud               ; 2 uses
  %or.cond909 = select i1 %or.cond907, i1 %i.ue, i1 false
  br i1 %or.cond909, label %.critedge, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %or.cond910 = select i1 %.not877, i1 %i.ue, i1 false
  br i1 %or.cond910, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.uf = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !163
  %i.ug = sdiv i64 %i.uf, 2
  %i.uh = trunc i64 %i.ug to i32                  ; 2 uses
  %i.ui = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef nonnull %.2626, i32 noundef %i.uh)
  switch i8 %i.ui, label %bb.fd [
    i8 22, label %bb.ff
    i8 19, label %bb.ff
  ]

bb.fd:                                            ; preds = %bb.fc
  br i1 %.not877, label %.thread1014, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.uj = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.uh)
  %.not879 = icmp eq i8 %i.uj, 22
  br i1 %.not879, label %bb.ff, label %.thread1014

bb.ff:                                            ; preds = %bb.fc, %bb.fc, %bb.fb, %bb.fe
  %i.uk = icmp eq ptr %.2626, %.3639
  %i.ul = icmp eq i32 %.2722, %.0643.ph1695
  %or.cond911 = select i1 %i.uk, i1 %i.ul, i1 false
  br i1 %or.cond911, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i8 9, ptr %2, align 8, !tbaa !12
  store i8 1, ptr %i.u, align 1, !tbaa !12
  store i8 0, ptr %i.v, align 1, !tbaa !12
  store ptr %.3710, ptr %i.w, align 8, !tbaa !12
  store i32 0, ptr %i.x, align 8, !tbaa !12
  store ptr %.2626, ptr %i.y, align 8, !tbaa !12
  %i.um = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.un = sext i32 %.0647.ph1694 to i64
  %i.uo = getelementptr inbounds [16 x i8], ptr %2, i64 %i.un
  %i.up = sub nsw i32 %.17, %.0647.ph1694         ; 2 uses
  %i.uq = sext i32 %i.up to i64
  %i.ur = shl nsw i64 %i.uq, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.um, ptr nonnull align 8 %i.uo, i64 %i.ur, i1 false)
  %i.us = add nsw i32 %i.up, 2
  br label %.critedge

bb.fh:                                            ; preds = %bb.ff
  %i.ut = sext i32 %.0651.ph1693 to i64
  %i.uu = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 120), align 8, !tbaa !165
  %i.uv = icmp sgt i64 %i.uu, %i.ut
  br i1 %i.uv, label %bb.fi, label %.thread1014

bb.fi:                                            ; preds = %bb.fh
  %i.uw = add nsw i32 %.0651.ph1693, 1
  br label %.thread.outer1684

.thread.outer1684:                                ; preds = %.thread.outer, %bb.fi
  %.0720.ph1685 = phi i32 [ %.0720.ph, %.thread.outer ], [ %.2722, %bb.fi ]
  %.0712.ph1686 = phi i32 [ %.0712.ph, %.thread.outer ], [ %.2714, %bb.fi ]
  %.1708.ph1687 = phi ptr [ %.1708.ph, %.thread.outer ], [ %.3710, %bb.fi ]
  %.0704.ph1688 = phi i64 [ %.0704.ph, %.thread.outer ], [ %.1705, %bb.fi ]
  %.2699.ph1689 = phi i32 [ %.2699.ph1683, %.thread.outer ], [ %.17, %bb.fi ]
  %.0667.ph1690 = phi i32 [ %.0667.ph, %.thread.outer ], [ %.3670, %bb.fi ]
  %.0661.ph1691 = phi i32 [ %.0661.ph, %.thread.outer ], [ %.3664, %bb.fi ]
  %.0655.ph1692 = phi i32 [ %.0655.ph, %.thread.outer ], [ %.3658, %bb.fi ]
  %.0651.ph1693 = phi i32 [ %.0651.ph, %.thread.outer ], [ %i.uw, %bb.fi ] ; 3 uses
  %.0647.ph1694 = phi i32 [ %.0647.ph, %.thread.outer ], [ %.17, %bb.fi ] ; 3 uses
  %.0643.ph1695 = phi i32 [ %.0643.ph, %.thread.outer ], [ %.2722, %bb.fi ] ; 3 uses
  %.0636.ph1696 = phi ptr [ %.0636.ph, %.thread.outer ], [ %.2626, %bb.fi ]
  %.0633.ph1697 = phi ptr [ %.0633.ph, %.thread.outer ], [ %.1634, %bb.fi ]
  %.0629.ph1698 = phi ptr [ %.0629.ph, %.thread.outer ], [ %.1630, %bb.fi ]
  %.0624.ph1699 = phi ptr [ %.0624.ph, %.thread.outer ], [ %.2626, %bb.fi ]
  %.0619.ph1700 = phi ptr [ %.0619.ph, %.thread.outer ], [ %.3622, %bb.fi ]
  br label %.thread

bb.fj:                                            ; preds = %bb.ez
  %i.ux = and i32 %i.tk, 64
  %.not875 = icmp eq i32 %i.ux, 0
  br i1 %.not875, label %.thread.backedge, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.uy = zext nneg i32 %.17 to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.uy ; 2 uses
  store i32 0, ptr %i.uz, align 8, !tbaa !12
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store ptr %.2626, ptr %i.va, align 8, !tbaa !12
  %i.vb = add nuw nsw i32 %.17, 1                 ; 2 uses
  %i.vc = zext nneg i32 %i.vb to i64
  %i.vd = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 152), align 8, !tbaa !141
  %i.ve = add nsw i64 %i.vd, -2
  %.not876 = icmp sgt i64 %i.ve, %i.vc
  %.912 = select i1 %.not876, i32 12, i32 14
  br label %.thread1014

.thread1014:                                      ; preds = %bb.cj, %bb.cv, %bb.cz, %bb.ea, %bb.eq, %bb.ey, %bb.dc, %zend_jit_trace_has_recursive_ret.exit, %bb.dm, %bb.dp, %bb.ds, %bb.dv, %bb.dx, %bb.as, %bb.aq, %bb.ao, %bb.ep, %bb.fd, %bb.fe, %bb.fh, %bb.ev, %bb.fk
  %.46281038 = phi ptr [ %.2626, %bb.fk ], [ %.2626, %bb.ev ], [ %.0624, %bb.cj ], [ %.2626, %bb.ep ], [ %.0624, %bb.ao ], [ %.0624, %bb.aq ], [ %.0624, %bb.as ], [ %.2626, %bb.dx ], [ %.2626, %bb.dv ], [ %.2626, %bb.ds ], [ %.2626, %bb.dp ], [ %.2626, %bb.dm ], [ %.2626, %zend_jit_trace_has_recursive_ret.exit ], [ %.2626, %bb.dc ], [ %.2626, %bb.ey ], [ %.2626, %bb.eq ], [ %.2626, %bb.ea ], [ %.2626, %bb.cz ], [ %.2626, %bb.cv ], [ %.2626, %bb.fd ], [ %.2626, %bb.fe ], [ %.2626, %bb.fh ] ; 7 uses
  %.36321036 = phi ptr [ %.1630, %bb.fk ], [ %.1630, %bb.ev ], [ %.0629, %bb.cj ], [ %.1630, %bb.ep ], [ %.0629, %bb.ao ], [ %.0629, %bb.aq ], [ %.0629, %bb.as ], [ %.1630, %bb.dx ], [ %.1630, %bb.dv ], [ %.1630, %bb.ds ], [ %.1630, %bb.dp ], [ %.1630, %bb.dm ], [ %.1630, %zend_jit_trace_has_recursive_ret.exit ], [ %.1630, %bb.dc ], [ %.1630, %bb.ey ], [ %.1630, %bb.eq ], [ %.1630, %bb.ea ], [ %.1630, %bb.cz ], [ %.1630, %bb.cv ], [ %.1630, %bb.fd ], [ %.1630, %bb.fe ], [ %.1630, %bb.fh ] ; 5 uses
  %.56601035 = phi i32 [ %.3658, %bb.fk ], [ %.3658, %bb.ev ], [ %.0655, %bb.cj ], [ %.3658, %bb.ep ], [ %.0655, %bb.ao ], [ %.0655, %bb.aq ], [ %.0655, %bb.as ], [ %.0655, %bb.dx ], [ %.0655, %bb.dv ], [ %.0655, %bb.ds ], [ %.0655, %bb.dp ], [ %.0655, %bb.dm ], [ %.0655, %zend_jit_trace_has_recursive_ret.exit ], [ %.0655, %bb.dc ], [ %.3658, %bb.ey ], [ %.3658, %bb.eq ], [ %.0655, %bb.ea ], [ %.0655, %bb.cz ], [ %.0655, %bb.cv ], [ %.3658, %bb.fd ], [ %.3658, %bb.fe ], [ %.3658, %bb.fh ]
  %.56661034 = phi i32 [ %.3664, %bb.fk ], [ %.3664, %bb.ev ], [ %.0661, %bb.cj ], [ %.3664, %bb.ep ], [ %.0661, %bb.ao ], [ %.0661, %bb.aq ], [ %.0661, %bb.as ], [ %.0661, %bb.dx ], [ %.0661, %bb.dv ], [ %.0661, %bb.ds ], [ %.0661, %bb.dp ], [ %.0661, %bb.dm ], [ %.0661, %zend_jit_trace_has_recursive_ret.exit ], [ %.0661, %bb.dc ], [ %.3664, %bb.ey ], [ %.3664, %bb.eq ], [ %.0661, %bb.ea ], [ %.0661, %bb.cz ], [ %.0661, %bb.cv ], [ %.3664, %bb.fd ], [ %.3664, %bb.fe ], [ %.3664, %bb.fh ] ; 2 uses
  %.56721033 = phi i32 [ %.3670, %bb.fk ], [ %.3670, %bb.ev ], [ %.0667, %bb.cj ], [ %.3670, %bb.ep ], [ %.0667, %bb.ao ], [ %.0667, %bb.aq ], [ %.0667, %bb.as ], [ %.0667, %bb.dx ], [ %.0667, %bb.dv ], [ %.0667, %bb.ds ], [ %.0667, %bb.dp ], [ %.0667, %bb.dm ], [ %.0667, %zend_jit_trace_has_recursive_ret.exit ], [ %.0667, %bb.dc ], [ %.3670, %bb.ey ], [ %.3670, %bb.eq ], [ %.0667, %bb.ea ], [ %.0667, %bb.cz ], [ %.0667, %bb.cv ], [ %.3670, %bb.fd ], [ %.3670, %bb.fe ], [ %.3670, %bb.fh ] ; 2 uses
  %.211030 = phi i32 [ %i.vb, %bb.fk ], [ %.17, %bb.ev ], [ %i.kl, %bb.cj ], [ %i.ta, %bb.ep ], [ %i.et, %bb.ao ], [ %i.ez, %bb.aq ], [ %i.fg, %bb.as ], [ %i.qf, %bb.dx ], [ %.11, %bb.dv ], [ %.11, %bb.ds ], [ %i.ov, %bb.dp ], [ %i.ov, %bb.dm ], [ %.11, %zend_jit_trace_has_recursive_ret.exit ], [ %i.mq, %bb.dc ], [ %.17, %bb.ey ], [ %.17, %bb.eq ], [ %i.qq, %bb.ea ], [ %i.mq, %bb.cz ], [ %.11, %bb.cv ], [ %.17, %bb.fd ], [ %.17, %bb.fe ], [ %.17, %bb.fh ] ; 2 uses
  %.67181029 = phi i32 [ %.2714, %bb.fk ], [ %.2714, %bb.ev ], [ %.0712, %bb.cj ], [ %.2714, %bb.ep ], [ %.0712, %bb.ao ], [ %.0712, %bb.aq ], [ %.0712, %bb.as ], [ %.0712, %bb.dx ], [ %.0712, %bb.dv ], [ %.0712, %bb.ds ], [ %.0712, %bb.dp ], [ %.0712, %bb.dm ], [ %.0712, %zend_jit_trace_has_recursive_ret.exit ], [ %.0712, %bb.dc ], [ %.2714, %bb.ey ], [ %.2714, %bb.eq ], [ %.0712, %bb.ea ], [ %.0712, %bb.cz ], [ %.0712, %bb.cv ], [ %.2714, %bb.fd ], [ %.2714, %bb.fe ], [ %.2714, %bb.fh ] ; 4 uses
  %.187451026 = phi i32 [ %.912, %bb.fk ], [ 23, %bb.ev ], [ 14, %bb.cj ], [ 14, %bb.ep ], [ 14, %bb.ao ], [ 14, %bb.aq ], [ 14, %bb.as ], [ 14, %bb.dx ], [ 20, %bb.dv ], [ 19, %bb.ds ], [ 17, %bb.dp ], [ 14, %bb.dm ], [ 16, %zend_jit_trace_has_recursive_ret.exit ], [ 17, %bb.dc ], [ 21, %bb.ey ], [ 13, %bb.eq ], [ 14, %bb.ea ], [ 14, %bb.cz ], [ 15, %bb.cv ], [ 18, %bb.fh ], [ 22, %bb.fe ], [ 22, %bb.fd ] ; 3 uses
  %i.vf = icmp sgt i32 %.56721033, 0
  br i1 %i.vf, label %.critedge, label %bb.fl

bb.fl:                                            ; preds = %.thread1014
  %i.vg = icmp sgt i32 %.56661034, 0
  br i1 %i.vg, label %.critedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.vh = icmp sgt i32 %.0673.ph, 0
  %i.vi = icmp eq i32 %.187451026, 17
  %or.cond16 = and i1 %i.vh, %i.vi
  br i1 %or.cond16, label %bb.fn, label %.critedge

bb.fn:                                            ; preds = %bb.fm
  %i.vj = load i64, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 104), align 8, !tbaa !163
  %i.vk = sdiv i64 %i.vj, 2
  %i.vl = trunc i64 %i.vk to i32
  %i.vm = call fastcc zeroext i8 @zend_jit_trace_bad_stop_event(ptr noundef %1, i32 noundef %i.vl)
  %i.vn = icmp eq i8 %i.vm, 17
  br i1 %i.vn, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.ew, %bb.fn, %bb.eu, %bb.ev
  %.46281039.ph = phi ptr [ %.46281038, %bb.fn ], [ %.2626, %bb.ev ], [ %.2626, %bb.eu ], [ %.2626, %bb.ew ] ; 2 uses
  %.36321037.ph = phi ptr [ %.36321036, %bb.fn ], [ %.1630, %bb.ev ], [ %.1630, %bb.eu ], [ %.1630, %bb.ew ] ; 2 uses
  %.0747.ph = phi ptr [ %.0677.ph, %bb.fn ], [ %.2626, %bb.ev ], [ %.2626, %bb.eu ], [ %.2626, %bb.ew ] ; 2 uses
  %.7719.ph = phi i32 [ %.67181029, %bb.fn ], [ %.2714, %bb.ev ], [ %.2714, %bb.eu ], [ %.2714, %bb.ew ] ; 2 uses
  %.22.ph = phi i32 [ %.0673.ph, %bb.fn ], [ %.17, %bb.ev ], [ %.17, %bb.eu ], [ %.17, %bb.ew ] ; 2 uses
  %i.vo = zext nneg i32 %.22.ph to i64            ; 2 uses
  %i.vp = getelementptr [16 x i8], ptr %2, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 -16    ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 8, !tbaa !12
  %i.vs = icmp eq i8 %i.vr, 4
  br i1 %i.vs, label %.lr.ph1234, label %.critedge

.lr.ph1234:                                       ; preds = %.preheader, %bb.fo
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fo ], [ %i.vo, %.preheader ] ; 2 uses
  %i.vt = phi ptr [ %i.vx, %bb.fo ], [ %i.vq, %.preheader ]
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !12
  %i.vv = and i32 %i.vu, 256
  %.not886 = icmp eq i32 %i.vv, 0
  br i1 %.not886, label %.critedge.loopexit, label %bb.fo

bb.fo:                                            ; preds = %.lr.ph1234
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.vw = getelementptr [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.vx = getelementptr i8, ptr %i.vw, i64 -16    ; 2 uses
  %i.vy = load i8, ptr %i.vx, align 8, !tbaa !12
  %i.vz = icmp eq i8 %i.vy, 4
  br i1 %i.vz, label %.lr.ph1234, label %.critedge.loopexit, !llvm.loop !166

.critedge.loopexit:                               ; preds = %.lr.ph1234, %bb.fo
  %.24.ph.in = phi i64 [ %indvars.iv.next, %bb.fo ], [ %indvars.iv, %.lr.ph1234 ]
  %.24.ph = trunc i64 %.24.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.dg, %bb.ci, %bb.dh, %bb.do, %bb.cy, %bb.cx, %bb.db, %bb.cw, %bb.dw, %bb.cd, %bb.cd, %bb.ce, %bb.dr, %bb.dz, %bb.fa, %.critedge.loopexit, %.preheader, %bb.cm, %bb.cq, %bb.fg, %bb.cl, %bb.cl, %bb.fl, %bb.fn, %.thread1014, %bb.fm
  %.77191067 = phi i32 [ %.0712, %bb.cl ], [ %.0712, %bb.cl ], [ %.7719.ph, %.critedge.loopexit ], [ %.67181029, %bb.fm ], [ %.56601035, %bb.fl ], [ %.67181029, %bb.fn ], [ %.67181029, %.thread1014 ], [ %.0712, %bb.cm ], [ %.7719.ph, %.preheader ], [ %.0712, %bb.cq ], [ 0, %bb.fg ], [ %.0712, %bb.ce ], [ %i.qj, %bb.dz ], [ %i.pn, %bb.dr ], [ %.0712, %bb.cd ], [ %.0712, %bb.cd ], [ %.0712, %bb.dg ], [ %.0712, %bb.ci ], [ %.0712, %bb.dh ], [ %.0712, %bb.do ], [ %.0712, %bb.cy ], [ %.0712, %bb.cx ], [ %.0712, %bb.db ], [ %.0712, %bb.cw ], [ %.0712, %bb.dw ], [ %.2714, %bb.fa ]
  %.197461066 = phi i32 [ 5, %bb.cl ], [ 5, %bb.cl ], [ 4, %.critedge.loopexit ], [ %.187451026, %bb.fm ], [ 2, %bb.fl ], [ 17, %bb.fn ], [ 1, %.thread1014 ], [ 3, %bb.cm ], [ 4, %.preheader ], [ %.890, %bb.cq ], [ 0, %bb.fg ], [ 5, %bb.ce ], [ 8, %bb.dz ], [ 8, %bb.dr ], [ 5, %bb.cd ], [ 5, %bb.cd ], [ 3, %bb.dg ], [ 8, %bb.ci ], [ 3, %bb.dh ], [ 2, %bb.do ], [ 5, %bb.cy ], [ 7, %bb.cx ], [ 1, %bb.db ], [ 6, %bb.cw ], [ 3, %bb.dw ], [ 0, %bb.fa ]
  %.07471065 = phi ptr [ null, %bb.cl ], [ null, %bb.cl ], [ %.0747.ph, %.critedge.loopexit ], [ %.46281038, %bb.fm ], [ %1, %bb.fl ], [ %.46281038, %bb.fn ], [ %1, %.thread1014 ], [ null, %bb.cm ], [ %.0747.ph, %.preheader ], [ %.2626, %bb.cq ], [ %.2626, %bb.fg ], [ %.0624, %bb.ce ], [ %.2626, %bb.dz ], [ %.2626, %bb.dr ], [ %.0624, %bb.cd ], [ %.0624, %bb.cd ], [ %.2626, %bb.dg ], [ %.0624, %bb.ci ], [ %.2626, %bb.dh ], [ %.2626, %bb.do ], [ %.2626, %bb.cy ], [ %.2626, %bb.cx ], [ %.2626, %bb.db ], [ %.2626, %bb.cw ], [ %.2626, %bb.dw ], [ %.2626, %bb.fa ]
  %.not888 = phi i1 [ false, %bb.cl ], [ false, %bb.cl ], [ true, %.critedge.loopexit ], [ true, %bb.fm ], [ true, %bb.fl ], [ true, %bb.fn ], [ true, %.thread1014 ], [ false, %bb.cm ], [ true, %.preheader ], [ true, %bb.cq ], [ true, %bb.fg ], [ true, %bb.fa ], [ true, %bb.dz ], [ true, %bb.dr ], [ true, %bb.ce ], [ true, %bb.cd ], [ true, %bb.cd ], [ true, %bb.dw ], [ true, %bb.cw ], [ true, %bb.db ], [ true, %bb.cx ], [ true, %bb.cy ], [ true, %bb.do ], [ true, %bb.dh ], [ true, %bb.ci ], [ true, %bb.dg ]
  %.272610281064 = phi i32 [ 69, %bb.cl ], [ 69, %bb.cl ], [ 4, %.critedge.loopexit ], [ %.187451026, %bb.fm ], [ 2, %bb.fl ], [ 17, %bb.fn ], [ 1, %.thread1014 ], [ 67, %bb.cm ], [ 4, %.preheader ], [ %.890, %bb.cq ], [ 0, %bb.fg ], [ 5, %bb.ce ], [ 8, %bb.dz ], [ 8, %bb.dr ], [ 5, %bb.cd ], [ 5, %bb.cd ], [ 3, %bb.dg ], [ 8, %bb.ci ], [ 3, %bb.dh ], [ 2, %bb.do ], [ 5, %bb.cy ], [ 7, %bb.cx ], [ 1, %bb.db ], [ 6, %bb.cw ], [ 3, %bb.dw ], [ 0, %bb.fa ] ; 2 uses
  %.363210371063 = phi ptr [ %.0629, %bb.cl ], [ %.0629, %bb.cl ], [ %.36321037.ph, %.critedge.loopexit ], [ %.36321036, %bb.fm ], [ %.36321036, %bb.fl ], [ %.36321036, %bb.fn ], [ %.36321036, %.thread1014 ], [ %.0629, %bb.cm ], [ %.36321037.ph, %.preheader ], [ %.1630, %bb.cq ], [ %.1630, %bb.fg ], [ %.0629, %bb.ce ], [ %.1630, %bb.dz ], [ %.1630, %bb.dr ], [ %.0629, %bb.cd ], [ %.0629, %bb.cd ], [ %.1630, %bb.dg ], [ %.0629, %bb.ci ], [ %.1630, %bb.dh ], [ %.1630, %bb.do ], [ %.1630, %bb.cy ], [ %.1630, %bb.cx ], [ %.1630, %bb.db ], [ %.1630, %bb.cw ], [ %.1630, %bb.dw ], [ %.1630, %bb.fa ]
  %.462810391062 = phi ptr [ null, %bb.cl ], [ null, %bb.cl ], [ %.46281039.ph, %.critedge.loopexit ], [ %.46281038, %bb.fm ], [ %.46281038, %bb.fl ], [ %.46281038, %bb.fn ], [ %.46281038, %.thread1014 ], [ null, %bb.cm ], [ %.46281039.ph, %.preheader ], [ %.2626, %bb.cq ], [ %.2626, %bb.fg ], [ %.0624, %bb.ce ], [ %.2626, %bb.dz ], [ %.2626, %bb.dr ], [ %.0624, %bb.cd ], [ %.0624, %bb.cd ], [ %.2626, %bb.dg ], [ %.0624, %bb.ci ], [ %.2626, %bb.dh ], [ %.2626, %bb.do ], [ %.2626, %bb.cy ], [ %.2626, %bb.cx ], [ %.2626, %bb.db ], [ %.2626, %bb.cw ], [ %.2626, %bb.dw ], [ %.2626, %bb.fa ]
  %.24 = phi i32 [ %.11, %bb.cl ], [ %.11, %bb.cl ], [ %.24.ph, %.critedge.loopexit ], [ %.211030, %bb.fm ], [ %.56661034, %bb.fl ], [ %.211030, %bb.fn ], [ %.56721033, %.thread1014 ], [ %.11, %bb.cm ], [ %.22.ph, %.preheader ], [ %.11, %bb.cq ], [ %i.us, %bb.fg ], [ %.9, %bb.ce ], [ %i.qf, %bb.dz ], [ %i.ov, %bb.dr ], [ %.9, %bb.cd ], [ %.9, %bb.cd ], [ %.11, %bb.dg ], [ %.9, %bb.ci ], [ %.11, %bb.dh ], [ %i.ov, %bb.do ], [ %.11, %bb.cy ], [ %.11, %bb.cx ], [ %i.mq, %bb.db ], [ %.11, %bb.cw ], [ %.11, %bb.dw ], [ %.17, %bb.fa ] ; 2 uses
  %.77191067.fr = freeze i32 %.77191067           ; 2 uses
  store i32 %.24, ptr %i.x, align 8, !tbaa !12
  %i.wa = sext i32 %.24 to i64
  %i.wb = getelementptr inbounds [16 x i8], ptr %2, i64 %i.wa ; 4 uses
  store i8 8, ptr %i.wb, align 8, !tbaa !12
  %i.wc = trunc nuw nsw i32 %.197461066 to i8     ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.wc, ptr %i.wd, align 2, !tbaa !12
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  store i8 %i.wc, ptr %i.we, align 2, !tbaa !12
  %.not887 = icmp eq i32 %.77191067.fr, 0
  %i.wf = trunc i32 %.77191067.fr to i8
  %i.wg = add i8 %i.wf, 1
  %spec.select1106 = select i1 %.not887, i8 0, i8 %i.wg ; 2 uses
  store i8 %spec.select1106, ptr %i.v, align 1, !tbaa !12
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wb, i64 3
  store i8 %spec.select1106, ptr %i.wh, align 1, !tbaa !12
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store ptr %.07471065, ptr %i.wi, align 8, !tbaa !12
  br i1 %.not888, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.critedge
  store ptr %.462810391062, ptr %.363210371063, align 8, !tbaa !65
  br label %bb.fq

bb.fq:                                            ; preds = %.critedge, %bb.fp, %bb.j, %bb.g, %bb.e
  %.1603 = phi i32 [ 13, %bb.e ], [ 12, %bb.g ], [ 8, %bb.j ], [ %.272610281064, %bb.fp ], [ %.272610281064, %.critedge ]
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
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 192), align 8, !tbaa !149
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.bm, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 200), align 8, !tbaa !149
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 208), align 8, !tbaa !149
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 216), align 8, !tbaa !149
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.bm, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 224), align 8, !tbaa !149
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.bm, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 232), align 8, !tbaa !149
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.bm, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 240), align 8, !tbaa !149
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.bm, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 248), align 8, !tbaa !149
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.bm, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 256), align 8, !tbaa !149
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 264), align 8, !tbaa !149
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %bb.bm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 272), align 8, !tbaa !149
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.bm, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 280), align 8, !tbaa !149
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %bb.bm, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 288), align 8, !tbaa !149
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.bm, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 296), align 8, !tbaa !149
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %bb.bm, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 304), align 8, !tbaa !149
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.bm, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 312), align 8, !tbaa !149
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.bm, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 320), align 8, !tbaa !149
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.bm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 328), align 8, !tbaa !149
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.bm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 336), align 8, !tbaa !149
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.bm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 344), align 8, !tbaa !149
  %i.an = icmp eq ptr %i.am, %0
  br i1 %i.an, label %bb.bm, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 352), align 8, !tbaa !149
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.bm, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 360), align 8, !tbaa !149
  %i.ar = icmp eq ptr %i.aq, %0
  br i1 %i.ar, label %bb.bm, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 368), align 8, !tbaa !149
  %i.at = icmp eq ptr %i.as, %0
  br i1 %i.at, label %bb.bm, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 376), align 8, !tbaa !149
  %i.av = icmp eq ptr %i.au, %0
  br i1 %i.av, label %bb.bm, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 384), align 8, !tbaa !149
  %i.ax = icmp eq ptr %i.aw, %0
  br i1 %i.ax, label %bb.bm, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 392), align 8, !tbaa !149
  %i.az = icmp eq ptr %i.ay, %0
  br i1 %i.az, label %bb.bm, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 400), align 8, !tbaa !149
  %i.bb = icmp eq ptr %i.ba, %0
  br i1 %i.bb, label %bb.bm, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 408), align 8, !tbaa !149
  %i.bd = icmp eq ptr %i.bc, %0
  br i1 %i.bd, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 416), align 8, !tbaa !149
  %i.bf = icmp eq ptr %i.be, %0
  br i1 %i.bf, label %bb.bm, label %bb.ad
end_hunk_1
begin_hunk_2_@zend_jit_trace_record_fake_init_call_ex:bb.a
  %.1 = phi ptr [ %.03867, %bb.j ], [ null, %bb.m ], [ %.03867, %bb.l ], [ null, %bb.i ], [ null, %.thread64 ], [ null, %bb.h ], [ null, %bb.d ], [ null, %.critedge ], [ null, %.critedge59 ], [ null, %bb.f ]
  %i.an = shl i32 %4, 16
  %i.ao = or disjoint i32 %i.an, 260
  %i.ap = sext i32 %.041 to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ap ; 2 uses
  store i32 %i.ao, ptr %i.aq, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.1, ptr %i.ar, align 8, !tbaa !12
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

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!15, !22, i64 56}
!15 = !{!"_zend_execute_data", !16, i64 0, !18, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !18, i64 48, !22, i64 56, !23, i64 64, !22, i64 72}
!16 = !{!"p1 _ZTS8_zend_op", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTS18_zend_execute_data", !17, i64 0}
!19 = !{!"p1 _ZTS12_zval_struct", !17, i64 0}
!20 = !{!"p1 _ZTS14_zend_function", !17, i64 0}
!21 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!22 = !{!"p1 _ZTS11_zend_array", !17, i64 0}
!23 = !{!"any p2 pointer", !17, i64 0}
!24 = !{!15, !20, i64 24}
!25 = !{!26, !9, i64 0}
!26 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!15, !22, i64 72}
!31 = !{!15, !18, i64 48}
!32 = !{!33, !39, i64 496}
!33 = !{!"_zend_executor_globals", !21, i64 0, !21, i64 16, !10, i64 32, !34, i64 288, !34, i64 296, !35, i64 304, !35, i64 360, !37, i64 416, !9, i64 424, !38, i64 428, !21, i64 432, !9, i64 448, !22, i64 456, !22, i64 464, !22, i64 472, !19, i64 480, !19, i64 488, !39, i64 496, !36, i64 504, !18, i64 512, !40, i64 520, !9, i64 528, !18, i64 536, !9, i64 544, !36, i64 552, !9, i64 560, !9, i64 564, !9, i64 568, !38, i64 572, !38, i64 573, !41, i64 574, !41, i64 575, !22, i64 576, !36, i64 584, !17, i64 592, !17, i64 600, !35, i64 608, !35, i64 664, !9, i64 720, !38, i64 724, !21, i64 728, !21, i64 744, !42, i64 760, !42, i64 784, !42, i64 808, !40, i64 832, !9, i64 840, !9, i64 844, !36, i64 848, !22, i64 856, !22, i64 864, !43, i64 872, !44, i64 880, !46, i64 904, !47, i64 960, !47, i64 968, !16, i64 976, !10, i64 984, !48, i64 1080, !38, i64 1088, !10, i64 1089, !36, i64 1096, !9, i64 1104, !9, i64 1108, !49, i64 1112, !10, i64 1120, !17, i64 1376, !10, i64 1384, !50, i64 1640, !35, i64 1672, !36, i64 1728, !51, i64 1736, !52, i64 1760, !52, i64 1768, !53, i64 1776, !36, i64 1784, !38, i64 1792, !9, i64 1796, !54, i64 1800, !55, i64 1808, !36, i64 1816, !56, i64 1824, !36, i64 1840, !36, i64 1848, !57, i64 1856, !10, i64 1936}
!34 = !{!"p2 _ZTS11_zend_array", !23, i64 0}
!35 = !{!"_zend_array", !26, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !36, i64 40, !17, i64 48}
!36 = !{!"long", !10, i64 0}
!37 = !{!"p1 _ZTS13__jmp_buf_tag", !17, i64 0}
!38 = !{!"_Bool", !10, i64 0}
!39 = !{!"p1 _ZTS14_zend_vm_stack", !17, i64 0}
!40 = !{!"p1 _ZTS17_zend_class_entry", !17, i64 0}
!41 = !{!"zend_atomic_bool_s", !10, i64 0}
!42 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 16}
!43 = !{!"p1 _ZTS15_zend_ini_entry", !17, i64 0}
!44 = !{!"_zend_objects_store", !45, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!45 = !{!"p2 _ZTS12_zend_object", !23, i64 0}
!46 = !{!"_zend_lazy_objects_store", !35, i64 0}
!47 = !{!"p1 _ZTS12_zend_object", !17, i64 0}
!48 = !{!"p1 _ZTS18_zend_module_entry", !17, i64 0}
!49 = !{!"p1 _ZTS18_HashTableIterator", !17, i64 0}
!50 = !{!"_zend_op", !17, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !10, i64 29, !10, i64 30, !10, i64 31}
!51 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!52 = !{!"p1 _ZTS19_zend_fiber_context", !17, i64 0}
!53 = !{!"p1 _ZTS11_zend_fiber", !17, i64 0}
!54 = !{!"p2 _ZTS16_zend_error_info", !23, i64 0}
!55 = !{!"p1 _ZTS12_zend_string", !17, i64 0}
!56 = !{!"_zend_call_stack", !17, i64 0, !36, i64 8}
!57 = !{!"_zend_strtod_state", !10, i64 0, !58, i64 64, !59, i64 72}
!58 = !{!"p1 _ZTS19_zend_strtod_bigint", !17, i64 0}
!59 = !{!"p1 omnipotent char", !17, i64 0}
!60 = !{!61, !39, i64 16}
!61 = !{!"_zend_vm_stack", !19, i64 0, !19, i64 8, !39, i64 16}
!62 = !{!19, !19, i64 0}
!63 = !{!33, !19, i64 480}
!64 = !{!33, !47, i64 960}
!65 = !{!15, !16, i64 0}
!66 = !{!50, !10, i64 31}
!67 = !{!33, !18, i64 512}
!68 = !{!50, !17, i64 0}
!69 = !{!70, !9, i64 4}
!70 = !{!"_zend_op_array", !10, i64 0, !10, i64 1, !9, i64 4, !55, i64 8, !40, i64 16, !20, i64 24, !9, i64 32, !9, i64 36, !71, i64 40, !22, i64 48, !23, i64 56, !55, i64 64, !9, i64 72, !72, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !16, i64 104, !22, i64 112, !22, i64 120, !73, i64 128, !74, i64 136, !9, i64 144, !9, i64 148, !75, i64 152, !76, i64 160, !55, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !19, i64 192, !77, i64 200, !10, i64 208}
!71 = !{!"p1 _ZTS14_zend_arg_info", !17, i64 0}
!72 = !{!"p1 _ZTS19_zend_property_info", !17, i64 0}
!73 = !{!"p2 _ZTS12_zend_string", !23, i64 0}
!74 = !{!"p1 int", !17, i64 0}
!75 = !{!"p1 _ZTS16_zend_live_range", !17, i64 0}
!76 = !{!"p1 _ZTS23_zend_try_catch_element", !17, i64 0}
!77 = !{!"p2 _ZTS14_zend_op_array", !23, i64 0}
!78 = !{!70, !9, i64 32}
!79 = !{!"branch_weights", i32 2000, i32 2002}
!80 = !{!70, !9, i64 92}
!81 = !{!70, !9, i64 72}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !84}
!87 = !{!33, !16, i64 976}
!88 = distinct !{!88, !29}
!89 = !{!50, !10, i64 30}
!90 = !{!91, !36, i64 16}
!91 = !{!"_zend_string", !26, i64 0, !36, i64 8, !36, i64 16, !10, i64 24}
!92 = !{!36, !36, i64 0}
!93 = !{!9, !9, i64 0}
!94 = !{!17, !17, i64 0}
!95 = !{!96, !17, i64 160}
!96 = !{!"_zend_jit_op_array_extension", !97, i64 0, !109, i64 152, !17, i64 160}
!97 = !{!"_zend_func_info", !9, i64 0, !9, i64 4, !98, i64 8, !105, i64 88, !105, i64 96, !106, i64 104, !107, i64 112}
!98 = !{!"_zend_ssa", !99, i64 0, !9, i64 40, !9, i64 44, !101, i64 48, !102, i64 56, !103, i64 64, !104, i64 72}
!99 = !{!"_zend_cfg", !9, i64 0, !9, i64 4, !100, i64 8, !74, i64 16, !74, i64 24, !9, i64 32}
!100 = !{!"p1 _ZTS17_zend_basic_block", !17, i64 0}
!101 = !{!"p1 _ZTS15_zend_ssa_block", !17, i64 0}
!102 = !{!"p1 _ZTS12_zend_ssa_op", !17, i64 0}
!103 = !{!"p1 _ZTS13_zend_ssa_var", !17, i64 0}
!104 = !{!"p1 _ZTS18_zend_ssa_var_info", !17, i64 0}
!105 = !{!"p1 _ZTS15_zend_call_info", !17, i64 0}
!106 = !{!"p2 _ZTS15_zend_call_info", !23, i64 0}
!107 = !{!"_zend_ssa_var_info", !9, i64 0, !38, i64 4, !38, i64 4, !38, i64 4, !38, i64 4, !38, i64 4, !38, i64 4, !38, i64 4, !38, i64 4, !108, i64 8, !40, i64 32}
!108 = !{!"_zend_ssa_range", !36, i64 0, !36, i64 8, !38, i64 16, !38, i64 17}
!109 = !{!"p1 _ZTS14_zend_op_array", !17, i64 0}
!110 = !{!15, !23, i64 64}
!111 = !{!112, !36, i64 80}
!112 = !{!"_zend_jit_globals", !38, i64 0, !38, i64 1, !10, i64 2, !10, i64 3, !9, i64 4, !59, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !113, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !114, i64 160, !38, i64 168, !115, i64 176, !116, i64 184, !10, i64 192, !10, i64 704, !10, i64 768, !9, i64 832, !59, i64 840}
!113 = !{!"double", !10, i64 0}
!114 = !{!"p1 _ZTS9_sym_node", !17, i64 0}
!115 = !{!"p1 _ZTS19_zend_jit_trace_rec", !17, i64 0}
!116 = !{!"p1 _ZTS27_zend_jit_trace_stack_frame", !17, i64 0}
!117 = !{!118, !119, i64 160}
!118 = !{!"_zend_jit_op_array_hot_extension", !97, i64 0, !109, i64 152, !119, i64 160, !10, i64 168}
!119 = !{!"p1 short", !17, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"short", !10, i64 0}
!122 = !{!112, !36, i64 72}
!123 = !{!33, !22, i64 472}
!124 = !{!35, !9, i64 28}
!125 = !{!50, !9, i64 20}
!126 = !{!127, !55, i64 16}
!127 = !{!"_zend_constant", !21, i64 0, !55, i64 16, !55, i64 24, !22, i64 32}
!128 = !{!129, !36, i64 160}
!129 = !{!"_zend_jit_op_array_trace_extension", !97, i64 0, !109, i64 152, !36, i64 160, !10, i64 168}
!130 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!131 = distinct !{null}
!132 = !{!112, !36, i64 88}
!133 = !{!15, !18, i64 8}
!134 = !{!70, !55, i64 8}
!135 = !{!129, !109, i64 152}
!136 = !{!50, !10, i64 28}
!137 = !{!50, !10, i64 29}
!138 = !{!139, !40, i64 16}
!139 = !{!"_zend_object", !26, i64 0, !9, i64 8, !9, i64 12, !40, i64 16, !140, i64 24, !22, i64 32, !10, i64 40}
!140 = !{!"p1 _ZTS21_zend_object_handlers", !17, i64 0}
!141 = !{!112, !36, i64 152}
!142 = !{!139, !140, i64 24}
!143 = !{!144, !146, i64 64}
!144 = !{!"_zend_property_info", !9, i64 0, !9, i64 4, !55, i64 8, !55, i64 16, !22, i64 24, !40, i64 32, !145, i64 40, !72, i64 56, !146, i64 64}
!145 = !{!"", !17, i64 0, !9, i64 8}
!146 = !{!"p2 _ZTS14_zend_function", !23, i64 0}
!147 = !{!144, !9, i64 4}
!148 = !{!144, !9, i64 0}
!149 = !{!16, !16, i64 0}
!150 = !{!"branch_weights", i32 1, i32 1999}
!151 = !{!"branch_weights", i32 0, i32 1}
!152 = distinct !{!152, !29}
!153 = !{!129, !9, i64 4}
!154 = !{!15, !19, i64 16}
!155 = !{!109, !109, i64 0}
!156 = distinct !{!156, !29, !157, !158}
!157 = !{!"llvm.loop.isvectorized", i32 1}
!158 = !{!"llvm.loop.unroll.runtime.disable"}
!159 = distinct !{!159, !29, !158, !157}
!160 = !{!112, !36, i64 128}
!161 = distinct !{!161, !29}
!162 = !{!112, !36, i64 136}
!163 = !{!112, !36, i64 104}
!164 = !{!112, !36, i64 144}
!165 = !{!112, !36, i64 120}
!166 = distinct !{!166, !29}
end_hunk_2
