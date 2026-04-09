inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_caller_setup_fwd_args:bb.a
rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i54 = phi i64 [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = trunc i64 %.0.i54 to i32
  %i.ar = add i32 %.0.i6165, %i.aq
  %i.as = add i32 %i.ar, -1
  br label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %vm_ci_kwarg.exit
end_hunk_0
begin_hunk_1_@vm_caller_setup_fwd_args:bb.a
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dh = add i32 %.0.i477074, %i.cc
  %i.di = add i32 %i.dh, 2
  %i.dj = sext i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr [8 x i8], ptr %.0.lcssa.i.i.i, i64 %i.dk
end_hunk_1
begin_hunk_2_@setup_parameters_complex:bb.a

ruby_nonempty_memcpy.exit:                        ; preds = %bb.x, %rbimpl_size_mul_or_raise.exit471, %args_kw_argv_to_hash.exit, %.thread
  %.0653 = phi i32 [ %i.x, %.thread ], [ 2144, %args_kw_argv_to_hash.exit ], [ %i.x, %rbimpl_size_mul_or_raise.exit471 ], [ %i.x, %bb.x ] ; 14 uses
  %i.dg = phi i32 [ %i.ah, %.thread ], [ %i.cy, %args_kw_argv_to_hash.exit ], [ %i.cn, %rbimpl_size_mul_or_raise.exit471 ], [ %i.cn, %bb.x ] ; 14 uses
  %i.dh = and i32 %.0.i468, 65
  %or.cond451.not = icmp eq i32 %i.dh, 65
  br i1 %or.cond451.not, label %bb.z, label %bb.bg
end_hunk_2
begin_hunk_3_@setup_parameters_complex:bb.a
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %4, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11 ; 7 uses
  %i.dn = add i32 %i.dg, -2                       ; 2 uses
  store i32 %i.dn, ptr %i.as, align 8, !tbaa !749
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %4, i64 %i.do
end_hunk_3
begin_hunk_4_@setup_parameters_complex:bb.a

RARRAY_LENINT.exit492:                            ; preds = %rb_array_len.exit.i489
  %i.js = trunc nsw i64 %.0.i.i490 to i32
  %7 = add i32 %i.dg, %i.js
  %i.jt = add i32 %7, -2
  br label %bb.dp

bb.bg:                                            ; preds = %ruby_nonempty_memcpy.exit
end_hunk_4
begin_hunk_5_@vm_call_iseq_setup_tailcall:bb.a
vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.au = shl nsw i64 %i.h, 3
  %i.av = add i64 %i.au, %i.an
  %4 = sub i64 %i.av, %i.e
  %5 = add i64 %4, 8
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.preheader19, label %vector.ph

end_hunk_5
begin_hunk_6_@vm_call_cfunc_only_splat:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = sub i64 %i.c, %.0.i.i2028
  %4 = add i64 %3, -8
  %diff.check = icmp ult i64 %4, 32
  br i1 %diff.check, label %.lr.ph.i.preheader31, label %vector.ph

end_hunk_6
begin_hunk_7_@vm_call_cfunc_only_splat_kw:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = sub i64 %i.c, %.0.i.i1217
  %4 = add i64 %3, -16
  %diff.check = icmp ult i64 %4, 32
  br i1 %diff.check, label %.lr.ph.i.preheader20, label %vector.ph

end_hunk_7
begin_hunk_8_@vm_call_cfunc_array_argv:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.af = shl nuw nsw i64 %i.y, 3
  %i.ag = add i64 %i.af, %.0.i40
  %i.ah = sub i64 %i.c, %i.ag
  %5 = add i64 %i.ah, -8
  %diff.check = icmp ult i64 %5, 32
  br i1 %diff.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
end_hunk_8
begin_hunk_9_@vm_call0_body:bb.a
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %15 = sub i64 %i.p, %i.a
  %16 = add i64 %15, 8
  %diff.check = icmp ult i64 %16, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_9
begin_hunk_10_@vm_memsize:bb.a

vm_memsize_at_exit_list.exit:                     ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph.i ]
  %i.k = getelementptr i8, ptr %i.b, i64 1280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.m = tail call i64 @rb_st_memsize(ptr noundef %i.l) #57
  %i.n = getelementptr i8, ptr %i.b, i64 1272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !923
  %i.p = icmp eq ptr %i.o, null
  %i.q = select i1 %i.p, i64 0, i64 24
  %i.r = getelementptr i8, ptr %i.b, i64 1288
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !438
  %i.t = tail call i64 @rb_id_table_memsize(ptr noundef %i.s) #24
  %i.u = getelementptr i8, ptr %i.b, i64 1296
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !407
  %i.w = tail call i64 @rb_st_memsize(ptr noundef %i.v) #57
  %i.x = getelementptr i8, ptr %i.b, i64 1312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !396
  %i.z = tail call i64 @rb_set_memsize(ptr noundef %i.y) #57
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ab = getelementptr i8, ptr %i.aa, i64 1320   ; 2 uses
end_hunk_10
begin_hunk_11_@vm_memsize:bb.a
  call void @rb_id_table_foreach(ptr noundef %i.ae, ptr noundef nonnull @vm_memsize_constant_cache_i, ptr noundef nonnull %i.a) #24
  %i.af = load i64, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %1 = add i64 %i.c, %i.e
  %2 = add i64 %1, %.0.lcssa.i
  %3 = add i64 %2, %i.m
  %4 = add i64 %3, %i.q
  %5 = add i64 %4, %i.t
  %6 = add i64 %5, %i.w
  %7 = add i64 %6, %i.z
  %8 = add i64 %7, %i.af
  %i.ag = add i64 %8, 9552
  ret i64 %i.ag
}

end_hunk_11
