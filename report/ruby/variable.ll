inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_mod_remove_cvar:bb.a
  %i.b = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @rb_is_class_id(i64 noundef %i.b) #26, !callees !137, !inline_history !138
  %.not12.i = icmp eq i32 %i.d, 0
  br i1 %.not12.i, label %bb.d, label %check_id_type.exit

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @rb_is_class_name(i64 noundef %i.c) #26, !callees !139, !inline_history !138
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %bb.d, label %check_id_type.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = call i64 @rb_fstring_new(ptr noundef nonnull @.str.36, i64 noundef 30) #26
  call fastcc void @rb_name_err_raise_str(i64 noundef %i.f, i64 noundef %0, i64 noundef %i.c) #34
  unreachable

check_id_type.exit:                               ; preds = %bb.b
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not3.i.i = and i1 %i.g, %i.i
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !124

RB_OBJ_FROZEN.exit.i:                             ; preds = %check_id_type.exit
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = and i64 %i.k, 2048
  %.not.i19 = icmp eq i64 %i.l, 0
  br i1 %.not.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %check_id_type.exit
  call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.m = and i64 %i.k, 31
  %i.n = icmp ne i64 %i.m, 5
  %i.o = and i64 %i.k, 49152
  %.not8.i = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.n, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.e, !prof !126

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  %i.p = call fastcc i64 @rb_ivar_delete(i64 noundef %0, i64 noundef %i.b, i64 noundef 36) ; 2 uses
  %i.q = icmp eq i64 %i.p, 36
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_check_frozen_inline.exit
  ret i64 %i.p

bb.g:                                             ; preds = %rb_check_frozen_inline.exit
  %i.r = call i64 @rb_cvar_defined(i64 noundef %0, i64 noundef %i.b)
  %.not18 = icmp eq i64 %i.r, 0
  br i1 %.not18, label %check_id_type.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @rb_id2sym(i64 noundef %i.b) #26
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.37, i64 noundef %0, i64 noundef %i.s) #34
  unreachable

check_id_type.exit.thread:                        ; preds = %bb.c, %bb.g
  %i.t = load i64, ptr %i.a, align 8, !tbaa !16
  call fastcc void @rb_name_err_raise(ptr noundef nonnull @.str.38, i64 noundef %0, i64 noundef %i.t) #34
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_class_id(i64 noundef) local_unnamed_addr #14

