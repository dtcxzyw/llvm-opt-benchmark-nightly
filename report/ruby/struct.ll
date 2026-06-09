inline.NumInlined: 263
inline.NumDeleted: 69
begin_hunk_0_@rb_data_s_def:bb.a
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = tail call i64 @rb_to_symbol(i64 noundef %i.g) #22 ; 5 uses
  %i.i = tail call i32 @rb_is_attrset_sym(i64 noundef %i.h) #23
  %.not20 = icmp eq i32 %i.i, 0
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.62, i64 noundef %i.h) #24
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.k = tail call i64 @rb_hash_has_key(i64 noundef %i.a, i64 noundef %i.h) #22
  %i.l = and i64 %i.k, -5
  %.not21 = icmp eq i64 %i.l, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.54, i64 noundef %i.h) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i64 @rb_hash_aset(i64 noundef %i.a, i64 noundef %i.h, i64 noundef 20) #22 ; 0 uses
  %i.o = add nuw nsw i64 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.p = tail call i64 @rb_hash_keys(i64 noundef %i.a) #22 ; 3 uses
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !11
  tail call void @rb_obj_freeze_inline(i64 noundef %i.p) #22
  %i.s = tail call i64 @rb_class_new(i64 noundef %2) #22 ; 5 uses
  %i.t = inttoptr i64 %2 to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %i.w = tail call i64 @rb_make_metaclass(i64 noundef %i.s, i64 noundef %i.v) #22 ; 0 uses
  %i.x = tail call i64 @rb_class_inherited(i64 noundef %2, i64 noundef %i.s) #22 ; 0 uses
  %i.y = tail call fastcc i64 @setup_data(i64 noundef %i.s, i64 noundef %i.p) ; 0 uses
  %i.z = tail call i32 @rb_block_given_p() #22
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aa = tail call i64 @rb_mod_module_eval(i32 noundef 0, ptr noundef null, i64 noundef %i.s) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret i64 %i.s
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_data_initialize_m(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.struct_hash_set_arg, align 8 ; 5 uses
  %i.a = tail call i64 @rb_obj_class(i64 noundef %2) #22 ; 6 uses
  %i.b = icmp ne i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !42

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !17

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #24
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_struct_modify.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #22
  br label %rb_struct_modify.exit

rb_struct_modify.exit:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.k = load i64, ptr @id_members, align 8, !tbaa !11 ; 3 uses
  %i.l = tail call i64 @rb_attr_get(i64 noundef %i.a, i64 noundef %i.k) #22 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %.preheader.i, label %struct_ivar_get.exit

.preheader.i:                                     ; preds = %rb_struct_modify.exit, %bb.c
  %.018.i = phi i64 [ %i.n, %bb.c ], [ %i.a, %rb_struct_modify.exit ]
  %i.n = tail call i64 @rb_class_superclass(i64 noundef %.018.i) #23 ; 5 uses
  %i.o = load i64, ptr @rb_cStruct, align 8, !tbaa !11
  %i.p = icmp ne i64 %i.n, %i.o
  %i.q = load i64, ptr @rb_cData, align 8
  %i.r = icmp ne i64 %i.n, %i.q
  %or.cond.not25.i = select i1 %i.p, i1 %i.r, i1 false
  %i.s = and i64 %i.n, -5
  %i.t = icmp ne i64 %i.s, 0
  %or.cond23.i = and i1 %i.t, %or.cond.not25.i
  br i1 %or.cond23.i, label %bb.c, label %struct_ivar_get.exit

bb.c:                                             ; preds = %.preheader.i
  %i.u = tail call i64 @rb_attr_get(i64 noundef %i.n, i64 noundef %i.k) #22 ; 5 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne i64 %i.a, 0
  %i.x = and i64 %i.a, 7
  %i.y = icmp eq i64 %i.x, 0
  %.not3.i.i = and i1 %i.w, %i.y
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %struct_ivar_get.exit

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.d
  %i.z = inttoptr i64 %i.a to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ab = and i64 %i.aa, 2048
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.e, label %struct_ivar_get.exit

bb.e:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  %i.ac = tail call i64 @rb_ivar_set(i64 noundef %i.a, i64 noundef %i.k, i64 noundef %i.u) #22 ; 0 uses
  br label %struct_ivar_get.exit

struct_ivar_get.exit:                             ; preds = %.preheader.i, %rb_struct_modify.exit, %bb.d, %RB_OBJ_FROZEN.exit.i, %bb.e
  %.0.i24 = phi i64 [ %i.l, %rb_struct_modify.exit ], [ %i.u, %RB_OBJ_FROZEN.exit.i ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ 4, %.preheader.i ] ; 3 uses
  %i.ad = inttoptr i64 %.0.i24 to ptr             ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = and i64 %i.ae, 8192
  %.not.i25 = icmp eq i64 %i.af, 0
  br i1 %.not.i25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %struct_ivar_get.exit
  %i.ag = lshr i64 %i.ae, 15
  %i.ah = and i64 %i.ag, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %struct_ivar_get.exit
  %i.ai = getelementptr i8, ptr %i.ad, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i26 = phi i64 [ %i.ah, %bb.f ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = icmp eq i32 %0, 0
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rb_array_len.exit
  %.not23 = icmp eq i64 %.0.i26, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i64 @rb_keyword_error_new(ptr noundef nonnull @.str.63, i64 noundef %.0.i24) #22
  tail call void @rb_exc_raise(i64 noundef %i.al) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @rb_obj_freeze_inline(i64 noundef %2) #22
  br label %bb.v

bb.k:                                             ; preds = %rb_array_len.exit
  %i.am = icmp sgt i32 %0, 1
  br i1 %i.am, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %1, align 8, !tbaa !11    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = and i64 %i.an, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.l
  %i.as = inttoptr i64 %i.an to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13 ; 3 uses
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 8
  br i1 %i.av, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.k
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 0) #24
  unreachable

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aw = and i64 %i.at, 32768
  %.not.i.i27 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = lshr i64 %i.at, 16
  %i.ay = and i64 %i.ax, 15
  br label %RHASH_SIZE.exit

bb.o:                                             ; preds = %bb.m
  %i.az = add i64 %i.an, 24
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i28 = phi i64 [ %i.ay, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp ult i64 %.0.i28, %.0.i26
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RHASH_SIZE.exit
  %i.be = tail call i64 @rb_hash_keys(i64 noundef %i.an) #22
  %i.bf = tail call i64 @rb_ary_diff(i64 noundef %.0.i24, i64 noundef %i.be) #22
  %i.bg = tail call i64 @rb_keyword_error_new(ptr noundef nonnull @.str.63, i64 noundef %i.bf) #22
  tail call void @rb_exc_raise(i64 noundef %i.bg) #24
  unreachable

bb.q:                                             ; preds = %RHASH_SIZE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 1040384
  %.not.i29 = icmp eq i64 %i.bi, 0
  br i1 %.not.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %i.e, i64 16
  br label %RSTRUCT_CONST_PTR.exit

bb.s:                                             ; preds = %bb.q
  %i.bk = getelementptr i8, ptr %i.e, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  br label %RSTRUCT_CONST_PTR.exit

RSTRUCT_CONST_PTR.exit:                           ; preds = %bb.r, %bb.s
  %.0.i30 = phi ptr [ %i.bj, %bb.r ], [ %i.bl, %bb.s ]
  tail call void @rb_mem_clear(ptr noundef %.0.i30, i64 noundef %.0.i26) #26
  store i64 %2, ptr %3, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 4, ptr %i.bm, align 8, !tbaa !46
  %i.bn = load i64, ptr %1, align 8, !tbaa !11
  %i.bo = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %i.bn, ptr noundef nonnull @struct_hash_set_i, i64 noundef %i.bo) #22
  call void @rb_obj_freeze_inline(i64 noundef %2) #22
  %i.bp = load i64, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq i64 %i.bp, 4
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %RSTRUCT_CONST_PTR.exit
  %i.bq = call i64 @rb_keyword_error_new(ptr noundef nonnull @.str.64, i64 noundef %i.bp) #22
  call void @rb_exc_raise(i64 noundef %i.bq) #24
  unreachable

bb.u:                                             ; preds = %RSTRUCT_CONST_PTR.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_data_init_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_struct_init_copy(i64 noundef %0, i64 noundef %1) ; 0 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %0) #22
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_data_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.65, i64 noundef 7) #22
  %i.b = tail call i64 @rb_exec_recursive(ptr noundef nonnull @inspect_struct, i64 noundef %0, i64 noundef %i.a) #22
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_data_with(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call i32 @rb_keyword_given_p() #22
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread16, label %bb.c

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.h = icmp slt i32 %0, 0
  br i1 %i.h, label %.thread16, label %rb_scan_args_set.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.f) #22 ; 2 uses
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %rb_scan_args_set.exit, label %.thread16

