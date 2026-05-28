inline.NumInlined: 247
inline.NumDeleted: 111
begin_hunk_0_@fiber_initialize:bb.a
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
  %.0.14.val.a = load ptr, ptr %i.s, align 8, !tbaa !67 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.14.val.a, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %3

3:                                                ; preds = %bb.c
  %4 = getelementptr i8, ptr %.0.14.val.a, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = getelementptr i8, ptr %.0.14.val.a, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %3, %bb.c
  %.0.i2.i = phi ptr [ %5, %3 ], [ null, %bb.c ]  ; 2 uses
  %.0.i7.i = phi ptr [ %7, %3 ], [ null, %bb.c ]
  %8 = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %8, align 8, !tbaa !131
  %9 = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %9, label %bb.d, label %rb_ec_vm_lock_rec.exit

bb.d:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.t = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !147
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.d
  %.0.i = phi i32 [ %i.u, %bb.d ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %.0.i, ptr %i.v, align 4, !tbaa !148
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.x, ptr %i.w, align 8
  %i.y = tail call ptr @llvm.stacksave.p0()
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.w)
  %.not43 = icmp eq i32 %i.aa, 0
  br i1 %.not43, label %bb.e, label %bb.j, !prof !149

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %2, ptr %i.p, align 8, !tbaa !89
  %.0..0..0..0.37 = load volatile ptr, ptr %i.a, align 8, !tbaa !95 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.ab = getelementptr i8, ptr %.0..0..0..0.37, i64 24 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !150 ; 2 uses
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !65
  %i.ad = getelementptr i8, ptr %.0..0..0..0.37, i64 528
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = getelementptr i8, ptr %.0..0..0..0.37, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !151 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %rb_array_const_ptr.exit

bb.f:                                             ; preds = %bb.e
  %i.al = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54
  %i.an = and i64 %i.am, 8192
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.al, i64 16
  br label %rb_array_const_ptr.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.al, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.h, %bb.g, %bb.e
  %i.ar = phi ptr [ %i.d, %bb.e ], [ %i.ao, %bb.g ], [ %i.aq, %bb.h ]
  store i64 4, ptr %i.ab, align 8, !tbaa !150
  %.0..0..0..0.26 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.as = getelementptr i8, ptr %.0..0..0..0.26, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !70
  %i.au = getelementptr i8, ptr %i.at, i64 128
  store i64 4, ptr %i.au, align 8, !tbaa !152
  %i.av = call ptr @rb_vm_proc_local_ep(i64 noundef %i.ae) #10
  %.0..0..0..0.27 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.aw = getelementptr i8, ptr %.0..0..0..0.27, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ay = getelementptr i8, ptr %i.ax, i64 104
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !153
  %.0..0..0..0.28 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.az = getelementptr i8, ptr %.0..0..0..0.28, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bb = getelementptr i8, ptr %i.ba, i64 112
  store i64 0, ptr %i.bb, align 8, !tbaa !154
  %.0..0..0..0.29 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bc = getelementptr i8, ptr %.0..0..0..0.29, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %.val = load ptr, ptr %i.be, align 8, !tbaa !67, !nonnull !155, !noundef !155
  %i.bf = getelementptr i8, ptr %.val, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !109 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !156
  %i.bj = and i32 %i.bi, 4096
  %.not44 = icmp eq i32 %i.bj, 0
  br i1 %.not44, label %.thread47, label %bb.i, !prof !149

bb.i:                                             ; preds = %rb_array_const_ptr.exit
  %i.bk = getelementptr i8, ptr %i.bg, i64 16
  %.0..0..0..0.30 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bl = getelementptr i8, ptr %.0..0..0..0.30, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  %.0..0..0..0.31 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.bn = getelementptr i8, ptr %.0..0..0..0.31, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 4096, ptr %1, align 8, !tbaa !158
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !160
  %i.bq = getelementptr i8, ptr %i.bm, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !161
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bo, ptr %i.bt, align 8, !tbaa !162
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  store i64 4, ptr %i.bv, align 8, !tbaa !163
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 36, ptr %i.bw, align 8, !tbaa !164
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %i.bx, align 8, !tbaa !165
  call void @rb_exec_event_hooks(ptr noundef nonnull %1, ptr noundef %i.bk, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %.thread47

.thread47:                                        ; preds = %rb_array_const_ptr.exit, %bb.i
  %.0..0..0..0.32 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.by = getelementptr i8, ptr %.0..0..0..0.32, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !70
  %i.ca = getelementptr i8, ptr %.0..0..0..0.37, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !166
  %i.cc = call i64 @rb_vm_invoke_proc(ptr noundef %i.bz, ptr noundef %i.ah, i32 noundef %i.aj, ptr noundef %i.ar, i32 noundef %i.cb, i64 noundef 0) #10
  store i64 %i.cc, ptr %i.ab, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !129
  store ptr %i.cd, ptr %i.p, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.40.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %bb.m

bb.j:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !66
  %i.ce = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.15) ; 2 uses
  %i.cf = load ptr, ptr %i.r, align 8, !tbaa !129
  %.0..0..0..0.17 = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.cg = getelementptr i8, ptr %.0..0..0..0.17, i64 24
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.33 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  %i.ch = getelementptr i8, ptr %.0..0..0..0.33, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !70
  %i.cj = getelementptr i8, ptr %i.ci, i64 128
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !152 ; 5 uses
  switch i32 %i.ce, label %.critedge [
    i32 6, label %bb.m
    i32 8, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.ck, 5
  br i1 %i.cl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.34 = load volatile ptr, ptr %i.b, align 8, !tbaa !96
  call void @rb_threadptr_pending_interrupt_enque(ptr noundef %.0..0..0..0.34, i64 noundef %i.ck) #10
  br label %bb.m

.critedge:                                        ; preds = %bb.j
  %i.cm = call i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef %i.ce, i64 noundef %i.ck) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.thread47, %bb.k, %bb.l, %.critedge
  %.0..0..0.40 = phi ptr [ %0, %bb.j ], [ %.0..0..0..0.40.pre, %.thread47 ], [ %0, %bb.l ], [ %0, %.critedge ], [ %0, %bb.k ]
  %.041 = phi i32 [ 1, %bb.j ], [ 1, %.thread47 ], [ 1, %bb.l ], [ 1, %.critedge ], [ 0, %bb.k ]
  %.0 = phi i64 [ %i.ck, %bb.j ], [ 0, %.thread47 ], [ %i.ck, %bb.l ], [ %i.cm, %.critedge ], [ 0, %bb.k ]
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
  %.val.i.a = load ptr, ptr %i.g, align 8, !tbaa !67 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i.a, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %1

1:                                                ; preds = %bb.a
  %2 = getelementptr i8, ptr %.val.i.a, i64 32
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = getelementptr i8, ptr %.val.i.a, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %1, %bb.a
  %.0.i2.i.i = phi ptr [ %3, %1 ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %5, %1 ], [ null, %bb.a ]
  %6 = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %6, align 8, !tbaa !131
  %7 = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %7, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.h = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !147
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #10
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
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
  store ptr %i.a, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %i.h, i64 376      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !110
  %i.l = getelementptr i8, ptr %i.a, i64 136
  store i64 %i.j, ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr i8, ptr %i.a, i64 128
  store ptr %0, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr i8, ptr %i.a, i64 552      ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, -28
  %i.q = or disjoint i8 %i.p, 9
  store i8 %i.q, ptr %i.n, align 8
  %i.r = getelementptr i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.r, align 8, !tbaa !70
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #32 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @rb_memerror() #33
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.s, align 8, !tbaa !44
  tail call void @rb_native_mutex_lock(ptr noundef nonnull @jit_cont_lock) #10
  %i.u = load ptr, ptr @first_jit_cont, align 8, !tbaa !43 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %cont_init_jit_cont.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.w, align 8, !tbaa !106
  br label %cont_init_jit_cont.exit

cont_init_jit_cont.exit:                          ; preds = %bb.e, %bb.f
  %i.x = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !61
  store ptr %i.s, ptr @first_jit_cont, align 8, !tbaa !43
  tail call void @rb_native_mutex_unlock(ptr noundef nonnull @jit_cont_lock) #10
  %i.y = getelementptr i8, ptr %i.a, i64 520
  store ptr %i.s, ptr %i.y, align 8, !tbaa !107
  ret void
}

declare noalias ptr @ruby_mimcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

declare ptr @rb_errno_ptr() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_root_fiber_release(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not7 = icmp eq ptr %.0..0..0..0..0..0..i, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = icmp eq ptr %i.g, %.0..0..0..0..0..0..i
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  tail call void @rb_current_ec_set(ptr noundef null) #10
  %i.k = getelementptr i8, ptr %i.j, i64 312
  store ptr null, ptr %i.k, align 8, !tbaa !175
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %fiber_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_id_table_free(ptr noundef nonnull %i.q) #10
  br label %fiber_free.exit

fiber_free.exit:                                  ; preds = %bb.e, %bb.f
  tail call void @cont_free(ptr noundef nonnull %i.o)
  store ptr null, ptr %i.l, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %fiber_free.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @fiber_free(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_id_table_free(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @cont_free(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_threadptr_root_fiber_terminate(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.e = getelementptr i8, ptr %i.d, i64 552      ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 3
  store i8 %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !70
  tail call void @rb_ec_clear_vm_stack(ptr noundef %i.h) #10
  ret void
}

declare void @rb_ec_clear_vm_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_current() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !171
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr i8, ptr %.pre.i, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %.pre, %bb.b ], [ %i.g, %bb.a ]
  ret i64 %i.u
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_transfer(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %.1.i.i, i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false)
  ret i64 %i.v
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @fiber_switch(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #11 {
bb.a:
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.h, ptr %i.e, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.e, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 7 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 424   ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %.val.i, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !70
  %.phi.trans.insert83 = getelementptr i8, ptr %.pre, i64 40
  %.pre84 = load ptr, ptr %.phi.trans.insert83, align 8, !tbaa !170
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.n = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.m, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170  ; 5 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !171
  %i.s = inttoptr i64 %i.n to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 32
  store ptr %i.r, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store i64 %i.n, ptr %i.u, align 8, !tbaa !42
  %i.v = getelementptr i8, ptr %i.r, i64 560
  store ptr null, ptr %i.v, align 8, !tbaa !172
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.w = phi ptr [ %.pre84, %._crit_edge ], [ %i.r, %bb.b ]
  %i.x = getelementptr i8, ptr %.val.i, i64 48    ; 6 uses
  %i.y = icmp eq ptr %i.w, %0
  br i1 %i.y, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i32 %1, label %bb.g [
    i32 -1, label %bb.e
    i32 0, label %make_passing_arg.exit
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %2, align 8, !tbaa !65
  br label %make_passing_arg.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %2, align 8, !tbaa !65
  br label %make_passing_arg.exit

bb.g:                                             ; preds = %bb.d
  %i.ab = sext i32 %1 to i64
  %i.ac = tail call i64 @rb_ary_new_from_values(i64 noundef %i.ab, ptr noundef %2) #10
  br label %make_passing_arg.exit

bb.h:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.ae = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.ae, align 8, !tbaa !157
  %i.af = getelementptr i8, ptr %.val.i, i64 16   ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !157
  %.not = icmp eq i64 %.val.val, %i.ag
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.41) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %0, i64 552       ; 7 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 3
  %i.al = icmp eq i8 %i.ak, 3
  br i1 %i.al, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.am = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  %i.an = tail call i64 @rb_exc_new(i64 noundef %i.am, ptr noundef nonnull @.str.42, i64 noundef 17) #10 ; 2 uses
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !170 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 552
  %i.as = load i8, ptr %i.ar, align 8
  %i.at = and i8 %i.as, 3
  %i.au = icmp eq i8 %i.at, 3
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @rb_exc_raise(i64 noundef %i.an) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !171 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store i32 -1, ptr %i.aw, align 4, !tbaa !151
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !150
  tail call fastcc void @fiber_setcontext(ptr noundef %i.av, ptr noundef nonnull %i.aq)
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.ay, ptr %i.d, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i62 = load volatile ptr, ptr %i.d, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i62, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !42
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %fiber_current.exit

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i62, i64 48
  %.val.i63 = load ptr, ptr %i.be, align 8, !tbaa !67 ; 2 uses
  %i.bf = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.bg = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.bf, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.bh = getelementptr i8, ptr %.val.i63, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70
  %i.bj = getelementptr i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !170 ; 4 uses
  %i.bl = getelementptr i8, ptr %.val.i63, i64 424
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !171
  %i.bm = inttoptr i64 %i.bg to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !68
  %i.bo = getelementptr i8, ptr %i.bk, i64 16
  store i64 %i.bg, ptr %i.bo, align 8, !tbaa !42
  %i.bp = getelementptr i8, ptr %i.bk, i64 560
  store ptr null, ptr %i.bp, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.az, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.n, %bb.o
  %i.bq = phi ptr [ %.pre.i, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  %.not56 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not56, label %bb.r, label %bb.p

bb.p:                                             ; preds = %fiber_current.exit
  %i.br = getelementptr i8, ptr %i.bq, i64 544
  store ptr %4, ptr %i.br, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.bs, ptr %i.c, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i64 = load volatile ptr, ptr %i.c, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bt = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i64, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !170 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.q, label %fiber_current.exit67

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i64, i64 48
  %.val.i65 = load ptr, ptr %i.by, align 8, !tbaa !67 ; 2 uses
  %i.bz = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.ca = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.bz, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.cb = getelementptr i8, ptr %.val.i65, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !70
  %i.cd = getelementptr i8, ptr %i.cc, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !170 ; 4 uses
  %i.cf = getelementptr i8, ptr %.val.i65, i64 424
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !171
  %i.cg = inttoptr i64 %i.ca to ptr
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !68
  %i.ci = getelementptr i8, ptr %i.ce, i64 16
  store i64 %i.ca, ptr %i.ci, align 8, !tbaa !42
  %i.cj = getelementptr i8, ptr %i.ce, i64 560
  store ptr null, ptr %i.cj, align 8, !tbaa !172
  %.pre.i66 = load ptr, ptr %i.bt, align 8, !tbaa !170
  br label %fiber_current.exit67

fiber_current.exit67:                             ; preds = %bb.p, %bb.q
  %i.ck = phi ptr [ %.pre.i66, %bb.q ], [ %i.bu, %bb.p ]
  %i.cl = getelementptr i8, ptr %0, i64 536
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !121
  %i.cm = load i8, ptr %i.ai, align 8
  %i.cn = and i8 %i.cm, -5
  store i8 %i.cn, ptr %i.ai, align 8
  br label %bb.r

bb.r:                                             ; preds = %fiber_current.exit67, %fiber_current.exit
  %i.co = getelementptr i8, ptr %i.bq, i64 552    ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8             ; 2 uses
  br i1 %5, label %bb.s, label %._crit_edge85

bb.s:                                             ; preds = %bb.r
  %i.cq = or i8 %i.cp, 4                          ; 2 uses
  store i8 %i.cq, ptr %i.co, align 8
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %bb.r, %bb.s
  %i.cr = phi i8 [ %i.cq, %bb.s ], [ %i.cp, %bb.r ]
  %i.cs = and i8 %i.cr, 8
  %.not57 = icmp eq i8 %i.cs, 0
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge85
  %i.ct = getelementptr i8, ptr %.val.i, i64 440  ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !125
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !125
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge85
  %i.cw = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.cw, align 4, !tbaa !151
  %i.cx = getelementptr i8, ptr %0, i64 8
  store i32 %3, ptr %i.cx, align 8, !tbaa !166
  switch i32 %1, label %bb.x [
    i32 -1, label %bb.v
    i32 0, label %make_passing_arg.exit69
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.cy = load i64, ptr %2, align 8, !tbaa !65
  br label %make_passing_arg.exit69

bb.w:                                             ; preds = %bb.u
  %i.cz = load i64, ptr %2, align 8, !tbaa !65
  br label %make_passing_arg.exit69

bb.x:                                             ; preds = %bb.u
  %i.da = sext i32 %1 to i64
  %i.db = tail call i64 @rb_ary_new_from_values(i64 noundef %i.da, ptr noundef %2) #10
  br label %make_passing_arg.exit69

make_passing_arg.exit69:                          ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i68 = phi i64 [ %i.db, %bb.x ], [ %i.cy, %bb.v ], [ %i.cz, %bb.w ], [ 4, %bb.u ]
  %i.dc = getelementptr i8, ptr %0, i64 24
  store i64 %.0.i68, ptr %i.dc, align 8, !tbaa !150
  %i.dd = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.de = getelementptr i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !170 ; 2 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %make_passing_arg.exit69
  %i.dg = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.dh = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.dg, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10, !inline_history !188 ; 2 uses
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.dj = getelementptr i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !170 ; 5 uses
  store ptr %i.dk, ptr %i.j, align 8, !tbaa !171
  %i.dl = inttoptr i64 %i.dh to ptr
  %i.dm = getelementptr i8, ptr %i.dl, i64 32
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !68
  %i.dn = getelementptr i8, ptr %i.dk, i64 16
  store i64 %i.dh, ptr %i.dn, align 8, !tbaa !42
  %i.do = getelementptr i8, ptr %i.dk, i64 560
  store ptr null, ptr %i.do, align 8, !tbaa !172
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %make_passing_arg.exit69
  %.0.i70 = phi ptr [ %i.dk, %bb.y ], [ %i.df, %make_passing_arg.exit69 ] ; 2 uses
  %i.dp = load i8, ptr %i.ai, align 8
  %i.dq = and i8 %i.dp, 3
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr i8, ptr %0, i64 576
  %i.dt = getelementptr i8, ptr %0, i64 608
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !124 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10, !noalias !189
  %i.dv = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192, !noalias !189
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %rb_vm_lock_enter.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #10, !noalias !189, !inline_history !193
  br label %rb_vm_lock_enter.exit.i.i.i.i

rb_vm_lock_enter.exit.i.i.i.i:                    ; preds = %bb.ab, %bb.aa
  %i.dw = getelementptr i8, ptr %i.du, i64 8      ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !194, !noalias !189 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %fiber_pool_vacancy_pop.exit17.i.i.i.i

bb.ac:                                            ; preds = %rb_vm_lock_enter.exit.i.i.i.i
  %i.dy = getelementptr i8, ptr %i.du, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !195, !noalias !189
  %i.ea = getelementptr i8, ptr %i.du, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !196, !noalias !189
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 1024)
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %spec.store.select.i.i.i.i, i64 %i.dz)
  call fastcc void @fiber_pool_expand(ptr noundef nonnull %i.du, i64 noundef %spec.select.i.i.i.i)
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !194, !noalias !189, !nonnull !155, !noundef !155
  br label %fiber_pool_vacancy_pop.exit17.i.i.i.i

fiber_pool_vacancy_pop.exit17.i.i.i.i:            ; preds = %bb.ac, %rb_vm_lock_enter.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ec, %bb.ac ], [ %i.dx, %rb_vm_lock_enter.exit.i.i.i.i ] ; 6 uses
  %storemerge.in.i.i.i.i = getelementptr i8, ptr %.013.i.i.i.i, i64 48
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !197, !noalias !189
  store ptr %storemerge.i.i.i.i, ptr %i.dw, align 8, !tbaa !194, !noalias !189
  %i.ed = getelementptr i8, ptr %i.du, i64 48     ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !199, !noalias !189
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !199, !noalias !189
  %i.eg = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !200, !noalias !189
  %i.eh = getelementptr i8, ptr %.013.i.i.i.i, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !201, !noalias !189 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr i8, ptr %.013.i.i.i.i, i64 8
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !202, !noalias !189
  %i.el = getelementptr i8, ptr %.013.i.i.i.i, i64 24
  store i64 %i.ei, ptr %i.el, align 8, !tbaa !203, !noalias !189
  %i.em = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192, !noalias !189
  %.not.i.i18.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i18.i.i.i.i, label %bb.ad, label %fiber_pool_stack_acquire.exit.i.i.i

bb.ad:                                            ; preds = %fiber_pool_vacancy_pop.exit17.i.i.i.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #10, !noalias !189, !inline_history !193
  br label %fiber_pool_stack_acquire.exit.i.i.i

fiber_pool_stack_acquire.exit.i.i.i:              ; preds = %bb.ad, %fiber_pool_vacancy_pop.exit17.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10, !noalias !189
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, ptr noundef nonnull align 8 dereferenceable(48) %.013.i.i.i.i, i64 48, i1 false)
  %i.en = getelementptr i8, ptr %i.du, i64 56
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !204 ; 3 uses
  %i.ep = getelementptr i8, ptr %0, i64 584       ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !202
  %i.er = sub i64 0, %i.eo
  %i.es = getelementptr i8, ptr %i.eq, i64 %i.er  ; 4 uses
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !202
  %i.et = getelementptr i8, ptr %0, i64 600       ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !203
  %i.ev = sub i64 %i.eu, %i.eo                    ; 3 uses
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !203
  %i.ew = sub i64 0, %i.ev
  %i.ex = getelementptr i8, ptr %i.es, i64 %i.ew
  %i.ey = icmp ne ptr %i.ex, null
  %i.ez = icmp ugt i64 %i.ev, 1023
  %or.cond3.i.i.i.i = and i1 %i.ez, %i.ey
  br i1 %or.cond3.i.i.i.i, label %fiber_prepare_stack.exit.i, label %bb.ae

bb.ae:                                            ; preds = %fiber_pool_stack_acquire.exit.i.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 59, ptr noundef nonnull @__PRETTY_FUNCTION__.coroutine_initialize) #26, !inline_history !205
  unreachable

fiber_prepare_stack.exit.i:                       ; preds = %fiber_pool_stack_acquire.exit.i.i.i
  %i.fa = getelementptr i8, ptr %0, i64 80
  %i.fb = getelementptr i8, ptr %0, i64 560       ; 5 uses
  %i.fc = ptrtoint ptr %i.es to i64
  %i.fd = and i64 %i.fc, -16
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8     ; 2 uses
  store ptr %i.ff, ptr %i.fb, align 8, !tbaa !172
  store ptr null, ptr %i.ff, align 8, !tbaa !206
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !172
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8     ; 2 uses
  store ptr %i.fh, ptr %i.fb, align 8, !tbaa !172
  store ptr @fiber_entry, ptr %i.fh, align 8, !tbaa !206
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !172
  %i.fj = getelementptr i8, ptr %i.fi, i64 -48    ; 2 uses
  store ptr %i.fj, ptr %i.fb, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.fj, i8 noundef 0, i64 noundef 48, i1 noundef false) #10
  %i.fk = load ptr, ptr %i.ep, align 8, !tbaa !207
  %i.fl = getelementptr i8, ptr %0, i64 256
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !208
  %i.fm = load i64, ptr %i.et, align 8, !tbaa !209
  %i.fn = getelementptr i8, ptr %0, i64 272
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !210
  %i.fo = getelementptr i8, ptr %0, i64 568
  store ptr %0, ptr %i.fo, align 8, !tbaa !211
  %i.fp = getelementptr i8, ptr %0, i64 32
  store ptr null, ptr %i.fp, align 8, !tbaa !212
  %i.fq = lshr i64 %i.eo, 3
  call void @rb_ec_initialize_vm_stack(ptr noundef %i.fa, ptr noundef %i.es, i64 noundef %i.fq) #10, !inline_history !213
  %i.fr = getelementptr i8, ptr %0, i64 104
  store ptr null, ptr %i.fr, align 8, !tbaa !89
  %i.fs = getelementptr i8, ptr %0, i64 152
  store ptr null, ptr %i.fs, align 8, !tbaa !214
  %i.ft = getelementptr i8, ptr %0, i64 160
  store i64 4, ptr %i.ft, align 8, !tbaa !215
  %i.fu = getelementptr i8, ptr %0, i64 168
  store i64 4, ptr %i.fu, align 8, !tbaa !216
  br label %bb.af

