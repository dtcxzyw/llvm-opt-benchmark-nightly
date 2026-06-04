inline.NumInlined: 247
inline.NumDeleted: 111
begin_hunk_0_@rb_fiber_new_storage:bb.a
  %i.c = tail call i64 @rb_proc_new(ptr noundef %0, i64 noundef %1) #10
  %i.d = tail call fastcc i64 @fiber_initialize(i64 noundef %i.b, i64 noundef %i.c, i32 noundef 0, i64 noundef %2) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @fiber_initialize(i64 noundef returned %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  switch i64 %3, label %bb.c [
    i64 36, label %bb.b
    i64 20, label %bb.b
    i64 4, label %fiber_storage_validate.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.b, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  %i.g = tail call i64 @rb_obj_dup(i64 noundef %i.f) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %3, 0
  %i.i = and i64 %3, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.l = inttoptr i64 %3 to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 8
  br i1 %i.o, label %RB_OBJ_FROZEN.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.37) #26
  unreachable

RB_OBJ_FROZEN.exit.i:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.q = and i64 %i.m, 2048
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %RB_OBJ_FROZEN.exit.thread.i

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i
  %i.r = load i64, ptr @rb_eFrozenError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.38) #26
  unreachable

bb.d:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  tail call void @rb_hash_foreach(i64 noundef %3, ptr noundef nonnull @fiber_storage_validate_each, i64 noundef 36) #10
  br label %fiber_storage_validate.exit

fiber_storage_validate.exit:                      ; preds = %bb.a, %bb.d
  %i.s = tail call i64 @rb_obj_dup(i64 noundef %3) #10
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  br label %bb.e

bb.e:                                             ; preds = %fiber_storage_validate.exit, %bb.b
  %.pre-phi = phi ptr [ %.pre, %fiber_storage_validate.exit ], [ %i.c, %bb.b ]
  %.0 = phi i64 [ %i.s, %fiber_storage_validate.exit ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = load ptr, ptr %.pre-phi, align 8, !tbaa !66
  store volatile ptr %i.t, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i15 = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i15, i64 48
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !67 ; 3 uses
  %i.v = inttoptr i64 %0 to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 32       ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.39) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89
  %.not18.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @rb_eThreadError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.40) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias nonnull dereferenceable(624) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 624) #32 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %0, ptr %i.af, align 8, !tbaa !42
  store i32 1, ptr %i.ae, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 552 ; 2 uses
  %i.ah = trunc nuw nsw i32 %2 to i8
  %i.ai = load i8, ptr %i.ag, align 8
  %i.aj = shl nuw nsw i8 %i.ah, 3
  %i.ak = and i8 %i.ai, -25
  %i.al = or disjoint i8 %i.ak, %i.aj
  store i8 %i.al, ptr %i.ag, align 8
  %.val.i19.i = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(400) %.val.i19.i, i64 400, i1 false), !tbaa.struct !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  store ptr null, ptr %i.an, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %.val.i.i, ptr %i.ao, align 8, !tbaa !102
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  store ptr null, ptr %i.ap, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  store i64 4, ptr %i.aq, align 8, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  store i64 4, ptr %i.ar, align 8, !tbaa !105
  %i.as = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #32 ; 6 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @rb_memerror() #33
  unreachable

bb.k:                                             ; preds = %bb.i
  store ptr %i.am, ptr %i.as, align 8, !tbaa !44
  tail call void @rb_native_mutex_lock(ptr noundef nonnull @jit_cont_lock) #10
  %i.au = load ptr, ptr @first_jit_cont, align 8, !tbaa !43 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %fiber_t_alloc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !106
  br label %fiber_t_alloc.exit