.thread16:                                        ; preds = %bb.a, %bb.c, %bb.b
  %.1.i11 = phi i32 [ %i.j, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i11, i32 noundef 0, i32 noundef 0) #24
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.l = icmp eq i64 %i.i, 4
  br i1 %i.l, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.m = tail call i64 @rb_struct_to_h(i64 noundef %2) ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !11
  %i.n = tail call i64 @rb_hash_update_by(i64 noundef %i.m, i64 noundef %i.i, ptr noundef null) #22 ; 0 uses
  %i.o = tail call i64 @rb_obj_class(i64 noundef %2) #22
  %i.p = call i64 @rb_class_new_instance_kw(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.o, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %bb.b, %rb_scan_args_set.exit, %bb.d
  %.0 = phi i64 [ %i.p, %bb.d ], [ %2, %rb_scan_args_set.exit ], [ %2, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Struct() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull @.str.33) #22
  store i64 %i.a, ptr @id_members, align 8, !tbaa !11
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull @.str.34) #22
  store i64 %i.b, ptr @id_back_members, align 8, !tbaa !11
  %i.c = tail call i64 @rb_intern(ptr noundef nonnull @.str.35) #22
  store i64 %i.c, ptr @id_keyword_init, align 8, !tbaa !11
  tail call void @InitVM_Struct()
  ret void
}

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_superclass(i64 noundef) local_unnamed_addr #11

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @RB_FIX2INT(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @rb_fix2int(i64 noundef %0) #22
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise_str(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_name_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #22
  tail call void @rb_exc_raise(i64 noundef %i.a) #24
  unreachable
}

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ident_hash_new() local_unnamed_addr #3

declare i64 @rb_sym_intern_ascii_cstr(ptr noundef) local_unnamed_addr #3

declare i64 @rb_hash_has_key(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #3

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @struct_set_members(i64 noundef %0, i64 noundef returned %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = icmp slt i64 %.0.i, 11
  br i1 %i.h, label %bb.g, label %.preheader

.preheader:                                       ; preds = %rb_array_len.exit
  %i.i = mul i64 %.0.i, 5
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %.034 = phi i64 [ %i.k, %bb.d ], [ 64, %.preheader ] ; 5 uses
  %i.j = icmp slt i64 %.034, %i.i
  %i.k = shl i64 %.034, 1
  br i1 %i.j, label %bb.d, label %.lr.ph50, !llvm.loop !65

.lr.ph50:                                         ; preds = %bb.d
  %i.l = or disjoint i64 %.034, 1
  %i.m = tail call i64 @rb_ary_hidden_new(i64 noundef %i.l) #22 ; 6 uses
  %i.n = shl nuw i64 %.0.i, 1
  %i.o = or disjoint i64 %i.n, 1
  tail call void @rb_ary_store(i64 noundef %i.m, i64 noundef %.034, i64 noundef %i.o) #22
  %i.p = add i64 %.034, -2                        ; 4 uses
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = getelementptr i8, ptr %i.a, i64 32
  %i.s = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph50, %.split.us
  %.03649 = phi i64 [ 0, %.lr.ph50 ], [ %i.at, %.split.us ] ; 3 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !13
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %RARRAY_AREF.exit

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !15
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.x, %bb.f ], [ %i.q, %bb.e ]
  %i.y = getelementptr [8 x i8], ptr %.0.i.i, i64 %.03649
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = tail call i64 @rb_sym2id(i64 noundef %i.z) #22
  %i.ab = lshr i64 %i.aa, 3                       ; 2 uses
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !13
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i38 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i38, label %RARRAY_AREF.exit.split.us, label %RARRAY_AREF.exit.split

RARRAY_AREF.exit.split.us:                        ; preds = %RARRAY_AREF.exit
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !15  ; 2 uses
  %.035.us44 = and i64 %i.ab, %i.p                ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ae, i64 %.035.us44
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = and i64 %i.ag, -5
  %.not.us45 = icmp eq i64 %i.ah, 0
  br i1 %.not.us45, label %.split.us, label %RARRAY_AREF.exit40.us

RARRAY_AREF.exit40.us:                            ; preds = %RARRAY_AREF.exit.split.us, %RARRAY_AREF.exit40.us
  %.035.us46 = phi i64 [ %.035.us, %RARRAY_AREF.exit40.us ], [ %.035.us44, %RARRAY_AREF.exit.split.us ]
  %i.ai = mul i64 %.035.us46, 5
  %i.aj = add i64 %i.ai, 2
  %.035.us = and i64 %i.aj, %i.p                  ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ae, i64 %.035.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = and i64 %i.al, -5
  %.not.us = icmp eq i64 %i.am, 0
  br i1 %.not.us, label %.split.us, label %RARRAY_AREF.exit40.us

RARRAY_AREF.exit.split:                           ; preds = %RARRAY_AREF.exit
  %.03541 = and i64 %i.ab, %i.p                   ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %i.t, i64 %.03541
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ap = and i64 %i.ao, -5
  %.not42 = icmp eq i64 %i.ap, 0
  br i1 %.not42, label %.split.us, label %RARRAY_AREF.exit40

.split.us:                                        ; preds = %RARRAY_AREF.exit40, %RARRAY_AREF.exit40.us, %RARRAY_AREF.exit.split, %RARRAY_AREF.exit.split.us
  %.us-phi = phi i64 [ %.035.us, %RARRAY_AREF.exit40.us ], [ %.035.us44, %RARRAY_AREF.exit.split.us ], [ %.03541, %RARRAY_AREF.exit.split ], [ %.035, %RARRAY_AREF.exit40 ] ; 2 uses
  tail call void @rb_ary_store(i64 noundef %i.m, i64 noundef %.us-phi, i64 noundef %i.z) #22
  %i.aq = or disjoint i64 %.us-phi, 1
  %i.ar = shl nuw i64 %.03649, 1
  %i.as = or disjoint i64 %i.ar, 1
  tail call void @rb_ary_store(i64 noundef %i.m, i64 noundef %i.aq, i64 noundef %i.as) #22
  %i.at = add nuw nsw i64 %.03649, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !66

RARRAY_AREF.exit40:                               ; preds = %RARRAY_AREF.exit.split, %RARRAY_AREF.exit40
  %.03543 = phi i64 [ %.035, %RARRAY_AREF.exit40 ], [ %.03541, %RARRAY_AREF.exit.split ]
  %i.au = mul i64 %.03543, 5
  %i.av = add i64 %i.au, 2
  %.035 = and i64 %i.av, %i.p                     ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %i.t, i64 %.035
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = and i64 %i.ax, -5
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %.split.us, label %RARRAY_AREF.exit40

._crit_edge:                                      ; preds = %.split.us
  tail call void @rb_obj_freeze_inline(i64 noundef %i.m) #22
  br label %bb.g

bb.g:                                             ; preds = %rb_array_len.exit, %._crit_edge
  %.0 = phi i64 [ %i.m, %._crit_edge ], [ %1, %rb_array_len.exit ]
  %i.az = load i64, ptr @id_members, align 8, !tbaa !11
  %i.ba = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %i.az, i64 noundef %1) #22 ; 0 uses
  %i.bb = load i64, ptr @id_back_members, align 8, !tbaa !11
  %i.bc = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %i.bb, i64 noundef %.0) #22 ; 0 uses
  ret i64 %1
}

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_class_new(i64 noundef) local_unnamed_addr #3

