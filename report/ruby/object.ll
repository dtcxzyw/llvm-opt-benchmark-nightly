inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_class_of:bb.a
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !11
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_ivar(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_ivar_count(i64 noundef %1) #21 ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = lshr i64 %i.c, 32
  %i.e = trunc nuw i64 %i.d to i32                ; 4 uses
  %i.f = and i32 %i.e, 134217728
  %.not47 = icmp eq i32 %i.f, 0
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  tail call void @rb_shape_copy_complex_ivars(i64 noundef %0, i64 noundef %1, i32 noundef %i.e, ptr noundef %i.h) #21
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = lshr i64 %i.j, 32                        ; 3 uses
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = tail call i32 @rb_shape_rebuild(i32 noundef %i.l, i32 noundef %i.e) #21 ; 6 uses
  %i.n = and i32 %i.m, 134217728
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.f, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.a) #21 ; 2 uses
  tail call void @rb_obj_copy_ivs_to_hash_table(i64 noundef %1, ptr noundef %i.o) #21
  tail call void @rb_obj_init_too_complex(i64 noundef %0, ptr noundef %i.o) #21
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.b, align 8, !tbaa !28
  %i.q = and i64 %i.p, 65536
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  %i.t = load i64, ptr %i.i, align 8, !tbaa !28
  %i.u = and i64 %i.t, 65536
  %.not.i34 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.i, i64 16       ; 4 uses
  br i1 %.not.i34, label %ROBJECT_FIELDS.exit36, label %bb.h, !prof !35

bb.h:                                             ; preds = %ROBJECT_FIELDS.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit36

ROBJECT_FIELDS.exit36:                            ; preds = %ROBJECT_FIELDS.exit, %bb.h
  %.0.i35 = phi ptr [ %i.w, %bb.h ], [ %i.v, %ROBJECT_FIELDS.exit ]
  %i.x = and i64 %i.j, 126100789566373888
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %ROBJECT_FIELDS.exit36
  %i.y = and i64 %i.k, 524287
  %i.z = load ptr, ptr @rb_shape_tree, align 8, !tbaa !36 ; 2 uses
  %i.aa = getelementptr [40 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 30
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !41
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %ROBJECT_FIELDS.exit36
  %i.ad = lshr i64 %i.j, 54
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !43
  %i.af = and i64 %i.ad, 7
  %i.ag = add nuw nsw i64 %i.af, 4294967295
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = getelementptr [2 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !44
  %i.ak = and i64 %i.k, 524287
  %i.al = load ptr, ptr @rb_shape_tree, align 8, !tbaa !36 ; 2 uses
  %i.am = getelementptr [40 x i8], ptr %i.al, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 30
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !41
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.aj, i16 %i.ao)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %i.ap = phi ptr [ %i.al, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.z, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ] ; 2 uses
  %.0.i37 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.ac, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.aq = lshr i32 %i.m, 22
  %i.ar = trunc i32 %i.aq to i8
  %i.as = and i8 %i.ar, 7                         ; 2 uses
  %.not.i.i38 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i38, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42, label %RSHAPE_EMBEDDED_CAPACITY.exit.i39

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42:         ; preds = %RSHAPE_CAPACITY.exit
  %i.at = and i32 %i.m, 524287
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr [40 x i8], ptr %i.ap, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 30
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !41
  br label %RSHAPE_CAPACITY.exit43

RSHAPE_EMBEDDED_CAPACITY.exit.i39:                ; preds = %RSHAPE_CAPACITY.exit
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !43
  %i.az = zext nneg i8 %i.as to i64
  %i.ba = add nuw nsw i64 %i.az, 4294967295
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = getelementptr [2 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !44
  %i.be = and i32 %i.m, 524287
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr [40 x i8], ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 30
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !41
  %spec.select.i40 = tail call i16 @llvm.umax.i16(i16 %i.bd, i16 %i.bi)
  br label %RSHAPE_CAPACITY.exit43

RSHAPE_CAPACITY.exit43:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42, %RSHAPE_EMBEDDED_CAPACITY.exit.i39
  %.0.i41 = phi i16 [ %spec.select.i40, %RSHAPE_EMBEDDED_CAPACITY.exit.i39 ], [ %i.ax, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42 ] ; 2 uses
  %i.bj = icmp ult i16 %.0.i37, %.0.i41
  br i1 %i.bj, label %bb.i, label %ROBJECT_FIELDS.exit46

bb.i:                                             ; preds = %RSHAPE_CAPACITY.exit43
  %i.bk = zext i16 %.0.i41 to i32
  tail call void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef 0, i32 noundef %i.bk) #21
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !28
  %i.bm = and i64 %i.bl, 65536
  %.not.i44 = icmp eq i64 %i.bm, 0
  br i1 %.not.i44, label %ROBJECT_FIELDS.exit46, label %bb.j, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit46

ROBJECT_FIELDS.exit46:                            ; preds = %bb.j, %bb.i, %RSHAPE_CAPACITY.exit43
  %.0 = phi ptr [ %.0.i35, %RSHAPE_CAPACITY.exit43 ], [ %i.bn, %bb.j ], [ %i.v, %bb.i ]
  tail call void @rb_shape_copy_fields(i64 noundef %0, ptr noundef %.0, i32 noundef %i.m, ptr noundef %.0.i, i32 noundef %i.e) #21
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !28
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = zext i32 %i.m to i64
  %i.br = shl nuw i64 %i.bq, 32
  %i.bs = or disjoint i64 %i.bp, %i.br
  store i64 %i.bs, ptr %i.i, align 8, !tbaa !28
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
define hidden noundef i64 @rb_immutable_obj_clone(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_get_freeze_opt(i32 noundef %0, ptr noundef %1)
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %immutable_obj_clone.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.d = tail call i64 @rb_obj_class(i64 noundef %2)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.139, i64 noundef %i.d) #22
  unreachable

immutable_obj_clone.exit:                         ; preds = %bb.a
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_get_freeze_opt(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 4, ptr %i.a, align 8, !tbaa !11
  %i.b = load i64, ptr @rb_get_freeze_opt.keyword_ids, align 8, !tbaa !11
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %rb_scan_args_n_opt.exit

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_get_freeze_opt.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 6) #21 ; 3 uses
  store i64 %i.c, ptr @rb_get_freeze_opt.rbimpl_id, align 8, !tbaa !11
  %.not.i1 = icmp eq i64 %i.c, 0
  br i1 %.not.i1, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !45

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.c, %.lr.ph.i ]
  store i64 %.lcssa.i, ptr @rb_get_freeze_opt.keyword_ids, align 8, !tbaa !11
  br label %rb_scan_args_n_opt.exit

