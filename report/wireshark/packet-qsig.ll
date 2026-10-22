Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-qsig?download=true
inline.NumInlined: 184
inline.NumDeleted: 156
loop-unroll.NumUnrolled: 4
begin_hunk_0_@proto_register_qsig:bb.a
  %i.e = tail call ptr @register_dissector(ptr noundef @.str.1443, ptr noundef @dissect_qsig_arg, i32 noundef %i.d)
  store ptr %i.e, ptr @qsig_arg_handle, align 8
  %i.f = load i32, ptr @proto_qsig, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef @.str.1444, ptr noundef @dissect_qsig_res, i32 noundef %i.f)
  store ptr %i.g, ptr @qsig_res_handle, align 8
  %i.h = load i32, ptr @proto_qsig, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef @.str.1445, ptr noundef @dissect_qsig_err, i32 noundef %i.h)
  store ptr %i.i, ptr @qsig_err_handle, align 8
  %i.j = load i32, ptr @proto_qsig, align 4
  %i.k = tail call ptr @register_dissector(ptr noundef @.str.1446, ptr noundef @dissect_qsig_ie_cs4, i32 noundef %i.j)
  store ptr %i.k, ptr @qsig_ie4_handle, align 8
  %i.l = load i32, ptr @proto_qsig, align 4
  %i.m = tail call ptr @register_dissector(ptr noundef @.str.1447, ptr noundef @dissect_qsig_ie_cs5, i32 noundef %i.l)
  store ptr %i.m, ptr @qsig_ie5_handle, align 8
  %i.n = load i32, ptr @proto_qsig, align 4
  %i.o = tail call ptr @register_dissector_table(ptr noundef @.str.1448, ptr noundef @.str.1449, i32 noundef %i.n, i32 noundef 26, i32 noundef 0)
  store ptr %i.o, ptr @extension_dissector_table, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_register_subtree_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_arg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %get_op.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.2039, ptr noundef @.str.2040, i32 noundef 12364, ptr noundef @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.c, i64 80
  %i.e = load i32, ptr %i.d, align 8
  %.not68 = icmp eq i32 %i.e, 1
  br i1 %.not68, label %bb.e, label %get_op.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %i.c, i64 84
  %i.g = load i32, ptr %i.f, align 4
  switch i32 %i.g, label %get_op.exit.thread [
    i32 0, label %bb.f
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.c, i64 88
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %i.j = add nsw i32 %.06.i, -1                   ; 2 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, %i.i
  br i1 %i.n, label %get_op.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %.06.i, -2
  %.not.i.1 = icmp eq i32 %i.j, 0
  br i1 %.not.i.1, label %get_op.exit.thread, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %bb.f
  %.06.i = phi i32 [ 121, %bb.f ], [ %i.o, %bb.h ] ; 3 uses
  %i.p = zext nneg i32 %.06.i to i64              ; 2 uses
  %i.q = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, %i.i
  br i1 %i.s, label %get_op.exit, label %bb.g

bb.j:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.c, i64 96
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @g_strrstr(ptr noundef %i.u, ptr noundef @.str.2042) ; 2 uses
  %.not69 = icmp eq ptr %i.v, null
  br i1 %.not69, label %get_op.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %i.v, i64 1
  %i.x = call zeroext i1 @ws_strtou32(ptr noundef %i.w, ptr noundef null, ptr noundef nonnull %i.a)
  br i1 %i.x, label %bb.l, label %get_op.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %i.a, align 4              ; 3 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.o
  %i.z = add nsw i32 %.06.i76, -1                 ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, %i.y
  br i1 %i.ad, label %get_op.exit79, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = add nsw i32 %.06.i76, -2
  %.not.i77.1 = icmp eq i32 %i.z, 0
  br i1 %.not.i77.1, label %get_op.exit.thread, label %bb.o, !llvm.loop !0

bb.o:                                             ; preds = %bb.n, %bb.l
  %.06.i76 = phi i32 [ 121, %bb.l ], [ %i.ae, %bb.n ] ; 3 uses
  %i.af = zext nneg i32 %.06.i76 to i64           ; 2 uses
  %i.ag = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %i.ah, %i.y
  br i1 %i.ai, label %get_op.exit79, label %bb.m

get_op.exit79:                                    ; preds = %bb.m, %bb.o
  %.lcssa135 = phi i64 [ %i.af, %bb.o ], [ %i.aa, %bb.m ]
  %.lcssa133 = phi ptr [ %i.ag, %bb.o ], [ %i.ab, %bb.m ]
  %.not70 = icmp eq ptr %.lcssa133, null
  br i1 %.not70, label %get_op.exit.thread, label %get_op.exit.thread85

get_op.exit:                                      ; preds = %bb.g, %bb.i
  %.lcssa130 = phi i64 [ %i.p, %bb.i ], [ %i.k, %bb.g ]
  %.lcssa = phi ptr [ %i.q, %bb.i ], [ %i.l, %bb.g ]
  %.not71 = icmp eq ptr %.lcssa, null
  br i1 %.not71, label %get_op.exit.thread, label %get_op.exit.thread85

get_op.exit.thread85:                             ; preds = %get_op.exit79, %get_op.exit
  %i.aj = phi i64 [ %.lcssa130, %get_op.exit ], [ %.lcssa135, %get_op.exit79 ]
  %.05889 = phi i32 [ %i.i, %get_op.exit ], [ %i.y, %get_op.exit79 ] ; 4 uses
  %i.ak = icmp ugt i32 %.05889, 120
  br i1 %i.ak, label %get_service.exit, label %bb.p

bb.p:                                             ; preds = %get_op.exit.thread85
  %i.al = zext nneg i32 %.05889 to i64
  %i.am = getelementptr [4 x i8], ptr @op2srv_tab, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  br label %get_service.exit

get_service.exit:                                 ; preds = %get_op.exit.thread85, %bb.p
  %.0.i = phi i32 [ %i.an, %bb.p ], [ -1, %get_op.exit.thread85 ] ; 2 uses
  %i.ao = load i32, ptr @proto_qsig, align 4
  %i.ap = call i32 @tvb_captured_length(ptr noundef %0)
  %i.aq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef 0, i32 noundef %i.ap, i32 noundef 0) ; 2 uses
  %i.ar = load i32, ptr @ett_qsig, align 4
  %i.as = call ptr @proto_item_add_subtree(ptr noundef %i.aq, i32 noundef %i.ar) ; 3 uses
  %i.at = load i32, ptr @hf_qsig_operation, align 4
  %i.au = call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.at, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.05889) ; 0 uses
  %i.av = call ptr @try_val_to_str(i32 noundef %.05889, ptr noundef @qsig_str_operation) ; 4 uses
  %.not72 = icmp eq ptr %i.av, null
  br i1 %.not72, label %bb.s, label %bb.q