declare i64 @rb_make_metaclass(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_class_inherited(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_to_str(i64 noundef) local_unnamed_addr #3

declare i32 @rb_is_const_name(i64 noundef) local_unnamed_addr #3

declare i64 @rb_to_id(i64 noundef) local_unnamed_addr #3

declare i32 @rb_const_defined_at(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #13

declare i64 @rb_mod_remove_const(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_define_class_id_under_no_pin(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_class_new_instance_pass_kw(i32 noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_struct_s_members_m(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_struct_s_members(i64 noundef %0)
  %i.b = tail call i64 @rb_ary_dup(i64 noundef %i.a) #22
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_struct_s_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_class_name(i64 noundef %0) #22 ; 2 uses
  %i.b = load i64, ptr @id_keyword_init, align 8, !tbaa !11 ; 3 uses
  %i.c = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.b) #22 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %.preheader.i.i, label %rb_struct_s_keyword_init.exit

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.018.i.i = phi i64 [ %i.e, %bb.b ], [ %0, %bb.a ]
  %i.e = tail call i64 @rb_class_superclass(i64 noundef %.018.i.i) #23 ; 5 uses
  %i.f = load i64, ptr @rb_cStruct, align 8, !tbaa !11
  %i.g = icmp ne i64 %i.e, %i.f
  %i.h = load i64, ptr @rb_cData, align 8
  %i.i = icmp ne i64 %i.e, %i.h
  %or.cond.not25.i.i = select i1 %i.g, i1 %i.i, i1 false
  %i.j = and i64 %i.e, -5
  %i.k = icmp ne i64 %i.j, 0
  %or.cond23.i.i = and i1 %i.k, %or.cond.not25.i.i
  br i1 %or.cond23.i.i, label %bb.b, label %rb_struct_s_keyword_init.exit.thread

bb.b:                                             ; preds = %.preheader.i.i
  %i.l = tail call i64 @rb_attr_get(i64 noundef %i.e, i64 noundef %i.b) #22 ; 5 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %.preheader.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ne i64 %0, 0
  %i.o = and i64 %0, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %rb_struct_s_keyword_init.exit

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.q = inttoptr i64 %0 to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = and i64 %i.r, 2048
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %bb.d, label %rb_struct_s_keyword_init.exit

bb.d:                                             ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.t = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %i.b, i64 noundef %i.l) #22 ; 0 uses
  br label %rb_struct_s_keyword_init.exit

rb_struct_s_keyword_init.exit:                    ; preds = %bb.a, %bb.c, %RB_OBJ_FROZEN.exit.i.i, %bb.d
  %.0.i.i = phi i64 [ %i.c, %bb.a ], [ %i.l, %RB_OBJ_FROZEN.exit.i.i ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  %i.u = and i64 %.0.i.i, -5
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %rb_struct_s_keyword_init.exit.thread, label %bb.e

bb.e:                                             ; preds = %rb_struct_s_keyword_init.exit
  %i.v = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.41, i64 noundef 20) #22 ; 0 uses
  br label %rb_struct_s_keyword_init.exit.thread

rb_struct_s_keyword_init.exit.thread:             ; preds = %.preheader.i.i, %bb.e, %rb_struct_s_keyword_init.exit
  ret i64 %i.a
}

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #3

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

declare void @rb_add_method_optimized(i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_fix2uint(i64 noundef) local_unnamed_addr #3

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @rb_mem_clear(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_keyword_given_p() local_unnamed_addr #3

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @struct_hash_set_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.b = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = call fastcc i32 @rb_struct_pos(i64 noundef %i.c, ptr noundef %i.a) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 @rb_ary_new() #22               ; 2 uses
  store i64 %i.i, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11
  %i.l = call i64 @rb_ary_push(i64 noundef %i.j, i64 noundef %i.k) #22 ; 0 uses
  br label %internal_RSTRUCT_SET.exit

bb.e:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.b, align 8, !tbaa !44   ; 6 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i64 %i.m, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !42

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.e
  %i.q = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 4 uses
  %i.s = and i64 %i.r, 2048
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !17

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.e
  call void @rb_error_frozen_object(i64 noundef %i.m) #24
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.t = and i64 %i.r, 31
  %i.u = icmp ne i64 %i.t, 5
  %i.v = and i64 %i.r, 49152
  %.not8.i.i = icmp eq i64 %i.v, 0
  %or.cond.i.i = or i1 %i.u, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_struct_modify.exit, label %bb.f, !prof !43

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %i.m) #22
  %.pre = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  %.phi.trans.insert = inttoptr i64 %.pre to ptr  ; 2 uses
  %.pre10 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %rb_struct_modify.exit

rb_struct_modify.exit:                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %.pre-phi = phi ptr [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.phi.trans.insert, %bb.f ] ; 2 uses
  %i.w = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre10, %bb.f ]
  %i.x = phi i64 [ %i.m, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.f ]
  %i.y = zext nneg i32 %i.d to i64
  %i.z = and i64 %i.w, 1040384
  %.not.i.i9 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_struct_modify.exit
  %i.aa = getelementptr i8, ptr %.pre-phi, i64 16
  br label %RSTRUCT_CONST_PTR.exit.i

bb.h:                                             ; preds = %rb_struct_modify.exit
  %i.ab = getelementptr i8, ptr %.pre-phi, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %RSTRUCT_CONST_PTR.exit.i

RSTRUCT_CONST_PTR.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.ac, %bb.h ]
  %i.ad = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.y
  store i64 %1, ptr %i.ad, align 8, !tbaa !11
  %i.ae = icmp eq i64 %1, 0
  %i.af = and i64 %1, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %internal_RSTRUCT_SET.exit, label %bb.i

bb.i:                                             ; preds = %RSTRUCT_CONST_PTR.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.x, i64 noundef %1) #22
  br label %internal_RSTRUCT_SET.exit

internal_RSTRUCT_SET.exit:                        ; preds = %bb.i, %RSTRUCT_CONST_PTR.exit.i, %bb.d
  ret i32 0
}

declare i64 @rb_ary_join(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_new() local_unnamed_addr #3

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #3

declare i64 @rb_wb_protected_newobj_of(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #17

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #3

declare i64 @rb_check_symbol(ptr noundef) local_unnamed_addr #3

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #3

declare i64 @rb_singleton_class(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_data_s_new(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_keyword_given_p() #22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 8
  br i1 %i.l, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 0) #24
  unreachable

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.m = tail call i64 @rb_class_new_instance_pass_kw(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #22
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.n = load i64, ptr @id_members, align 8, !tbaa !11 ; 3 uses
  %i.o = tail call i64 @rb_attr_get(i64 noundef %2, i64 noundef %i.n) #22 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %.preheader.i, label %struct_ivar_get.exit

.preheader.i:                                     ; preds = %bb.e, %bb.f
  %.018.i = phi i64 [ %i.q, %bb.f ], [ %2, %bb.e ]
  %i.q = tail call i64 @rb_class_superclass(i64 noundef %.018.i) #23 ; 5 uses
  %i.r = load i64, ptr @rb_cStruct, align 8, !tbaa !11
  %i.s = icmp ne i64 %i.q, %i.r
  %i.t = load i64, ptr @rb_cData, align 8
  %i.u = icmp ne i64 %i.q, %i.t
  %or.cond.not25.i = select i1 %i.s, i1 %i.u, i1 false
  %i.v = and i64 %i.q, -5
  %i.w = icmp ne i64 %i.v, 0
  %or.cond23.i = and i1 %i.w, %or.cond.not25.i
  br i1 %or.cond23.i, label %bb.f, label %struct_ivar_get.exit

bb.f:                                             ; preds = %.preheader.i
  %i.x = tail call i64 @rb_attr_get(i64 noundef %i.q, i64 noundef %i.n) #22 ; 5 uses
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp ne i64 %2, 0
  %i.aa = and i64 %2, 7
  %i.ab = icmp eq i64 %i.aa, 0
  %.not3.i.i = and i1 %i.z, %i.ab
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %struct_ivar_get.exit

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.g
  %i.ac = inttoptr i64 %2 to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  %i.ae = and i64 %i.ad, 2048
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.h, label %struct_ivar_get.exit

bb.h:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  %i.af = tail call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.n, i64 noundef %i.x) #22 ; 0 uses
  br label %struct_ivar_get.exit

struct_ivar_get.exit:                             ; preds = %.preheader.i, %bb.e, %bb.g, %RB_OBJ_FROZEN.exit.i, %bb.h
  %.0.i23 = phi i64 [ %i.o, %bb.e ], [ %i.x, %RB_OBJ_FROZEN.exit.i ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ 4, %.preheader.i ] ; 2 uses
  %i.ag = inttoptr i64 %.0.i23 to ptr             ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = and i64 %i.ah, 8192
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %struct_ivar_get.exit
  %i.aj = lshr i64 %i.ah, 15
  %i.ak = and i64 %i.aj, 127
  br label %rb_array_len.exit.i

bb.j:                                             ; preds = %struct_ivar_get.exit
  %i.al = getelementptr i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.ak, %bb.i ], [ %i.am, %bb.j ] ; 4 uses
  %i.an = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.an, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.k

bb.k:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #29
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.ao = trunc nsw i64 %.0.i.i to i32            ; 2 uses
  %i.ap = icmp slt i32 %0, 0
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %RARRAY_LENINT.exit
  %.not.i24 = icmp ne i64 %.0.i.i, -1
  %i.aq = icmp sgt i32 %0, %i.ao
  %or.cond.i = and i1 %.not.i24, %i.aq
  br i1 %or.cond.i, label %bb.m, label %rb_check_arity.exit

bb.m:                                             ; preds = %bb.l, %RARRAY_LENINT.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef %i.ao) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ar = zext nneg i32 %0 to i64                 ; 2 uses
  %i.as = tail call i64 @rb_hash_new_with_size(i64 noundef %i.ar) #22 ; 2 uses
  store i64 %i.as, ptr %i.a, align 8, !tbaa !11
  %.not27 = icmp eq i32 %0, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %rb_check_arity.exit
  %i.at = call i64 @rb_class_new_instance_kw(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %2, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

.lr.ph:                                           ; preds = %rb_check_arity.exit, %.lr.ph
  %.02126 = phi i64 [ %i.ay, %.lr.ph ], [ 0, %rb_check_arity.exit ] ; 3 uses
  %i.au = tail call i64 @rb_ary_entry(i64 noundef %.0.i23, i64 noundef %.02126) #23
  %i.av = getelementptr [8 x i8], ptr %1, i64 %.02126
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = tail call i64 @rb_hash_aset(i64 noundef %i.as, i64 noundef %i.au, i64 noundef %i.aw) #22 ; 0 uses
  %i.ay = add nuw nsw i64 %.02126, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

bb.n:                                             ; preds = %._crit_edge, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.at, %._crit_edge ]
  ret i64 %.0
}

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_class_new_instance_kw(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_to_symbol(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_is_attrset_sym(i64 noundef) local_unnamed_addr #11

declare i32 @rb_block_given_p() local_unnamed_addr #3

declare i64 @rb_mod_module_eval(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #17

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @recursive_equal(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 1040384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %i.b, 13
  %i.e = and i64 %i.d, 127
  br label %internal_RSTRUCT_LEN.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp sgt i64 %.0.i, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %internal_RSTRUCT_LEN.exit
  %i.i = getelementptr i8, ptr %i.a, i64 16
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = getelementptr i8, ptr %i.k, i64 24
  br label %bb.f

bb.e:                                             ; preds = %internal_RSTRUCT_GET.exit14
  %i.n = add nuw nsw i64 %.01015, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.0.i
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !68

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.01015 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = and i64 %i.o, 1040384
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %internal_RSTRUCT_GET.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit

internal_RSTRUCT_GET.exit:                        ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.g ], [ %i.i, %bb.f ]
  %i.r = getelementptr [8 x i8], ptr %.0.i.i, i64 %.01015
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = load i64, ptr %i.k, align 8, !tbaa !13
  %i.u = and i64 %i.t, 1040384
  %.not.i.i12 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i12, label %bb.h, label %internal_RSTRUCT_GET.exit14

bb.h:                                             ; preds = %internal_RSTRUCT_GET.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit14

internal_RSTRUCT_GET.exit14:                      ; preds = %internal_RSTRUCT_GET.exit, %bb.h
  %.0.i.i13 = phi ptr [ %i.v, %bb.h ], [ %i.l, %internal_RSTRUCT_GET.exit ]
  %i.w = getelementptr [8 x i8], ptr %.0.i.i13, i64 %.01015
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call i64 @rb_equal(i64 noundef %i.s, i64 noundef %i.x) #22
  %.not11 = icmp eq i64 %i.y, 0
  br i1 %.not11, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %internal_RSTRUCT_GET.exit14, %bb.e, %internal_RSTRUCT_LEN.exit, %bb.a
  %.0 = phi i64 [ 20, %bb.a ], [ 20, %internal_RSTRUCT_LEN.exit ], [ 0, %internal_RSTRUCT_GET.exit14 ], [ 20, %bb.e ]
  ret i64 %.0
}

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @recursive_eql(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 1040384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %i.b, 13
  %i.e = and i64 %i.d, 127
  br label %internal_RSTRUCT_LEN.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp sgt i64 %.0.i, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %internal_RSTRUCT_LEN.exit
  %i.i = getelementptr i8, ptr %i.a, i64 16
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = getelementptr i8, ptr %i.k, i64 24
  br label %bb.f

bb.e:                                             ; preds = %internal_RSTRUCT_GET.exit14
  %i.n = add nuw nsw i64 %.01015, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %.0.i
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !69

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.01015 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = and i64 %i.o, 1040384
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %bb.g, label %internal_RSTRUCT_GET.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit

internal_RSTRUCT_GET.exit:                        ; preds = %bb.f, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.g ], [ %i.i, %bb.f ]
  %i.r = getelementptr [8 x i8], ptr %.0.i.i, i64 %.01015
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = load i64, ptr %i.k, align 8, !tbaa !13
  %i.u = and i64 %i.t, 1040384
  %.not.i.i12 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i12, label %bb.h, label %internal_RSTRUCT_GET.exit14

bb.h:                                             ; preds = %internal_RSTRUCT_GET.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit14

internal_RSTRUCT_GET.exit14:                      ; preds = %internal_RSTRUCT_GET.exit, %bb.h
  %.0.i.i13 = phi ptr [ %i.v, %bb.h ], [ %i.l, %internal_RSTRUCT_GET.exit ]
  %i.w = getelementptr [8 x i8], ptr %.0.i.i13, i64 %.01015
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call i32 @rb_eql(i64 noundef %i.s, i64 noundef %i.x) #22
  %.not11 = icmp eq i32 %i.y, 0
  br i1 %.not11, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %internal_RSTRUCT_GET.exit14, %bb.e, %internal_RSTRUCT_LEN.exit, %bb.a
  %.0 = phi i64 [ 20, %bb.a ], [ 20, %internal_RSTRUCT_LEN.exit ], [ 0, %internal_RSTRUCT_GET.exit14 ], [ 20, %bb.e ]
  ret i64 %.0
}

declare i32 @rb_eql(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_start(i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #18

declare i64 @rb_exec_recursive(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @inspect_struct(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %0) #22
  %i.b = tail call i64 @rb_class_path(i64 noundef %i.a) #22 ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ]
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = icmp ne i32 %2, 0                        ; 2 uses
  %i.k = icmp ne i8 %i.i, 35                      ; 2 uses
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.l = tail call i64 @rb_str_append(i64 noundef %1, i64 noundef %i.b) #22 ; 0 uses
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.57, i64 noundef 5) #22
  br label %bb.aa

.thread:                                          ; preds = %RSTRING_PTR.exit, %bb.c
  %i.n = tail call i64 @rb_obj_class(i64 noundef %0) #22
  %i.o = tail call i64 @rb_struct_s_members(i64 noundef %i.n)
  %i.p = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13   ; 3 uses
  %i.r = and i64 %i.q, 1040384
  %.not.i.i = icmp eq i64 %i.r, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.s = lshr i64 %i.q, 13
  %i.t = and i64 %i.s, 127
  br label %internal_RSTRUCT_LEN.exit.i

bb.f:                                             ; preds = %.thread
  %i.u = getelementptr i8, ptr %i.p, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit.i

internal_RSTRUCT_LEN.exit.i:                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.t, %bb.e ], [ %i.v, %bb.f ]
  %i.w = inttoptr i64 %i.o to ptr                 ; 6 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !13   ; 3 uses
  %i.y = and i64 %i.x, 8192
  %.not.i6.i = icmp eq i64 %i.y, 0
  br i1 %.not.i6.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %internal_RSTRUCT_LEN.exit.i
  %i.z = lshr i64 %i.x, 15
  %i.aa = and i64 %i.z, 127
  br label %rb_array_len.exit.i

bb.h:                                             ; preds = %internal_RSTRUCT_LEN.exit.i
  %i.ab = getelementptr i8, ptr %i.w, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.h, %bb.g
  %.0.i7.i = phi i64 [ %i.aa, %bb.g ], [ %i.ac, %bb.h ] ; 2 uses
  %.not.i38 = icmp eq i64 %.0.i.i, %.0.i7.i
  br i1 %.not.i38, label %rb_struct_members.exit, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit.i
  %i.ad = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ae = tail call fastcc i64 @internal_RSTRUCT_LEN(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.2, i64 noundef %.0.i7.i, i64 noundef %i.ae) #24
  unreachable

rb_struct_members.exit:                           ; preds = %rb_array_len.exit.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_struct_members.exit
  %i.af = lshr i64 %i.q, 13
  %i.ag = and i64 %i.af, 127
  br label %internal_RSTRUCT_LEN.exit

bb.k:                                             ; preds = %rb_struct_members.exit
  %i.ah = getelementptr i8, ptr %i.p, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15
  br label %internal_RSTRUCT_LEN.exit

internal_RSTRUCT_LEN.exit:                        ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.ag, %bb.j ], [ %i.ai, %bb.k ] ; 3 uses
  %i.aj = icmp sgt i64 %.0.i, 0
  br i1 %i.aj, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %internal_RSTRUCT_LEN.exit
  %i.ak = getelementptr i8, ptr %i.w, i64 16      ; 2 uses
  %i.al = getelementptr i8, ptr %i.w, i64 32      ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 16      ; 2 uses
  %i.an = getelementptr i8, ptr %i.p, i64 24      ; 2 uses
  br i1 %i.k, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.58, i64 noundef 1) #22 ; 0 uses
  %.pre = load i64, ptr %i.w, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = phi i64 [ %.pre, %bb.m ], [ %i.x, %bb.l ]
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i40.peel = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i40.peel, label %bb.o, label %RARRAY_AREF.exit.peel

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %RARRAY_AREF.exit.peel

RARRAY_AREF.exit.peel:                            ; preds = %bb.o, %bb.n
  %.0.i.i41.peel = phi ptr [ %i.ar, %bb.o ], [ %i.ak, %bb.n ]
  %i.as = load i64, ptr %.0.i.i41.peel, align 8, !tbaa !11 ; 2 uses
  %i.at = tail call i64 @rb_sym2id(i64 noundef %i.as) #22 ; 3 uses
  %i.au = tail call i32 @rb_is_local_id(i64 noundef %i.at) #30
  %.not.peel = icmp eq i32 %i.au, 0
  br i1 %.not.peel, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RARRAY_AREF.exit.peel
  %i.av = tail call i32 @rb_is_const_id(i64 noundef %i.at) #30
  %.not37.peel = icmp eq i32 %i.av, 0
  br i1 %.not37.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %RARRAY_AREF.exit.peel
  %i.aw = tail call i64 @rb_id2str(i64 noundef %i.at) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ax = tail call i64 @rb_inspect(i64 noundef %i.as) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i64 [ %i.ax, %bb.r ], [ %i.aw, %bb.q ]
  %i.ay = tail call i64 @rb_str_append(i64 noundef %1, i64 noundef %.sink) #22 ; 0 uses
  %i.az = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.59, i64 noundef 1) #22 ; 0 uses
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !13
  %i.bb = and i64 %i.ba, 1040384
  %.not.i.i42.peel = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i42.peel, label %bb.t, label %internal_RSTRUCT_GET.exit.peel

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit.peel

