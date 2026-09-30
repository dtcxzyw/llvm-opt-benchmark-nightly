Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/object?download=true
inline.NumInlined: 440
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_obj_copy_ivar:bb.a
  %i.bf = getelementptr i8, ptr %i.be, i64 30
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !85
  %spec.select.i40 = tail call i16 @llvm.umax.i16(i16 %i.bb, i16 %i.bg)
  br label %RSHAPE_CAPACITY.exit43

RSHAPE_CAPACITY.exit43:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42, %RSHAPE_EMBEDDED_CAPACITY.exit.i39
  %.0.i41 = phi i16 [ %spec.select.i40, %RSHAPE_EMBEDDED_CAPACITY.exit.i39 ], [ %i.aw, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42 ] ; 2 uses
  %i.bh = icmp ult i16 %.0.i37, %.0.i41
  br i1 %i.bh, label %bb.i, label %ROBJECT_FIELDS.exit46

bb.i:                                             ; preds = %RSHAPE_CAPACITY.exit43
  %i.bi = zext i16 %.0.i41 to i32
  tail call void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef 0, i32 noundef %i.bi) #21
  %i.bj = load i64, ptr %i.i, align 8, !tbaa !33
  %i.bk = and i64 %i.bj, 65536
  %.not.i44 = icmp eq i64 %i.bk, 0
  br i1 %.not.i44, label %ROBJECT_FIELDS.exit46, label %bb.j, !prof !39

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !38
  br label %ROBJECT_FIELDS.exit46

ROBJECT_FIELDS.exit46:                            ; preds = %bb.j, %bb.i, %RSHAPE_CAPACITY.exit43
  %.0 = phi ptr [ %.0.i35, %RSHAPE_CAPACITY.exit43 ], [ %i.bl, %bb.j ], [ %i.v, %bb.i ]
  tail call void @rb_shape_copy_fields(i64 noundef %0, ptr noundef %.0, i32 noundef %i.m, ptr noundef %.0.i, i32 noundef %i.e) #21
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !33
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = zext i32 %i.m to i64
  %i.bp = shl nuw i64 %i.bo, 32
  %i.bq = or disjoint i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !33
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %ROBJECT_FIELDS.exit46, %bb.e, %bb.a
  ret void
}

declare i64 @rb_ivar_count(i64 noundef) local_unnamed_addr #4