rb_scan_args_n_opt.exit:                          ; preds = %bb.a, %rbimpl_intern_const.exit
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = tail call i32 @rb_keyword_given_p() #21
  %.not2 = icmp eq i32 %i.i, 0
  br i1 %.not2, label %.thread14, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.j = icmp slt i32 %0, 0
  br i1 %i.j, label %.thread14, label %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #21 ; 2 uses
  %i.l = add nsw i32 %0, -1                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %rb_scan_args_set.exit, label %.thread14

.thread14:                                        ; preds = %bb.c, %bb.e, %bb.d
  %.1.i9 = phi i32 [ %i.l, %bb.e ], [ %0, %bb.d ], [ %0, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i9, i32 noundef 0, i32 noundef 0) #22
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.n = icmp eq i64 %i.k, 4
  br i1 %i.n, label %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge, label %bb.f

rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge: ; preds = %bb.d, %rb_scan_args_set.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %obj_freeze_opt.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.o = call i32 @rb_get_kwargs(i64 noundef %i.k, ptr noundef nonnull @rb_get_freeze_opt.keyword_ids, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.q = call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 62)
  switch i64 %i.q, label %bb.g [
    i64 9, label %obj_freeze_opt.exit
    i64 0, label %obj_freeze_opt.exit
    i64 5, label %obj_freeze_opt.exit
    i64 1, label %obj_freeze_opt.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.s = call i64 @rb_obj_class(i64 noundef %i.p)
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.138, i64 noundef %i.s) #22
  unreachable

obj_freeze_opt.exit:                              ; preds = %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge, %bb.f, %bb.f, %bb.f, %bb.f
  %2 = phi i64 [ %.pre, %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %2
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
  store i64 %i.b, ptr %i.d, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.b, 0
  %i.f = and i64 %i.b, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.b) #21
  %i.i = inttoptr i64 %i.b to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = and i64 %i.n, 2048
  %i.p = load i64, ptr %i.c, align 8, !tbaa !28
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  store i64 %i.q, ptr %i.c, align 8, !tbaa !28
  %i.r = icmp eq i64 %0, 0
  %i.s = and i64 %0, 7                            ; 2 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.v = load i64, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 5
  br i1 %i.x, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.y = and i64 %i.v, 49152
  %i.z = or i64 %i.y, %i.q
  store i64 %i.z, ptr %i.c, align 8, !tbaa !28
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aa = icmp ne i64 %0, 0
  %i.ab = icmp eq i64 %i.s, 0
  %.not3.i = and i1 %i.aa, %i.ab
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !28
  %i.ad = and i64 %i.ac, 2048
  %.not36 = icmp eq i64 %i.ad, 0
  br i1 %.not36, label %bb.l, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RB_OBJ_FROZEN.exit
  %i.ae = tail call i32 @rb_shape_transition_frozen(i64 noundef %1) #21
  %i.af = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = zext i32 %i.ae to i64
  %i.ai = shl nuw i64 %i.ah, 32
  %i.aj = or disjoint i64 %i.ag, %i.ai
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !28
  br label %bb.l

