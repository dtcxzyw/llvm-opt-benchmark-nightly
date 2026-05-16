inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_eql:bb.a
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_eql_opt(i64 noundef %0, i64 noundef %1) #21 ; 2 uses
  %i.c = icmp eq i64 %i.b, 36
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 156, i32 noundef 1, i64 noundef %1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ]
  %i.e = and i64 %.0, -5
  %i.f = icmp ne i64 %i.e, 0
  %i.g = zext i1 %i.f to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.09 = phi i32 [ %i.g, %bb.d ], [ 1, %bb.a ]
  ret i32 %.09
}

declare i64 @rb_eql_opt(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef range(i64 0, 21) i64 @rb_obj_equal(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  %i.b = select i1 %i.a, i64 20, i64 0
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef range(i64 0, 21) i64 @rb_obj_not(i64 noundef %0) #0 {
bb.a:
  %i.a = and i64 %0, -5
  %.not = icmp eq i64 %i.a, 0
  %i.b = select i1 %.not, i64 20, i64 0
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_obj_not_equal(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 140, i32 noundef 1, i64 noundef %1) #21
  %i.b = and i64 %i.a, -5
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not.i, i64 20, i64 0
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define dso_local i64 @rb_class_real(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %class_real.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = and i64 %i.b, 8220
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %class_real.exit, label %.lr.ph.i, !prof !29

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.04.i = phi i64 [ %i.f, %.lr.ph.i ], [ %0, %bb.b ]
  %i.d = tail call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %.04.i)
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = and i64 %i.h, 8220
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %class_real.exit, label %.lr.ph.i, !prof !31, !llvm.loop !32

class_real.exit:                                  ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %0, %bb.b ], [ %i.f, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_obj_class(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select.i = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 4 uses
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %class_real.exit, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.j = inttoptr i64 %.0.i to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = and i64 %i.k, 8220
  %.not3.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i, label %class_real.exit, label %.lr.ph.i, !prof !29

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.04.i = phi i64 [ %i.o, %.lr.ph.i ], [ %.0.i, %bb.h ]
  %i.m = tail call fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %.04.i)
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30   ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = and i64 %i.q, 8220
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %class_real.exit, label %.lr.ph.i, !prof !31, !llvm.loop !32

class_real.exit:                                  ; preds = %.lr.ph.i, %bb.h, %rb_class_of.exit
  %.0 = phi i64 [ 0, %rb_class_of.exit ], [ %.0.i, %bb.h ], [ %i.o, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
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
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %2 = load i32, ptr %.shift.i, align 4, !tbaa !28 ; 4 uses
  %i.c = and i32 %2, 134217728
  %.not47 = icmp eq i32 %i.c, 0
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  tail call void @rb_shape_copy_complex_ivars(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %i.e) #21
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 6 uses
  %.shift.i34 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %3 = load i32, ptr %.shift.i34, align 4, !tbaa !28 ; 4 uses
  %i.g = tail call i32 @rb_shape_rebuild(i32 noundef %3, i32 noundef %2) #21 ; 6 uses
  %i.h = and i32 %i.g, 134217728
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.f, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.a) #21 ; 2 uses
  tail call void @rb_obj_copy_ivs_to_hash_table(i64 noundef %1, ptr noundef %i.i) #21
  tail call void @rb_obj_init_too_complex(i64 noundef %0, ptr noundef %i.i) #21
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.b, align 8, !tbaa !28
  %i.k = and i64 %i.j, 65536
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit

ROBJECT_FIELDS.exit:                              ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  %i.n = load i64, ptr %i.f, align 8, !tbaa !28
  %i.o = and i64 %i.n, 65536
  %.not.i34 = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.f, i64 16       ; 4 uses
  br i1 %.not.i34, label %ROBJECT_FIELDS.exit36, label %bb.h, !prof !35

bb.h:                                             ; preds = %ROBJECT_FIELDS.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit36

ROBJECT_FIELDS.exit36:                            ; preds = %ROBJECT_FIELDS.exit, %bb.h
  %.0.i35 = phi ptr [ %i.q, %bb.h ], [ %i.p, %ROBJECT_FIELDS.exit ]
  %4 = lshr i32 %3, 22
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 7                               ; 2 uses
  %.not.i.i = icmp eq i8 %6, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %ROBJECT_FIELDS.exit36
  %7 = and i32 %3, 524287
  %i.r = load ptr, ptr @rb_shape_tree, align 8, !tbaa !36 ; 2 uses
  %8 = zext nneg i32 %7 to i64
  %i.s = getelementptr [40 x i8], ptr %i.r, i64 %8
  %i.t = getelementptr i8, ptr %i.s, i64 30
  %i.u = load i16, ptr %i.t, align 2, !tbaa !41
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %ROBJECT_FIELDS.exit36
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !43
  %9 = zext nneg i8 %6 to i64
  %i.w = add nuw nsw i64 %9, 4294967295
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !44
  %10 = and i32 %3, 524287
  %i.aa = load ptr, ptr @rb_shape_tree, align 8, !tbaa !36 ; 2 uses
  %11 = zext nneg i32 %10 to i64
  %i.ab = getelementptr [40 x i8], ptr %i.aa, i64 %11
  %i.ac = getelementptr i8, ptr %i.ab, i64 30
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !41
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.z, i16 %i.ad)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %i.ae = phi ptr [ %i.aa, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.r, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ] ; 2 uses
  %.0.i37 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.u, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.af = lshr i32 %i.g, 22
  %i.ag = trunc i32 %i.af to i8
  %i.ah = and i8 %i.ag, 7                         ; 2 uses
  %.not.i.i38 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i38, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42, label %RSHAPE_EMBEDDED_CAPACITY.exit.i39

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42:         ; preds = %RSHAPE_CAPACITY.exit
  %i.ai = and i32 %i.g, 524287
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr [40 x i8], ptr %i.ae, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 30
  %i.am = load i16, ptr %i.al, align 2, !tbaa !41
  br label %RSHAPE_CAPACITY.exit43

RSHAPE_EMBEDDED_CAPACITY.exit.i39:                ; preds = %RSHAPE_CAPACITY.exit
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !43
  %i.ao = zext nneg i8 %i.ah to i64
  %i.ap = add nuw nsw i64 %i.ao, 4294967295
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr [2 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !44
  %i.at = and i32 %i.g, 524287
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr [40 x i8], ptr %i.ae, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 30
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !41
  %spec.select.i40 = tail call i16 @llvm.umax.i16(i16 %i.as, i16 %i.ax)
  br label %RSHAPE_CAPACITY.exit43

RSHAPE_CAPACITY.exit43:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42, %RSHAPE_EMBEDDED_CAPACITY.exit.i39
  %.0.i41 = phi i16 [ %spec.select.i40, %RSHAPE_EMBEDDED_CAPACITY.exit.i39 ], [ %i.am, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i42 ] ; 2 uses
  %i.ay = icmp ult i16 %.0.i37, %.0.i41
  br i1 %i.ay, label %bb.i, label %ROBJECT_FIELDS.exit46

bb.i:                                             ; preds = %RSHAPE_CAPACITY.exit43
  %i.az = zext i16 %.0.i41 to i32
  tail call void @rb_ensure_iv_list_size(i64 noundef %0, i32 noundef 0, i32 noundef %i.az) #21
  %i.ba = load i64, ptr %i.f, align 8, !tbaa !28
  %i.bb = and i64 %i.ba, 65536
  %.not.i44 = icmp eq i64 %i.bb, 0
  br i1 %.not.i44, label %ROBJECT_FIELDS.exit46, label %bb.j, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !34
  br label %ROBJECT_FIELDS.exit46

ROBJECT_FIELDS.exit46:                            ; preds = %bb.j, %bb.i, %RSHAPE_CAPACITY.exit43
  %.0 = phi ptr [ %.0.i35, %RSHAPE_CAPACITY.exit43 ], [ %i.bc, %bb.j ], [ %i.p, %bb.i ]
  tail call void @rb_shape_copy_fields(i64 noundef %0, ptr noundef %.0, i32 noundef %i.g, ptr noundef %.0.i, i32 noundef %2) #21
  %i.bd = load i64, ptr %i.f, align 8, !tbaa !28
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = zext i32 %i.g to i64
  %i.bg = shl nuw i64 %i.bf, 32
  %i.bh = or disjoint i64 %i.be, %i.bg
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !28
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
  %i.a = alloca i64, align 8                      ; 5 uses
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
  br i1 %i.j, label %.thread14, label %obj_freeze_opt.exit

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
  br i1 %i.n, label %obj_freeze_opt.exit, label %bb.f

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

obj_freeze_opt.exit:                              ; preds = %bb.d, %bb.f, %bb.f, %bb.f, %bb.f, %rb_scan_args_set.exit
  %i.t = phi i64 [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ 4, %rb_scan_args_set.exit ], [ 4, %bb.d ]
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
end_hunk_0