declare i32 @rb_is_class_name(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iv_get(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.b = tail call nonnull ptr @rb_usascii_encoding() #26
  %i.c = tail call i64 @rb_check_id_cstr(ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef nonnull %i.b) #26 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.c, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_iv_set(i64 noundef %0, ptr noundef nonnull %1, i64 noundef returned %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !124

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !125

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #27
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_ivar_set.exit, label %bb.b, !prof !126

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #26
  br label %rb_ivar_set.exit

rb_ivar_set.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.k = tail call fastcc zeroext i16 @ivar_set(i64 noundef %0, i64 noundef %i.a, i64 noundef %2) ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @class_ivar_set(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  tail call void @rb_class_ensure_writable(i64 noundef %0) #26
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not5.i.i.i.i = and i1 %i.b, %i.d              ; 2 uses
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ]
  %i.q = getelementptr i8, ptr %.0.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !112  ; 10 uses
  %i.s = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.s, null                ; 2 uses
  %.not.i10 = icmp eq i64 %i.r, 0
  br i1 %.not.i10, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.t = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef 1, i1 noundef zeroext true) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.u = phi i64 [ %i.t, %bb.e ], [ %i.r, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 7 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 3 uses
  %i.x = lshr i64 %i.w, 32                        ; 4 uses
  %i.y = trunc nuw i64 %i.x to i32                ; 4 uses
  %i.z = and i32 %i.y, 134217728
  %.not76.i = icmp eq i32 %i.z, 0
  br i1 %.not76.i, label %bb.g, label %bb.t, !prof !97

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %i.y, ptr %i.a, align 4, !tbaa !7
  %i.aa = call zeroext i1 @rb_shape_find_ivar(i32 noundef %i.y, i64 noundef %1, ptr noundef nonnull %i.a) #26 ; 3 uses
  br i1 %i.aa, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !7
  br label %generic_shape_ivar.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ab = and i64 %i.x, 524287
  %i.ac = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.ad = getelementptr [40 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.ad, i64 28
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !120
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.48) #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = call i32 @rb_shape_transition_add_ivar(i64 noundef %i.u, i64 noundef %1) #26
  br label %generic_shape_ivar.exit.i

generic_shape_ivar.exit.i:                        ; preds = %bb.j, %._crit_edge.i.i
  %i.aj = phi i32 [ %i.ai, %bb.j ], [ %.pre.i.i, %._crit_edge.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ak = and i32 %i.aj, 134217728
  %.not77.i = icmp eq i32 %i.ak, 0
  br i1 %.not77.i, label %bb.l, label %bb.k, !prof !97

bb.k:                                             ; preds = %generic_shape_ivar.exit.i
  %i.al = call fastcc i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %i.u, i32 noundef %i.aj)
  br label %bb.t

bb.l:                                             ; preds = %generic_shape_ivar.exit.i
  %i.am = and i32 %i.aj, 524287
  %i.an = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113 ; 3 uses
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = getelementptr [40 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 28
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !120
  %i.as = add i16 %i.ar, -1                       ; 4 uses
  br i1 %i.aa, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i64 %i.w, 126100789566373888
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %bb.m
  %i.au = and i64 %i.x, 524287
  %i.av = getelementptr [40 x i8], ptr %i.an, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 30
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %bb.m
  %i.ay = lshr i64 %i.w, 54
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.ba = and i64 %i.ay, 7
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr [2 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !123
  %i.bf = and i64 %i.x, 524287
  %i.bg = getelementptr [40 x i8], ptr %i.an, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 30
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !135
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.be, i16 %i.bi)
  br label %RSHAPE_CAPACITY.exit.i

RSHAPE_CAPACITY.exit.i:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i
  %.0.i62.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.ax, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %.not57.i = icmp ult i16 %i.as, %.0.i62.i
  br i1 %.not57.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %RSHAPE_CAPACITY.exit.i
  %i.bj = lshr i32 %i.aj, 22
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 7                         ; 2 uses
  %.not.i.i63.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i63.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i:       ; preds = %bb.n
  %i.bm = getelementptr i8, ptr %i.ap, i64 30
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !135
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_EMBEDDED_CAPACITY.exit.i64.i:              ; preds = %bb.n
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !136
  %i.bp = zext nneg i8 %i.bl to i64
  %i.bq = add nuw nsw i64 %i.bp, 4294967295
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !123
  %i.bu = getelementptr i8, ptr %i.ap, i64 30
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !135
  %spec.select.i65.i = call i16 @llvm.umax.i16(i16 %i.bt, i16 %i.bv)
  br label %RSHAPE_CAPACITY.exit68.i

RSHAPE_CAPACITY.exit68.i:                         ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i
  %.0.i66.i = phi i16 [ %spec.select.i65.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i64.i ], [ %i.bn, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i67.i ]
  %i.bw = call fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %i.u, i16 noundef zeroext %.0.i66.i)
  br label %bb.o

bb.o:                                             ; preds = %RSHAPE_CAPACITY.exit68.i, %RSHAPE_CAPACITY.exit.i, %bb.l
  %.054.i = phi i64 [ %i.bw, %RSHAPE_CAPACITY.exit68.i ], [ %i.u, %RSHAPE_CAPACITY.exit.i ], [ %i.u, %bb.l ] ; 6 uses
  %.not.i69.i = icmp eq i64 %.054.i, 0
  br i1 %.not.i69.i, label %rb_imemo_fields_ptr.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = inttoptr i64 %.054.i to ptr             ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !20
  %i.bz = and i64 %i.by, 65536
  %.not5.i.i = icmp eq i64 %i.bz, 0
  %i.ca = getelementptr i8, ptr %i.bx, i64 16     ; 2 uses
  br i1 %.not5.i.i, label %rb_imemo_fields_ptr.exit.i, label %bb.q, !prof !97

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit.i

rb_imemo_fields_ptr.exit.i:                       ; preds = %bb.q, %bb.p, %bb.o
  %.0.i70.i = phi ptr [ %i.cb, %bb.q ], [ null, %bb.o ], [ %i.ca, %bb.p ]
  %i.cc = icmp eq i64 %i.r, %.054.i
  %or.cond.i = and i1 %.not.i, %i.cc
  %i.cd = zext i16 %i.as to i64
  %i.ce = getelementptr [8 x i8], ptr %.0.i70.i, i64 %i.cd ; 2 uses
  %i.cf = icmp eq i64 %2, 0
  %i.cg = and i64 %2, 7
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch                      ; 2 uses
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_imemo_fields_ptr.exit.i
  store atomic volatile i64 %2, ptr %i.ce seq_cst, align 8
  br i1 %i.ci, label %rb_obj_atomic_write.exit.i, label %rb_obj_atomic_write.exit.sink.split.i

bb.s:                                             ; preds = %rb_imemo_fields_ptr.exit.i
  store i64 %2, ptr %i.ce, align 8, !tbaa !16
  br i1 %i.ci, label %rb_obj_atomic_write.exit.i, label %rb_obj_atomic_write.exit.sink.split.i

rb_obj_atomic_write.exit.sink.split.i:            ; preds = %bb.s, %bb.r
  %.054.sink.i = phi i64 [ %i.r, %bb.r ], [ %.054.i, %bb.s ]
  call void @rb_gc_writebarrier(i64 noundef %.054.sink.i, i64 noundef %2) #26
  br label %rb_obj_atomic_write.exit.i

rb_obj_atomic_write.exit.i:                       ; preds = %rb_obj_atomic_write.exit.sink.split.i, %bb.s, %bb.r
  br i1 %i.aa, label %class_fields_ivar_set.exit, label %.sink.split.i

bb.t:                                             ; preds = %bb.k, %bb.f
  %.055.i = phi i32 [ %i.y, %bb.f ], [ %i.aj, %bb.k ]
  %.1.i = phi i64 [ %i.u, %bb.f ], [ %i.al, %bb.k ] ; 2 uses
  %i.cj = icmp eq i64 %.1.i, %i.r
  %or.cond61.i = and i1 %.not.i, %i.cj
  br i1 %or.cond61.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = call i64 @rb_imemo_fields_clone(i64 noundef %i.r) #26
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i = phi i64 [ %i.ck, %bb.u ], [ %.1.i, %bb.t ] ; 5 uses
  %.not.i71.i = icmp eq i64 %.2.i, 0
  br i1 %.not.i71.i, label %rb_imemo_fields_complex_tbl.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = inttoptr i64 %.2.i to ptr
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit.i

rb_imemo_fields_complex_tbl.exit.i:               ; preds = %bb.w, %bb.v
  %.0.i72.i = phi ptr [ %i.cn, %bb.w ], [ null, %bb.v ]
  %i.co = call i32 @rb_st_insert(ptr noundef %.0.i72.i, i64 noundef %1, i64 noundef %2) #26
  %.not58.i = icmp eq i32 %i.co, 0                ; 2 uses
  %i.cp = icmp eq i64 %2, 0
  %i.cq = and i64 %2, 7
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %rb_obj_written.exit.i, label %bb.x

bb.x:                                             ; preds = %rb_imemo_fields_complex_tbl.exit.i
  call void @rb_gc_writebarrier(i64 noundef %.2.i, i64 noundef %2) #26
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.x, %rb_imemo_fields_complex_tbl.exit.i
  %.not59.i = icmp eq i64 %.2.i, %i.r
  br i1 %.not59.i, label %class_fields_ivar_set.exit.thread, label %.sink.split.i

class_fields_ivar_set.exit.thread:                ; preds = %rb_obj_written.exit.i
  %.075.i23 = zext i1 %.not58.i to i8
  store i8 %.075.i23, ptr %3, align 1, !tbaa !18
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

.sink.split.i:                                    ; preds = %rb_obj_written.exit.i, %rb_obj_atomic_write.exit.i
  %.2.sink.i = phi i64 [ %.054.i, %rb_obj_atomic_write.exit.i ], [ %.2.i, %rb_obj_written.exit.i ] ; 2 uses
  %.055.sink.i = phi i32 [ %i.aj, %rb_obj_atomic_write.exit.i ], [ %.055.i, %rb_obj_written.exit.i ]
  %.075.shrunk.ph.i = phi i1 [ true, %rb_obj_atomic_write.exit.i ], [ %.not58.i, %rb_obj_written.exit.i ]
  %.0.ph.i = phi i16 [ %i.as, %rb_obj_atomic_write.exit.i ], [ -1, %rb_obj_written.exit.i ]
  %i.ct = inttoptr i64 %.2.sink.i to ptr          ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !20
  %i.cv = and i64 %i.cu, 4294967295
  %4 = zext i32 %.055.sink.i to i64
  %i.cw = shl nuw i64 %4, 32
  %i.cx = or disjoint i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.ct, align 8, !tbaa !20
  %i.cy = zext i1 %.075.shrunk.ph.i to i8
  br label %class_fields_ivar_set.exit

class_fields_ivar_set.exit:                       ; preds = %rb_obj_atomic_write.exit.i, %.sink.split.i
  %.075.shrunk.i = phi i8 [ %i.cy, %.sink.split.i ], [ 0, %rb_obj_atomic_write.exit.i ]
  %storemerge60.i = phi i64 [ %.2.sink.i, %.sink.split.i ], [ %.054.i, %rb_obj_atomic_write.exit.i ] ; 7 uses
  %.0.i = phi i16 [ %.0.ph.i, %.sink.split.i ], [ %i.as, %rb_obj_atomic_write.exit.i ] ; 3 uses
  store i8 %.075.shrunk.i, ptr %3, align 1, !tbaa !18
  %.not = icmp eq i64 %storemerge60.i, %i.r
  br i1 %.not, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.y

bb.y:                                             ; preds = %class_fields_ivar_set.exit
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17:      ; preds = %bb.y
  %i.cz = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !20
  %i.db = and i64 %i.da, 16384
  %.not10.i.i18 = icmp eq i64 %i.db, 0
  br i1 %.not10.i.i18, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12, label %bb.z, !prof !121

bb.z:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17
  %i.dc = getelementptr i8, ptr %i.cz, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17, %bb.y
  %i.dd = call ptr @rb_current_box() #26          ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i13, label %.split.i.i16, label %bb.aa

.split.i.i16:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.de = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.aa:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.df = getelementptr i8, ptr %i.dd, i64 128
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !32, !range !34, !noundef !35
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.split7.i.i15, label %bb.ab

.split7.i.i15:                                    ; preds = %bb.aa
  %i.di = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.dd)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dj = inttoptr i64 %0 to ptr
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.ab, %.split7.i.i15, %.split.i.i16, %bb.z
  %.0.i.i14 = phi ptr [ %i.dc, %bb.z ], [ %i.dk, %bb.ab ], [ %i.de, %.split.i.i16 ], [ %i.di, %.split7.i.i15 ]
  %i.dl = getelementptr i8, ptr %.0.i.i14, i64 16
  store atomic volatile i64 %storemerge60.i, ptr %i.dl seq_cst, align 8
  %i.dm = icmp eq i64 %storemerge60.i, 0
  %i.dn = and i64 %storemerge60.i, 7
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = or i1 %i.dm, %i.do
  br i1 %i.dp, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ac

bb.ac:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %storemerge60.i) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.ac, %RCLASS_EXT_WRITABLE.exit.i, %class_fields_ivar_set.exit.thread, %class_fields_ivar_set.exit
  %.0.i26 = phi i16 [ -1, %class_fields_ivar_set.exit.thread ], [ %.0.i, %class_fields_ivar_set.exit ], [ %.0.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %.0.i, %bb.ac ]
  %storemerge60.i25 = phi i64 [ %i.r, %class_fields_ivar_set.exit.thread ], [ %i.r, %class_fields_ivar_set.exit ], [ %storemerge60.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %storemerge60.i, %bb.ac ]
  %i.dq = inttoptr i64 %storemerge60.i25 to ptr
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !20
  %i.ds = and i64 %i.dr, -4294967296
  %i.dt = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !20
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = or disjoint i64 %i.dv, %i.ds
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !20
  ret i16 %.0.i26
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_fields_tbl_copy(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 16384
  %.not10.i.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !121

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.h = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !32, !range !34, !noundef !35
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.h)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split.i.i ], [ %i.m, %.split7.i.i ]
  %i.p = getelementptr i8, ptr %.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112  ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.r = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.q) #26 ; 4 uses
  %i.s = icmp ne i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp eq i64 %i.t, 0
  %.not5.i.i.i.i6 = and i1 %i.s, %i.u
  br i1 %.not5.i.i.i.i6, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, !prof !124

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12:      ; preds = %bb.e
  %i.v = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = and i64 %i.w, 16384
  %.not10.i.i13 = icmp eq i64 %i.x, 0
  br i1 %.not10.i.i13, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, label %bb.f, !prof !121

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12
  %i.y = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, %bb.e
  %i.z = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i8, label %.split.i.i11, label %bb.g

.split.i.i11:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.aa = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.ab = getelementptr i8, ptr %i.z, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !32, !range !34, !noundef !35
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.split7.i.i10, label %bb.h

.split7.i.i10:                                    ; preds = %bb.g
  %i.ae = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.z)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = inttoptr i64 %0 to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.h, %.split7.i.i10, %.split.i.i11, %bb.f
  %.0.i.i9 = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ], [ %i.aa, %.split.i.i11 ], [ %i.ae, %.split7.i.i10 ]
  %i.ah = getelementptr i8, ptr %.0.i.i9, i64 16
  store atomic volatile i64 %i.r, ptr %i.ah seq_cst, align 8
  %i.ai = icmp eq i64 %i.r, 0
  %i.aj = and i64 %i.r, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.r) #26
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.i
  %i.am = inttoptr i64 %1 to ptr
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ao = and i64 %i.an, -4294967296
  %i.ap = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = or disjoint i64 %i.ar, %i.ao
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  ret void
}

declare i64 @rb_imemo_fields_clone(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

end_hunk_0
