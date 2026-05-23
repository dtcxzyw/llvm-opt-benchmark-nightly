inline.NumInlined: 1036
inline.NumDeleted: 137
begin_hunk_0_@rb_int_fdiv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.y = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.x, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store double %i.k, ptr %i.aa, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.y) #25
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.b, %bb.f, %bb.e, %bb.d, %rb_integer_type_p.exit
  %.0 = phi i64 [ -9223372036854775806, %bb.e ], [ 4, %rb_integer_type_p.exit ], [ %i.t, %bb.d ], [ %i.y, %bb.f ], [ 4, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_div(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @fix_divide(i64 noundef %0, i64 noundef %1, i64 noundef 47), !inline_history !47
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 6
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 10
  br i1 %i.j, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_big_div(i64 noundef %0, i64 noundef %1) #25
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.k, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 4, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_big_div(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_big_idiv(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @num_div(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = tail call i64 @rb_equal(i64 noundef 1, i64 noundef %1) #25
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_num_zerodiv() #29
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 47, ptr %i.a, align 16, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @num_funcall_op_1, i64 noundef %1, i64 noundef %0, i64 noundef %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pr.i = load i64, ptr @num_div.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.51, i64 noundef 5) #25 ; 3 uses
  store i64 %i.f, ptr @num_div.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !26

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.f, %.lr.ph.i ]
  %i.g = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.e, i64 noundef %.lcssa.i, i32 noundef 0) #25
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @fix_mod(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = trunc i64 %1 to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @rb_num_zerodiv() #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = ashr i64 %0, 1                           ; 2 uses
  %i.g = ashr i64 %1, 1                           ; 4 uses
  %i.h = icmp eq i64 %i.f, -4611686018427387904
  %i.i = icmp eq i64 %i.g, -1
  %or.cond.i.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i, label %rb_fix_mod_fix.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = srem i64 %i.f, %i.g                      ; 5 uses
  %i.k = icmp sgt i64 %i.g, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i64 %i.j, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = add nsw i64 %i.j, %i.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.n, %bb.h ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  %i.o = shl i64 %.0.i.i, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %rb_fix_mod_fix.exit

bb.j:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %1, 0
  %i.r = and i64 %1, 6
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.j
  %i.u = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 31
  switch i64 %i.w, label %RB_FLOAT_TYPE_P.exit.thread23 [
    i64 10, label %bb.k
    i64 4, label %bb.n
  ]

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.x = ashr i64 %0, 1
  %i.y = tail call i64 @rb_int2big(i64 noundef %i.x) #25
  %i.z = tail call i64 @rb_big_modulo(i64 noundef %i.y, i64 noundef %1) #25
  br label %rb_fix_mod_fix.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.j
  %i.aa = and i64 %1, 2
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread23, label %bb.l

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.not.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i, label %.thread29, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg.i.i = ashr i64 %1, 63
  %i.ab = add nsw i64 %.neg.i.i, 2
  %i.ac = and i64 %1, -4
  %i.ad = or i64 %i.ab, %i.ac                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ad, i64 range(i64 1, 0) %i.ad, i64 61)
  %i.af = bitcast i64 %i.ae to double
  br label %rb_float_value_inline.exit

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ag = getelementptr i8, ptr %i.u, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !21
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.m, %bb.n
  %.0.i15 = phi double [ %i.ah, %bb.n ], [ %i.af, %bb.m ] ; 7 uses
  %.in = ashr i64 %0, 1                           ; 2 uses
  %i.ai = sitofp i64 %.in to double               ; 2 uses
  %i.aj = fcmp uno double %.0.i15, 0.000000e+00
  br i1 %i.aj, label %ruby_float_mod.exit, label %bb.o

bb.o:                                             ; preds = %rb_float_value_inline.exit
  %i.ak = fcmp oeq double %.0.i15, 0.000000e+00
  br i1 %i.ak, label %.thread29, label %.thread.i

.thread29:                                        ; preds = %bb.l, %bb.o
  tail call void @rb_num_zerodiv() #29
  unreachable

.thread.i:                                        ; preds = %bb.o
  %i.al = icmp ne i64 %.in, 0
  %i.am = tail call double @llvm.fabs.f64(double %.0.i15) #30
  %i.an = fcmp une double %i.am, +inf
  %or.cond = and i1 %i.al, %i.an
  %i.ao = frem double %i.ai, %.0.i15
  %.0.i10.i = select i1 %or.cond, double %i.ao, double %i.ai ; 2 uses
  %i.ap = fmul double %.0.i15, %.0.i10.i
  %i.aq = fcmp olt double %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, double %.0.i15, double -0.000000e+00
  %.159.i.i = fadd double %.0.i10.i, %i.ar
  br label %ruby_float_mod.exit

ruby_float_mod.exit:                              ; preds = %rb_float_value_inline.exit, %.thread.i
  %.0.i17 = phi double [ %.0.i15, %rb_float_value_inline.exit ], [ %.159.i.i, %.thread.i ] ; 2 uses
  %i.as = bitcast double %.0.i17 to i64           ; 5 uses
  %cond.i = icmp eq i64 %i.as, 3458764513820540928
  br i1 %cond.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %ruby_float_mod.exit
  %i.at = lshr i64 %i.as, 60
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 7
  %i.aw = add nsw i32 %i.av, -5
  %i.ax = icmp ult i32 %i.aw, -2
  br i1 %i.ax, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.as, i64 range(i64 3458764513820540929, 3458764513820540928) %i.as, i64 3)
  %i.az = and i64 %i.ay, -4
  %i.ba = or disjoint i64 %i.az, 2
  br label %rb_fix_mod_fix.exit

bb.r:                                             ; preds = %bb.p
  %i.bb = icmp eq i64 %i.as, 0
  br i1 %i.bb, label %rb_fix_mod_fix.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %ruby_float_mod.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  store volatile ptr %i.bd, ptr %i.c, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.be = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.bf = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.be, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  store double %.0.i17, ptr %i.bh, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bf) #25
  br label %rb_fix_mod_fix.exit