fiber_t_alloc.exit:                               ; preds = %bb.k, %bb.l
  %i.ax = getelementptr i8, ptr %i.as, i64 16
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !61
  store ptr %i.as, ptr @first_jit_cont, align 8, !tbaa !43
  tail call void @rb_native_mutex_unlock(ptr noundef nonnull @jit_cont_lock) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 520
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store ptr %i.ae, ptr %i.az, align 8, !tbaa !108
  %i.ba = getelementptr i8, ptr %.val.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !109
  %i.bc = getelementptr i8, ptr %i.bb, i64 376    ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !110 ; 2 uses
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !120
  tail call void @rb_ec_clear_vm_stack(ptr noundef nonnull %i.am) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 536
  store ptr null, ptr %i.bg, align 8, !tbaa !121
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  store i64 %.0, ptr %i.bh, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 528
  store i64 %1, ptr %i.bi, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 576
  store ptr null, ptr %i.bj, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 608
  store ptr @shared_fiber_pool, ptr %i.bk, align 8, !tbaa !124
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fiber_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_wrap(i64 noundef %0, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10
  ret i64 %i.a
}

declare i64 @rb_proc_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_new(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.b = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.a, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.c = tail call i64 @rb_proc_new(ptr noundef %0, i64 noundef %1) #10
  %i.d = tail call fastcc i64 @fiber_initialize(i64 noundef %i.b, i64 noundef %i.c, i32 noundef 0, i64 noundef 20) ; 0 uses
  ret i64 %i.b
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define hidden void @rb_fiber_start(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %2 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  store volatile ptr %i.f, ptr %i.b, align 8, !tbaa !96
  %i.g = getelementptr i8, ptr %0, i64 552
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0.24 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.j = getelementptr i8, ptr %.0..0..0..0.24, i64 440 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !125
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !125
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.25 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.m = getelementptr i8, ptr %.0..0..0..0.25, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !126
  store i64 36, ptr %2, align 8, !tbaa !128
  %i.p = getelementptr i8, ptr %i.n, i64 24       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !129
  %i.s = getelementptr i8, ptr %i.n, i64 48
  %.0.14.val = load ptr, ptr %i.s, align 8, !tbaa !67 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.14.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %.0.14.val, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.v = getelementptr i8, ptr %.0.14.val, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !109
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i2.i = phi ptr [ %i.u, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.w, %bb.d ], [ null, %bb.c ]
  %i.x = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.x, align 8, !tbaa !131
  %i.y = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.y, label %bb.e, label %rb_ec_vm_lock_rec.exit

bb.e:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.z = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !147
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.e
  %.0.i = phi i32 [ %i.aa, %bb.e ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i, ptr %i.ab, align 4, !tbaa !148
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = tail call ptr @llvm.stacksave.p0()
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ac)
  %.not43 = icmp eq i32 %i.ag, 0
  br i1 %.not43, label %bb.f, label %bb.k, !prof !149

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.p, align 8, !tbaa !89
  %.0..0..0..0.37 = load volatile ptr, ptr %i.a, align 8, !tbaa !95 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ah = getelementptr i8, ptr %.0..0..0..0.37, i64 24 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !150 ; 2 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !65
  %i.aj = getelementptr i8, ptr %.0..0..0..0.37, i64 528
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !122 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !68
  %i.ao = getelementptr i8, ptr %.0..0..0..0.37, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !151 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.g, label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = and i64 %i.as, 8192
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.ar, i64 16
  br label %rb_array_const_ptr.exit

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.ar, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !100
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.i, %bb.h, %bb.f
  %i.ax = phi ptr [ %i.d, %bb.f ], [ %i.au, %bb.h ], [ %i.aw, %bb.i ]
  store i64 4, ptr %i.ah, align 8, !tbaa !150
  %.0..0..0..0.26 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.ay = getelementptr i8, ptr %.0..0..0..0.26, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.ba = getelementptr i8, ptr %i.az, i64 128
  store i64 4, ptr %i.ba, align 8, !tbaa !152
  %i.bb = call ptr @rb_vm_proc_local_ep(i64 noundef %i.ak) #10
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bc = getelementptr i8, ptr %.0..0..0..0.27, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = getelementptr i8, ptr %i.bd, i64 104
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !153
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bf = getelementptr i8, ptr %.0..0..0..0.28, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !70
  %i.bh = getelementptr i8, ptr %i.bg, i64 112
  store i64 0, ptr %i.bh, align 8, !tbaa !154
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bi = getelementptr i8, ptr %.0..0..0..0.29, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = getelementptr i8, ptr %i.bj, i64 48
  %.val = load ptr, ptr %i.bk, align 8, !tbaa !67, !nonnull !155, !noundef !155
  %i.bl = getelementptr i8, ptr %.val, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !109 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !156
  %i.bp = and i32 %i.bo, 4096
  %.not44 = icmp eq i32 %i.bp, 0
  br i1 %.not44, label %.thread47, label %bb.j, !prof !149

bb.j:                                             ; preds = %rb_array_const_ptr.exit
  %i.bq = getelementptr i8, ptr %i.bm, i64 16
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.br = getelementptr i8, ptr %.0..0..0..0.30, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !70 ; 2 uses
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bt = getelementptr i8, ptr %.0..0..0..0.31, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 4096, ptr %1, align 8, !tbaa !158
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !160
  %i.bw = getelementptr i8, ptr %i.bs, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !161
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bu, ptr %i.bz, align 8, !tbaa !162
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  store i64 4, ptr %i.cb, align 8, !tbaa !163
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 36, ptr %i.cc, align 8, !tbaa !164
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.cd, align 8, !tbaa !165
  call void @rb_exec_event_hooks(ptr noundef nonnull %1, ptr noundef %i.bq, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %.thread47

.thread47:                                        ; preds = %rb_array_const_ptr.exit, %bb.j
  %.0..0..0..0.32 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.ce = getelementptr i8, ptr %.0..0..0..0.32, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70
  %i.cg = getelementptr i8, ptr %.0..0..0..0.37, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !166
  %i.ci = call i64 @rb_vm_invoke_proc(ptr noundef %i.cf, ptr noundef %i.an, i32 noundef %i.ap, ptr noundef %i.ax, i32 noundef %i.ch, i64 noundef 0) #10
  store i64 %i.ci, ptr %i.ah, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !129
  store ptr %i.cj, ptr %i.p, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.40.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %bb.n

bb.k:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !66
  %i.ck = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.15) ; 2 uses
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !129
  %.0..0..0..0.17 = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.cm = getelementptr i8, ptr %.0..0..0..0.17, i64 24
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.33 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.cn = getelementptr i8, ptr %.0..0..0..0.33, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !70
  %i.cp = getelementptr i8, ptr %i.co, i64 128
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !152 ; 5 uses
  switch i32 %i.ck, label %.critedge [
    i32 6, label %bb.n
    i32 8, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.cr = icmp eq i64 %i.cq, 5
  br i1 %i.cr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0..0..0..0.34 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  call void @rb_threadptr_pending_interrupt_enque(ptr noundef %.0..0..0..0.34, i64 noundef %i.cq) #10
  br label %bb.n

.critedge:                                        ; preds = %bb.k
  %i.cs = call i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef %i.ck, i64 noundef %i.cq) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %.thread47, %bb.l, %bb.m, %.critedge
  %.0..0..0.40 = phi ptr [ %0, %bb.k ], [ %.0..0..0..0.40.pre, %.thread47 ], [ %0, %bb.m ], [ %0, %.critedge ], [ %0, %bb.l ]
  %.041 = phi i32 [ 1, %bb.k ], [ 1, %.thread47 ], [ 1, %bb.m ], [ 1, %.critedge ], [ 0, %bb.l ]
  %.0 = phi i64 [ %i.cq, %bb.k ], [ 0, %.thread47 ], [ %i.cq, %bb.m ], [ %i.cs, %.critedge ], [ 0, %bb.l ]
  call fastcc void @rb_fiber_terminate(ptr noundef %.0..0..0.40, i32 noundef %.041, i64 noundef %.0) #34
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #10

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !126  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !126
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !148  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !131
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !147
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #10
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

declare ptr @rb_vm_proc_local_ep(i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_invoke_proc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_threadptr_pending_interrupt_enque(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_fiber_terminate(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !167
  store i64 %i.f, ptr %i.d, align 8, !tbaa !65
  %i.g = getelementptr i8, ptr %0, i64 552        ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 3
  store i8 %i.i, ptr %i.g, align 8
  %i.j = getelementptr i8, ptr %0, i64 80
  tail call void @rb_ec_close(ptr noundef %i.j) #10
  %i.k = getelementptr i8, ptr %0, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !168
  %i.l = getelementptr i8, ptr %0, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %fiber_current.exit.i

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.t, align 8, !tbaa !67 ; 2 uses
  %i.u = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.v = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.u, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.w = getelementptr i8, ptr %.val.i.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170  ; 4 uses
  %i.aa = getelementptr i8, ptr %.val.i.i, i64 424
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !171
  %i.ab = inttoptr i64 %i.v to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !68
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !42
  %i.ae = getelementptr i8, ptr %i.z, i64 560
  store ptr null, ptr %i.ae, align 8, !tbaa !172
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !170
  br label %fiber_current.exit.i

fiber_current.exit.i:                             ; preds = %bb.b, %bb.a
  %i.af = phi ptr [ %.pre.i.i, %bb.b ], [ %i.p, %bb.a ]
  %i.ag = getelementptr i8, ptr %i.af, i64 536    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !121 ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %fiber_current.exit.i
  store ptr null, ptr %i.ag, align 8, !tbaa !121
  %i.ai = getelementptr i8, ptr %i.ah, i64 544
  store ptr null, ptr %i.ai, align 8, !tbaa !173
  br label %return_fiber.exit

bb.d:                                             ; preds = %fiber_current.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = load ptr, ptr %i.m, align 8, !tbaa !66
  store volatile ptr %i.aj, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i15.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i15.i, i64 48
  %.val.i16.i = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.al = getelementptr i8, ptr %.val.i16.i, i64 424
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !171
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.011.i = phi ptr [ %i.am, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %i.an = getelementptr i8, ptr %.011.i, i64 544
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173 ; 2 uses
  %.not14.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i, label %return_fiber.exit, label %bb.e, !llvm.loop !174

return_fiber.exit:                                ; preds = %bb.e, %bb.c
  %.0.i = phi ptr [ %i.ah, %bb.c ], [ %.011.i, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %return_fiber.exit
  %i.ap = getelementptr i8, ptr %.0.i, i64 112
  %i.aq = atomicrmw volatile or ptr %i.ap, i32 2 seq_cst, align 4 ; 0 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %return_fiber.exit
  %i.ar = phi i64 [ %.pre, %bb.f ], [ %2, %return_fiber.exit ]
  %i.as = and i64 %i.ar, -5
  %.not7 = icmp eq i64 %i.as, 0                   ; 2 uses
  %. = select i1 %.not7, ptr %i.d, ptr %i.c
  %.9 = select i1 %.not7, i32 1, i32 -1
  %i.at = call fastcc i64 @fiber_switch(ptr noundef nonnull %.0.i, i32 noundef %.9, ptr noundef nonnull %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false) ; 0 uses
  call void @ruby_stop(i32 noundef 0) #26
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_root_fiber_setup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @ruby_mimcalloc(i64 noundef 1, i64 noundef 624) #10 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @rb_errno_ptr() #10
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = tail call ptr @strerror(i32 noundef %i.c) #10
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, ptr noundef %i.d) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !90
  %i.e = getelementptr i8, ptr %i.a, i64 80       ; 2 uses
  %i.f = getelementptr i8, ptr %i.a, i64 120
end_hunk_0