bb.q:                                             ; preds = %get_service.exit
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aq, ptr noundef @.str.2043, ptr noundef nonnull %i.av)
  %i.aw = getelementptr i8, ptr %i.c, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ax, ptr noundef @.str.2044, ptr noundef nonnull %i.av)
  %i.ay = getelementptr i8, ptr %i.c, i64 56      ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.bc = load i32, ptr %i.ay, align 8
  %i.bd = call ptr @proto_item_get_parent_nth(ptr noundef %i.bb, i32 noundef %i.bc)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bd, ptr noundef @.str.2045, ptr noundef nonnull %i.av)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %get_service.exit
  %i.be = load i32, ptr @hf_qsig_service, align 4
  %i.bf = call ptr @proto_tree_add_uint(ptr noundef %i.as, i32 noundef %i.be, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i)
  %i.bg = call ptr @try_val_to_str(i32 noundef %.0.i, ptr noundef @qsig_str_service_name) ; 2 uses
  %.not73 = icmp eq ptr %i.bg, null
  br i1 %.not73, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bf, ptr noundef @.str.2044, ptr noundef nonnull %i.bg)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.aj
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not74 = icmp eq ptr %i.bj, null
  br i1 %.not74, label %6, label %4

4:                                                ; preds = %bb.u
  %5 = call i32 %i.bj(ptr noundef %0, ptr noundef %1, ptr noundef %i.as, ptr noundef null)
  br label %get_op.exit.thread

6:                                                ; preds = %bb.u
  %7 = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not75 = icmp eq i32 %7, 0
  br i1 %.not75, label %get_op.exit.thread, label %8

8:                                                ; preds = %6
  %9 = call ptr @proto_tree_add_expert_remaining(ptr noundef %2, ptr noundef %1, ptr noundef @ei_qsig_unsupported_error_type, ptr noundef %0, i32 noundef 0) ; 0 uses
  %10 = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  br label %get_op.exit.thread