bb.e:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.ak = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !11 ; 2 uses
  %.not27 = icmp eq i64 %i.ak, 0
  br i1 %.not27, label %bb.f, label %rb_obj_freeze.exit

bb.f:                                             ; preds = %bb.e
  %i.al = tail call i64 @rb_hash_new() #21        ; 2 uses
  store i64 %i.al, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.al) #21
  %i.am = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !11
  %i.an = tail call i64 @rb_id2sym(i64 noundef 2801) #21
  %i.ao = tail call i64 @rb_hash_aset(i64 noundef %i.am, i64 noundef %i.an, i64 noundef 20) #21 ; 0 uses
  %i.ap = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !11 ; 6 uses
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = and i64 %i.ap, 7
  %i.as = icmp eq i64 %i.ar, 0
  %.not3.i.i = and i1 %i.aq, %i.as
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %rb_obj_freeze.exit

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.f
  %i.at = inttoptr i64 %i.ap to ptr
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %i.av = and i64 %i.au, 2048
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.g, label %rb_obj_freeze.exit

bb.g:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  tail call void @rb_obj_freeze_inline(i64 noundef %i.ap) #21
  %.pre37 = load i64, ptr @rb_obj_clone_setup.freeze_true_hash, align 8, !tbaa !11
  br label %rb_obj_freeze.exit

rb_obj_freeze.exit:                               ; preds = %bb.g, %RB_OBJ_FROZEN.exit.i, %bb.f, %bb.e
  %i.aw = phi i64 [ %.pre37, %bb.g ], [ %i.ap, %RB_OBJ_FROZEN.exit.i ], [ %i.ap, %bb.f ], [ %i.ak, %bb.e ]
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !11
  %i.ay = call i64 @rb_funcallv_kw(i64 noundef %1, i64 noundef 3217, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
  call void @rb_obj_freeze_inline(i64 noundef %1) #21
  br label %bb.l

bb.h:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  %i.az = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %bb.i, label %rb_obj_freeze.exit32

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call i64 @rb_hash_new() #21        ; 2 uses
  store i64 %i.ba, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !11
  tail call void @rb_vm_register_global_object(i64 noundef %i.ba) #21
  %i.bb = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !11
  %i.bc = tail call i64 @rb_id2sym(i64 noundef 2801) #21
  %i.bd = tail call i64 @rb_hash_aset(i64 noundef %i.bb, i64 noundef %i.bc, i64 noundef 0) #21 ; 0 uses
  %i.be = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !11 ; 6 uses
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = and i64 %i.be, 7
  %i.bh = icmp eq i64 %i.bg, 0
  %.not3.i.i29 = and i1 %i.bf, %i.bh
  br i1 %.not3.i.i29, label %RB_OBJ_FROZEN.exit.i30, label %rb_obj_freeze.exit32

RB_OBJ_FROZEN.exit.i30:                           ; preds = %bb.i
  %i.bi = inttoptr i64 %i.be to ptr
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bk = and i64 %i.bj, 2048
  %.not.i31 = icmp eq i64 %i.bk, 0
  br i1 %.not.i31, label %bb.j, label %rb_obj_freeze.exit32

bb.j:                                             ; preds = %RB_OBJ_FROZEN.exit.i30
  tail call void @rb_obj_freeze_inline(i64 noundef %i.be) #21
  %.pre = load i64, ptr @rb_obj_clone_setup.freeze_false_hash, align 8, !tbaa !11
  br label %rb_obj_freeze.exit32

rb_obj_freeze.exit32:                             ; preds = %bb.j, %RB_OBJ_FROZEN.exit.i30, %bb.i, %bb.h
  %i.bl = phi i64 [ %.pre, %bb.j ], [ %i.be, %RB_OBJ_FROZEN.exit.i30 ], [ %i.be, %bb.i ], [ %i.az, %bb.h ]
  store i64 %0, ptr %i.a, align 16, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = call i64 @rb_funcallv_kw(i64 noundef %1, i64 noundef 3217, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 1) #21 ; 0 uses
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = and i64 %i.e, 2048
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.a, %RB_OBJ_FROZEN.exit
  %i.g = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.h = tail call ptr @rb_obj_classname(i64 noundef %0) #21
end_hunk_0
