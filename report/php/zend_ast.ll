Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ast?download=true
inline.NumInlined: 91
inline.NumDeleted: 13
begin_hunk_0_@zend_ast_evaluate_inner:bb.a
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lq, %bb.lr, %bb.lp
  %i.aru = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !50
  %.not.i661 = icmp eq i8 %i.arv, 0
  br i1 %.not.i661, label %zval_ptr_dtor_nogc.exit663, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.arw = load ptr, ptr %5, align 8, !tbaa !50   ; 2 uses
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !71 ; 2 uses
  %i.ary = icmp ne i32 %i.arx, 0
  call void @llvm.assume(i1 %i.ary)
  %i.arz = add i32 %i.arx, -1                     ; 2 uses
  store i32 %i.arz, ptr %i.arw, align 4, !tbaa !71
  %.not3.i662 = icmp eq i32 %i.arz, 0
  br i1 %.not3.i662, label %bb.lu, label %zval_ptr_dtor_nogc.exit663

bb.lu:                                            ; preds = %bb.lt
  %i.asa = load ptr, ptr %5, align 8, !tbaa !50
  call void @rc_dtor_func(ptr noundef %i.asa) #14
  br label %zval_ptr_dtor_nogc.exit663

zval_ptr_dtor_nogc.exit663:                       ; preds = %bb.ls, %bb.lt, %bb.lu
  %i.asb = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.asc = load i8, ptr %i.asb, align 1, !tbaa !50
  %.not.i660 = icmp eq i8 %i.asc, 0
  br i1 %.not.i660, label %.critedge652, label %bb.lv

bb.lv:                                            ; preds = %zval_ptr_dtor_nogc.exit663
  %i.asd = load ptr, ptr %6, align 8, !tbaa !50   ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !71 ; 2 uses
  %i.asf = icmp ne i32 %i.ase, 0
  call void @llvm.assume(i1 %i.asf)
  %i.asg = add i32 %i.ase, -1                     ; 2 uses
  store i32 %i.asg, ptr %i.asd, align 4, !tbaa !71
  %.not3.i = icmp eq i32 %i.asg, 0
  br i1 %.not3.i, label %bb.lw, label %.critedge652

bb.lw:                                            ; preds = %bb.lv
  %i.ash = load ptr, ptr %6, align 8, !tbaa !50
  call void @rc_dtor_func(ptr noundef %i.ash) #14
  br label %.critedge652

bb.lx:                                            ; preds = %bb.a
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.9) #14
  br label %.critedge652