RB_FLOAT_TYPE_P.exit.thread23:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !11
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bk = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bi, i64 noundef 37, i32 noundef 1, i64 noundef %i.bj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %rb_fix_mod_fix.exit

rb_fix_mod_fix.exit:                              ; preds = %bb.s, %bb.r, %bb.q, %bb.i, %bb.d, %RB_FLOAT_TYPE_P.exit.thread23, %bb.k
  %.0 = phi i64 [ %i.bk, %RB_FLOAT_TYPE_P.exit.thread23 ], [ %i.z, %bb.k ], [ 1, %bb.d ], [ %i.p, %bb.i ], [ %i.ba, %bb.q ], [ %i.bf, %bb.s ], [ -9223372036854775806, %bb.r ]
  ret i64 %.0
}

declare i64 @rb_big_modulo(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @num_modulo(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 3585, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8, !tbaa !11
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @num_funcall_op_1, i64 noundef %1, i64 noundef %0, i64 noundef %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.e = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 42, i32 noundef 1, i64 noundef %i.d) #25
  %i.f = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 45, i32 noundef 1, i64 noundef %i.e) #25
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_divmod(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i1
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @rb_num_zerodiv() #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = ashr i64 %0, 1                           ; 3 uses
  %i.j = ashr i64 %1, 1                           ; 5 uses
  %i.k = icmp eq i64 %i.i, -4611686018427387904
  %i.l = icmp eq i64 %i.j, -1
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_fix_divmod_fix.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = sdiv i64 %i.i, %i.j                      ; 3 uses
  %i.o = srem i64 %i.i, %i.j                      ; 5 uses
  %i.p = icmp sgt i64 %i.j, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.r = icmp sgt i64 %i.o, 0
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = add nsw i64 %i.o, %i.j
  %i.t = add nsw i64 %i.n, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.024.i.i = phi i64 [ %i.t, %bb.j ], [ %i.n, %bb.h ], [ %i.n, %bb.i ]
  %.0.i15.i = phi i64 [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.u = shl i64 %.024.i.i, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = shl i64 %.0.i15.i, 1
  %i.x = or disjoint i64 %i.w, 1
  br label %rb_fix_divmod_fix.exit.i

rb_fix_divmod_fix.exit.i:                         ; preds = %bb.k, %bb.f
  %.027.i = phi i64 [ %i.m, %bb.f ], [ %i.v, %bb.k ]
  %.sink.i.i = phi i64 [ 1, %bb.f ], [ %i.x, %bb.k ]
  %i.y = tail call i64 @rb_assoc_new(i64 noundef %.027.i, i64 noundef %.sink.i.i) #25
  br label %fix_divmod.exit

bb.l:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %1, 0
  %i.aa = and i64 %1, 6
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.l
  %i.ad = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = and i64 %i.ae, 31
  switch i64 %i.af, label %RB_FLOAT_TYPE_P.exit.thread31.i [
    i64 10, label %bb.m
    i64 4, label %bb.p
  ]

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ag = ashr i64 %0, 1
  %i.ah = tail call i64 @rb_int2big(i64 noundef %i.ag) #25
  %i.ai = tail call i64 @rb_big_divmod(i64 noundef %i.ah, i64 noundef %1) #25
  br label %fix_divmod.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.l
  %i.aj = and i64 %1, 2
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %RB_FLOAT_TYPE_P.exit.thread31.i, label %bb.n

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i.i.i = icmp eq i64 %1, -9223372036854775806
  br i1 %.not.i.i.i, label %.thread36.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.neg.i.i.i = ashr i64 %1, 63
  %i.ak = add nsw i64 %.neg.i.i.i, 2
  %i.al = and i64 %1, -4
  %i.am = or i64 %i.ak, %i.al                     ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.am, i64 range(i64 1, 0) %i.am, i64 61)
  %i.ao = bitcast i64 %i.an to double
  br label %rb_float_value_inline.exit.i

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ap = getelementptr i8, ptr %i.ad, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !21
  br label %rb_float_value_inline.exit.i

rb_float_value_inline.exit.i:                     ; preds = %bb.p, %bb.o
  %.0.i17.i = phi double [ %i.aq, %bb.p ], [ %i.ao, %bb.o ] ; 9 uses
  %.in.i = ashr i64 %0, 1                         ; 2 uses
  %i.ar = sitofp i64 %.in.i to double             ; 3 uses
  %i.as = fcmp uno double %.0.i17.i, 0.000000e+00
  br i1 %i.as, label %flodivmod.exit.i, label %bb.q

bb.q:                                             ; preds = %rb_float_value_inline.exit.i
  %i.at = fcmp oeq double %.0.i17.i, 0.000000e+00
  br i1 %i.at, label %.thread36.i, label %._crit_edge.i.i

.thread36.i:                                      ; preds = %bb.q, %bb.n
  tail call void @rb_num_zerodiv() #29
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.q
  %i.au = icmp ne i64 %.in.i, 0
  %i.av = tail call double @llvm.fabs.f64(double %.0.i17.i) #30
  %i.aw = fcmp une double %i.av, +inf
  %or.cond.i = and i1 %i.au, %i.aw
  %i.ax = frem double %i.ar, %.0.i17.i
  %.0.i19.i = select i1 %or.cond.i, double %i.ax, double %i.ar ; 3 uses
  %i.ay = fsub double %i.ar, %.0.i19.i
  %i.az = fdiv double %i.ay, %.0.i17.i
  %i.ba = tail call double @llvm.round.f64(double %i.az) ; 2 uses
  %i.bb = fmul double %.0.i17.i, %.0.i19.i
  %i.bc = fcmp olt double %i.bb, 0.000000e+00     ; 2 uses
  %i.bd = select i1 %i.bc, double %.0.i17.i, double -0.000000e+00
  %.163.i.i = fadd double %.0.i19.i, %i.bd
  %i.be = fadd double %i.ba, -1.000000e+00
  %.136.i.i = select i1 %i.bc, double %i.be, double %i.ba
  br label %flodivmod.exit.i

flodivmod.exit.i:                                 ; preds = %._crit_edge.i.i, %rb_float_value_inline.exit.i
  %.026.i = phi double [ %.136.i.i, %._crit_edge.i.i ], [ %.0.i17.i, %rb_float_value_inline.exit.i ] ; 4 uses
  %.025.i = phi double [ %.163.i.i, %._crit_edge.i.i ], [ %.0.i17.i, %rb_float_value_inline.exit.i ] ; 2 uses
  %i.bf = fcmp olt double %.026.i, f0x43D0000000000000
  %i.bg = fcmp oge double %.026.i, f0xC3D0000000000000
  %or.cond.i20.i = and i1 %i.bf, %i.bg
  br i1 %or.cond.i20.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %flodivmod.exit.i
  %i.bh = fptosi double %.026.i to i64
  %i.bi = shl i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %dbl2ival.exit.i

bb.s:                                             ; preds = %flodivmod.exit.i
  %i.bk = tail call i64 @rb_dbl2big(double noundef %.026.i) #25
  br label %dbl2ival.exit.i

dbl2ival.exit.i:                                  ; preds = %bb.s, %bb.r
  %.0.i21.i = phi i64 [ %i.bj, %bb.r ], [ %i.bk, %bb.s ]
  store volatile i64 %.0.i21.i, ptr %i.d, align 8, !tbaa !11
  %i.bl = bitcast double %.025.i to i64           ; 5 uses
  %cond.i.i = icmp eq i64 %i.bl, 3458764513820540928
  br i1 %cond.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %dbl2ival.exit.i
  %i.bm = lshr i64 %i.bl, 60
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 7
  %i.bp = add nsw i32 %i.bo, -5
  %i.bq = icmp ult i32 %i.bp, -2
  br i1 %i.bq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.bl, i64 range(i64 3458764513820540929, 3458764513820540928) %i.bl, i64 3)
  %i.bs = and i64 %i.br, -4
  %i.bt = or disjoint i64 %i.bs, 2
  br label %rb_float_new_inline.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bu = icmp eq i64 %i.bl, 0
  br i1 %i.bu, label %rb_float_new_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %dbl2ival.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18
  store volatile ptr %i.bw, ptr %i.c, align 8, !tbaa !18
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bx = load i64, ptr @rb_cFloat, align 8, !tbaa !11
  %i.by = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.bx, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store double %.025.i, ptr %i.ca, align 8, !tbaa !21
  tail call void @rb_obj_freeze_inline(i64 noundef %i.by) #25
  br label %rb_float_new_inline.exit.i