declare void @rb_shape_copy_complex_ivars(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_shape_rebuild(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #4

declare void @rb_obj_copy_ivs_to_hash_table(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_obj_init_too_complex(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_ensure_iv_list_size(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_shape_copy_fields(i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_immutable_obj_clone(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef returned %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_get_freeze_opt(i32 noundef %0, ptr noundef %1)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %immutable_obj_clone.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  %i.d = tail call i64 @rb_obj_class(i64 noundef %2)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.139, i64 noundef %i.d) #22
  unreachable

immutable_obj_clone.exit:                         ; preds = %bb.a
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 37) i64 @rb_get_freeze_opt(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 4, ptr %i.a, align 8, !tbaa !18
  %i.b = load i64, ptr @rb_get_freeze_opt.keyword_ids, align 8, !tbaa !18
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %rb_scan_args_n_opt.exit

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_get_freeze_opt.rbimpl_id, align 8, !tbaa !18 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 6) #21 ; 3 uses
  store i64 %i.c, ptr @rb_get_freeze_opt.rbimpl_id, align 8, !tbaa !18
  %.not.i1 = icmp eq i64 %i.c, 0
  br i1 %.not.i1, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !1

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.c, %.lr.ph.i ]
  store i64 %.lcssa.i, ptr @rb_get_freeze_opt.keyword_ids, align 8, !tbaa !18
  br label %rb_scan_args_n_opt.exit

rb_scan_args_n_opt.exit:                          ; preds = %bb.a, %rbimpl_intern_const.exit
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i32 @rb_keyword_given_p() #21
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %.thread14, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.j = icmp slt i32 %0, 0
  br i1 %i.j, label %.thread14, label %obj_freeze_opt.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #21 ; 2 uses
  %i.l = add nsw i32 %0, -1                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %rb_scan_args_set.exit, label %.thread14

.thread14:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.193.i8 = phi i32 [ %i.l, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.193.i8, i32 noundef 0, i32 noundef 0) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.n = icmp eq i64 %i.k, 4
  br i1 %i.n, label %obj_freeze_opt.exit, label %bb.f

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.o = call i32 @rb_get_kwargs(i64 noundef %i.k, ptr noundef nonnull @rb_get_freeze_opt.keyword_ids, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.q = icmp ult i64 %i.p, 37
  %switch.shifted = lshr i64 68720525329, %i.p
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.q, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !18
  %i.s = call i64 @rb_obj_class(i64 noundef %i.p)
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.138, i64 noundef %i.s) #22
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.rb_get_freeze_opt, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %obj_freeze_opt.exit

obj_freeze_opt.exit:                              ; preds = %switch.lookup, %bb.d, %rb_scan_args_set.exit
  %i.t = phi i64 [ %switch.ext, %switch.lookup ], [ 4, %bb.d ], [ 4, %rb_scan_args_set.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %i.t
}

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_obj_clone_setup(i64 noundef %0, i64 noundef returned %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call i64 @rb_singleton_class_clone_and_attach(i64 noundef %0, i64 noundef %1) #21 ; 6 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  store i64 %i.b, ptr %i.d, align 8, !tbaa !18
  %i.e = icmp eq i64 %i.b, 0
  %i.f = and i64 %i.b, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.b) #21
  %i.i = inttoptr i64 %i.b to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !33
  %i.k = and i64 %i.j, 8223
  %or.cond = icmp eq i64 %i.k, 8194
  br i1 %or.cond, label %bb.b, label %RCLASS_SINGLETON_P.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_singleton_class_attached(i64 noundef %i.b, i64 noundef %1) #21
  br label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call fastcc void @init_copy(i64 noundef %1, i64 noundef %0)
  switch i64 %2, label %bb.k [
    i64 4, label %bb.c
    i64 20, label %bb.e
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 3217, i32 noundef 1, i64 noundef %0) #21 ; 0 uses
  %i.m = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !33
  %i.o = and i64 %i.n, 2048
  %i.p = load i64, ptr %i.c, align 8, !tbaa !33
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !33
  %i.r = icmp eq i64 %0, 0                        ; 2 uses
  %i.s = and i64 %0, 7
  %i.t = icmp ne i64 %i.s, 0                      ; 2 uses
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.v = load i64, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.y = and i64 %i.v, 49152
  %i.z = or i64 %i.y, %i.q
  store i64 %i.z, ptr %i.c, align 8, !tbaa !33
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %3 = xor i1 %i.t, %i.r
  br i1 %3, label %RB_OBJ_FROZEN.exit.thread, label %RB_OBJ_FROZEN.exit

RB_OBJ_FROZEN.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !33
  %i.ab = and i64 %i.aa, 2048
  %.not36 = icmp eq i64 %i.ab, 0
  br i1 %.not36, label %bb.l, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RB_OBJ_FROZEN.exit
  %i.ac = tail call i32 @rb_shape_transition_frozen(i64 noundef %1) #21
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = zext i32 %i.ac to i64
  %i.ag = shl nuw i64 %i.af, 32
  %i.ah = or disjoint i64 %i.ae, %i.ag
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !33
  br label %bb.l

bb.e:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.ai = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !18 ; 2 uses
  %.not27 = icmp eq i64 %i.ai, 0
  br i1 %.not27, label %bb.f, label %rb_obj_freeze.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call i64 @rb_hash_new() #21        ; 2 uses
  store i64 %i.aj, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !18
  tail call void @rb_vm_register_global_object(i64 noundef %i.aj) #21
  %i.ak = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !18
  %i.al = tail call i64 @rb_id2sym(i64 noundef 2801) #21
  %i.am = tail call i64 @rb_hash_aset(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef 20) #21 ; 0 uses
  %i.an = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !18 ; 6 uses
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = and i64 %i.an, 7
  %i.aq = icmp eq i64 %i.ap, 0
  %.not3.i.i = and i1 %i.ao, %i.aq
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %rb_obj_freeze.exit

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.f
  %i.ar = inttoptr i64 %i.an to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33
  %i.at = and i64 %i.as, 2048
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.g, label %rb_obj_freeze.exit

bb.g:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.an) #21
  %.pre37 = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !18
  br label %rb_obj_freeze.exit

rb_obj_freeze.exit:                               ; preds = %bb.g, %RB_OBJ_FROZEN.exit.i, %bb.f, %bb.e
  %i.au = phi i64 [ %.pre37, %bb.g ], [ %i.an, %RB_OBJ_FROZEN.exit.i ], [ %i.an, %bb.f ], [ %i.ai, %bb.e ]
  store i64 %0, ptr %i.a, align 16, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !18
  %i.aw = call i64 @rb_funcallv_kw(i64 noundef %1, i64 noundef 3217, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
  call void @rb_obj_freeze_inline(i64 noundef %1) #21
  br label %bb.l

bb.h:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.ax = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %bb.i, label %rb_obj_freeze.exit32

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call i64 @rb_hash_new() #21        ; 2 uses
  store i64 %i.ay, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !18
  tail call void @rb_vm_register_global_object(i64 noundef %i.ay) #21
  %i.az = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !18
  %i.ba = tail call i64 @rb_id2sym(i64 noundef 2801) #21
  %i.bb = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.ba, i64 noundef 0) #21 ; 0 uses
  %i.bc = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !18 ; 6 uses
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = and i64 %i.bc, 7
  %i.bf = icmp eq i64 %i.be, 0
  %.not3.i.i29 = and i1 %i.bd, %i.bf
  br i1 %.not3.i.i29, label %RB_OBJ_FROZEN.exit.i30, label %rb_obj_freeze.exit32

RB_OBJ_FROZEN.exit.i30:                           ; preds = %bb.i
  %i.bg = inttoptr i64 %i.bc to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33
  %i.bi = and i64 %i.bh, 2048
  %.not.i31 = icmp eq i64 %i.bi, 0
  br i1 %.not.i31, label %bb.j, label %rb_obj_freeze.exit32

bb.j:                                             ; preds = %RB_OBJ_FROZEN.exit.i30
  tail call void @rb_obj_freeze_inline(i64 noundef %i.bc) #21
  %.pre = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !18
  br label %rb_obj_freeze.exit32

rb_obj_freeze.exit32:                             ; preds = %bb.j, %RB_OBJ_FROZEN.exit.i30, %bb.i, %bb.h
  %i.bj = phi i64 [ %.pre, %bb.j ], [ %i.bc, %RB_OBJ_FROZEN.exit.i30 ], [ %i.bc, %bb.i ], [ %i.ax, %bb.h ]
  store i64 %0, ptr %i.a, align 16, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !18
  %i.bl = call i64 @rb_funcallv_kw(i64 noundef %1, i64 noundef 3217, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.2) #23
  unreachable

bb.l:                                             ; preds = %RB_OBJ_FROZEN.exit, %RB_OBJ_FROZEN.exit.thread, %rb_obj_freeze.exit32, %rb_obj_freeze.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %1
}

declare i64 @rb_singleton_class_clone_and_attach(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_singleton_class_attached(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @init_copy(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i = and i1 %i.a, %i.c
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = and i64 %i.e, 2048
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.a, %RB_OBJ_FROZEN.exit
  %i.g = load i64, ptr @rb_eTypeError, align 8, !tbaa !18
  %i.h = tail call ptr @rb_obj_classname(i64 noundef %0) #21
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.140, ptr noundef %i.h) #22
  unreachable

bb.b:                                             ; preds = %RB_OBJ_FROZEN.exit
  %i.i = and i64 %i.e, -2080                      ; 2 uses
  store i64 %i.i, ptr %i.d, align 8, !tbaa !33
  %i.j = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = and i64 %i.k, 31
  %i.m = or disjoint i64 %i.l, %i.i
  store i64 %i.m, ptr %i.d, align 8, !tbaa !33
  %i.n = load i64, ptr %i.j, align 8, !tbaa !33
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 31
  switch i32 %i.p, label %bb.f [
    i32 26, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.141) #23
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.q = tail call i64 @rb_mod_init_copy(i64 noundef %0, i64 noundef %1) #21 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @rb_obj_copy_ivar(i64 noundef %0, i64 noundef %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @rb_copy_generic_ivar(i64 noundef %0, i64 noundef %1) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void @rb_gc_copy_attributes(i64 noundef %0, i64 noundef %1) #21
  ret void
}

declare i32 @rb_shape_transition_frozen(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new() local_unnamed_addr #4

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_obj_freeze(i64 noundef returned %0) #2 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i = and i1 %i.a, %i.c
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = and i64 %i.e, 2048
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %RB_OBJ_FROZEN.exit.thread

bb.b:                                             ; preds = %RB_OBJ_FROZEN.exit
  tail call void @rb_obj_freeze_inline(i64 noundef %0) #21
  br label %RB_OBJ_FROZEN.exit.thread

end_hunk_0