.critedge652:                                     ; preds = %zval_ptr_dtor_nogc.exit744, %bb.ee, %zval_ptr_dtor_nogc.exit705, %bb.hm, %bb.hn, %bb.ho, %bb.ed, %.critedge, %bb.ac, %bb.aa, %zval_ptr_dtor_nogc.exit714, %bb.lx, %zval_ptr_dtor_nogc.exit795, %zval_ptr_dtor_nogc.exit786, %bb.ai, %zval_ptr_dtor_nogc.exit771, %bb.cr, %bb.bi, %bb.dh, %bb.dq, %zend_ast_evaluate_ex.exit, %zend_ast_evaluate_ex.exit833, %zend_ast_evaluate_ex.exit853, %bb.y, %bb.x, %bb.ah, %bb.ag, %bb.ao, %bb.an, %bb.at, %bb.as, %zend_ast_evaluate_ex.exit863, %zend_ast_evaluate_ex.exit873, %zend_ast_evaluate_ex.exit883, %zend_ast_evaluate_ex.exit893, %zval_ptr_dtor_nogc.exit759, %zval_ptr_dtor_nogc.exit756, %zend_ast_evaluate_ex.exit903, %zval_ptr_dtor_nogc.exit753, %zend_ast_evaluate_ex.exit913, %zend_ast_evaluate_ex.exit923, %zend_ast_evaluate_ex.exit970, %zval_ptr_dtor_nogc.exit702, %.split13.i, %bb.c, %bb.d, %bb.e, %.split13.i825, %bb.l, %bb.m, %bb.n, %bb.u, %bb.v, %bb.w, %bb.ax, %bb.ay, %bb.az, %zval_ptr_dtor_nogc.exit777, %bb.be, %bb.bf, %bb.cw, %bb.cx, %bb.cy, %zval_ptr_dtor_nogc.exit765, %bb.dc, %bb.dd, %bb.dv, %bb.dw, %bb.dx, %bb.dz, %bb.ea, %bb.eb, %bb.gk, %bb.gl, %bb.gm, %bb.lw, %bb.lv, %zval_ptr_dtor_nogc.exit663, %bb.lo, %bb.ln, %zval_ptr_dtor_nogc.exit669, %bb.li, %bb.lh, %zval_ptr_dtor_nogc.exit675, %bb.kx, %bb.kw, %zval_ptr_dtor_nogc.exit687, %bb.kr, %bb.kq, %bb.kp, %bb.jf, %bb.ij, %.critedge648, %bb.hg, %bb.hh, %bb.hi, %bb.hc, %bb.hb, %bb.ha, %bb.fz, %bb.fy, %zval_ptr_dtor_nogc.exit720, %bb.fk, %zval_ptr_dtor_nogc.exit729, %bb.fd, %bb.fc, %bb.ex, %zval_ptr_dtor_nogc.exit741, %bb.ei, %bb.eh, %bb.fl, %bb.fe, %bb.ey, %bb.ej, %bb.ad, %bb.kb, %bb.jx, %bb.kd, %bb.jz, %bb.ju, %bb.jv, %bb.jy, %zend_ast_evaluate_ex.exit980, %zend_ast_evaluate_ex.exit1010, %bb.kh, %.thread1136, %bb.jg, %bb.hp, %bb.hq, %bb.io, %bb.ip, %bb.gx, %bb.gs, %zval_ptr_dtor_nogc.exit678, %bb.kn, %bb.kl, %bb.ki, %bb.ge, %bb.aq, %bb.ak
  %.22 = phi i32 [ 0, %bb.lw ], [ -1, %bb.ad ], [ -1, %bb.aq ], [ -1, %bb.ak ], [ -1, %bb.kb ], [ 0, %bb.ge ], [ -1, %bb.kr ], [ %spec.select, %zval_ptr_dtor_nogc.exit705 ], [ -1, %bb.gx ], [ -1, %bb.hc ], [ -1, %bb.lo ], [ -1, %bb.ij ], [ -1, %bb.jg ], [ 0, %bb.ki ], [ -1, %bb.kh ], [ 0, %bb.kl ], [ 0, %bb.kn ], [ -1, %bb.hh ], [ 0, %zval_ptr_dtor_nogc.exit678 ], [ -1, %zend_ast_evaluate_ex.exit1010 ], [ -1, %bb.gs ], [ -1, %bb.hp ], [ -1, %bb.hq ], [ -1, %bb.ip ], [ -1, %.critedge648 ], [ -1, %bb.hg ], [ 0, %bb.hn ], [ 0, %bb.io ], [ 0, %.thread1136 ], [ -1, %bb.jf ], [ -1, %zend_ast_evaluate_ex.exit980 ], [ -1, %bb.kx ], [ -1, %bb.li ], [ -1, %bb.fz ], [ -1, %bb.jy ], [ -1, %bb.jv ], [ -1, %bb.ju ], [ -1, %bb.jz ], [ -1, %bb.kd ], [ -1, %bb.jx ], [ -1, %bb.ej ], [ -1, %bb.ey ], [ -1, %bb.fe ], [ -1, %bb.fl ], [ -1, %bb.eh ], [ -1, %bb.ei ], [ -1, %zval_ptr_dtor_nogc.exit741 ], [ -1, %bb.ex ], [ -1, %bb.fc ], [ -1, %bb.fd ], [ -1, %zval_ptr_dtor_nogc.exit729 ], [ -1, %bb.fk ], [ -1, %zval_ptr_dtor_nogc.exit720 ], [ -1, %bb.fy ], [ -1, %bb.ha ], [ -1, %bb.hb ], [ -1, %bb.hi ], [ -1, %bb.kp ], [ -1, %bb.kq ], [ -1, %zval_ptr_dtor_nogc.exit687 ], [ -1, %bb.kw ], [ -1, %zval_ptr_dtor_nogc.exit675 ], [ -1, %bb.lh ], [ -1, %zval_ptr_dtor_nogc.exit669 ], [ -1, %bb.ln ], [ 0, %zval_ptr_dtor_nogc.exit663 ], [ 0, %bb.lv ], [ -1, %bb.lx ], [ 0, %bb.ho ], [ -1, %.split13.i ], [ %i.bc, %zval_ptr_dtor_nogc.exit795 ], [ -1, %zend_ast_evaluate_ex.exit ], [ -1, %.split13.i825 ], [ %i.dc, %zval_ptr_dtor_nogc.exit786 ], [ -1, %zend_ast_evaluate_ex.exit833 ], [ -1, %bb.n ], [ -1, %zend_ast_evaluate_ex.exit853 ], [ 0, %bb.hm ], [ 0, %bb.x ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.an ], [ 0, %bb.as ], [ %i.du, %bb.w ], [ -1, %bb.az ], [ -1, %zend_ast_evaluate_ex.exit863 ], [ 0, %bb.bi ], [ -1, %bb.cr ], [ 0, %zval_ptr_dtor_nogc.exit771 ], [ -1, %zend_ast_evaluate_ex.exit873 ], [ -1, %bb.cy ], [ 0, %bb.bf ], [ -1, %zend_ast_evaluate_ex.exit883 ], [ %.638, %zval_ptr_dtor_nogc.exit759 ], [ -1, %zend_ast_evaluate_ex.exit893 ], [ 0, %bb.dh ], [ %.639, %zval_ptr_dtor_nogc.exit756 ], [ 0, %bb.at ], [ 0, %bb.ao ], [ 0, %bb.dq ], [ %.640, %zval_ptr_dtor_nogc.exit753 ], [ -1, %zend_ast_evaluate_ex.exit903 ], [ 0, %bb.ah ], [ 0, %bb.dd ], [ -1, %zend_ast_evaluate_ex.exit913 ], [ %i.ro, %bb.dx ], [ 0, %.critedge ], [ %i.sk, %bb.eb ], [ -1, %zend_ast_evaluate_ex.exit923 ], [ -1, %zval_ptr_dtor_nogc.exit714 ], [ %i.sk, %bb.ea ], [ 0, %zval_ptr_dtor_nogc.exit702 ], [ 0, %bb.y ], [ -1, %zend_ast_evaluate_ex.exit970 ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.l ], [ -1, %bb.m ], [ %i.du, %bb.u ], [ %i.du, %bb.v ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ 0, %zval_ptr_dtor_nogc.exit777 ], [ 0, %bb.be ], [ -1, %bb.cw ], [ -1, %bb.cx ], [ 0, %zval_ptr_dtor_nogc.exit765 ], [ 0, %bb.dc ], [ %i.ro, %bb.dv ], [ %i.ro, %bb.dw ], [ %i.sk, %bb.dz ], [ -1, %bb.gk ], [ -1, %bb.gl ], [ -1, %bb.gm ], [ 0, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ed ], [ 0, %bb.ee ], [ 0, %zval_ptr_dtor_nogc.exit744 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i32 %.22
}