rb_float_new_inline.exit.i:                       ; preds = %bb.w, %bb.v, %bb.u
  %.0.i22.i = phi i64 [ %i.bt, %bb.u ], [ %i.by, %bb.w ], [ -9223372036854775806, %bb.v ]
  store volatile i64 %.0.i22.i, ptr %i.e, align 8, !tbaa !11
  %.0..0..0..0..0..0.1.i = load volatile i64, ptr %i.d, align 8, !tbaa !11
  %.0..0..0..0..0..0..i = load volatile i64, ptr %i.e, align 8, !tbaa !11
  %i.cb = tail call i64 @rb_assoc_new(i64 noundef %.0..0..0..0..0..0.1.i, i64 noundef %.0..0..0..0..0..0..i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %fix_divmod.exit

RB_FLOAT_TYPE_P.exit.thread31.i:                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  call fastcc void @do_coerce(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !11
  %i.ce = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cc, i64 noundef 3601, i32 noundef 1, i64 noundef %i.cd) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %fix_divmod.exit

bb.x:                                             ; preds = %bb.a
  %i.cf = icmp eq i64 %0, 0
  %i.cg = and i64 %0, 6
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %fix_divmod.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.x
  %i.cj = inttoptr i64 %0 to ptr
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = and i64 %i.ck, 31
  %i.cm = icmp eq i64 %i.cl, 10
  br i1 %i.cm, label %bb.y, label %fix_divmod.exit

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = tail call i64 @rb_big_divmod(i64 noundef %0, i64 noundef %1) #25
  br label %fix_divmod.exit

fix_divmod.exit:                                  ; preds = %bb.x, %RB_FLOAT_TYPE_P.exit.thread31.i, %rb_float_new_inline.exit.i, %bb.m, %rb_fix_divmod_fix.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.y
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.cn, %bb.y ], [ %i.y, %rb_fix_divmod_fix.exit.i ], [ %i.ai, %bb.m ], [ %i.cb, %rb_float_new_inline.exit.i ], [ %i.ce, %RB_FLOAT_TYPE_P.exit.thread31.i ], [ 4, %bb.x ]
  ret i64 %.0
}