bb.af:                                            ; preds = %fiber_prepare_stack.exit.i, %bb.z
  %i.fv = getelementptr i8, ptr %.0.i70, i64 552  ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 8             ; 2 uses
  %i.fx = and i8 %i.fw, 3
  %i.fy = icmp eq i8 %i.fx, 1
  br i1 %i.fy, label %bb.ag, label %fiber_store.exit

bb.ag:                                            ; preds = %bb.af
  %i.fz = and i8 %i.fw, -4
  %i.ga = or disjoint i8 %i.fz, 2
  store i8 %i.ga, ptr %i.fv, align 8
  br label %fiber_store.exit

fiber_store.exit:                                 ; preds = %bb.af, %bb.ag
  %i.gb = load i8, ptr %i.ai, align 8
  %i.gc = and i8 %i.gb, -4
  %i.gd = or disjoint i8 %i.gc, 1
  store i8 %i.gd, ptr %i.ai, align 8
  call fastcc void @fiber_setcontext(ptr noundef nonnull %0, ptr noundef nonnull %.0.i70), !inline_history !188
  br i1 %.not56, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %fiber_store.exit
  %i.ge = load i8, ptr %i.ai, align 8
  %i.gf = and i8 %i.ge, 3
  %i.gg = icmp eq i8 %i.gf, 3
  br i1 %i.gg, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.gh = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192
  %.not.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i, label %bb.aj, label %rb_vm_lock_enter.exit

bb.aj:                                            ; preds = %bb.ai
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #10
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.ai, %bb.aj
  %i.gi = getelementptr i8, ptr %0, i64 576       ; 3 uses
  %i.gj = getelementptr i8, ptr %0, i64 80
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !123 ; 2 uses
  %.not.i71 = icmp eq ptr %i.gk, null
  br i1 %.not.i71, label %fiber_stack_release.exit, label %bb.ak

bb.ak:                                            ; preds = %rb_vm_lock_enter.exit
  %i.gl = getelementptr i8, ptr %0, i64 592
  %i.gm = getelementptr i8, ptr %0, i64 608       ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !217 ; 2 uses
  %i.go = load i64, ptr %i.gl, align 8, !tbaa !201
  %i.gp = load i64, ptr @pagesize, align 8, !tbaa !65 ; 3 uses
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr i8, ptr %i.gk, i64 %i.gq  ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.gi, i64 48, i1 false), !tbaa.struct !218
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !200
  %i.gt = getelementptr i8, ptr %i.gr, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !201 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gs, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gr, i64 8
  %i.gx = getelementptr i8, ptr %i.gr, i64 24
  %i.gy = sub i64 0, %i.gp
  %i.gz = getelementptr i8, ptr %i.gv, i64 %i.gy  ; 2 uses
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !202
  %i.ha = sub i64 %i.gu, %i.gp                    ; 3 uses
  store i64 %i.ha, ptr %i.gx, align 8, !tbaa !203
  %i.hb = getelementptr i8, ptr %i.gn, i64 8      ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !194
  %i.hd = getelementptr i8, ptr %i.gr, i64 48
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !197
  store ptr %i.gr, ptr %i.hb, align 8, !tbaa !194
  %i.he = getelementptr i8, ptr %i.gn, i64 48     ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !199
  %i.hg = add i64 %i.hf, -1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !199
  %i.hh = load ptr, ptr %i.gm, align 8, !tbaa !217
  %i.hi = getelementptr i8, ptr %i.hh, i64 40
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !221
  %.not.i.i72 = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i72, label %fiber_pool_stack_release.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hk = sub i64 0, %i.ha
  %i.hl = getelementptr i8, ptr %i.gz, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.gr, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !217
  %i.ho = getelementptr i8, ptr %i.hn, i64 40
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !221
  %i.hq = ashr i32 %i.hp, 1                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.hq, 0
  %spec.store.select.i.i.i = select i1 %.not.i.i.i, i32 8, i32 %i.hq
  %i.hr = call i32 @madvise(ptr noundef %i.hl, i64 noundef %i.ha, i32 noundef %spec.store.select.i.i.i) #10 ; 0 uses
  br label %fiber_pool_stack_release.exit.i

fiber_pool_stack_release.exit.i:                  ; preds = %bb.al, %bb.ak
  store ptr null, ptr %i.gi, align 8, !tbaa !123
  br label %fiber_stack_release.exit

fiber_stack_release.exit:                         ; preds = %rb_vm_lock_enter.exit, %fiber_pool_stack_release.exit.i
  call void @rb_ec_clear_vm_stack(ptr noundef %i.gj) #10
  %i.hs = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192
  %.not.i.i73 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i73, label %bb.am, label %rb_vm_lock_leave.exit

bb.am:                                            ; preds = %fiber_stack_release.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.f) #10
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %fiber_stack_release.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  br label %bb.an

bb.an:                                            ; preds = %rb_vm_lock_leave.exit, %bb.ah, %fiber_store.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.ht, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i74 = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hu = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i74, i64 40 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !170 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !42
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %bb.ao, label %fiber_current.exit77

bb.ao:                                            ; preds = %bb.an
  %i.hz = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i74, i64 48
  %.val.i75 = load ptr, ptr %i.hz, align 8, !tbaa !67 ; 2 uses
  %i.ia = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.ib = call i64 @rb_data_typed_object_wrap(i64 noundef %i.ia, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.ic = getelementptr i8, ptr %.val.i75, i64 48
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !70
  %i.ie = getelementptr i8, ptr %i.id, i64 40
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !170 ; 4 uses
  %i.ig = getelementptr i8, ptr %.val.i75, i64 424
  store ptr %i.if, ptr %i.ig, align 8, !tbaa !171
  %i.ih = inttoptr i64 %i.ib to ptr
  %i.ii = getelementptr i8, ptr %i.ih, i64 32
  store ptr %i.if, ptr %i.ii, align 8, !tbaa !68
  %i.ij = getelementptr i8, ptr %i.if, i64 16
  store i64 %i.ib, ptr %i.ij, align 8, !tbaa !42
  %i.ik = getelementptr i8, ptr %i.if, i64 560
  store ptr null, ptr %i.ik, align 8, !tbaa !172
  %.pre.i76 = load ptr, ptr %i.hu, align 8, !tbaa !170
  br label %fiber_current.exit77

fiber_current.exit77:                             ; preds = %bb.an, %bb.ao
  %i.il = phi ptr [ %.pre.i76, %bb.ao ], [ %i.hv, %bb.an ]
  %i.im = getelementptr i8, ptr %i.il, i64 552
  %i.in = load i8, ptr %i.im, align 8
  %i.io = and i8 %i.in, 8
  %.not59 = icmp eq i8 %i.io, 0
  br i1 %.not59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %fiber_current.exit77
  %i.ip = getelementptr i8, ptr %.val.i, i64 440  ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !125
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !125
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %fiber_current.exit77
  %i.is = load ptr, ptr %i.x, align 8, !tbaa !70  ; 4 uses
  %i.it = getelementptr i8, ptr %i.is, i64 32
  %i.iu = load atomic volatile i32, ptr %i.it monotonic, align 4
  %i.iv = getelementptr i8, ptr %i.is, i64 36
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !222
  %i.ix = xor i32 %i.iw, -1
  %i.iy = and i32 %i.iu, %i.ix
  %.not.i78 = icmp eq i32 %i.iy, 0
  br i1 %.not.i78, label %rb_vm_check_ints.exit, label %bb.ar, !prof !149

bb.ar:                                            ; preds = %bb.aq
  %i.iz = getelementptr i8, ptr %i.is, i64 48
  %.val.i79 = load ptr, ptr %i.iz, align 8, !tbaa !67
  %i.ja = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i79, i32 noundef 0) #10 ; 0 uses
  %.pre88 = load ptr, ptr %i.x, align 8, !tbaa !70
  br label %rb_vm_check_ints.exit

rb_vm_check_ints.exit:                            ; preds = %bb.aq, %bb.ar
  %i.jb = phi ptr [ %i.is, %bb.aq ], [ %.pre88, %bb.ar ] ; 4 uses
  %i.jc = getelementptr i8, ptr %i.jb, i64 48
  %.val61 = load ptr, ptr %i.jc, align 8, !tbaa !67, !nonnull !155, !noundef !155
  %i.jd = getelementptr i8, ptr %.val61, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !109 ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 24
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !156
  %i.jh = and i32 %i.jg, 4096
  %.not60 = icmp eq i32 %i.jh, 0
  br i1 %.not60, label %bb.at, label %bb.as, !prof !149