internal_RSTRUCT_GET.exit.peel:                   ; preds = %bb.t, %bb.s
  %.0.i.i43.peel = phi ptr [ %i.bc, %bb.t ], [ %i.am, %bb.s ]
  %i.bd = load i64, ptr %.0.i.i43.peel, align 8, !tbaa !11
  %i.be = tail call i64 @rb_inspect(i64 noundef %i.bd) #22
  %i.bf = tail call i64 @rb_str_append(i64 noundef %1, i64 noundef %i.be) #22 ; 0 uses
  %exitcond.peel.not = icmp eq i64 %.0.i, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %internal_RSTRUCT_GET.exit.peel, %internal_RSTRUCT_GET.exit
  %.03645 = phi i64 [ %i.ca, %internal_RSTRUCT_GET.exit ], [ 1, %internal_RSTRUCT_GET.exit.peel ] ; 3 uses
  %i.bg = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.43, i64 noundef 2) #22 ; 0 uses
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 8192
  %.not.i.i40 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i40, label %bb.u, label %RARRAY_AREF.exit

bb.u:                                             ; preds = %.peel.next
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.peel.next, %bb.u
  %.0.i.i41 = phi ptr [ %i.bj, %bb.u ], [ %i.ak, %.peel.next ]
  %i.bk = getelementptr [8 x i8], ptr %.0.i.i41, i64 %.03645
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = tail call i64 @rb_sym2id(i64 noundef %i.bl) #22 ; 3 uses
  %i.bn = tail call i32 @rb_is_local_id(i64 noundef %i.bm) #30
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %RARRAY_AREF.exit
  %i.bo = tail call i32 @rb_is_const_id(i64 noundef %i.bm) #30
  %.not37 = icmp eq i32 %i.bo, 0
  br i1 %.not37, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %RARRAY_AREF.exit
  %i.bp = tail call i64 @rb_id2str(i64 noundef %i.bm) #22
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bq = tail call i64 @rb_inspect(i64 noundef %i.bl) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink49 = phi i64 [ %i.bq, %bb.x ], [ %i.bp, %bb.w ]
  %i.br = tail call i64 @rb_str_append(i64 noundef %1, i64 noundef %.sink49) #22 ; 0 uses
  %i.bs = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.59, i64 noundef 1) #22 ; 0 uses
  %i.bt = load i64, ptr %i.p, align 8, !tbaa !13
  %i.bu = and i64 %i.bt, 1040384
  %.not.i.i42 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i42, label %bb.z, label %internal_RSTRUCT_GET.exit