declare i64 @rb_big_divmod(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_positive_pow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @int_pow(i64 noundef %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_pow(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = trunc i64 %0 to i1
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %0, 1                           ; 9 uses
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i64 %1, 1                           ; 5 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %fix_pow.exit
    i64 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = shl i64 %1, 1
  %i.h = and i64 %i.g, 4
  %i.i = sub nsw i64 3, %i.h
  br label %fix_pow.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.f, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = sub nsw i64 0, %i.f                      ; 2 uses
  %.not.i13 = icmp eq i64 %i.f, -4611686018427387904
  br i1 %.not.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = shl nuw nsw i64 %i.k, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %fix_uminus.exit

bb.h:                                             ; preds = %bb.f
  %i.n = tail call i64 @rb_int2big(i64 noundef %i.k) #25
  br label %fix_uminus.exit

fix_uminus.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i.i14 = phi i64 [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  %i.o = tail call fastcc i64 @fix_pow_inverted(i64 noundef %0, i64 noundef %.0.i.i14), !inline_history !48
  br label %fix_pow.exit

bb.i:                                             ; preds = %bb.e
  switch i64 %i.f, label %bb.k [
    i64 0, label %fix_pow.exit
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %fix_pow.exit

bb.k:                                             ; preds = %bb.i
  %i.p = icmp eq i64 %i.d, 0
  br i1 %i.p, label %fix_pow.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = tail call fastcc i64 @int_pow(i64 noundef %i.d, i64 noundef %i.f), !inline_history !48
  br label %fix_pow.exit

bb.m:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %1, 0
  %i.s = and i64 %1, 6
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.m
  %i.v = inttoptr i64 %1 to ptr                   ; 2 uses
end_hunk_0
