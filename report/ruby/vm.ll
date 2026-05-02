inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_caller_setup_fwd_args:bb.a
bb.h:                                             ; preds = %rb_array_len.exit, %vm_ci_kwarg.exit
  %.039 = phi i64 [ %i.ai, %rb_array_len.exit ], [ 0, %vm_ci_kwarg.exit ] ; 2 uses
  %.038 = phi i32 [ %i.as, %rb_array_len.exit ], [ %.0.i6165, %vm_ci_kwarg.exit ]
  %7 = icmp ne i32 %4, 0
  %i.at = icmp ne ptr %3, null
  %or.cond = and i1 %i.at, %7
  br i1 %or.cond, label %bb.i, label %bb.j
end_hunk_0
begin_hunk_1_@setup_parameters_complex:bb.a
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %.not409 = icmp ne i32 %5, 0
  %i.nb = and i16 %i.mv, 32
  %.not410 = icmp eq i16 %i.nb, 0
  %or.cond453 = and i1 %.not409, %.not410
  br i1 %or.cond453, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
end_hunk_1
begin_hunk_2_@vm_trace:rb_ec_ractor_ptr.exit
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %.val130.a = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 3 uses
  %.val130.val = load i64, ptr %.val130.a, align 8, !tbaa !11 ; 2 uses
  %18 = trunc i64 %.val130.val to i32
  %19 = lshr i32 %18, 6                           ; 2 uses
  %20 = and i32 %19, 1
  %21 = trunc i32 %19 to i1                       ; 3 uses
  br i1 %21, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.thread
  %i.aj = and i64 %.val130.val, 2
end_hunk_2
begin_hunk_3_@vm_trace:rb_ec_ractor_ptr.exit
  %.2113 = phi i32 [ %i.i, %.thread ], [ %.0111, %bb.k ], [ %i.i, %rb_vm_frame_method_entry.exit ] ; 2 uses
  %.2 = phi ptr [ null, %.thread ], [ %.0109, %bb.k ], [ null, %rb_vm_frame_method_entry.exit ] ; 10 uses
  %i.bu = and i32 %i.ah, %i.w
  %22 = or i32 %20, %i.bu
  %or.cond.not = icmp eq i32 %22, 0
  br i1 %or.cond.not, label %vm_trace_hook.exit163, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr i8, ptr %0, i64 120
end_hunk_3
begin_hunk_4_@vm_trace:rb_ec_ractor_ptr.exit
  %i.bz = getelementptr i8, ptr %.0.i.i, i64 16   ; 8 uses
  %i.ca = and i32 %i.w, 256
  %i.cb = icmp ne i32 %i.ca, 0
  %or.cond3 = and i1 %i.cb, %21
  %i.cc = and i32 %.2113, 8
  %.not120 = icmp ne i32 %i.cc, 0
  %or.cond.not185 = select i1 %or.cond3, i1 %.not120, i1 false
end_hunk_4
begin_hunk_5_@vm_trace:rb_ec_ractor_ptr.exit
vm_trace_hook.exit159:                            ; preds = %bb.bl, %bb.bk, %bb.bj, %vm_trace_hook.exit155.thread, %vm_trace_hook.exit155
  %i.oj = and i32 %i.w, 512
  %i.ok = icmp ne i32 %i.oj, 0
  %or.cond5 = and i1 %i.ok, %21
  %i.ol = and i32 %.2113, 16
  %.not127 = icmp ne i32 %i.ol, 0
  %or.cond128.not = select i1 %or.cond5, i1 %.not127, i1 false
end_hunk_5