bb.as:                                            ; preds = %rb_vm_check_ints.exit
  %i.ji = getelementptr i8, ptr %i.je, i64 16
  %i.jj = load i64, ptr %i.af, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store i32 4096, ptr %6, align 8, !tbaa !158
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.jb, ptr %i.jk, align 8, !tbaa !160
  %i.jl = getelementptr i8, ptr %i.jb, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !48
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !161
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.jj, ptr %i.jo, align 8, !tbaa !162
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i8 0, i64 24, i1 false)
  store i64 4, ptr %i.jq, align 8, !tbaa !163
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.jr, align 8, !tbaa !164
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.js, align 8, !tbaa !165
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.ji, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.pre89 = load ptr, ptr %i.x, align 8, !tbaa !70
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %rb_vm_check_ints.exit
  %i.jt = phi ptr [ %.pre89, %bb.as ], [ %i.jb, %rb_vm_check_ints.exit ]
  %i.ju = getelementptr i8, ptr %i.jt, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !170 ; 4 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !167 ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jv, i64 552
  %i.jz = load i8, ptr %i.jy, align 8
  %i.ka = and i8 %i.jz, 16
  %.not.i81 = icmp eq i8 %i.ka, 0
  br i1 %.not.i81, label %fiber_check_killed.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kb = getelementptr i8, ptr %i.jv, i64 128
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !22
  %i.kd = getelementptr i8, ptr %i.kc, i64 48
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !70 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 128
  store i64 5, ptr %i.kf, align 8, !tbaa !152
  %i.kg = getelementptr i8, ptr %i.ke, i64 24
  %.val.i82 = load ptr, ptr %i.kg, align 8, !tbaa !89 ; 2 uses
  %i.kh = getelementptr i8, ptr %.val.i82, i64 64
  store i32 8, ptr %i.kh, align 8, !tbaa !126
  %i.ki = getelementptr i8, ptr %.val.i82, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ki)
  unreachable

fiber_check_killed.exit:                          ; preds = %bb.at
  %i.kj = getelementptr i8, ptr %i.jv, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !223
  %i.kl = icmp eq i32 %i.kk, -1
  br i1 %i.kl, label %bb.av, label %make_passing_arg.exit

bb.av:                                            ; preds = %fiber_check_killed.exit
  call void @rb_exc_raise(i64 noundef %i.jx) #26
  unreachable

make_passing_arg.exit:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %fiber_check_killed.exit
  %.0 = phi i64 [ %i.jx, %fiber_check_killed.exit ], [ %i.ac, %bb.g ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ], [ 4, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_fiber_blocking_p(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 552
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, 8
  %.not = icmp eq i8 %i.x, 0
  %i.y = select i1 %.not, i64 0, i64 20
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_fiber_blocking(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %rb_fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !171
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !172
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !170
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i.i, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %rb_fiber_current.exit

rb_fiber_current.exit:                            ; preds = %bb.a, %bb.b
  %i.u = phi i64 [ %.pre.i, %bb.b ], [ %i.g, %bb.a ] ; 7 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_fiber_current.exit
  %i.z = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54
  %i.ab = and i64 %i.aa, 95
  %or.cond.not.i.i = icmp eq i64 %i.ab, 76
  br i1 %or.cond.not.i.i, label %bb.c, label %.critedge.i.i, !prof !178

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ac = getelementptr i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !179 ; 2 uses
  %i.ae = and i64 %i.ad, -2                       ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = trunc i64 %i.ad to i1
  %i.ah = getelementptr i8, ptr %i.z, i64 32      ; 2 uses
  br i1 %i.ag, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.aj = phi ptr [ %i.ai, %bb.d ], [ %i.ah, %bb.c ] ; 2 uses
  %i.ak = icmp eq i64 %i.ae, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.ak, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.e
  %.016.i.i = phi ptr [ %i.am, %bb.e ], [ %i.af, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.al = getelementptr i8, ptr %.016.i.i, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !182 ; 2 uses
  %i.an = icmp eq ptr %i.am, @fiber_data_type
  br i1 %i.an, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rb_fiber_current.exit
  %i.ao = tail call ptr @rb_check_typeddata(i64 noundef %i.u, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.e, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ao, %.critedge.i.i ], [ %i.aj, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.aj, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.f, label %fiber_ptr.exit

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ap = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.aq = getelementptr i8, ptr %.1.i.i, i64 552
  %i.ar = load i8, ptr %i.aq, align 8
  %i.as = and i8 %i.ar, 8
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %fiber_ptr.exit
  %i.at = tail call i64 @rb_yield(i64 noundef %i.u) #10
  br label %bb.i

bb.h:                                             ; preds = %fiber_ptr.exit
  %i.au = tail call i64 @rb_ensure(ptr noundef nonnull @fiber_blocking_yield, i64 noundef %i.u, ptr noundef nonnull @fiber_blocking_ensure, i64 noundef %i.u) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.at, %bb.g ], [ %i.au, %bb.h ]
  ret i64 %.0
}

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fiber_blocking_yield(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr i8, ptr %.1.i.i, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  store volatile ptr %i.x, ptr %i.a, align 8, !tbaa !96
  %i.y = getelementptr i8, ptr %.1.i.i, i64 552   ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = or i8 %i.z, 8
  store i8 %i.aa, ptr %i.y, align 8
  %.0..0..0..0. = load volatile ptr, ptr %i.a, align 8, !tbaa !96
  %i.ab = getelementptr i8, ptr %.0..0..0..0., i64 440 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !125
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !125
  %i.ae = tail call i64 @rb_yield(i64 noundef %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.ae
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @fiber_blocking_ensure(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr i8, ptr %.1.i.i, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  store volatile ptr %i.x, ptr %i.a, align 8, !tbaa !96
  %i.y = getelementptr i8, ptr %.1.i.i, i64 552   ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, -9
  store i8 %i.aa, ptr %i.y, align 8
  %.0..0..0..0. = load volatile ptr, ptr %i.a, align 8, !tbaa !96
  %i.ab = getelementptr i8, ptr %.0..0..0..0., i64 440 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !125
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_fiber_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 552        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = or i8 %i.b, 3
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 80
  tail call void @rb_ec_close(ptr noundef %i.d) #10
  ret void
}

declare void @rb_ec_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_resume_kw(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = tail call fastcc i64 @fiber_resume_kw(ptr noundef %.1.i.i, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret i64 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @fiber_resume_kw(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !171
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.a, %bb.b
  %i.u = phi ptr [ %.pre.i, %bb.b ], [ %i.e, %bb.a ]
  %i.v = icmp eq i32 %1, -1
  %i.w = getelementptr i8, ptr %0, i64 552
  %i.x = load i8, ptr %i.w, align 8               ; 3 uses
  %i.y = and i8 %i.x, 3
  %i.z = icmp eq i8 %i.y, 0
  %or.cond21 = select i1 %i.v, i1 %i.z, i1 false
  br i1 %or.cond21, label %bb.c, label %fiber_current.exit._crit_edge

bb.c:                                             ; preds = %fiber_current.exit
  %i.aa = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.50) #26
  unreachable

fiber_current.exit._crit_edge:                    ; preds = %fiber_current.exit
  %i.ab = and i8 %i.x, 3                          ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 3
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %fiber_current.exit._crit_edge
  %i.ad = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.51) #26
  unreachable

bb.e:                                             ; preds = %fiber_current.exit._crit_edge
  %i.ae = icmp eq ptr %0, %i.u
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.52) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %0, i64 536
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !121
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.53) #26
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %0, i64 544
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !173
  %.not16 = icmp eq ptr %i.ak, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @.str.54) #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.am = and i8 %i.x, 4
  %.not17 = icmp ne i8 %i.am, 0
  %.not18 = icmp eq i8 %i.ab, 0
  %or.cond = or i1 %.not17, %.not18
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.55) #26
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ao = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %0, i1 noundef zeroext false)
  ret i64 %i.ao
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_resume(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = tail call fastcc i64 @fiber_resume_kw(ptr noundef %.1.i.i, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_yield_kw(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %fiber_current.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !171
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !172
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !170
  br label %fiber_current.exit.i

fiber_current.exit.i:                             ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.v = getelementptr i8, ptr %i.u, i64 536      ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %return_fiber.exit

bb.c:                                             ; preds = %fiber_current.exit.i
  %i.x = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.56) #26
  unreachable

return_fiber.exit:                                ; preds = %fiber_current.exit.i
  store ptr null, ptr %i.v, align 8, !tbaa !121
  %i.y = getelementptr i8, ptr %i.w, i64 544
  store ptr null, ptr %i.y, align 8, !tbaa !173
  %i.z = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %i.w, i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i1 noundef zeroext true)
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_yield(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %fiber_current.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !67 ; 2 uses
  %i.j = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.k = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.j, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr i8, ptr %.val.i.i, i64 424
  store ptr %i.o, ptr %i.p, align 8, !tbaa !171
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.k, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr i8, ptr %i.o, i64 560
  store ptr null, ptr %i.t, align 8, !tbaa !172
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !170
  br label %fiber_current.exit.i

fiber_current.exit.i:                             ; preds = %bb.b, %bb.a
  %i.u = phi ptr [ %.pre.i.i, %bb.b ], [ %i.e, %bb.a ]
  %i.v = getelementptr i8, ptr %i.u, i64 536      ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121  ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.c, label %return_fiber.exit

bb.c:                                             ; preds = %fiber_current.exit.i
  %i.x = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.56) #26
  unreachable

return_fiber.exit:                                ; preds = %fiber_current.exit.i
  store ptr null, ptr %i.v, align 8, !tbaa !121
  %i.y = getelementptr i8, ptr %i.w, i64 544
  store ptr null, ptr %i.y, align 8, !tbaa !173
  %i.z = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %i.w, i32 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null, i1 noundef zeroext true)
  ret i64 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_fiber_reset_root_local_storage(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170
  %.not5 = icmp eq ptr %i.b, %i.f
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.i = getelementptr i8, ptr %i.d, i64 72
  store ptr %i.h, ptr %i.i, align 8, !tbaa !214
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_fiber_alive_p(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 552
  %i.w = load i8, ptr %i.v, align 8
  %i.x = and i8 %i.w, 3
  %.not = icmp eq i8 %i.x, 3
  %i.y = select i1 %.not, i64 0, i64 20
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_transfer_kw(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 4 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 544
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !173
  %.not.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.x = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.57) #26
  unreachable

bb.g:                                             ; preds = %fiber_ptr.exit
  %i.y = getelementptr i8, ptr %.1.i.i, i64 552
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 4
  %.not5.i = icmp eq i8 %i.aa, 0
  br i1 %.not5.i, label %fiber_transfer_kw.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.58) #26
  unreachable

fiber_transfer_kw.exit:                           ; preds = %bb.g
  %i.ac = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %.1.i.i, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef null, i1 noundef zeroext false)
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_fiber_raise(i64 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_exception_setup(i32 noundef %1, ptr noundef %2) #10
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = tail call fastcc i64 @fiber_raise(ptr noundef %.1.i.i, i64 noundef %i.a)
  ret i64 %i.w
}

declare i64 @rb_exception_setup(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @fiber_raise(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.y, %bb.d ]   ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %tailrecurse
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !67 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !171
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %tailrecurse, %bb.b
  %i.v = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %tailrecurse ]
  %i.w = icmp eq ptr %.tr, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %fiber_current.exit
  tail call void @rb_exc_raise(i64 noundef %1) #26
  unreachable

bb.d:                                             ; preds = %fiber_current.exit
  %i.x = getelementptr i8, ptr %.tr, i64 544
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !173  ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %.tr, i64 552
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = and i8 %i.aa, 7
  %or.cond = icmp eq i8 %i.ab, 2
  br i1 %or.cond, label %fiber_transfer_kw.exit, label %bb.f

fiber_transfer_kw.exit:                           ; preds = %bb.e
  %i.ac = call fastcc i64 @fiber_switch(ptr noundef nonnull %.tr, i32 noundef -1, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, i1 noundef zeroext false)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = call fastcc i64 @fiber_resume_kw(ptr noundef %.tr, i32 noundef -1, ptr noundef nonnull %i.b, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %fiber_transfer_kw.exit
  %.0 = phi i64 [ %i.ac, %fiber_transfer_kw.exit ], [ %i.ad, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_fiber_atfork(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 424        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.e
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 536
  store ptr null, ptr %i.i, align 8, !tbaa !121
  %i.j = getelementptr i8, ptr %i.h, i64 552      ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 8
  store i8 %i.l, ptr %i.j, align 8
  %i.m = getelementptr i8, ptr %0, i64 440
  store i32 1, ptr %i.m, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Cont() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !67 ; 2 uses
  %i.e = getelementptr i8, ptr %.val.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 9536
  %i.h = load i64, ptr %i.g, align 8, !tbaa !224  ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 9544
  %i.j = load i64, ptr %i.i, align 8, !tbaa !225
  %i.k = add i64 %i.j, %i.h
  %i.l = tail call i64 @sysconf(i32 noundef 30) #10
  store i64 %i.l, ptr @pagesize, align 8, !tbaa !65
  %i.m = getelementptr i8, ptr %.val.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.n, i64 184
  %i.p = tail call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !226
  store ptr %i.p, ptr %i.o, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @shared_fiber_pool, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr @pagesize, align 8, !tbaa !65 ; 2 uses
  %i.r = udiv i64 %i.k, %i.q
  %i.s = add i64 %i.r, 1
  %i.t = mul i64 %i.s, %i.q
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 16), align 8, !tbaa !227
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 24), align 8, !tbaa !196
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 32), align 8, !tbaa !195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 40), align 8, !tbaa !221
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 48), align 8, !tbaa !199
  store i64 %i.h, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 56), align 8, !tbaa !204
  tail call fastcc void @fiber_pool_expand(ptr noundef nonnull @shared_fiber_pool, i64 noundef 32)
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 8) #10
  store i64 %i.u, ptr @fiber_initialize_keywords, align 16, !tbaa !65
  %i.v = tail call i64 @rb_intern2(ptr noundef nonnull @.str.3, i64 noundef 4) #10
  store i64 %i.v, ptr getelementptr inbounds nuw (i8, ptr @fiber_initialize_keywords, i64 8), align 8, !tbaa !65
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 7) #10
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @fiber_initialize_keywords, i64 16), align 16, !tbaa !65
  %i.x = tail call ptr @getenv(ptr noundef nonnull @.str.5) #10 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.x, ptr noundef null, i32 noundef 10) #10, !inline_history !228
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 40), align 8, !tbaa !221
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.6) #35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @shared_fiber_pool, i64 40), align 8, !tbaa !221
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp samesign ugt i32 %i.z, 1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.7) #35
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.a
  %i.ac = load i64, ptr @rb_cObject, align 8, !tbaa !65
  %i.ad = tail call i64 @rb_define_class(ptr noundef nonnull @.str.8, i64 noundef %i.ac) #10 ; 2 uses
  store i64 %i.ad, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_alloc_func(i64 noundef %i.ad, ptr noundef nonnull @fiber_alloc) #10
  %i.ae = load i64, ptr @rb_eStandardError, align 8, !tbaa !65
  %i.af = tail call i64 @rb_define_class(ptr noundef nonnull @.str.9, i64 noundef %i.ae) #10
  store i64 %i.af, ptr @rb_eFiberError, align 8, !tbaa !65
  %i.ag = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ag, ptr noundef nonnull @.str.10, ptr noundef nonnull @rb_fiber_s_yield, i32 noundef -1) #10
  %i.ah = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ah, ptr noundef nonnull @.str.11, ptr noundef nonnull @rb_fiber_s_current, i32 noundef 0) #10
  %i.ai = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ai, ptr noundef nonnull @.str.2, ptr noundef nonnull @rb_fiber_blocking, i32 noundef 0) #10
  %i.aj = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.aj, ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_fiber_storage_aref, i32 noundef 1) #10
  %i.ak = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ak, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_fiber_storage_aset, i32 noundef 2) #10
  %i.al = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_fiber_initialize, i32 noundef -1) #10
  %i.am = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_fiber_blocking_p, i32 noundef 0) #10
  %i.an = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.4, ptr noundef nonnull @rb_fiber_storage_get, i32 noundef 0) #10
  %i.ao = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.ao, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_fiber_storage_set, i32 noundef 1) #10
  %i.ap = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.ap, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_fiber_m_resume, i32 noundef -1) #10
  %i.aq = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.aq, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_fiber_m_raise, i32 noundef -1) #10
  %i.ar = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.ar, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_fiber_m_kill, i32 noundef 0) #10
  %i.as = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.as, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_fiber_backtrace, i32 noundef -1) #10
  %i.at = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.at, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_fiber_backtrace_locations, i32 noundef -1) #10
  %i.au = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.au, ptr noundef nonnull @.str.22, ptr noundef nonnull @fiber_to_s, i32 noundef 0) #10
  %i.av = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_alias(i64 noundef %i.av, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #10
  %i.aw = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.aw, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_fiber_m_transfer, i32 noundef -1) #10
  %i.ax = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.ax, ptr noundef nonnull @.str.25, ptr noundef nonnull @rb_fiber_alive_p, i32 noundef 0) #10
  %i.ay = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ay, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_fiber_s_blocking_p, i32 noundef 0) #10
  %i.az = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.az, ptr noundef nonnull @.str.26, ptr noundef nonnull @rb_fiber_s_scheduler, i32 noundef 0) #10
  %i.ba = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.ba, ptr noundef nonnull @.str.27, ptr noundef nonnull @rb_fiber_set_scheduler, i32 noundef 1) #10
  %i.bb = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.bb, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_fiber_current_scheduler, i32 noundef 0) #10
  %i.bc = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  tail call void @rb_define_singleton_method(i64 noundef %i.bc, ptr noundef nonnull @.str.29, ptr noundef nonnull @rb_fiber_s_schedule, i32 noundef -1) #10
  tail call void @rb_provide(ptr noundef nonnull @.str.30) #10
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #16

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_s_yield(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_keyword_given_p() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !67 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i.i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i.i.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !171
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !172
  %.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !170
  br label %fiber_current.exit.i.i

fiber_current.exit.i.i:                           ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %.pre.i.i.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr i8, ptr %i.v, i64 536      ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !121  ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.c, label %rb_fiber_yield_kw.exit

bb.c:                                             ; preds = %fiber_current.exit.i.i
  %i.y = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.56) #26
  unreachable