get_op.exit.thread:                               ; preds = %bb.n, %bb.h, %bb.k, %bb.j, %get_op.exit79, %4, %8, %6, %get_op.exit, %bb.e, %bb.d, %bb.a
  %.060 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %get_op.exit ], [ 0, %bb.e ], [ %5, %4 ], [ %10, %8 ], [ 0, %6 ], [ 0, %get_op.exit79 ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.060
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_res(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %get_op.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.2039, ptr noundef @.str.2040, i32 noundef 12428, ptr noundef @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.not59 = icmp eq i32 %i.d, 2
  br i1 %.not59, label %bb.e, label %get_op.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.b, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %.not60 = icmp eq i32 %i.f, 0
  br i1 %.not60, label %bb.f, label %get_op.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8              ; 6 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %i.i = add nsw i32 %.06.i, -1                   ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, %i.h
  br i1 %i.m, label %get_op.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %.06.i, -2
  %.not.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.1, label %get_op.exit.thread, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h, %bb.f
  %.06.i = phi i32 [ 121, %bb.f ], [ %i.n, %bb.h ] ; 3 uses
  %i.o = zext nneg i32 %.06.i to i64
  %i.p = getelementptr [24 x i8], ptr @qsig_op_tab, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, %i.h
  br i1 %i.r, label %get_op.exit, label %bb.g

get_op.exit:                                      ; preds = %bb.g, %bb.i
  %.lcssa = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.g ] ; 2 uses
  %.not61 = icmp eq ptr %.lcssa, null
  br i1 %.not61, label %get_op.exit.thread, label %bb.j

bb.j:                                             ; preds = %get_op.exit
  %i.s = icmp ugt i32 %i.h, 120
  br i1 %i.s, label %get_service.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = zext nneg i32 %i.h to i64
  %i.u = getelementptr [4 x i8], ptr @op2srv_tab, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  br label %get_service.exit

get_service.exit:                                 ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.v, %bb.k ], [ -1, %bb.j ]  ; 2 uses
  %i.w = load i32, ptr @proto_qsig, align 4
  %i.x = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef 0, i32 noundef %i.x, i32 noundef 0) ; 2 uses
  %i.z = load i32, ptr @ett_qsig, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 3 uses
  %i.ab = load i32, ptr @hf_qsig_operation, align 4
  %i.ac = tail call ptr @proto_tree_add_uint(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.h) ; 0 uses
  %i.ad = tail call ptr @try_val_to_str(i32 noundef %i.h, ptr noundef @qsig_str_operation) ; 4 uses
  %.not62 = icmp eq ptr %i.ad, null
  br i1 %.not62, label %bb.n, label %bb.l

bb.l:                                             ; preds = %get_service.exit
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.y, ptr noundef @.str.2043, ptr noundef nonnull %i.ad)
  %i.ae = getelementptr i8, ptr %i.b, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.af, ptr noundef @.str.2044, ptr noundef nonnull %i.ad)
  %i.ag = getelementptr i8, ptr %i.b, i64 56      ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call ptr @proto_tree_get_parent(ptr noundef %2)
  %i.ak = load i32, ptr %i.ag, align 8
  %i.al = tail call ptr @proto_item_get_parent_nth(ptr noundef %i.aj, i32 noundef %i.ak)
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.al, ptr noundef @.str.2045, ptr noundef nonnull %i.ad)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %get_service.exit
  %i.am = load i32, ptr @hf_qsig_service, align 4
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %i.aa, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %.0.i)
  %i.ao = tail call ptr @try_val_to_str(i32 noundef %.0.i, ptr noundef @qsig_str_service_name) ; 2 uses
  %.not63 = icmp eq ptr %i.ao, null
  br i1 %.not63, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.an, ptr noundef @.str.2044, ptr noundef nonnull %i.ao)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr i8, ptr %.lcssa, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.aq, null
  br i1 %.not64, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = tail call i32 %i.aq(ptr noundef %0, ptr noundef %1, ptr noundef %i.aa, ptr noundef null)
  br label %get_op.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.as = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %.not65 = icmp eq i32 %i.as, 0
  br i1 %.not65, label %get_op.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %2, ptr noundef %1, ptr noundef @ei_qsig_unsupported_result_type, ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.au = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  br label %get_op.exit.thread

get_op.exit.thread:                               ; preds = %bb.h, %bb.q, %bb.s, %bb.r, %get_op.exit, %bb.e, %bb.d, %bb.a
  %.052 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %get_op.exit ], [ %i.ar, %bb.q ], [ %i.au, %bb.s ], [ 0, %bb.r ], [ 0, %bb.h ]
  ret i32 %.052
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_qsig_err(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %get_err.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_rose_ctx(ptr noundef nonnull %3) ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.2039, ptr noundef @.str.2040, i32 noundef 12482, ptr noundef @.str.2041) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i32, ptr %i.c, align 8
  %.not50 = icmp eq i32 %i.d, 3
  br i1 %.not50, label %bb.e, label %get_err.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %i.b, i64 84
  %i.f = load i32, ptr %i.e, align 4
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %bb.f, label %get_err.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.b, i64 88
  %i.h = load i32, ptr %i.g, align 8              ; 6 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.l
  %i.i = sext i32 %.06.i to i64
  %i.j = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -16
  %i.l = load i32, ptr %i.k, align 16
  %i.m = icmp eq i32 %i.l, %i.h
  br i1 %i.m, label %get_err.exit.split.loop.exit70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %.06.i, -2                   ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 16
  %i.r = icmp eq i32 %i.q, %i.h
  br i1 %i.r, label %get_err.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.2 = icmp eq i32 %i.n, 0
  br i1 %.not.i.2, label %get_err.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = sext i32 %.06.i to i64
  %i.t = getelementptr [16 x i8], ptr @qsig_err_tab, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -48
  %i.v = load i32, ptr %i.u, align 16
  %i.w = icmp eq i32 %i.v, %i.h
  br i1 %i.w, label %get_err.exit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %.06.i, -4
end_hunk_0