bb.z:                                             ; preds = %bb.y
  %i.bv = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %internal_RSTRUCT_GET.exit

internal_RSTRUCT_GET.exit:                        ; preds = %bb.y, %bb.z
  %.0.i.i43 = phi ptr [ %i.bv, %bb.z ], [ %i.am, %bb.y ]
  %i.bw = getelementptr [8 x i8], ptr %.0.i.i43, i64 %.03645
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = tail call i64 @rb_inspect(i64 noundef %i.bx) #22
  %i.bz = tail call i64 @rb_str_append(i64 noundef %1, i64 noundef %i.by) #22 ; 0 uses
  %i.ca = add nuw nsw i64 %.03645, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !70

._crit_edge:                                      ; preds = %internal_RSTRUCT_GET.exit, %internal_RSTRUCT_GET.exit.peel, %internal_RSTRUCT_LEN.exit
  %i.cb = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.60, i64 noundef 1) #22 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %1, %._crit_edge ]
  ret i64 %.0
}

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_const_id(i64 noundef) local_unnamed_addr #18

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #3

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_set_pair(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #3

declare i64 @rb_enumeratorize_with_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_frame_this_func() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 1, 0) i64 @struct_enum_size(i64 noundef %0, i64 %1, i64 %2) #10 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = and i64 %i.b, 1040384
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 13
  %i.e = and i64 %i.d, 127
  br label %rb_struct_size.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  br label %rb_struct_size.exit