rb_fiber_yield_kw.exit:                           ; preds = %fiber_current.exit.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !121
  %i.z = getelementptr i8, ptr %i.x, i64 544
  store ptr null, ptr %i.z, align 8, !tbaa !173
  %i.aa = tail call fastcc i64 @fiber_switch(ptr noundef nonnull %i.x, i32 noundef %0, ptr noundef %1, i32 noundef %i.b, ptr noundef null, i1 noundef zeroext true)
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_s_current(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
end_hunk_0
begin_hunk_1_@rb_fiber_storage_aref:bb.a
  %i.v = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = getelementptr i8, ptr %i.v, i64 176
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64   ; 2 uses
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %fiber_current.exit
  %i.z = tail call i64 @rb_hash_aref(i64 noundef %i.x, i64 noundef %i.b) #10
  br label %bb.d

bb.d:                                             ; preds = %fiber_current.exit, %bb.c
  %.0 = phi i64 [ %i.z, %bb.c ], [ 4, %fiber_current.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_storage_aset(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_to_symbol(i64 noundef %1) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !42
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %fiber_current.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !67 ; 2 uses
  %i.k = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.l = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.k, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.p, ptr %i.q, align 8, !tbaa !171
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.p, ptr %i.s, align 8, !tbaa !68
  %i.t = getelementptr i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !42
  %i.u = getelementptr i8, ptr %i.p, i64 560
  store ptr null, ptr %i.u, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %.pre.i, %bb.b ], [ %i.f, %bb.a ]
  %i.w = icmp ne i64 %2, 4
  %i.x = getelementptr i8, ptr %i.v, i64 176      ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !64   ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  %or.cond.i = and i1 %i.w, %i.z
  br i1 %or.cond.i, label %bb.c, label %fiber_storage_get.exit

bb.c:                                             ; preds = %fiber_current.exit
  %i.aa = tail call i64 @rb_hash_new() #10        ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !64
  br label %fiber_storage_get.exit

fiber_storage_get.exit:                           ; preds = %fiber_current.exit, %bb.c
  %.0.i = phi i64 [ %i.aa, %bb.c ], [ %i.y, %fiber_current.exit ] ; 3 uses
  %i.ab = icmp eq i64 %.0.i, 4
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %fiber_storage_get.exit
  %i.ac = icmp eq i64 %2, 4
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i64 @rb_hash_delete(i64 noundef %.0.i, i64 noundef %i.b) #10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = tail call i64 @rb_hash_aset(i64 noundef %.0.i, i64 noundef %i.b, i64 noundef %2) #10
  br label %bb.g

bb.g:                                             ; preds = %fiber_storage_get.exit, %bb.f, %bb.e
  %.0 = phi i64 [ %i.ae, %bb.f ], [ %i.ad, %bb.e ], [ 4, %fiber_storage_get.exit ]
  ret i64 %.0
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_fiber_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = tail call i32 @rb_keyword_given_p() #10  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rb_fiber_initialize_kw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.rb_fiber_initialize_kw.arguments, i64 24, i1 false)
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65   ; 4 uses
  switch i32 %i.b, label %.thread23.i [
    i32 3, label %bb.d
    i32 1, label %rb_scan_args_keyword_p.exit.thread12.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %.thread23.i, label %rb_scan_args_keyword_p.exit.i

rb_scan_args_keyword_p.exit.i:                    ; preds = %bb.d
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 8
  br i1 %i.o, label %rb_scan_args_keyword_p.exit.thread12.i, label %.thread23.i

bb.e:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %0, 0
  br i1 %i.p, label %.thread23.i, label %rb_scan_args_set.exit.i

rb_scan_args_keyword_p.exit.thread12.i:           ; preds = %rb_scan_args_keyword_p.exit.i, %bb.c
  %i.q = tail call i64 @rb_hash_dup(i64 noundef %i.g) #10
  %i.r = add nsw i32 %0, -1                       ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %rb_scan_args_set.exit.i, label %.thread23.i

.thread23.i:                                      ; preds = %rb_scan_args_keyword_p.exit.thread12.i, %bb.e, %rb_scan_args_keyword_p.exit.i, %bb.d, %bb.c
  %.1.i18.i = phi i32 [ %i.r, %rb_scan_args_keyword_p.exit.thread12.i ], [ %0, %bb.e ], [ %0, %rb_scan_args_keyword_p.exit.i ], [ %0, %bb.d ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i18.i, i32 noundef 0, i32 noundef 0) #26
  unreachable

rb_scan_args_set.exit.i:                          ; preds = %rb_scan_args_keyword_p.exit.thread12.i, %bb.e
  %.026.i = phi i64 [ %i.q, %rb_scan_args_keyword_p.exit.thread12.i ], [ 4, %bb.e ]
  %i.t = call i32 @rb_get_kwargs(i64 noundef %.026.i, ptr noundef nonnull @fiber_initialize_keywords, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.u = load i64, ptr %i.a, align 16, !tbaa !65  ; 2 uses
  %i.v = icmp ne i64 %i.u, 36
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 16, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.y = and i64 %i.u, -5
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = and i1 %i.v, %i.z
  %i.ab = zext i1 %i.aa to i32
  br label %rb_fiber_initialize_kw.exit

rb_fiber_initialize_kw.exit:                      ; preds = %bb.a, %rb_scan_args_set.exit.i
  %.1.i = phi i32 [ %i.ab, %rb_scan_args_set.exit.i ], [ 0, %bb.a ]
  %.0.i = phi i64 [ %i.x, %rb_scan_args_set.exit.i ], [ 36, %bb.a ]
  %i.ac = call i64 @rb_block_proc() #10
  %i.ad = call fastcc i64 @fiber_initialize(i64 noundef %2, i64 noundef %i.ac, i32 noundef %.1.i, i64 noundef %.0.i) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_storage_get(i64 noundef %0) #0 {
bb.a:
  tail call fastcc void @storage_access_must_be_from_same_fiber(i64 noundef %0)
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !64   ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.y = tail call i64 @rb_obj_dup(i64 noundef %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %fiber_ptr.exit, %bb.f
  %.0 = phi i64 [ %i.y, %bb.f ], [ 4, %fiber_ptr.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_fiber_storage_set(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 2) #10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 2, ptr noundef nonnull @.str.61) #35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @storage_access_must_be_from_same_fiber(i64 noundef %0)
  %i.b = icmp eq i64 %1, 4
  br i1 %i.b, label %fiber_storage_validate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 8
  br i1 %i.j, label %RB_OBJ_FROZEN.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %i.k = load i64, ptr @rb_eTypeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.37) #26
  unreachable

RB_OBJ_FROZEN.exit.i:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.l = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.e, label %RB_OBJ_FROZEN.exit.thread.i

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i
  %i.m = load i64, ptr @rb_eFrozenError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.38) #26
  unreachable

bb.e:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  tail call void @rb_hash_foreach(i64 noundef %1, ptr noundef nonnull @fiber_storage_validate_each, i64 noundef 36) #10
  br label %fiber_storage_validate.exit

fiber_storage_validate.exit:                      ; preds = %bb.c, %bb.e
  %i.n = tail call i64 @rb_obj_dup(i64 noundef %1) #10
  %i.o = icmp eq i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %fiber_storage_validate.exit
  %i.s = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54
  %i.u = and i64 %i.t, 95
  %or.cond.not.i.i = icmp eq i64 %i.u, 76
  br i1 %or.cond.not.i.i, label %bb.f, label %.critedge.i.i, !prof !178

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.v = getelementptr i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !179  ; 2 uses
  %i.x = and i64 %i.w, -2                         ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = trunc i64 %i.w to i1
  %i.aa = getelementptr i8, ptr %i.s, i64 32      ; 2 uses
  br i1 %i.z, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.g, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ad = icmp eq i64 %i.x, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.ad, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.h
  %.016.i.i = phi ptr [ %i.af, %bb.h ], [ %i.y, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i
  %i.ae = getelementptr i8, ptr %.016.i.i, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !182 ; 2 uses
  %i.ag = icmp eq ptr %i.af, @fiber_data_type
  br i1 %i.ag, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %fiber_storage_validate.exit
  %i.ah = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.h, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.ah, %.critedge.i.i ], [ %i.ac, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.not.i5 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i5, label %bb.i, label %fiber_ptr.exit

bb.i:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ai = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.aj = getelementptr i8, ptr %.1.i.i, i64 176
  store i64 %i.n, ptr %i.aj, align 8, !tbaa !64
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_m_resume(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #10
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !prof !149

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !llvm.loop !187

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i.i

rbimpl_check_typeddata.exit.i.i:                  ; preds = %bb.d, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i, label %bb.e, label %rb_fiber_resume_kw.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

rb_fiber_resume_kw.exit:                          ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.w = tail call fastcc i64 @fiber_resume_kw(ptr noundef %.1.i.i.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.a)
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_m_raise(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_exception_setup(i32 noundef %0, ptr noundef %1) #10
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i, label %bb.b, label %.critedge.i.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !prof !149

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.d
  %.016.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !llvm.loop !187

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i.i

rbimpl_check_typeddata.exit.i.i:                  ; preds = %bb.d, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i, label %bb.e, label %rb_fiber_raise.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

rb_fiber_raise.exit:                              ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.w = tail call fastcc i64 @fiber_raise(ptr noundef %.1.i.i.i, i64 noundef %i.a)
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_fiber_m_kill(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = getelementptr i8, ptr %.1.i.i, i64 552   ; 4 uses
  %i.x = load i8, ptr %i.w, align 8               ; 4 uses
  %i.y = and i8 %i.x, 16
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.f, label %fiber_check_killed.exit

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.z = or disjoint i8 %i.x, 16
  store i8 %i.z, ptr %i.w, align 8
  %i.aa = and i8 %i.x, 3
  switch i8 %i.aa, label %bb.h [
    i8 0, label %bb.g
    i8 3, label %fiber_check_killed.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ab = or disjoint i8 %i.x, 19
  store i8 %i.ab, ptr %i.w, align 8
  br label %fiber_check_killed.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  store volatile ptr %i.ad, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !170 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %fiber_current.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  %i.ak = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.al = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.ak, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.am = getelementptr i8, ptr %.val.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70
  %i.ao = getelementptr i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170 ; 4 uses
  %i.aq = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !171
  %i.ar = inttoptr i64 %i.al to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 32
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr i8, ptr %i.ap, i64 16
  store i64 %i.al, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr i8, ptr %i.ap, i64 560
  store ptr null, ptr %i.au, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %.pre.i, %bb.i ], [ %i.af, %bb.h ]
  %i.aw = icmp eq ptr %i.av, %.1.i.i
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %fiber_current.exit
  %i.ax = load i8, ptr %i.w, align 8
  %i.ay = and i8 %i.ax, 16
  %.not.i13 = icmp eq i8 %i.ay, 0
  br i1 %.not.i13, label %fiber_check_killed.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %.1.i.i, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bb = getelementptr i8, ptr %i.ba, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 128
  store i64 5, ptr %i.bd, align 8, !tbaa !152
  %i.be = getelementptr i8, ptr %i.bc, i64 24
  %.val.i14 = load ptr, ptr %i.be, align 8, !tbaa !89 ; 2 uses
  %i.bf = getelementptr i8, ptr %.val.i14, i64 64
  store i32 8, ptr %i.bf, align 8, !tbaa !126
  %i.bg = getelementptr i8, ptr %.val.i14, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.bg)
  unreachable

bb.l:                                             ; preds = %fiber_current.exit
  br i1 %i.e, label %.critedge.i.i17, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i15, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i15:             ; preds = %bb.l
  %i.bh = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !54
  %i.bj = and i64 %i.bi, 95
  %or.cond.not.i.i16 = icmp eq i64 %i.bj, 76
  br i1 %or.cond.not.i.i16, label %bb.m, label %.critedge.i.i17, !prof !178

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i15
  %i.bk = getelementptr i8, ptr %i.bh, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !179 ; 2 uses
  %i.bm = and i64 %i.bl, -2                       ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = trunc i64 %i.bl to i1
  %i.bp = getelementptr i8, ptr %i.bh, i64 32     ; 2 uses
  br i1 %i.bo, label %RTYPEDDATA_GET_DATA.exit.i.i21, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i21

RTYPEDDATA_GET_DATA.exit.i.i21:                   ; preds = %bb.n, %bb.m
  %i.br = phi ptr [ %i.bq, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  %i.bs = icmp eq i64 %i.bm, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.bs, label %rbimpl_check_typeddata.exit.i18, label %.preheader.i.i22, !prof !149

.preheader.i.i22:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i21, %bb.o
  %.016.i.i23 = phi ptr [ %i.bu, %bb.o ], [ %i.bn, %RTYPEDDATA_GET_DATA.exit.i.i21 ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %.016.i.i23, null
  br i1 %.not.i.i24, label %.critedge.i.i17, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i22
  %i.bt = getelementptr i8, ptr %.016.i.i23, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !182 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, @fiber_data_type
  br i1 %i.bv, label %rbimpl_check_typeddata.exit.i18, label %.preheader.i.i22, !llvm.loop !187

.critedge.i.i17:                                  ; preds = %.preheader.i.i22, %rbimpl_RB_TYPE_P_fastpath.exit.i.i15, %bb.l
  %i.bw = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i18

rbimpl_check_typeddata.exit.i18:                  ; preds = %bb.o, %.critedge.i.i17, %RTYPEDDATA_GET_DATA.exit.i.i21
  %.1.i.i19 = phi ptr [ %i.bw, %.critedge.i.i17 ], [ %i.br, %RTYPEDDATA_GET_DATA.exit.i.i21 ], [ %i.br, %bb.o ] ; 2 uses
  %.not.i20 = icmp eq ptr %.1.i.i19, null
  br i1 %.not.i20, label %bb.p, label %fiber_ptr.exit25

bb.p:                                             ; preds = %rbimpl_check_typeddata.exit.i18
  %i.bx = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bx, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit25:                                 ; preds = %rbimpl_check_typeddata.exit.i18
  %i.by = tail call fastcc i64 @fiber_raise(ptr noundef %.1.i.i19, i64 noundef 4) ; 0 uses
  br label %fiber_check_killed.exit

fiber_check_killed.exit:                          ; preds = %bb.j, %bb.g, %fiber_ptr.exit25, %bb.f, %fiber_ptr.exit
  %.0 = phi i64 [ 0, %fiber_ptr.exit ], [ %0, %bb.f ], [ %0, %fiber_ptr.exit25 ], [ %0, %bb.g ], [ %0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_backtrace(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 80
  %i.w = tail call i64 @rb_vm_backtrace(i32 noundef %0, ptr noundef %1, ptr noundef %i.v) #10
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_backtrace_locations(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !182  ; 2 uses
  %i.s = icmp eq ptr %i.r, @fiber_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.u = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = getelementptr i8, ptr %.1.i.i, i64 80
  %i.w = tail call i64 @rb_vm_backtrace_locations(i32 noundef %0, ptr noundef %1, ptr noundef %i.v) #10
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fiber_to_s(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.w = getelementptr i8, ptr %.1.i.i, i64 544
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  %.not = icmp eq ptr %i.x, null                  ; 2 uses
  %i.y = getelementptr i8, ptr %.1.i.i, i64 552
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 3
  %switch.table.fiber_to_s.28.switch.table.fiber_to_s = select i1 %.not, ptr @switch.table.fiber_to_s.28, ptr @switch.table.fiber_to_s.28
  %.str.63..str.62 = select i1 %.not, ptr @.str.63, ptr @.str.62
  %i.ab = zext nneg i8 %i.aa to i64
  %switch.gep20 = getelementptr inbounds nuw [8 x i8], ptr %switch.table.fiber_to_s.28.switch.table.fiber_to_s, i64 %i.ab
  %switch.load21 = load ptr, ptr %switch.gep20, align 8
  %i.ac = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %.str.63..str.62, ptr noundef nonnull %switch.load21) #10 ; 0 uses
  %i.ad = getelementptr i8, ptr %.1.i.i, i64 528  ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !122
  %i.af = call i64 @rb_obj_is_proc(i64 noundef %i.ae) #10
  %.not13 = icmp eq i64 %i.af, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.ag = call i64 @rb_any_to_s(i64 noundef %0) #10 ; 4 uses
  %i.ah = call i64 @strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.64, i64 noundef 32) #10 ; 0 uses
  %i.ai = inttoptr i64 %i.ag to ptr
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !229
  %i.al = add i64 %i.ak, -1
  call void @rb_str_set_len(i64 noundef %i.ag, i64 noundef %i.al) #10
  %i.am = call i64 @rb_str_cat_cstr(i64 noundef %i.ag, ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %fiber_ptr.exit
  %i.an = load i64, ptr %i.ad, align 8, !tbaa !122
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = call i64 @rb_block_to_s(i64 noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.ar, %bb.g ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_m_transfer(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #10
  %i.b = tail call i64 @rb_fiber_transfer_kw(i64 noundef %2, i32 noundef %0, ptr noundef %1, i32 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal i64 @rb_fiber_s_blocking_p(i64 %0) #17 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr i8, ptr %.val.i, i64 440
  %i.f = load i32, ptr %i.e, align 8, !tbaa !125  ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = sext i32 %i.f to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  %.0 = select i1 %i.g, i64 0, i64 %i.j
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_s_scheduler(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_fiber_scheduler_get() #10
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_set_scheduler(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_fiber_scheduler_set(i64 noundef %1) #10
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_current_scheduler(i64 %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_fiber_scheduler_current() #10
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_fiber_s_schedule(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_keyword_given_p() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr i8, ptr %.val.i.i, i64 432
  %i.g = load i64, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  %.not.i = icmp eq i64 %i.g, 4
  br i1 %.not.i, label %bb.b, label %rb_fiber_s_schedule_kw.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.69) #26
  unreachable

rb_fiber_s_schedule_kw.exit:                      ; preds = %bb.a
  %i.i = tail call i64 @rb_fiber_scheduler_fiber(i64 noundef %i.g, i32 noundef %0, ptr noundef %1, i32 noundef %i.b) #10
  ret i64 %i.i
}

declare void @rb_provide(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_Init_Continuation_body() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !65
  %i.b = tail call i64 @rb_define_class(ptr noundef nonnull @.str.31, i64 noundef %i.a) #10 ; 2 uses
  store i64 %i.b, ptr @rb_cContinuation, align 8, !tbaa !65
  tail call void @rb_undef_alloc_func(i64 noundef %i.b) #10
  %i.c = load i64, ptr @rb_cContinuation, align 8, !tbaa !65 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.j = trunc i64 %i.c to i1
  br i1 %i.j, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %i.c, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select.i = select i1 %i.l, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.i, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !65
  tail call void @rb_undef_method(i64 noundef %.0.i, ptr noundef nonnull @.str.32) #10
  %i.m = load i64, ptr @rb_cContinuation, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.33, ptr noundef nonnull @rb_cont_call, i32 noundef -1) #10
  %i.n = load i64, ptr @rb_cContinuation, align 8, !tbaa !65
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_cont_call, i32 noundef -1) #10
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.34, ptr noundef nonnull @rb_callcc, i32 noundef 0) #10
  ret void
}

declare void @rb_undef_alloc_func(i64 noundef) local_unnamed_addr #2

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @rb_cont_call(i32 noundef %0, ptr noundef %1, i64 noundef %2) #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @cont_data_type to i64)
  br i1 %i.q, label %cont_ptr.exit, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @cont_data_type
  br i1 %i.t, label %cont_ptr.exit, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @cont_data_type) #10
  br label %cont_ptr.exit

cont_ptr.exit:                                    ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.x, align 8, !tbaa !67 ; 2 uses
  %i.y = getelementptr i8, ptr %.1.i.i, i64 128
  %.val = load ptr, ptr %i.y, align 8, !tbaa !102
  %i.z = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.z, align 8, !tbaa !157
  %i.aa = getelementptr i8, ptr %.val.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !157
  %.not = icmp eq i64 %.val.val, %i.ab
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %cont_ptr.exit
  %i.ac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.70) #26
  unreachable

bb.f:                                             ; preds = %cont_ptr.exit
  %i.ad = getelementptr i8, ptr %.1.i.i, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !232 ; 2 uses
  %.not10 = icmp eq ptr %i.ae, null
  br i1 %.not10, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %.val.i, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70
  %i.ah = getelementptr i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !170
  %.not11 = icmp eq ptr %i.ai, %i.ae
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.71) #26
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr i8, ptr %.1.i.i, i64 4
  store i32 %0, ptr %i.ak, align 4, !tbaa !151
  %i.al = tail call fastcc i64 @make_passing_arg(i32 noundef %0, ptr noundef %1)
  %i.am = getelementptr i8, ptr %.1.i.i, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !150
  tail call fastcc void @cont_restore_0(ptr noundef nonnull %.1.i.i) #34
  unreachable
}

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_callcc(i64 %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call fastcc i64 @cont_capture(ptr noundef %i.a)
  store volatile i64 %i.c, ptr %i.b, align 8, !tbaa !65
  %i.d = load volatile i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.d, 0
  %.0..0..0..0.1 = load volatile i64, ptr %i.b, align 8, !tbaa !65 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @rb_yield(i64 noundef %.0..0..0..0.1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %.0..0..0..0.1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @fiber_mark(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 528
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122
  tail call void @rb_gc_mark_movable(i64 noundef %i.b) #10
  %i.c = getelementptr i8, ptr %0, i64 536
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %rb_fiber_mark_self.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_mark_movable(i64 noundef %i.f) #10
  br label %rb_fiber_mark_self.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 80
  tail call void @rb_execution_context_mark(ptr noundef %i.g) #10
  br label %rb_fiber_mark_self.exit

rb_fiber_mark_self.exit:                          ; preds = %bb.d, %bb.c, %bb.a
  tail call void @cont_mark(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fiber_memsize(ptr noundef readonly captures(address) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr i8, ptr %.val, i64 424
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171
  %.not13 = icmp eq ptr %0, %i.e
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_id_table_memsize(ptr noundef nonnull %i.b) #10
  %i.g = add i64 %i.f, 624
  %i.h = getelementptr i8, ptr %0, i64 176
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %i.j = tail call i64 @rb_obj_memsize_of(i64 noundef %i.i) #10
  %i.k = add i64 %i.g, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.k, %bb.c ], [ 624, %bb.b ], [ 624, %bb.a ]
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !233
  %i.p = getelementptr i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !234
  %i.r = add i64 %i.q, %i.o
  %i.s = shl i64 %i.r, 3
  %i.t = add i64 %i.s, 528
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.t, %bb.e ], [ 528, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !235
  %.not9.i = icmp eq ptr %i.v, null
  br i1 %.not9.i, label %cont_memsize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !236
  %i.y = shl i64 %i.x, 3
  %i.z = add i64 %i.y, %.0.i
  br label %cont_memsize.exit

cont_memsize.exit:                                ; preds = %bb.f, %bb.g
  %.1.i = phi i64 [ %i.z, %bb.g ], [ %.0.i, %bb.f ]
  %i.aa = add i64 %.1.i, %.0
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @fiber_compact(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 528        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122
  %i.c = tail call i64 @rb_gc_location(i64 noundef %i.b) #10
  store i64 %i.c, ptr %i.a, align 8, !tbaa !122
  %i.d = getelementptr i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %rb_fiber_update_self.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_gc_location(i64 noundef %i.g) #10
  store i64 %i.h, ptr %i.f, align 8, !tbaa !42
  br label %rb_fiber_update_self.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 80
  tail call void @rb_execution_context_update(ptr noundef %i.i) #10
  br label %rb_fiber_update_self.exit

rb_fiber_update_self.exit:                        ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !237  ; 2 uses
  %.not.i7 = icmp eq i64 %i.k, 0
  br i1 %.not.i7, label %cont_compact.exit, label %bb.e

bb.e:                                             ; preds = %rb_fiber_update_self.exit
  %i.l = tail call i64 @rb_gc_location(i64 noundef %i.k) #10
  store i64 %i.l, ptr %i.j, align 8, !tbaa !237
  br label %cont_compact.exit

cont_compact.exit:                                ; preds = %rb_fiber_update_self.exit, %bb.e
  %i.m = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !150
  %i.o = tail call i64 @rb_gc_location(i64 noundef %i.n) #10
  store i64 %i.o, ptr %i.m, align 8, !tbaa !150
  %i.p = getelementptr i8, ptr %0, i64 80
  tail call void @rb_execution_context_update(ptr noundef %i.p) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cont_mark(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_mark_movable(i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !150
  tail call void @rb_gc_mark_movable(i64 noundef %i.d) #10
  %i.e = getelementptr i8, ptr %0, i64 80
  tail call void @rb_execution_context_mark(ptr noundef %i.e) #10
  %i.f = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.g, align 8, !tbaa !157
  tail call void @rb_gc_mark(i64 noundef %.val.val) #10
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !212  ; 3 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !233
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %0, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !234
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %i.n
  tail call void @rb_gc_mark_locations(ptr noundef nonnull %i.i, ptr noundef %i.o) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !235  ; 3 uses
  %.not19 = icmp eq ptr %i.q, null
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %0, align 8, !tbaa !238
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !236
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %i.u
  tail call void @rb_gc_mark_locations(ptr noundef nonnull %i.q, ptr noundef %i.v) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #2

declare void @rb_gc_mark_locations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_id_table_memsize(ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_memsize_of(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i64 @cont_memsize(ptr noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !234
  %i.g = add i64 %i.f, %i.d
  %i.h = shl i64 %i.g, 3
  %i.i = add i64 %i.h, 528
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.i, %bb.b ], [ 528, %bb.a ]   ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %.not9 = icmp eq ptr %i.k, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !236
  %i.n = shl i64 %i.m, 3
  %i.o = add i64 %i.n, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.o, %bb.d ], [ %.0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cont_compact(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_gc_location(i64 noundef %i.b) #10
  store i64 %i.c, ptr %i.a, align 8, !tbaa !237
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150
  %i.f = tail call i64 @rb_gc_location(i64 noundef %i.e) #10
  store i64 %i.f, ptr %i.d, align 8, !tbaa !150
  %i.g = getelementptr i8, ptr %0, i64 80
  tail call void @rb_execution_context_update(ptr noundef %i.g) #10
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #18

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @fiber_storage_validate_each(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = and i64 %0, 255
  %i.b = icmp eq i64 %i.a, 12
  br i1 %i.b, label %Check_Type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %RB_SYMBOL_P.exit.thread9.i, label %RB_SYMBOL_P.exit.i, !prof !177

RB_SYMBOL_P.exit.i:                               ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 20
  br i1 %i.j, label %Check_Type.exit, label %RB_SYMBOL_P.exit.thread9.i, !prof !239

RB_SYMBOL_P.exit.thread9.i:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.b
  tail call void @rb_unexpected_type(i64 noundef %0, i32 noundef 20) #33
  unreachable

Check_Type.exit:                                  ; preds = %bb.a, %RB_SYMBOL_P.exit.i
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_exec_event_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: cold noreturn
declare void @rb_memerror() local_unnamed_addr #12

declare void @rb_native_mutex_lock(ptr noundef) local_unnamed_addr #2

declare void @rb_native_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

declare void @rb_current_ec_set(ptr noundef) local_unnamed_addr #2

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @cont_free(ptr noundef %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !238
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240
  tail call void @ruby_xfree(ptr noundef %i.d) #10
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !235  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #10
  store ptr null, ptr %i.e, align 8, !tbaa !235
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 560
  store ptr null, ptr %i.g, align 8, !tbaa !172
  %i.h = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %fiber_stack_release_locked.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 608        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 592
  %i.m = load i64, ptr %i.l, align 8, !tbaa !201
  %i.n = load i64, ptr @pagesize, align 8, !tbaa !65 ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr i8, ptr %i.i, i64 %i.o     ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.h, i64 48, i1 false), !tbaa.struct !218
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !200
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !201  ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 %i.s
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %i.v = getelementptr i8, ptr %i.p, i64 24
  %i.w = sub i64 0, %i.n
  %i.x = getelementptr i8, ptr %i.t, i64 %i.w     ; 2 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !202
  %i.y = sub i64 %i.s, %i.n                       ; 3 uses
  store i64 %i.y, ptr %i.v, align 8, !tbaa !203
  %i.z = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194
  %i.ab = getelementptr i8, ptr %i.p, i64 48
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !197
  store ptr %i.p, ptr %i.z, align 8, !tbaa !194
  %i.ac = getelementptr i8, ptr %i.k, i64 48      ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !199
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !199
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !217
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !221
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %fiber_pool_stack_release.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %i.y
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.p, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !217
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !221
  %i.ao = ashr i32 %i.an, 1                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  %spec.store.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 8, i32 %i.ao
  %i.ap = tail call i32 @madvise(ptr noundef %i.aj, i64 noundef %i.y, i32 noundef %spec.store.select.i.i.i.i) #10 ; 0 uses
  br label %fiber_pool_stack_release.exit.i.i

fiber_pool_stack_release.exit.i.i:                ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.h, align 8, !tbaa !123
  br label %fiber_stack_release_locked.exit

fiber_stack_release_locked.exit:                  ; preds = %bb.d, %fiber_pool_stack_release.exit.i.i
  %i.aq = getelementptr i8, ptr %0, i64 80
  tail call void @rb_ec_clear_vm_stack(ptr noundef %i.aq) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %fiber_stack_release_locked.exit
  %i.ar = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !212 ; 2 uses
  %.not15 = icmp eq ptr %i.as, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.as) #10
  store ptr null, ptr %i.ar, align 8, !tbaa !212
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = getelementptr i8, ptr %0, i64 520
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !107 ; 5 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %jit_cont_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @rb_native_mutex_lock(ptr noundef nonnull @jit_cont_lock) #10
  %i.av = load ptr, ptr @first_jit_cont, align 8, !tbaa !43
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !61 ; 5 uses
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ay, ptr @first_jit_cont, align 8, !tbaa !43
  %.not12.i = icmp eq ptr %i.ay, null
  br i1 %.not12.i, label %bb.m, label %.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !106 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !61
  %.not11.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i, label %bb.m, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k
  %.sink.i = phi ptr [ null, %bb.k ], [ %i.ba, %bb.l ]
  %i.bc = getelementptr i8, ptr %i.ay, i64 8
  store ptr %.sink.i, ptr %i.bc, align 8, !tbaa !106
  br label %bb.m

bb.m:                                             ; preds = %.sink.split.i, %bb.l, %bb.k
  tail call void @rb_native_mutex_unlock(ptr noundef nonnull @jit_cont_lock) #10
  tail call void @free(ptr noundef nonnull %i.au) #10
  br label %jit_cont_free.exit

jit_cont_free.exit:                               ; preds = %bb.i, %bb.m
  tail call void @ruby_xfree(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_passing_arg(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 -1, label %bb.b
    i32 0, label %bb.e
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !65
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %1) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.d ], [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @fiber_setcontext(ptr noundef %0, ptr noundef initializes((256, 272)) %1) unnamed_addr #23 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !67 ; 5 uses
  %i.e = getelementptr i8, ptr %1, i64 552        ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 3
  %i.h = icmp eq i8 %i.g, 3
  %.phi.trans.insert = getelementptr i8, ptr %.val.i, i64 48 ; 2 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 2 uses
  br i1 %i.h, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %.phi.trans.insert17 = getelementptr i8, ptr %.pre, i64 176
  %.pre18 = load ptr, ptr %.phi.trans.insert17, align 8, !tbaa !208
  %i.i = getelementptr i8, ptr %1, i64 256
  store ptr %.pre18, ptr %i.i, align 8, !tbaa !241
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.pre, i64 184
  %i.k = tail call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !242
  store ptr %i.k, ptr %i.j, align 8, !tbaa !101
  %i.l = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208  ; 2 uses
  %i.o = getelementptr i8, ptr %i.l, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !101  ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %1, i64 56
  %i.v = getelementptr i8, ptr %1, i64 72
  store i64 %i.t, ptr %i.v, align 8, !tbaa !169
  store ptr %i.p, ptr %i.u, align 8, !tbaa !168
  %.pre19 = load i8, ptr %i.e, align 8
  %.pre20 = and i8 %.pre19, 3
  %i.w = icmp eq i8 %.pre20, 3
  %i.x = getelementptr i8, ptr %1, i64 256
  store ptr %i.n, ptr %i.x, align 8, !tbaa !241
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.l, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.c
  %i.aa = phi ptr [ %i.z, %bb.c ], [ null, %bb.b ], [ null, %.thread ]
  %i.ab = getelementptr i8, ptr %1, i64 264
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !243
  %i.ac = getelementptr i8, ptr %1, i64 560
  %i.ad = getelementptr i8, ptr %0, i64 560
  %i.ae = tail call ptr @coroutine_transfer(ptr noundef %i.ac, ptr noundef %i.ad) #10
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @rb_errno_ptr() #10
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.ah, ptr noundef nonnull @.str.43) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %.val.i, i64 48
  %i.aj = getelementptr i8, ptr %1, i64 80        ; 3 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !70
  tail call void @rb_current_ec_set(ptr noundef %i.aj) #10
  %i.am = getelementptr i8, ptr %i.al, i64 312
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !175
  %i.an = getelementptr i8, ptr %.val.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130
  %i.ap = getelementptr i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !244
  %i.ar = icmp eq ptr %i.aq, %.val.i
  br i1 %i.ar, label %bb.g, label %fiber_restore_thread.exit

bb.g:                                             ; preds = %bb.f
  %i.as = tail call i32 @rb_signal_buff_size() #10
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.h, label %fiber_restore_thread.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %1, i64 112
  %i.av = atomicrmw volatile or ptr %i.au, i32 8 seq_cst, align 4 ; 0 uses
  br label %fiber_restore_thread.exit

fiber_restore_thread.exit:                        ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_exc_new(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @coroutine_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_syserr_fail(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @fiber_restore_thread(ptr noundef captures(address) initializes((48, 56)) %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = getelementptr i8, ptr %0, i64 48
  store ptr %i.a, ptr %i.d, align 8, !tbaa !70
  tail call void @rb_current_ec_set(ptr noundef %i.a) #10
  %i.e = getelementptr i8, ptr %i.c, i64 312
  store ptr %i.a, ptr %i.e, align 8, !tbaa !175
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !244
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.b, label %ec_switch.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @rb_signal_buff_size() #10
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %ec_switch.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 112
  %i.n = atomicrmw volatile or ptr %i.m, i32 8 seq_cst, align 4 ; 0 uses
  br label %ec_switch.exit

ec_switch.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i32 @rb_signal_buff_size() local_unnamed_addr #2

declare void @rb_ec_initialize_vm_stack(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @fiber_entry(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call fastcc void @fiber_restore_thread(ptr noundef %i.d, ptr noundef %i.b)
  tail call void @rb_fiber_start(ptr noundef %i.b) #34
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fiber_pool_expand(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #10
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !227  ; 7 uses
  %i.e = load i64, ptr @pagesize, align 8, !tbaa !65
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = icmp ugt i64 %1, 1
  br i1 %i.g, label %.lr.ph.i, label %fiber_pool_allocate_memory.exit.thread

.lr.ph.i:                                         ; preds = %rb_vm_lock_enter.exit, %bb.c
  %.045 = phi i64 [ %i.k, %bb.c ], [ %1, %rb_vm_lock_enter.exit ] ; 8 uses
  %i.h = call ptr @rb_errno_ptr() #10
  store i32 0, ptr %i.h, align 4, !tbaa !7
  %i.i = mul i64 %.045, %i.f                      ; 3 uses
  %i.j = call ptr @mmap(ptr noundef null, i64 noundef %i.i, i32 noundef 3, i32 noundef 131106, i32 noundef -1, i64 noundef 0) #10 ; 6 uses
  %.not.i = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %bb.c, label %fiber_pool_allocate_memory.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = lshr i64 %.045, 1                        ; 2 uses
  %i.l = icmp ugt i64 %.045, 3
  br i1 %i.l, label %.lr.ph.i, label %fiber_pool_allocate_memory.exit.thread

fiber_pool_allocate_memory.exit:                  ; preds = %.lr.ph.i
  call void @ruby_annotate_mmap(ptr noundef %i.j, i64 noundef %i.i, ptr noundef nonnull @.str.46) #10
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %fiber_pool_allocate_memory.exit.thread, label %bb.d

fiber_pool_allocate_memory.exit.thread:           ; preds = %bb.c, %rb_vm_lock_enter.exit, %fiber_pool_allocate_memory.exit
  %.148 = phi i64 [ %.045, %fiber_pool_allocate_memory.exit ], [ %1, %rb_vm_lock_enter.exit ], [ %i.k, %bb.c ]
  %i.n = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  %i.o = call ptr @rb_errno_ptr() #10
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = call ptr @strerror(i32 noundef %i.p) #10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.44, i64 noundef %.148, i64 noundef %i.d, ptr noundef %i.q) #26
  unreachable

bb.d:                                             ; preds = %fiber_pool_allocate_memory.exit
  %i.r = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !194  ; 2 uses
  %i.t = call noalias nonnull dereferenceable(48) ptr @ruby_xmalloc(i64 noundef 48) #36 ; 7 uses
  store ptr %i.j, ptr %i.t, align 8, !tbaa !246
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.d, ptr %i.u, align 8, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.f, ptr %i.v, align 8, !tbaa !248
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.045, ptr %i.w, align 8, !tbaa !249
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %0, ptr %i.x, align 8, !tbaa !250
  %.not = icmp eq i64 %.045, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.pre = load i64, ptr @pagesize, align 8, !tbaa !65
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.0.lcssa = phi ptr [ %i.s, %bb.d ], [ %i.ar, %bb.g ]
  %i.y = load ptr, ptr %0, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr %i.y, ptr %i.z, align 8, !tbaa !17
  store ptr %i.t, ptr %0, align 8, !tbaa !11
  store ptr %.0.lcssa, ptr %i.r, align 8, !tbaa !194
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !196
  %i.ac = add i64 %i.ab, %.045
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !196
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !192
  %.not.i.i37 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i37, label %bb.e, label %rb_vm_lock_leave.exit

bb.e:                                             ; preds = %._crit_edge
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #10
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.ae = phi i64 [ %i.ao, %bb.g ], [ %.pre, %.lr.ph.preheader ]
  %.056 = phi ptr [ %i.ar, %bb.g ], [ %i.s, %.lr.ph.preheader ]
  %.03555 = phi i64 [ %i.ba, %bb.g ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.af = mul i64 %.03555, %i.f
  %i.ag = getelementptr i8, ptr %i.j, i64 %i.af   ; 3 uses
  %i.ah = call i32 @mprotect(ptr noundef %i.ag, i64 noundef %i.ae, i32 noundef 0) #10
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aj = call i32 @munmap(ptr noundef nonnull %i.j, i64 noundef %i.i) #10 ; 0 uses
  %i.ak = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  %i.al = call ptr @rb_errno_ptr() #10
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = call ptr @strerror(i32 noundef %i.am) #10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.45, ptr noundef %i.an) #26
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.ao = load i64, ptr @pagesize, align 8, !tbaa !65 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = sub i64 %i.d, %i.ao
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.d   ; 8 uses
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !251
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  store i64 %i.d, ptr %i.as, align 8, !tbaa !252
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.d
  %i.au = getelementptr i8, ptr %i.ar, i64 8
  %i.av = getelementptr i8, ptr %i.ar, i64 24
  %i.aw = sub i64 0, %i.ao
  %i.ax = getelementptr i8, ptr %i.at, i64 %i.aw
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !202
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !203
  %i.ay = getelementptr i8, ptr %i.ar, i64 32
  store ptr %0, ptr %i.ay, align 8, !tbaa !253
  %i.az = getelementptr i8, ptr %i.ar, i64 48
  store ptr %.056, ptr %i.az, align 8, !tbaa !197
  %i.ba = add nuw i64 %.03555, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %.045
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

declare void @ruby_annotate_mmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #25

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_lock_leave_body(ptr noundef) local_unnamed_addr #2

declare i32 @rb_threadptr_execute_interrupts(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #26

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @ruby_stop(i32 noundef) local_unnamed_addr #18

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

declare i64 @rb_to_symbol(i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_new() local_unnamed_addr #2

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_block_proc() local_unnamed_addr #2

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @storage_access_must_be_from_same_fiber(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !177

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !54
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !178

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !179  ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @fiber_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !149

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !182  ; 2 uses
  %i.t = icmp eq ptr %i.s, @fiber_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !187

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @fiber_data_type) #10
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i, label %bb.e, label %fiber_ptr.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.v = load i64, ptr @rb_eFiberError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.49) #26
  unreachable

fiber_ptr.exit:                                   ; preds = %rbimpl_check_typeddata.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  store volatile ptr %i.x, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !170  ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !42
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %fiber_current.exit

bb.f:                                             ; preds = %fiber_ptr.exit
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.ae = load i64, ptr @rb_cFiber, align 8, !tbaa !65
  %i.af = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.ae, ptr noundef null, ptr noundef nonnull @fiber_data_type) #10 ; 2 uses
  %i.ag = getelementptr i8, ptr %.val.i, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  %i.ai = getelementptr i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !170 ; 4 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 424
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !171
  %i.al = inttoptr i64 %i.af to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 32
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !68
  %i.an = getelementptr i8, ptr %i.aj, i64 16
  store i64 %i.af, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr i8, ptr %i.aj, i64 560
  store ptr null, ptr %i.ao, align 8, !tbaa !172
  %.pre.i = load ptr, ptr %i.y, align 8, !tbaa !170
  br label %fiber_current.exit

fiber_current.exit:                               ; preds = %fiber_ptr.exit, %bb.f
  %i.ap = phi ptr [ %.pre.i, %bb.f ], [ %i.z, %fiber_ptr.exit ]
  %.not = icmp eq ptr %.1.i.i, %i.ap
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %fiber_current.exit
  %i.aq = load i64, ptr @rb_eArgError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.60) #26
  unreachable

bb.h:                                             ; preds = %fiber_current.exit
  ret void
}

declare zeroext i1 @rb_warning_category_enabled_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #16

declare i64 @rb_vm_backtrace(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_vm_backtrace_locations(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #2

declare i64 @rb_any_to_s(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #27

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_block_to_s(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_fiber_scheduler_get() local_unnamed_addr #2

declare i64 @rb_fiber_scheduler_set(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fiber_scheduler_current() local_unnamed_addr #2

declare i64 @rb_fiber_scheduler_fiber(i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define internal fastcc void @cont_restore_0(ptr noundef %0) unnamed_addr #28 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.d, label %rbimpl_size_mul_or_raise.exit, !prof !256

bb.d:                                             ; preds = %bb.c
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.h) #26
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.c
  %i.j = alloca i8, i64 %i.g, align 16            ; 2 uses
  store volatile i64 0, ptr %i.j, align 16, !tbaa !65
  %i.k = load volatile i64, ptr %i.j, align 16, !tbaa !65 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %rbimpl_size_mul_or_raise.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  call fastcc void @cont_restore_1(ptr noundef nonnull %0) #34
  unreachable
}

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define internal fastcc void @cont_restore_1(ptr noundef %0) unnamed_addr #28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !67 ; 10 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !238
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val.i.i, i64 424
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !171  ; 2 uses
  %.not39.i = icmp eq ptr %i.j, null
  br i1 %.not39.i, label %ec_switch.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.c, %bb.b
  %.048.i = phi ptr [ %i.j, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr i8, ptr %.048.i, i64 80    ; 4 uses
  %.not40.i = icmp eq ptr %i.l, %i.m
  br i1 %.not40.i, label %ec_switch.exit.i, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.n = getelementptr i8, ptr %.val.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  store ptr %i.m, ptr %i.k, align 8, !tbaa !70
  tail call void @rb_current_ec_set(ptr noundef %i.m) #10
  %i.p = getelementptr i8, ptr %i.o, i64 312
  store ptr %i.m, ptr %i.p, align 8, !tbaa !175
  %i.q = getelementptr i8, ptr %.val.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = getelementptr i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !244
  %i.u = icmp eq ptr %i.t, %.val.i.i
  br i1 %i.u, label %bb.e, label %ec_switch.exit.i

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @rb_signal_buff_size() #10
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %ec_switch.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.048.i, i64 112
  %i.y = atomicrmw volatile or ptr %i.x, i32 8 seq_cst, align 4 ; 0 uses
  br label %ec_switch.exit.i

ec_switch.exit.i:                                 ; preds = %bb.f, %bb.e, %bb.d, %.thread.i, %bb.c
  %i.z = getelementptr i8, ptr %.val.i.i, i64 48  ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !257
  %i.ad = getelementptr i8, ptr %0, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !257
  %.not41.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not41.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ec_switch.exit.i
  %i.af = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.73) #26
  unreachable

bb.h:                                             ; preds = %ec_switch.exit.i
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !47 ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !212 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !233 ; 4 uses
  %i.al = icmp ugt i64 %i.ak, 2305843009213693951
  br i1 %i.al, label %bb.i, label %rbimpl_size_mul_or_raise.exit.i, !prof !256

bb.i:                                             ; preds = %bb.h
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ak) #26
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.h
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.j

bb.j:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.am = shl nuw i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ag, ptr noundef nonnull readonly align 1 %i.ai, i64 noundef range(i64 1, 0) %i.am, i1 noundef false) #10
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !70 ; 2 uses
  %.pre49.i = load ptr, ptr %.pre.i, align 8, !tbaa !47
  %.pre50.i = load ptr, ptr %i.ah, align 8, !tbaa !212
  %.pre51.i = load i64, ptr %i.aj, align 8, !tbaa !233
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.j, %rbimpl_size_mul_or_raise.exit.i
  %i.an = phi i64 [ 0, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre51.i, %bb.j ]
  %i.ao = phi ptr [ %i.ai, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre50.i, %bb.j ]
  %i.ap = phi ptr [ %i.ag, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre49.i, %bb.j ]
  %i.aq = phi ptr [ %i.aa, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = getelementptr i8, ptr %0, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !234 ; 5 uses
  %i.aw = sub i64 0, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.ao, i64 %i.an
  %i.az = icmp ugt i64 %i.av, 2305843009213693951
  br i1 %i.az, label %bb.k, label %rbimpl_size_mul_or_raise.exit42.i, !prof !256

bb.k:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.av) #26
  unreachable

rbimpl_size_mul_or_raise.exit42.i:                ; preds = %ruby_nonempty_memcpy.exit.i
  %.not.i43.i = icmp eq i64 %i.av, 0
  br i1 %.not.i43.i, label %ruby_nonempty_memcpy.exit45.i, label %bb.l

bb.l:                                             ; preds = %rbimpl_size_mul_or_raise.exit42.i
  %i.ba = shl nuw i64 %i.av, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ax, ptr noundef nonnull readonly align 1 %i.ay, i64 noundef range(i64 1, 0) %i.ba, i1 noundef false) #10
  %.pre52.i = load ptr, ptr %i.z, align 8, !tbaa !70
  br label %ruby_nonempty_memcpy.exit45.i

ruby_nonempty_memcpy.exit45.i:                    ; preds = %bb.l, %rbimpl_size_mul_or_raise.exit42.i
  %i.bb = phi ptr [ %i.aq, %rbimpl_size_mul_or_raise.exit42.i ], [ %.pre52.i, %bb.l ] ; 5 uses
  %i.bc = getelementptr i8, ptr %0, i64 96
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  %i.be = getelementptr i8, ptr %0, i64 224
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !258
  %i.bg = getelementptr i8, ptr %i.bb, i64 144
  store i8 %i.bf, ptr %i.bg, align 8, !tbaa !258
  %i.bh = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !206
  store <2 x ptr> %i.bh, ptr %i.bd, align 8, !tbaa !206
  %i.bi = getelementptr i8, ptr %0, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !153
  %i.bk = getelementptr i8, ptr %i.bb, i64 104
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !153
  %i.bl = getelementptr i8, ptr %0, i64 192
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !154
  %i.bn = getelementptr i8, ptr %i.bb, i64 112
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !154
  %i.bo = getelementptr i8, ptr %0, i64 208
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !152
  %i.bq = getelementptr i8, ptr %i.bb, i64 128
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !152
  br label %cont_restore_thread.exit

bb.m:                                             ; preds = %bb.a
  %i.br = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.bs = getelementptr i8, ptr %.val.i.i, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = getelementptr i8, ptr %.val.i.i, i64 48
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !70
  tail call void @rb_current_ec_set(ptr noundef %i.br) #10
  %i.bv = getelementptr i8, ptr %i.bt, i64 312
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !175
  %i.bw = getelementptr i8, ptr %.val.i.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !130
  %i.by = getelementptr i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !244
  %i.ca = icmp eq ptr %i.bz, %.val.i.i
  br i1 %i.ca, label %bb.n, label %cont_restore_thread.exit

bb.n:                                             ; preds = %bb.m
  %i.cb = tail call i32 @rb_signal_buff_size() #10
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %cont_restore_thread.exit

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr i8, ptr %0, i64 112
  %i.ce = atomicrmw volatile or ptr %i.cd, i32 8 seq_cst, align 4 ; 0 uses
  br label %cont_restore_thread.exit

cont_restore_thread.exit:                         ; preds = %ruby_nonempty_memcpy.exit45.i, %bb.m, %bb.n, %bb.o
  %i.cf = getelementptr i8, ptr %0, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !255 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %ruby_nonempty_memcpy.exit, label %bb.p

bb.p:                                             ; preds = %cont_restore_thread.exit
  %i.ch = getelementptr i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !235
  %i.cj = getelementptr i8, ptr %0, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !236 ; 4 uses
  %i.cl = icmp ugt i64 %i.ck, 2305843009213693951
  br i1 %i.cl, label %bb.q, label %rbimpl_size_mul_or_raise.exit, !prof !256

bb.q:                                             ; preds = %bb.p
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ck) #26
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.p
  %.not.i6 = icmp eq i64 %i.ck, 0
  br i1 %.not.i6, label %ruby_nonempty_memcpy.exit, label %bb.r

bb.r:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.cm = shl nuw i64 %i.ck, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cg, ptr noundef nonnull readonly align 1 %i.ci, i64 noundef range(i64 1, 0) %i.cm, i1 noundef false) #10
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.r, %rbimpl_size_mul_or_raise.exit, %cont_restore_thread.exit
  %i.cn = getelementptr i8, ptr %0, i64 480
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.cn)
  unreachable
}

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #29

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @cont_capture(ptr noundef nonnull %0) unnamed_addr #23 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 22 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  store volatile ptr %0, ptr %i.d, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.h, ptr %i.c, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr i8, ptr %.val.i, i64 48    ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !89
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr @rb_eThreadError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.40) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_vm_stack_to_heap(ptr noundef nonnull %i.k) #10
  %i.o = load i64, ptr @rb_cContinuation, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !66
  store volatile ptr %i.p, ptr %i.a, align 8, !tbaa !66
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.q, align 8, !tbaa !67 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i.i, i64 48  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr @rb_eThreadError, align 8, !tbaa !65
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.40) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.o, i64 noundef 528, ptr noundef nonnull @cont_data_type) #10 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !179
  %i.aa = trunc i64 %i.z to i1
  %i.ab = getelementptr i8, ptr %i.x, i64 32      ; 2 uses
  br i1 %i.aa, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !181
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.ab, %bb.e ] ; 9 uses
  store volatile i64 %i.w, ptr %i.b, align 8, !tbaa !65
  %.0..0..0..0..0..0.4.i = load volatile i64, ptr %i.b, align 8, !tbaa !65
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  store i64 %.0..0..0..0..0..0.4.i, ptr %i.ae, align 8, !tbaa !237
  %.val.i9.i = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.af = getelementptr i8, ptr %i.ad, i64 80     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(400) %.val.i9.i, i64 400, i1 false), !tbaa.struct !91
  %i.ag = getelementptr i8, ptr %i.ad, i64 264
  store ptr null, ptr %i.ag, align 8, !tbaa !101
  %i.ah = getelementptr i8, ptr %i.ad, i64 128
  store ptr %.val.i.i, ptr %i.ah, align 8, !tbaa !102
  %i.ai = getelementptr i8, ptr %i.ad, i64 152
  store ptr null, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr i8, ptr %i.ad, i64 160
  store i64 4, ptr %i.aj, align 8, !tbaa !104
  %i.ak = getelementptr i8, ptr %i.ad, i64 168
  store i64 4, ptr %i.ak, align 8, !tbaa !105
  %i.al = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #32 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  tail call void @rb_memerror() #33
  unreachable

bb.h:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  store ptr %i.af, ptr %i.al, align 8, !tbaa !44
  tail call void @rb_native_mutex_lock(ptr noundef nonnull @jit_cont_lock) #10
  %i.an = load ptr, ptr @first_jit_cont, align 8, !tbaa !43 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %cont_new.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !106
  br label %cont_new.exit

cont_new.exit:                                    ; preds = %bb.h, %bb.i
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !61
  store ptr %i.al, ptr @first_jit_cont, align 8, !tbaa !43
  tail call void @rb_native_mutex_unlock(ptr noundef nonnull @jit_cont_lock) #10
  %i.ar = getelementptr i8, ptr %i.ad, i64 520
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store volatile ptr %i.ad, ptr %i.e, align 8, !tbaa !261
  %.0..0..0..0.13 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.as = getelementptr i8, ptr %.0..0..0..0.13, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !237
  store volatile i64 %i.at, ptr %i.f, align 8, !tbaa !65
  %i.au = getelementptr i8, ptr %i.k, i64 16      ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.0..0..0..0.14 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bd = getelementptr i8, ptr %.0..0..0..0.14, i64 40
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !233
  %i.be = getelementptr i8, ptr %i.k, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = getelementptr [8 x i8], ptr %i.ay, i64 %i.bf
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.av to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %.0..0..0..0.15 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bl = getelementptr i8, ptr %.0..0..0..0.15, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !234
  %.0..0..0..0.16 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bm = getelementptr i8, ptr %.0..0..0..0.16, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !233
  %.0..0..0..0.17 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bo = getelementptr i8, ptr %.0..0..0..0.17, i64 48
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !234
  %i.bq = add i64 %i.bp, %i.bn
  %i.br = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bq, i64 noundef 8) #32
  %.0..0..0..0.18 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bs = getelementptr i8, ptr %.0..0..0..0.18, i64 32
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !212
  %.0..0..0..0.19 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bt = getelementptr i8, ptr %.0..0..0..0.19, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !212
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !47
  %.0..0..0..0.20 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.bw = getelementptr i8, ptr %.0..0..0..0.20, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !233 ; 4 uses
  %i.by = icmp ugt i64 %i.bx, 2305843009213693951
  br i1 %i.by, label %bb.j, label %rbimpl_size_mul_or_raise.exit, !prof !256

bb.j:                                             ; preds = %cont_new.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bx) #26
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %cont_new.exit
  %.not.i35 = icmp eq i64 %i.bx, 0
  br i1 %.not.i35, label %ruby_nonempty_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bz = shl nuw i64 %i.bx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bu, ptr noundef nonnull readonly align 1 %i.bv, i64 noundef range(i64 1, 0) %i.bz, i1 noundef false) #10
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.k
  %.0..0..0..0.21 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.ca = getelementptr i8, ptr %.0..0..0..0.21, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !212
  %.0..0..0..0.22 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.cc = getelementptr i8, ptr %.0..0..0..0.22, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !233
  %i.ce = getelementptr [8 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !48
  %.0..0..0..0.23 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.cg = getelementptr i8, ptr %.0..0..0..0.23, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !234 ; 4 uses
  %i.ci = icmp ugt i64 %i.ch, 2305843009213693951
  br i1 %i.ci, label %bb.l, label %rbimpl_size_mul_or_raise.exit36, !prof !256

bb.l:                                             ; preds = %ruby_nonempty_memcpy.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ch) #26
  unreachable

rbimpl_size_mul_or_raise.exit36:                  ; preds = %ruby_nonempty_memcpy.exit
  %.not.i37 = icmp eq i64 %i.ch, 0
  br i1 %.not.i37, label %ruby_nonempty_memcpy.exit39, label %bb.m

bb.m:                                             ; preds = %rbimpl_size_mul_or_raise.exit36
  %i.cj = shl nuw i64 %i.ch, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ce, ptr noundef nonnull readonly align 1 %i.cf, i64 noundef range(i64 1, 0) %i.cj, i1 noundef false) #10
  br label %ruby_nonempty_memcpy.exit39

ruby_nonempty_memcpy.exit39:                      ; preds = %rbimpl_size_mul_or_raise.exit36, %bb.m
  %.0..0..0..0.24 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.ck = getelementptr i8, ptr %.0..0..0..0.24, i64 80
  tail call void @rb_ec_set_vm_stack(ptr noundef %i.ck, ptr noundef null, i64 noundef 0) #10
  %.0..0..0..0.25 = load volatile ptr, ptr %i.e, align 8, !tbaa !261 ; 3 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.cm = getelementptr i8, ptr %i.cl, i64 184
  %i.cn = tail call ptr asm sideeffect "movq\09%rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !264
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !101
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !70  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 176
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !208 ; 4 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !101 ; 4 uses
  %i.ct = icmp ugt ptr %i.cq, %i.cs               ; 2 uses
  %..i = select i1 %i.ct, ptr %i.cq, ptr %i.cs
  %.35.i = select i1 %i.ct, ptr %i.cs, ptr %i.cq  ; 2 uses
  %i.cu = ptrtoint ptr %..i to i64
  %i.cv = ptrtoint ptr %.35.i to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %.sink27.i = ashr exact i64 %i.cw, 3            ; 5 uses
  %i.cx = getelementptr i8, ptr %.0..0..0..0.25, i64 72
  store i64 %.sink27.i, ptr %i.cx, align 8, !tbaa !236
  %i.cy = getelementptr i8, ptr %.0..0..0..0.25, i64 64 ; 2 uses
  store ptr %.35.i, ptr %i.cy, align 8, !tbaa !255
  %i.cz = getelementptr i8, ptr %.0..0..0..0.25, i64 56 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !235 ; 2 uses
  %.not.i40 = icmp eq ptr %i.da, null
  br i1 %.not.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ruby_nonempty_memcpy.exit39
  %i.db = tail call nonnull ptr @ruby_xrealloc2(ptr noundef nonnull %i.da, i64 noundef %.sink27.i, i64 noundef 8) #37
  br label %bb.p

bb.o:                                             ; preds = %ruby_nonempty_memcpy.exit39
  %i.dc = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.sink27.i, i64 noundef 8) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge.i = phi ptr [ %i.dc, %bb.o ], [ %i.db, %bb.n ] ; 2 uses
  store ptr %storemerge.i, ptr %i.cz, align 8, !tbaa !235
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !255
  %i.de = icmp ugt i64 %.sink27.i, 2305843009213693951
  br i1 %i.de, label %bb.q, label %rbimpl_size_mul_or_raise.exit.i, !prof !256

bb.q:                                             ; preds = %bb.p
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %.sink27.i) #26
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.p
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %cont_save_machine_stack.exit, label %bb.r

bb.r:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %storemerge.i, ptr noundef nonnull readonly align 1 %i.dd, i64 noundef range(i64 1, 0) %i.cw, i1 noundef false) #10
  br label %cont_save_machine_stack.exit

cont_save_machine_stack.exit:                     ; preds = %rbimpl_size_mul_or_raise.exit.i, %bb.r
  %.0..0..0..0.26 = load volatile ptr, ptr %i.e, align 8, !tbaa !261 ; 2 uses
  %i.df = getelementptr i8, ptr %.0..0..0..0.26, i64 480 ; 2 uses
  %i.dg = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.dg, ptr %i.df, align 8
  %i.dh = tail call ptr @llvm.stacksave.p0()
  %i.di = getelementptr i8, ptr %.0..0..0..0.26, i64 496
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = tail call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.df)
  %.not34 = icmp eq i32 %i.dj, 0
  br i1 %.not34, label %bb.v, label %bb.s

bb.s:                                             ; preds = %cont_save_machine_stack.exit
  %.0..0..0..0.27 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  store volatile ptr %.0..0..0..0.27, ptr %i.e, align 8, !tbaa !261
  %.0..0..0..0.28 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.dk = getelementptr i8, ptr %.0..0..0..0.28, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !150 ; 2 uses
  %.0..0..0..0.29 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.dm = getelementptr i8, ptr %.0..0..0..0.29, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !151
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @rb_exc_raise(i64 noundef %i.dl) #26
  unreachable

bb.u:                                             ; preds = %bb.s
  %.0..0..0..0.30 = load volatile ptr, ptr %i.e, align 8, !tbaa !261
  %i.dp = getelementptr i8, ptr %.0..0..0..0.30, i64 24
  store i64 4, ptr %i.dp, align 8, !tbaa !150
  %.0..0..0..0.31 = load volatile ptr, ptr %i.d, align 8, !tbaa !259
  store volatile i32 1, ptr %.0..0..0..0.31, align 4, !tbaa !7
  br label %bb.w

bb.v:                                             ; preds = %cont_save_machine_stack.exit
  %.0..0..0..0.32 = load volatile ptr, ptr %i.d, align 8, !tbaa !259
  store volatile i32 0, ptr %.0..0..0..0.32, align 4, !tbaa !7
  %.0..0..0..0.8 = load volatile i64, ptr %i.f, align 8, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi i64 [ %i.dl, %bb.u ], [ %.0..0..0..0.8, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i64 %.0
}

declare void @rb_vm_stack_to_heap(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #20

declare void @rb_ec_set_vm_stack(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_data_typed_object_zalloc(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn nounwind }
attributes #27 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { noinline noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #30 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { cold nounwind }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"fiber_pool", !13, i64 0, !15, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !8, i64 40, !16, i64 48, !16, i64 56}
!13 = !{!"p1 _ZTS21fiber_pool_allocation", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 _ZTS18fiber_pool_vacancy", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !13, i64 40}
!18 = !{!"fiber_pool_allocation", !14, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !19, i64 32, !13, i64 40}
!19 = !{!"p1 _ZTS10fiber_pool", !14, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !32, i64 128}
!23 = !{!"rb_fiber_struct", !24, i64 0, !16, i64 528, !31, i64 536, !31, i64 544, !8, i64 552, !8, i64 552, !8, i64 552, !8, i64 552, !39, i64 560, !41, i64 576}
!24 = !{!"rb_context_struct", !8, i64 0, !8, i64 4, !8, i64 8, !16, i64 16, !16, i64 24, !25, i64 32, !27, i64 56, !28, i64 80, !9, i64 480, !38, i64 520}
!25 = !{!"cont_saved_vm_stack", !26, i64 0, !16, i64 8, !16, i64 16}
!26 = !{!"p1 long", !14, i64 0}
!27 = !{!"", !26, i64 0, !26, i64 8, !16, i64 16}
!28 = !{!"rb_execution_context_struct", !26, i64 0, !16, i64 8, !29, i64 16, !30, i64 24, !8, i64 32, !8, i64 36, !31, i64 40, !32, i64 48, !33, i64 56, !33, i64 64, !34, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !26, i64 104, !16, i64 112, !35, i64 120, !16, i64 128, !16, i64 136, !9, i64 144, !8, i64 145, !16, i64 152, !36, i64 160, !37, i64 176}
!29 = !{!"p1 _ZTS23rb_control_frame_struct", !14, i64 0}
!30 = !{!"p1 _ZTS9rb_vm_tag", !14, i64 0}
!31 = !{!"p1 _ZTS15rb_fiber_struct", !14, i64 0}
!32 = !{!"p1 _ZTS16rb_thread_struct", !14, i64 0}
!33 = !{!"long long", !9, i64 0}
!34 = !{!"p1 _ZTS11rb_id_table", !14, i64 0}
!35 = !{!"p1 _ZTS19rb_trace_arg_struct", !14, i64 0}
!36 = !{!"", !16, i64 0, !16, i64 8}
!37 = !{!"", !26, i64 0, !26, i64 8, !16, i64 16, !9, i64 24}
!38 = !{!"p1 _ZTS11rb_jit_cont", !14, i64 0}
!39 = !{!"coroutine_context", !40, i64 0, !14, i64 8}
!40 = !{!"any p2 pointer", !14, i64 0}
!41 = !{!"fiber_pool_stack", !14, i64 0, !14, i64 8, !16, i64 16, !16, i64 24, !19, i64 32, !13, i64 40}
!42 = !{!23, !16, i64 16}
!43 = !{!38, !38, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"rb_jit_cont", !46, i64 0, !38, i64 8, !38, i64 16}
!46 = !{!"p1 _ZTS27rb_execution_context_struct", !14, i64 0}
!47 = !{!28, !26, i64 0}
!48 = !{!28, !29, i64 16}
!49 = !{!28, !16, i64 8}
!50 = !{!51, !26, i64 0}
!51 = !{!"rb_control_frame_struct", !26, i64 0, !26, i64 8, !52, i64 16, !16, i64 24, !26, i64 32, !14, i64 40, !14, i64 48}
!52 = !{!"p1 _ZTS14rb_iseq_struct", !14, i64 0}
!53 = !{!51, !52, i64 16}
!54 = !{!55, !16, i64 0}
!55 = !{!"RBasic", !16, i64 0, !16, i64 8}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !21}
!58 = !{!51, !14, i64 48}
!59 = distinct !{!59, !21}
!60 = distinct !{!60, !21}
!61 = !{!45, !38, i64 16}
!62 = distinct !{!62, !21}
!63 = !{!28, !16, i64 96}
!64 = !{!23, !16, i64 176}
!65 = !{!16, !16, i64 0}
!66 = !{!46, !46, i64 0}
!67 = !{!28, !32, i64 48}
!68 = !{!69, !14, i64 32}
!69 = !{!"RData", !55, i64 0, !14, i64 16, !14, i64 24, !14, i64 32}
!70 = !{!71, !46, i64 48}
!71 = !{!"rb_thread_struct", !72, i64 0, !16, i64 16, !74, i64 24, !75, i64 32, !76, i64 40, !46, i64 48, !77, i64 56, !81, i64 208, !8, i64 212, !16, i64 216, !83, i64 224, !16, i64 232, !16, i64 240, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !8, i64 248, !9, i64 249, !8, i64 252, !14, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !9, i64 296, !84, i64 336, !16, i64 352, !85, i64 360, !86, i64 368, !87, i64 384, !9, i64 392, !8, i64 416, !31, i64 424, !16, i64 432, !8, i64 440, !16, i64 448, !40, i64 456, !88, i64 464}
!72 = !{!"ccan_list_node", !73, i64 0, !73, i64 8}
!73 = !{!"p1 _ZTS14ccan_list_node", !14, i64 0}
!74 = !{!"p1 _ZTS16rb_ractor_struct", !14, i64 0}
!75 = !{!"p1 _ZTS12rb_vm_struct", !14, i64 0}
!76 = !{!"p1 _ZTS16rb_native_thread", !14, i64 0}
!77 = !{!"rb_thread_sched_item", !78, i64 0, !79, i64 80, !8, i64 128, !81, i64 132, !81, i64 133, !14, i64 136, !82, i64 144}
!78 = !{!"", !72, i64 0, !72, i64 16, !72, i64 32, !72, i64 48, !72, i64 64}
!79 = !{!"rb_thread_sched_waiting", !8, i64 0, !80, i64 8, !72, i64 32}
!80 = !{!"", !16, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!81 = !{!"_Bool", !9, i64 0}
!82 = !{!"p1 _ZTS17coroutine_context", !14, i64 0}
!83 = !{!"p1 _ZTS15rb_calling_info", !14, i64 0}
!84 = !{!"rb_unblock_callback", !14, i64 0, !14, i64 8}
!85 = !{!"p1 _ZTS15rb_mutex_struct", !14, i64 0}
!86 = !{!"ccan_list_head", !72, i64 0}
!87 = !{!"p1 _ZTS15rb_waiting_list", !14, i64 0}
!88 = !{!"rb_ext_config", !81, i64 0}
!89 = !{!28, !30, i64 24}
!90 = !{!23, !8, i64 0}
!91 = !{i64 0, i64 8, !92, i64 8, i64 8, !65, i64 16, i64 8, !93, i64 24, i64 8, !94, i64 32, i64 4, !7, i64 36, i64 4, !7, i64 40, i64 8, !95, i64 48, i64 8, !96, i64 56, i64 8, !97, i64 64, i64 8, !97, i64 72, i64 8, !98, i64 80, i64 8, !65, i64 88, i64 8, !65, i64 96, i64 8, !65, i64 104, i64 8, !92, i64 112, i64 8, !65, i64 120, i64 8, !99, i64 128, i64 8, !65, i64 136, i64 8, !65, i64 144, i64 1, !100, i64 145, i64 1, !100, i64 152, i64 8, !65, i64 160, i64 8, !65, i64 168, i64 8, !65, i64 176, i64 8, !92, i64 184, i64 8, !92, i64 192, i64 8, !65, i64 200, i64 200, !100}
!92 = !{!26, !26, i64 0}
!93 = !{!29, !29, i64 0}
!94 = !{!30, !30, i64 0}
!95 = !{!31, !31, i64 0}
!96 = !{!32, !32, i64 0}
!97 = !{!33, !33, i64 0}
!98 = !{!34, !34, i64 0}
!99 = !{!35, !35, i64 0}
!100 = !{!9, !9, i64 0}
!101 = !{!28, !26, i64 184}
!102 = !{!24, !32, i64 128}
!103 = !{!24, !34, i64 152}
!104 = !{!24, !16, i64 160}
!105 = !{!24, !16, i64 168}
!106 = !{!45, !38, i64 8}
!107 = !{!24, !38, i64 520}
!108 = !{!23, !31, i64 120}
!109 = !{!71, !74, i64 24}
!110 = !{!111, !33, i64 376}
!111 = !{!"rb_ractor_struct", !112, i64 0, !116, i64 56, !118, i64 184, !16, i64 328, !16, i64 336, !16, i64 344, !8, i64 352, !72, i64 360, !33, i64 376, !115, i64 384, !34, i64 392, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !16, i64 440, !81, i64 448, !14, i64 456}
!112 = !{!"rb_ractor_pub", !16, i64 0, !8, i64 8, !113, i64 16, !115, i64 40, !8, i64 48}
!113 = !{!"rb_hook_list_struct", !114, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !81, i64 20}
!114 = !{!"p1 _ZTS20rb_event_hook_struct", !14, i64 0}
!115 = !{!"p1 _ZTS8st_table", !14, i64 0}
!116 = !{!"rb_ractor_sync", !9, i64 0, !117, i64 40, !86, i64 48, !16, i64 64, !115, i64 72, !16, i64 80, !86, i64 88, !74, i64 104, !16, i64 112, !81, i64 120}
!117 = !{!"p1 _ZTS12ractor_queue", !14, i64 0}
!118 = !{!"", !86, i64 0, !8, i64 16, !8, i64 20, !8, i64 24, !119, i64 32, !46, i64 128, !32, i64 136}
!119 = !{!"rb_thread_sched", !9, i64 0, !32, i64 40, !81, i64 48, !81, i64 49, !81, i64 50, !86, i64 56, !8, i64 72, !72, i64 80}
!120 = !{!23, !33, i64 136}
!121 = !{!23, !31, i64 536}
!122 = !{!23, !16, i64 528}
!123 = !{!23, !14, i64 576}
!124 = !{!23, !19, i64 608}
!125 = !{!71, !8, i64 440}
!126 = !{!127, !8, i64 64}
!127 = !{!"rb_vm_tag", !16, i64 0, !16, i64 8, !9, i64 16, !30, i64 56, !8, i64 64, !8, i64 68}
!128 = !{!127, !16, i64 0}
!129 = !{!127, !30, i64 56}
!130 = !{!71, !75, i64 32}
!131 = !{!132, !74, i64 88}
!132 = !{!"rb_vm_struct", !16, i64 0, !133, i64 8, !14, i64 488, !33, i64 496, !8, i64 504, !8, i64 508, !8, i64 508, !8, i64 508, !8, i64 508, !16, i64 512, !136, i64 520, !9, i64 528, !137, i64 568, !137, i64 576, !115, i64 584, !138, i64 592, !113, i64 1112, !139, i64 1136, !8, i64 1144, !86, i64 1152, !9, i64 1168, !16, i64 1208, !16, i64 1216, !16, i64 1224, !16, i64 1232, !8, i64 1240, !140, i64 1248, !143, i64 1264, !144, i64 1272, !115, i64 1280, !34, i64 1288, !115, i64 1296, !145, i64 1304, !145, i64 1312, !34, i64 1320, !16, i64 1328, !9, i64 1336, !146, i64 9520}
!133 = !{!"", !86, i64 0, !8, i64 16, !8, i64 20, !74, i64 24, !32, i64 32, !134, i64 40, !135, i64 152}
!134 = !{!"", !9, i64 0, !74, i64 40, !8, i64 48, !9, i64 56, !81, i64 104}
!135 = !{!"", !9, i64 0, !74, i64 40, !81, i64 48, !9, i64 56, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !86, i64 120, !8, i64 136, !86, i64 144, !86, i64 160, !86, i64 176, !81, i64 192, !9, i64 200, !9, i64 248, !81, i64 296, !8, i64 300, !8, i64 304, !74, i64 312, !8, i64 320}
!136 = !{!"p1 _ZTS18global_object_list", !14, i64 0}
!137 = !{!"p1 _ZTS13rb_box_struct", !14, i64 0}
!138 = !{!"", !9, i64 0}
!139 = !{!"p1 _ZTS22rb_postponed_job_queue", !14, i64 0}
!140 = !{!"", !141, i64 0, !142, i64 8}
!141 = !{!"p1 _ZTS11rb_objspace", !14, i64 0}
!142 = !{!"p1 _ZTS24gc_mark_func_data_struct", !14, i64 0}
!143 = !{!"p1 _ZTS15rb_at_exit_list", !14, i64 0}
!144 = !{!"p1 _ZTS19rb_builtin_function", !14, i64 0}
!145 = !{!"p1 _ZTS9set_table", !14, i64 0}
!146 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!147 = !{!132, !8, i64 96}
!148 = !{!127, !8, i64 68}
!149 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!150 = !{!24, !16, i64 24}
!151 = !{!24, !8, i64 4}
!152 = !{!28, !16, i64 128}
!153 = !{!28, !26, i64 104}
!154 = !{!28, !16, i64 112}
!155 = !{}
!156 = !{!113, !8, i64 8}
!157 = !{!71, !16, i64 16}
!158 = !{!159, !8, i64 0}
!159 = !{!"rb_trace_arg_struct", !8, i64 0, !46, i64 8, !29, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !8, i64 64, !8, i64 68, !16, i64 72}
!160 = !{!159, !46, i64 8}
!161 = !{!159, !29, i64 16}
!162 = !{!159, !16, i64 24}
!163 = !{!159, !16, i64 56}
!164 = !{!159, !16, i64 72}
!165 = !{!159, !8, i64 64}
!166 = !{!24, !8, i64 8}
!167 = !{!23, !16, i64 24}
!168 = !{!23, !26, i64 56}
!169 = !{!23, !16, i64 72}
!170 = !{!28, !31, i64 40}
!171 = !{!71, !31, i64 424}
!172 = !{!39, !40, i64 0}
!173 = !{!23, !31, i64 544}
!174 = distinct !{!174, !21}
!175 = !{!111, !46, i64 312}
!176 = !{!23, !34, i64 152}
!177 = !{!"branch_weights", i32 1073205, i32 2146410443}
!178 = !{!"branch_weights", i32 -100663296, i32 2097152}
!179 = !{!180, !16, i64 24}
!180 = !{!"RTypedData", !55, i64 0, !16, i64 16, !16, i64 24, !14, i64 32}
!181 = !{!180, !14, i64 32}
!182 = !{!183, !186, i64 48}
!183 = !{!"rb_data_type_struct", !184, i64 0, !185, i64 8, !186, i64 48, !14, i64 56, !16, i64 64}
!184 = !{!"p1 omnipotent char", !14, i64 0}
!185 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !9, i64 32}
!186 = !{!"p1 _ZTS19rb_data_type_struct", !14, i64 0}
!187 = distinct !{!187, !21}
!188 = distinct !{null}
!189 = !{!190}
!190 = distinct !{!190, !191, !"fiber_pool_stack_acquire: argument 0"}
!191 = distinct !{!191, !"fiber_pool_stack_acquire"}
!192 = !{!74, !74, i64 0}
!193 = distinct !{null, null, null}
!194 = !{!12, !15, i64 8}
!195 = !{!12, !16, i64 32}
!196 = !{!12, !16, i64 24}
!197 = !{!198, !15, i64 48}
!198 = !{!"fiber_pool_vacancy", !41, i64 0, !15, i64 48}
!199 = !{!12, !16, i64 48}
!200 = !{!41, !14, i64 0}
!201 = !{!41, !16, i64 16}
!202 = !{!41, !14, i64 8}
!203 = !{!41, !16, i64 24}
!204 = !{!12, !16, i64 56}
!205 = distinct !{null, null, null, null}
!206 = !{!14, !14, i64 0}
!207 = !{!23, !14, i64 584}
!208 = !{!28, !26, i64 176}
!209 = !{!23, !16, i64 600}
!210 = !{!28, !16, i64 192}
!211 = !{!23, !14, i64 568}
!212 = !{!24, !26, i64 32}
!213 = distinct !{null, null}
!214 = !{!28, !34, i64 72}
!215 = !{!28, !16, i64 80}
!216 = !{!28, !16, i64 88}
!217 = !{!41, !19, i64 32}
!218 = !{i64 0, i64 8, !206, i64 8, i64 8, !206, i64 16, i64 8, !65, i64 24, i64 8, !65, i64 32, i64 8, !219, i64 40, i64 8, !220}
!219 = !{!19, !19, i64 0}
!220 = !{!13, !13, i64 0}
!221 = !{!12, !8, i64 40}
!222 = !{!28, !8, i64 36}
!223 = !{!23, !8, i64 4}
!224 = !{!132, !16, i64 9536}
!225 = !{!132, !16, i64 9544}
!226 = !{i64 2152322006}
!227 = !{!12, !16, i64 16}
!228 = distinct !{null}
!229 = !{!230, !16, i64 16}
!230 = !{!"RString", !55, i64 0, !16, i64 16, !9, i64 24}
!231 = !{!71, !16, i64 432}
!232 = !{!24, !31, i64 120}
!233 = !{!24, !16, i64 40}
!234 = !{!24, !16, i64 48}
!235 = !{!24, !26, i64 56}
!236 = !{!24, !16, i64 72}
!237 = !{!24, !16, i64 16}
!238 = !{!24, !8, i64 0}
!239 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!240 = !{!24, !26, i64 80}
!241 = !{!23, !26, i64 256}
!242 = !{i64 2152309497}
!243 = !{!23, !26, i64 264}
!244 = !{!132, !32, i64 40}
!245 = !{!39, !14, i64 8}
!246 = !{!18, !14, i64 0}
!247 = !{!18, !16, i64 8}
!248 = !{!18, !16, i64 16}
!249 = !{!18, !16, i64 24}
!250 = !{!18, !19, i64 32}
!251 = !{!198, !14, i64 0}
!252 = !{!198, !16, i64 16}
!253 = !{!198, !19, i64 32}
!254 = distinct !{!254, !21}
!255 = !{!24, !26, i64 64}
!256 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!257 = !{!28, !35, i64 120}
!258 = !{!28, !9, i64 144}
!259 = !{!260, !260, i64 0}
!260 = !{!"p1 int", !14, i64 0}
!261 = !{!262, !262, i64 0}
!262 = !{!"p1 _ZTS17rb_context_struct", !14, i64 0}
!263 = !{!51, !26, i64 8}
!264 = !{i64 2152306043}
end_hunk_1