declare ptr @get_binary_op(i32 noundef) local_unnamed_addr #2

declare i32 @is_smaller_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_smaller_or_equal_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_unary_op(i32 noundef) local_unnamed_addr #2

declare ptr @zend_get_constant_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @zval_copy_ctor_func(ptr noundef) local_unnamed_addr #2

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @zend_is_true(ptr noundef) local_unnamed_addr #2

declare i64 @zval_get_long_func(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare double @zval_get_double_func(ptr noundef) local_unnamed_addr #2

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #2

declare i32 @add_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mul_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_zend_new_array_0() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @zend_fetch_dimension_const(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @zend_lookup_class(ptr noundef) local_unnamed_addr #2

declare ptr @zend_enum_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_invalid_class_constant_type_error(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @zend_get_class_constant_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @object_init_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_zend_new_array(i32 noundef) local_unnamed_addr #2

declare void @zend_array_destroy(ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_next_index_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_call_known_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #6

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare ptr @zend_fetch_function(ptr noundef) local_unnamed_addr #2

declare ptr @zend_fetch_function_str(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_hash_find_ptr_lc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_bad_method_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_undefined_method(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_non_static_method_call(ptr noundef) local_unnamed_addr #2

declare void @zend_abstract_method_call(ptr noundef) local_unnamed_addr #2

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @zend_create_fake_closure(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_create_closure(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_wrong_property_read(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_read_property_ex(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zend_ast_evaluate(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.zend_ast_evaluate_ctx, align 1 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %.thread.i, label %.split13.i

.thread.i:                                        ; preds = %bb.a
  %i.b = call i32 @zend_ast_evaluate_inner(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %3) #17, !inline_history !118
  br label %zend_ast_evaluate_ex.exit

.split13.i:                                       ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !92
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !92
  %i.g = load i16, ptr %1, align 8, !tbaa !72
  %i.h = and i16 %i.g, -2
  %switch.selectcmp.i = icmp eq i16 %i.h, 64
  %i.i = select i1 %switch.selectcmp.i, i64 20, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %.0.i.i = load i32, ptr %i.j, align 4, !tbaa !50
  %i.k = zext i32 %.0.i.i to i64
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !116
  %i.l = call i32 @zend_ast_evaluate_inner(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %3) #17, !inline_history !118
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !92
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !116
  br label %zend_ast_evaluate_ex.exit

zend_ast_evaluate_ex.exit:                        ; preds = %.thread.i, %.split13.i
  %phi.call18.i = phi i32 [ %i.b, %.thread.i ], [ %i.l, %.split13.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i32 %phi.call18.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ast_copy(ptr nofree noundef nonnull readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @zend_ast_tree_size(ptr noundef %0)
  %i.b = add i64 %i.a, 8
  %i.c = tail call noalias ptr @_emalloc(i64 noundef %i.b) #13 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = tail call fastcc ptr @zend_ast_tree_copy(ptr noundef nonnull %0, ptr noundef nonnull %i.d) ; 0 uses
  store i32 1, ptr %i.c, align 4, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 27, ptr %i.f, align 4, !tbaa !50
  ret ptr %i.c
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc i64 @zend_ast_tree_size(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !72     ; 3 uses
  switch i16 %i.a, label %bb.c [
    i16 64, label %.loopexit
    i16 65, label %.loopexit
    i16 66, label %bb.b
    i16 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = and i16 %i.a, 128
  %.not32 = icmp eq i16 %i.b, 0
  br i1 %.not32, label %zend_ast_is_decl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 16                 ; 2 uses
  %.not42 = icmp eq i32 %i.d, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.02736 = phi i64 [ %i.g, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call fastcc i64 @zend_ast_tree_size(ptr noundef %i.j)
  %i.l = add i64 %i.k, %.02736
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i64 [ %i.l, %bb.f ], [ %.02736, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !165

zend_ast_is_decl.exit:                            ; preds = %bb.c
  %i.m = lshr i16 %i.a, 8                         ; 3 uses
  %i.n = shl nuw nsw i16 %i.m, 3
  %narrow = add nuw nsw i16 %i.n, 8
  %i.o = zext nneg i16 %narrow to i64             ; 2 uses
  %.not43 = icmp eq i16 %i.m, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %zend_ast_is_decl.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count49 = zext nneg i16 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph40, %bb.j
  %indvars.iv46 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next47, %bb.j ] ; 2 uses
  %.238 = phi i64 [ %i.o, %.lr.ph40 ], [ %.3, %bb.j ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv46
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = tail call fastcc i64 @zend_ast_tree_size(ptr noundef %i.r)
  %i.t = add i64 %i.s, %.238
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.3 = phi i64 [ %i.t, %bb.i ], [ %.238, %bb.h ] ; 2 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %.loopexit, label %bb.h, !llvm.loop !166

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.d, %zend_ast_is_decl.exit, %bb.a, %bb.a, %bb.b
  %.4 = phi i64 [ %.3, %bb.j ], [ 16, %bb.b ], [ 24, %bb.a ], [ 24, %bb.a ], [ %i.o, %zend_ast_is_decl.exit ], [ %i.g, %bb.d ], [ %.1, %bb.g ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @zend_ast_tree_copy(ptr nofree noundef readonly captures(none) %0, ptr noundef initializes((0, 4)) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !72     ; 6 uses
  switch i16 %i.a, label %bb.f [
    i16 64, label %bb.b
    i16 65, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i16 64, ptr %1, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.c, ptr %i.d, align 2, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !50
  %i.k = and i32 %i.i, 65280
  %.not115 = icmp eq i32 %i.k, 0
  br i1 %.not115, label %zend_ast_get_lineno.exit118, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.g, align 4, !tbaa !71
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.g, align 4, !tbaa !71
  br label %zend_ast_get_lineno.exit118

zend_ast_get_lineno.exit118:                      ; preds = %bb.c, %bb.b
  %i.n = load i16, ptr %0, align 8, !tbaa !72
  %i.o = and i16 %i.n, -2
  %switch.selectcmp = icmp eq i16 %i.o, 64
  %i.p = select i1 %switch.selectcmp, i64 20, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %.0.i117 = load i32, ptr %i.q, align 4, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.0.i117, ptr %i.r, align 4, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  store i16 65, ptr %1, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.u, ptr %i.v, align 2, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50   ; 4 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !50
  %i.ab = and i32 %i.aa, 64
  %.not114 = icmp eq i32 %i.ab, 0
  br i1 %.not114, label %bb.e, label %zend_ast_get_lineno.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !71
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !71
  br label %zend_ast_get_lineno.exit

zend_ast_get_lineno.exit:                         ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ 262, %bb.e ], [ 6, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sink, ptr %i.ae, align 8, !tbaa !50
  %i.af = load i16, ptr %0, align 8, !tbaa !72
  %i.ag = and i16 %i.af, -2
  %switch.selectcmp140 = icmp eq i16 %i.ag, 64
  %i.ah = select i1 %switch.selectcmp140, i64 20, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %.0.i = load i32, ptr %i.ai, align 4, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.0.i, ptr %i.aj, align 4, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.al = and i16 %i.a, 128
  %.not119 = icmp eq i16 %i.al, 0
  br i1 %.not119, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i16 %i.a, ptr %1, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ap, align 8, !tbaa !91 ; 3 uses
  %i.at = load <2 x i32>, ptr %i.aq, align 4, !tbaa !167
  store <2 x i32> %i.at, ptr %i.ar, align 4, !tbaa !167
  %i.au = zext i32 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not129 = icmp eq i32 %i.as, 0
  br i1 %.not129, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %i.ba = phi i32 [ %i.as, %.lr.ph ], [ %i.bg, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0109124 = phi ptr [ %i.ax, %.lr.ph ], [ %.1, %bb.k ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75
  %.not113 = icmp eq ptr %i.bc, null
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv ; 2 uses
  br i1 %.not113, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.0109124, ptr %i.bd, align 8, !tbaa !75
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bf = tail call fastcc ptr @zend_ast_tree_copy(ptr noundef %i.be, ptr noundef %.0109124)
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !91
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.bd, align 8, !tbaa !75
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bg = phi i32 [ %.pre, %bb.i ], [ %i.ba, %bb.j ] ; 2 uses
  %.1 = phi ptr [ %i.bf, %bb.i ], [ %.0109124, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.h, label %.loopexit, !llvm.loop !168

bb.l:                                             ; preds = %bb.f
  switch i16 %i.a, label %zend_ast_is_decl.exit [
    i16 66, label %bb.m
    i16 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  store i16 66, ptr %1, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !65
  tail call void @function_add_ref(ptr noundef %i.bq) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  store i16 3, ptr %1, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !55
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.loopexit

zend_ast_is_decl.exit:                            ; preds = %bb.l
  %i.cd = lshr i16 %i.a, 8                        ; 3 uses
  store i16 %i.a, ptr %1, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !74
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !74
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !76
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !76
  %i.ck = shl nuw nsw i16 %i.cd, 3
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %.not130 = icmp eq i16 %i.cd, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %zend_ast_is_decl.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = zext nneg i16 %i.cd to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph127, %bb.r
  %indvars.iv133 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next134, %bb.r ] ; 3 uses
  %.2125 = phi ptr [ %i.cn, %.lr.ph127 ], [ %.3, %bb.r ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv133 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75
  %.not = icmp eq ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv133 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.2125, ptr %i.cs, align 8, !tbaa !75
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !75
  %i.cu = tail call fastcc ptr @zend_ast_tree_copy(ptr noundef %i.ct, ptr noundef %.2125)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr null, ptr %i.cs, align 8, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.3 = phi ptr [ %i.cu, %bb.p ], [ %.2125, %bb.q ] ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.o, !llvm.loop !169

.loopexit:                                        ; preds = %bb.k, %bb.r, %bb.g, %zend_ast_is_decl.exit, %zend_ast_get_lineno.exit, %bb.m, %bb.n, %zend_ast_get_lineno.exit118
  %.4 = phi ptr [ %i.s, %zend_ast_get_lineno.exit118 ], [ %i.ak, %zend_ast_get_lineno.exit ], [ %.3, %bb.r ], [ %i.bs, %bb.m ], [ %i.cc, %bb.n ], [ %i.cn, %zend_ast_is_decl.exit ], [ %i.ax, %bb.g ], [ %.1, %bb.k ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_ast_destroy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not63 = icmp eq ptr %0, null
  br i1 %.not63, label %zval_ptr_dtor_nogc.exit, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a, %.backedge
  %.03764 = phi ptr [ %.037.be, %.backedge ], [ %0, %bb.a ] ; 15 uses
  %i.a = load i16, ptr %.03764, align 8, !tbaa !72 ; 7 uses
  %i.b = icmp ugt i16 %i.a, 255
  br i1 %i.b, label %bb.b, label %bb.d, !prof !119

bb.b:                                             ; preds = %.lr.ph66
  %i.c = icmp ugt i16 %i.a, 511
  br i1 %i.c, label %.lr.ph61, label %.backedge

.lr.ph61:                                         ; preds = %bb.b
  %i.d = lshr i16 %i.a, 8
  %i.e = getelementptr inbounds nuw i8, ptr %.03764, i64 8
  %wide.trip.count = zext nneg i16 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph61, %bb.c
  %indvars.iv76 = phi i64 [ 1, %.lr.ph61 ], [ %indvars.iv.next77, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv76
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.g)
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count
  br i1 %exitcond.not, label %.backedge, label %bb.c, !llvm.loop !170

.backedge:                                        ; preds = %bb.j, %bb.c, %bb.b, %bb.i, %zend_string_release_ex.exit
  %.sink = phi i64 [ 16, %bb.i ], [ 64, %zend_string_release_ex.exit ], [ 8, %bb.c ], [ 8, %bb.b ], [ 16, %bb.j ]
  %i.h = getelementptr inbounds nuw i8, ptr %.03764, i64 %.sink
  %.037.be = load ptr, ptr %i.h, align 8, !tbaa !75 ; 2 uses
  %.not = icmp eq ptr %.037.be, null
  br i1 %.not, label %zval_ptr_dtor_nogc.exit, label %.lr.ph66

bb.d:                                             ; preds = %.lr.ph66
  %i.i = icmp eq i16 %i.a, 64
  br i1 %i.i, label %bb.e, label %bb.h, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.03764, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03764, i64 17
  %i.l = load i8, ptr %i.k, align 1, !tbaa !50
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %zval_ptr_dtor_nogc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !71   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !71
  %.not3.i = icmp eq i32 %i.p, 0
  br i1 %.not3.i, label %bb.g, label %zval_ptr_dtor_nogc.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @rc_dtor_func(ptr noundef %i.q) #14
  br label %zval_ptr_dtor_nogc.exit

bb.h:                                             ; preds = %bb.d
  %.not52 = icmp samesign ult i16 %i.a, 128
  br i1 %.not52, label %bb.k, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.03764, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91
  switch i32 %i.s, label %.lr.ph [
    i32 0, label %zval_ptr_dtor_nogc.exit
    i32 1, label %.backedge
  ]

.lr.ph:                                           ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.03764, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.v)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.r, align 8, !tbaa !91
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.j, label %.backedge, !llvm.loop !171

bb.k:                                             ; preds = %bb.h
  switch i16 %i.a, label %bb.p [
    i16 65, label %bb.l
    i16 66, label %bb.o
  ], !prof !172

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.03764, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ad = and i32 %i.ac, 64
  %.not.i48 = icmp eq i32 %i.ad, 0
  br i1 %.not.i48, label %bb.m, label %zval_ptr_dtor_nogc.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !71 ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !71
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %zval_ptr_dtor_nogc.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_efree(ptr noundef nonnull %i.aa) #14
  br label %zval_ptr_dtor_nogc.exit

bb.o:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.03764, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !65
  tail call void @destroy_op_array(ptr noundef %i.aj) #14
  br label %zval_ptr_dtor_nogc.exit

bb.p:                                             ; preds = %bb.k
  %i.ak = icmp samesign ugt i16 %i.a, 67
  br i1 %i.ak, label %bb.q, label %zval_ptr_dtor_nogc.exit, !prof !173

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.03764, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !84 ; 5 uses
  %.not42 = icmp eq ptr %i.am, null
  br i1 %.not42, label %zend_string_release_ex.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !50
  %i.ap = and i32 %i.ao, 64
  %.not.i46 = icmp eq i32 %i.ap, 0
  br i1 %.not.i46, label %bb.s, label %zend_string_release_ex.exit47

bb.s:                                             ; preds = %bb.r
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !71 ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.as, ptr %i.am, align 4, !tbaa !71
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %zend_string_release_ex.exit47

bb.t:                                             ; preds = %bb.s
  tail call void @_efree(ptr noundef nonnull %i.am) #14
  br label %zend_string_release_ex.exit47

zend_string_release_ex.exit47:                    ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.03764, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !83 ; 5 uses
  %.not43 = icmp eq ptr %i.av, null
  br i1 %.not43, label %zend_string_release_ex.exit, label %bb.u

bb.u:                                             ; preds = %zend_string_release_ex.exit47
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !50
  %i.ay = and i32 %i.ax, 64
  %.not.i45 = icmp eq i32 %i.ay, 0
  br i1 %.not.i45, label %bb.v, label %zend_string_release_ex.exit

bb.v:                                             ; preds = %bb.u
  %i.az = load i32, ptr %i.av, align 4, !tbaa !71 ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add i32 %i.az, -1                       ; 2 uses
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !71
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.w, label %zend_string_release_ex.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_efree(ptr noundef nonnull %i.av) #14
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.w, %bb.v, %bb.u, %zend_string_release_ex.exit47
  %i.bd = getelementptr inbounds nuw i8, ptr %.03764, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.03764, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.03764, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.03764, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75
  tail call void @zend_ast_destroy(ptr noundef %i.bk)
  br label %.backedge

zval_ptr_dtor_nogc.exit:                          ; preds = %.backedge, %bb.p, %bb.i, %bb.a, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.o
  ret void
}

declare void @destroy_op_array(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @zend_ast_ref_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @zend_ast_destroy(ptr noundef nonnull %i.a)
  tail call void @_efree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_ast_apply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !72     ; 2 uses
  %i.b = and i16 %i.a, 128
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %zend_ast_is_decl.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  tail call void %1(ptr noundef nonnull %i.f, ptr noundef %2) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !91
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %.loopexit, !llvm.loop !174

zend_ast_is_decl.exit:                            ; preds = %bb.a
  %i.j = lshr i16 %i.a, 8                         ; 2 uses
  %.not25 = icmp eq i16 %i.j, 0
  br i1 %.not25, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %zend_ast_is_decl.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %indvars.iv28 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next29, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv28
  tail call void %1(ptr noundef nonnull %i.l, ptr noundef %2) #14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !175

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %zend_ast_is_decl.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_ast_export(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
smart_str_alloc.exit8:
  %3 = alloca %struct.smart_str, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 3 uses
  call void @smart_str_erealloc(ptr noundef nonnull %3, i64 noundef %i.a) #14
  %i.b = load ptr, ptr %3, align 8, !tbaa !176    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %0, i64 %i.a, i1 false)
  %i.g = load ptr, ptr %3, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.a, ptr %i.h, align 8, !tbaa !66
  call fastcc void @zend_ast_export_ex(ptr noundef %3, ptr noundef %1, i32 noundef 0, i32 noundef 0)
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16 ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !176    ; 3 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %bb.b, label %bb.a, !prof !19

bb.a:                                             ; preds = %smart_str_alloc.exit8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !66   ; 2 uses
  %i.m = add i64 %i.l, %i.i                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !178
  %.not12.i = icmp ult i64 %i.m, %i.o
  br i1 %.not12.i, label %smart_str_0.exit, label %bb.b, !prof !119

bb.b:                                             ; preds = %bb.a, %smart_str_alloc.exit8
  %.0.i = phi i64 [ %i.i, %smart_str_alloc.exit8 ], [ %i.m, %bb.a ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %3, i64 noundef %.0.i) #14
  %.pre = load ptr, ptr %3, align 8, !tbaa !176   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre9 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !66
  br label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.a, %bb.b
  %i.p = phi i64 [ %i.l, %bb.a ], [ %.pre9, %bb.b ]
  %i.q = phi ptr [ %i.j, %bb.a ], [ %.pre, %bb.b ]
  %.1.i = phi i64 [ %i.m, %bb.a ], [ %.0.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %2, i64 %i.i, i1 false)
  %i.t = load ptr, ptr %3, align 8, !tbaa !176    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i
  store i8 0, ptr %i.w, align 1, !tbaa !50
  %i.x = load ptr, ptr %3, align 8, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %i.x
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ast_export_ex(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 261) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %.not20872089 = icmp eq ptr %1, null
  br i1 %.not20872089, label %zend_ast_export_list_ex.exit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 190 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.backedge
  %.tr18242091 = phi i32 [ %2, %.lr.ph.lr.ph ], [ %.tr1824.be, %tailrecurse.backedge ] ; 6 uses
  %.tr18232090 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %.tr1823.be, %tailrecurse.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.02088 = phi ptr [ %.tr18232090, %.lr.ph ], [ %.0.be, %.backedge ] ; 169 uses
  %i.b = load i16, ptr %.02088, align 8, !tbaa !72 ; 2 uses
  switch i16 %i.b, label %bb.un [
    i16 64, label %bb.c
    i16 65, label %bb.d
    i16 66, label %bb.g
    i16 2, label %bb.n
    i16 1025, label %bb.ua
    i16 68, label %bb.q
    i16 69, label %bb.q
    i16 72, label %bb.q
    i16 70, label %bb.q
    i16 71, label %bb.bx
    i16 128, label %.loopexit
    i16 131, label %.loopexit
    i16 136, label %.loopexit
    i16 129, label %bb.dm
    i16 130, label %bb.dr
    i16 132, label %bb.dw
    i16 142, label %bb.dw
    i16 133, label %bb.dx
    i16 134, label %bb.dy
    i16 135, label %bb.dy
    i16 148, label %bb.dy
    i16 137, label %bb.ea
    i16 774, label %bb.ef
    i16 139, label %bb.et
    i16 776, label %bb.fb
    i16 141, label %bb.fk
    i16 143, label %bb.fl
    i16 0, label %switch.lookup
    i16 1, label %switch.lookup3915
    i16 256, label %bb.fs
    i16 257, label %bb.fv
    i16 258, label %bb.fw
    i16 259, label %.loopexit1828
    i16 260, label %.loopexit2099
    i16 261, label %switch.lookup3919
    i16 262, label %.loopexit3386
    i16 263, label %.loopexit1829.loopexit
    i16 264, label %.loopexit1829.loopexit3942
    i16 265, label %.loopexit3655
    i16 266, label %bb.fz
    i16 267, label %.loopexit3943
    i16 268, label %switch.lookup3922
    i16 269, label %bb.gh
    i16 270, label %bb.uy
    i16 271, label %bb.gi
    i16 272, label %.loopexit1830.loopexit
    i16 273, label %.loopexit1830
    i16 276, label %bb.vx
    i16 277, label %.loopexit1829
    i16 278, label %bb.gj
    i16 279, label %bb.gk
    i16 280, label %bb.gn
    i16 281, label %.loopexit1831
    i16 282, label %bb.gq
    i16 283, label %bb.gr
    i16 284, label %bb.gs
    i16 285, label %bb.gv
    i16 286, label %bb.gw
    i16 512, label %bb.gx
    i16 513, label %bb.hc
    i16 514, label %bb.hc
    i16 515, label %bb.hf
    i16 516, label %bb.hi
    i16 550, label %bb.ht
    i16 3, label %bb.ia
    i16 517, label %bb.id
    i16 275, label %bb.ig
    i16 518, label %.loopexit1832
    i16 519, label %.loopexit2102
    i16 520, label %switch.lookup3926
    i16 531, label %.loopexit3388
    i16 521, label %switch.lookup3930
    i16 522, label %.loopexit3657
    i16 523, label %.loopexit3944
    i16 524, label %bb.uo
    i16 525, label %bb.iq
    i16 551, label %bb.ir
    i16 526, label %bb.is
    i16 527, label %bb.ja
    i16 528, label %bb.jr
    i16 529, label %bb.ju
    i16 274, label %bb.kk
    i16 530, label %bb.kl
    i16 532, label %bb.km
    i16 533, label %bb.kt
    i16 534, label %bb.la
    i16 535, label %bb.lh
    i16 536, label %bb.lt
    i16 537, label %bb.ma
    i16 547, label %bb.mk
    i16 548, label %bb.mr
    i16 538, label %bb.nb
    i16 1027, label %bb.nm
    i16 775, label %bb.nu
    i16 539, label %bb.oa
    i16 540, label %bb.ol
    i16 541, label %bb.oo
    i16 542, label %bb.ot
    i16 543, label %bb.ph
    i16 544, label %bb.ph
    i16 549, label %bb.qb
    i16 768, label %bb.qg
end_hunk_0