rb_struct_size.exit:                              ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = shl i64 %.0.i.i, 1
  %i.i = or disjoint i64 %i.h, 1
  ret i64 %i.i
}

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #3

declare i32 @rb_block_pair_yield_optimizable() local_unnamed_addr #3

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_get_values_at(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @struct_entry(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = add i64 %1, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.b, -1
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i64 %1, 1
  %i.d = or disjoint i64 %i.c, 1
  br label %rb_long2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int2big(i64 noundef %1) #22
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !11
  %i.f = call fastcc i32 @rb_struct_pos(i64 noundef %0, ptr noundef %i.a) ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_long2num_inline.exit
  %i.h = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @invalid_struct_pos(i64 noundef %0, i64 noundef %i.h) #25
  unreachable

bb.e:                                             ; preds = %rb_long2num_inline.exit
  %i.i = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = and i64 %i.j, 1040384
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 16
  br label %rb_struct_aref.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %rb_struct_aref.exit

rb_struct_aref.exit:                              ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  %i.o = zext nneg i32 %i.f to i64
  %i.p = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.q
}

declare i64 @rb_obj_dig(i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_keyword_error_new(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ary_diff(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_hash_update_by(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!9, !9, i64 0}
!16 = !{!"branch_weights", i32 1073205, i32 2146410443}
!17 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !31, i64 144}
!22 = !{!"RClass_and_rb_classext_t", !23, i64 0, !24, i64 24}
!23 = !{!"RClass", !14, i64 0, !12, i64 16}
!24 = !{!"rb_classext_struct", !25, i64 0, !12, i64 8, !12, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !12, i64 48, !27, i64 56, !28, i64 64, !29, i64 72, !30, i64 80, !30, i64 88, !12, i64 96, !12, i64 104, !9, i64 112, !31, i64 120, !31, i64 122, !9, i64 124, !32, i64 125, !32, i64 125, !32, i64 125, !32, i64 125, !32, i64 125, !32, i64 125, !12, i64 128}
!25 = !{!"p1 _ZTS13rb_box_struct", !26, i64 0}
!26 = !{!"any pointer", !9, i64 0}
!27 = !{!"p1 _ZTS11rb_id_table", !26, i64 0}
!28 = !{!"p1 long", !26, i64 0}
!29 = !{!"p1 _ZTS18rb_subclass_anchor", !26, i64 0}
!30 = !{!"p1 _ZTS17rb_box_subclasses", !26, i64 0}
!31 = !{!"short", !9, i64 0}
!32 = !{!"_Bool", !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS27rb_execution_context_struct", !26, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 omnipotent char", !26, i64 0}
!37 = distinct !{!37, !20}
!38 = !{!14, !12, i64 8}
!39 = distinct !{!39, !20}
!40 = !{!28, !28, i64 0}
!41 = !{i64 2152203943}
!42 = !{!"branch_weights", i32 2146410443, i32 1073205}
!43 = !{!"branch_weights", i32 4001, i32 1}
!44 = !{!45, !12, i64 0}
!45 = !{!"struct_hash_set_arg", !12, i64 0, !12, i64 8}
!46 = !{!45, !12, i64 8}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = !{!62, !12, i64 16}
!62 = !{!"st_table", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !63, i64 8, !12, i64 16, !28, i64 24, !12, i64 32, !12, i64 40, !64, i64 48}
!63 = !{!"p1 _ZTS12st_hash_type", !26, i64 0}
!64 = !{!"p1 _ZTS14st_table_entry", !26, i64 0}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20, !71}
!71 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
