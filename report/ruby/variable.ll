inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_ivar_get_at_no_ractor_check:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_attr_get(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_evict_ivars_to_hash(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ivar_count(i64 noundef %0)
  %i.b = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.a) #26 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.c, i1 noundef zeroext true)
  %i.d = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.b) ; 0 uses
  ret void
}

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_ivar_count(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %bb.i [
    i32 1, label %rb_shape_obj_too_complex_p.exit.i
    i32 2, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 3, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
    i32 26, label %rb_shape_obj_too_complex_p.exit28
  ]

rb_shape_obj_too_complex_p.exit.i:                ; preds = %bb.b
  %i.i = and i64 %i.f, 576460752303423488
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rb_shape_obj_too_complex_p.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.i
  %i.j = getelementptr i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call i64 @rb_st_table_size(ptr noundef %i.k) #26
  br label %ROBJECT_FIELDS_COUNT.exit

rb_shape_obj_too_complex_p.exit.thread.i:         ; preds = %rb_shape_obj_too_complex_p.exit.i
  %i.m = lshr i64 %i.f, 32
  %i.n = and i64 %i.m, 524287
  %i.o = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.p = getelementptr [40 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 28
  %i.r = load i16, ptr %i.q, align 4, !tbaa !120
  %i.s = zext i16 %i.r to i64
  br label %ROBJECT_FIELDS_COUNT.exit

ROBJECT_FIELDS_COUNT.exit:                        ; preds = %bb.c, %rb_shape_obj_too_complex_p.exit.thread.i
  %.0.i = phi i64 [ %i.l, %bb.c ], [ %i.s, %rb_shape_obj_too_complex_p.exit.thread.i ]
  %i.t = and i64 %.0.i, 4294967295
  br label %.thread

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.b, %bb.b
  %i.u = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.u, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.d, !prof !121

bb.d:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.v = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.x = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.f

.split7.i.i:                                      ; preds = %bb.e
  %i.ab = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.w)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.d, %.split.i.i, %.split7.i.i, %bb.f
  %.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.ac, %bb.f ], [ %i.x, %.split.i.i ], [ %i.ab, %.split7.i.i ]
  %i.ad = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112 ; 3 uses
  %.not.not = icmp eq i64 %i.ae, 0
  br i1 %.not.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.af = and i64 %i.ae, 7
  %.not38.a = icmp eq i64 %i.af, 0
  %i.ag = inttoptr i64 %i.ae to ptr               ; 3 uses
  br i1 %.not38.a, label %rb_shape_obj_too_complex_p.exit, label %rb_shape_obj_too_complex_p.exit.thread

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.g
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ai = and i64 %i.ah, 576460752303423488
  %.not39.a = icmp eq i64 %i.ai, 0
  br i1 %.not39.a, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %rb_shape_obj_too_complex_p.exit
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42
  %i.al = tail call i64 @rb_st_table_size(ptr noundef %i.ak) #26
  br label %.thread

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.g, %rb_shape_obj_too_complex_p.exit
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.an = lshr i64 %i.am, 32
  %i.ao = and i64 %i.an, 524287
  %i.ap = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.aq = getelementptr [40 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 28
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !120
  %i.at = zext i16 %i.as to i64
  br label %.thread

rb_shape_obj_too_complex_p.exit28:                ; preds = %bb.b
  %i.au = and i64 %i.f, 576460752303423488
  %.not37 = icmp eq i64 %i.au, 0
  br i1 %.not37, label %bb.h, label %rb_imemo_fields_complex_tbl.exit31

rb_imemo_fields_complex_tbl.exit31:               ; preds = %rb_shape_obj_too_complex_p.exit28
  %i.av = getelementptr i8, ptr %i.e, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = tail call i64 @rb_st_table_size(ptr noundef %i.aw) #26
  br label %.thread

bb.h:                                             ; preds = %rb_shape_obj_too_complex_p.exit28
  %i.ay = lshr i64 %i.f, 32
  %i.az = and i64 %i.ay, 524287
  %i.ba = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.bb = getelementptr [40 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 28
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !120
  %i.be = zext i16 %i.bd to i64
  br label %.thread

bb.i:                                             ; preds = %bb.b
  %i.bf = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0) ; 3 uses
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = and i64 %i.bf, 7
  %.not40.a = icmp eq i64 %i.bg, 0
  br i1 %.not40.a, label %rb_shape_obj_too_complex_p.exit32, label %rb_shape_obj_too_complex_p.exit32.thread

rb_shape_obj_too_complex_p.exit32:                ; preds = %bb.j
  %i.bh = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bj = and i64 %i.bi, 576460752303423488
  %.not41 = icmp eq i64 %i.bj, 0
  br i1 %.not41, label %rb_shape_obj_too_complex_p.exit32.thread, label %rb_imemo_fields_complex_tbl.exit35

rb_imemo_fields_complex_tbl.exit35:               ; preds = %rb_shape_obj_too_complex_p.exit32
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bm = tail call i64 @rb_st_table_size(ptr noundef %i.bl) #26 ; 0 uses
  br label %.thread

rb_shape_obj_too_complex_p.exit32.thread:         ; preds = %bb.j, %rb_shape_obj_too_complex_p.exit32
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !20
  %i.bo = lshr i64 %i.bn, 32
  %i.bp = and i64 %i.bo, 524287
  %i.bq = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.br = getelementptr [40 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 28
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !120
  %i.bu = zext i16 %i.bt to i64
  br label %.thread

.thread:                                          ; preds = %rb_shape_obj_too_complex_p.exit.thread, %rb_imemo_fields_complex_tbl.exit, %bb.i, %rb_shape_obj_too_complex_p.exit32.thread, %rb_imemo_fields_complex_tbl.exit35, %rb_imemo_fields_complex_tbl.exit31, %bb.h, %ROBJECT_FIELDS_COUNT.exit
  %.3 = phi i64 [ %i.be, %bb.h ], [ %i.t, %ROBJECT_FIELDS_COUNT.exit ], [ 0, %bb.i ], [ %i.ax, %rb_imemo_fields_complex_tbl.exit31 ], [ 0, %rb_imemo_fields_complex_tbl.exit35 ], [ %i.bu, %rb_shape_obj_too_complex_p.exit32.thread ], [ %i.at, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.al, %rb_imemo_fields_complex_tbl.exit ]
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !20
  %i.bw = shl i64 %i.bv, 5
  %sext = ashr i64 %i.bw, 63
  %spec.select = add i64 %sext, %.3
  br label %bb.k

bb.k:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit, %.thread, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %spec.select, %.thread ], [ 0, %RCLASS_WRITABLE_FIELDS_OBJ.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_copy_ivs_to_hash_table(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.a, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @rb_shape_transition_complex(i64 noundef %0) #26 ; 4 uses
  %i.c = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = and i64 %i.d, 31
  %cond = icmp eq i64 %i.e, 1
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.d, 65536
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = and i64 %i.d, 4294901729
  %i.h = zext i32 %i.b to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.g, %i.i
  %i.k = or disjoint i64 %i.j, 65536
  store i64 %i.k, ptr %i.c, align 8, !tbaa !20
  %i.l = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !42
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %i.o = and i64 %i.d, 4294967265
  %i.p = zext i32 %i.b to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.o, %i.q
  store i64 %i.r, ptr %i.c, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.s, align 8, !tbaa !42
  %.not18 = icmp eq ptr %i.n, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.n) #26
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = and i64 %i.d, 256
  %i.u = icmp ne i64 %i.t, 0
  %i.v = tail call i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %i.u) #26 ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = and i64 %i.x, 4294967295
  %i.z = zext i32 %i.b to i64
  %i.aa = shl nuw i64 %i.z, 32
  %i.ab = or disjoint i64 %i.y, %i.aa
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.f, label %rb_vm_lock_enter.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.f, %bb.e
  %i.ad = call i64 @rb_obj_fields(i64 noundef %0, i64 noundef 0)
  call fastcc void @rb_obj_set_fields(i64 noundef %0, i64 noundef %i.v, i64 noundef 0, i64 noundef %i.ad)
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i5.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i5.i, label %bb.g, label %rb_obj_replace_fields.exit

bb.g:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_obj_replace_fields.exit

rb_obj_replace_fields.exit:                       ; preds = %rb_vm_lock_enter.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.c, %bb.d, %rb_obj_replace_fields.exit
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_attr_delete(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef 4)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 4, 37) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  %i.i = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i = icmp eq i64 %i.l, 0
  %or.cond.i = or i1 %i.k, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.m = phi i64 [ %i.h, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !16
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31                         ; 3 uses
  switch i32 %i.o, label %.thread [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 1, label %.thread100
  ]

bb.c:                                             ; preds = %rb_check_frozen_inline.exit, %rb_check_frozen_inline.exit
  %i.p = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.q = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.q, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.d, !prof !69

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.r = tail call i32 @rb_is_instance_id(i64 noundef %1) #33
  %.not.i74 = icmp eq i32 %i.r, 0
  br i1 %.not.i74, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.47) #27
  unreachable

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.d, %rb_ractor_main_p.exit.i, %bb.c
  %i.t = load i64, ptr %i.g, align 8, !tbaa !20
  %i.u = and i64 %i.t, 16384
  %.not10.i.i = icmp eq i64 %i.u, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.v = getelementptr i8, ptr %i.g, i64 24
  br label %bb.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.w = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.w, null
  br i1 %.not.i.i75, label %.split.i.i, label %bb.g

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.x = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !32, !range !34, !noundef !35
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.h

.split7.i.i:                                      ; preds = %bb.g
  %i.ab = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.w)
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.g, i64 24
end_hunk_0
