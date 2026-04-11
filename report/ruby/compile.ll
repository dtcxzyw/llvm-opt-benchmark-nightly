inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@compile_if:bb.a
  %6 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %7 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %i.a = icmp eq i32 %4, 2                        ; 5 uses
  %. = select i1 %i.a, i64 40, i64 48
  %i.b = getelementptr i8, ptr %2, i64 %.
  %8 = load ptr, ptr %i.b, align 8, !tbaa !219    ; 3 uses
  %.pn85 = select i1 %i.a, i64 48, i64 40
  %.in84 = getelementptr i8, ptr %2, i64 %.pn85
  %i.c = load ptr, ptr %.in84, align 8, !tbaa !219 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@compile_if:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.dm, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.do = icmp eq ptr %8, null                    ; 2 uses
  br i1 %i.do, label %bb.q, label %iseq_compile_each.exit

bb.q:                                             ; preds = %.thread154
end_hunk_1
begin_hunk_2_@compile_if:bb.a
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit:                           ; preds = %.thread154
  %i.ea = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %8, i32 noundef %3), !inline_history !174
  %.not88.not = icmp eq i32 %i.ea, 0
  br i1 %.not88.not, label %APPEND_LIST.exit138.thread, label %iseq_compile_each.exit.thread

end_hunk_2
begin_hunk_3_@compile_if:bb.a
  br i1 %.not89, label %bb.y, label %bb.t

bb.t:                                             ; preds = %iseq_compile_each.exit.thread
  %i.ec = select i1 %i.do, ptr %2, ptr %8         ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 8
  %i.ee = getelementptr i8, ptr %i.ec, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !278
end_hunk_3
begin_hunk_4_@compile_call_precheck_freeze:bb.a
  unreachable

get_node_call_nd_mid.exit:                        ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.e
  %.sink.i.a = phi i64 [ 40, %bb.d ], [ 40, %bb.d ], [ 32, %bb.e ], [ 40, %bb.d ], [ 40, %bb.d ]
  %i.m = getelementptr i8, ptr %2, i64 %.sink.i.a
  %.0.i = load i64, ptr %i.m, align 8, !tbaa !36
  %i.n = icmp eq i64 %.0.i, 2801
end_hunk_4
begin_hunk_5_@compile_call_precheck_freeze:bb.a
  unreachable

get_node_call_nd_mid.exit34:                      ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.h
  %.sink.i32 = phi i64 [ 40, %bb.g ], [ 40, %bb.g ], [ 32, %bb.h ], [ 40, %bb.g ], [ 40, %bb.g ]
  %i.p = getelementptr i8, ptr %2, i64 %.sink.i32
  %.0.i33 = load i64, ptr %i.p, align 8, !tbaa !36
  %i.q = icmp eq i64 %.0.i33, 133
end_hunk_5
begin_hunk_6_@compile_call_precheck_freeze:bb.a
  unreachable

get_node_call_nd_mid.exit43:                      ; preds = %get_string_value.exit, %get_string_value.exit, %get_string_value.exit, %get_string_value.exit, %bb.q
  %.sink.i41 = phi i64 [ 40, %get_string_value.exit ], [ 40, %get_string_value.exit ], [ 32, %bb.q ], [ 40, %get_string_value.exit ], [ 40, %get_string_value.exit ]
  %i.au = getelementptr i8, ptr %2, i64 %.sink.i41
  %.0.i42 = load i64, ptr %i.au, align 8, !tbaa !36
  %i.av = icmp eq i64 %.0.i42, 133                ; 2 uses
end_hunk_6
begin_hunk_7_@compile_call:bb.a
  unreachable

get_node_call_nd_mid.exit:                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sink.i = phi i64 [ 40, %bb.a ], [ 40, %bb.a ], [ 32, %bb.b ], [ 40, %bb.a ], [ 40, %bb.a ]
  %i.k = getelementptr i8, ptr %2, i64 %.sink.i
  %.0.i = load i64, ptr %i.k, align 8, !tbaa !36  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
end_hunk_7
begin_hunk_8_@defined_expr0:nd_line.exit
  unreachable

get_node_call_nd_mid.exit:                        ; preds = %nd_line.exit357, %nd_line.exit357, %nd_line.exit357, %nd_line.exit357, %bb.bh
  %.sink.i = phi i64 [ 40, %nd_line.exit357 ], [ 40, %nd_line.exit357 ], [ 32, %bb.bh ], [ 40, %nd_line.exit357 ], [ 40, %nd_line.exit357 ]
  %i.qk = getelementptr i8, ptr %2, i64 %.sink.i
  %.0.i358 = load i64, ptr %i.qk, align 8, !tbaa !36
  %i.ql = tail call i64 @rb_id2sym(i64 noundef %.0.i358) #38
end_hunk_8
begin_hunk_9_@defined_expr0:nd_line.exit
  unreachable

get_node_call_nd_mid.exit372:                     ; preds = %nd_line.exit369, %nd_line.exit369, %nd_line.exit369, %nd_line.exit369, %bb.bl
  %.sink.i370 = phi i64 [ 40, %nd_line.exit369 ], [ 40, %nd_line.exit369 ], [ 32, %bb.bl ], [ 40, %nd_line.exit369 ], [ 40, %nd_line.exit369 ]
  %i.ru = getelementptr i8, ptr %2, i64 %.sink.i370
  %.0.i371 = load i64, ptr %i.ru, align 8, !tbaa !36
  %i.rv = tail call i64 @rb_id2sym(i64 noundef %.0.i371) #38
end_hunk_9
