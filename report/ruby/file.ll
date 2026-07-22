inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@ruby_enc_find_extname:bb.a
  %.2 = phi ptr [ %.0, %rb_enc_path_last_separator.exit.thread ], [ %i.t, %bb.f ] ; 3 uses
  %i.s = load i8, ptr %.2, align 1, !tbaa !36     ; 2 uses
  %cond = icmp eq i8 %i.s, 46
  %i.t = getelementptr i8, ptr %.2, i64 1
  br i1 %cond, label %bb.f, label %.critedge, !llvm.loop !115

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.u = phi i8 [ %.pr, %bb.g ], [ %i.s, %bb.f ]
  %.3 = phi ptr [ %i.x, %bb.g ], [ %.2, %bb.f ]   ; 5 uses
  %.034 = phi ptr [ %.1, %bb.g ], [ null, %bb.f ] ; 6 uses
  switch i8 %i.u, label %.fold.split [
    i8 0, label %bb.h
    i8 46, label %bb.g
    i8 47, label %bb.h
  ]

.fold.split:                                      ; preds = %.critedge
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %.fold.split
  %.1 = phi ptr [ %.3, %.critedge ], [ %.034, %.fold.split ]
  %i.v = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %.3, ptr noundef nonnull %i.d, ptr noundef nonnull %2) #22
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr i8, ptr %.3, i64 %i.w      ; 2 uses
  %.pr = load i8, ptr %i.x, align 1, !tbaa !36
  br label %.critedge, !llvm.loop !116

bb.h:                                             ; preds = %.critedge, %.critedge
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not46 = icmp eq ptr %.034, null
  %i.y = icmp eq ptr %.034, %.0
  %or.cond = or i1 %.not46, %i.y
  br i1 %or.cond, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %.034, i64 1
  %i.aa = icmp eq ptr %i.z, %.3
  br i1 %i.aa, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = ptrtoint ptr %.3 to i64
  %i.ac = ptrtoint ptr %.034 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.k
  %.sink = phi i64 [ 0, %bb.i ], [ %i.ad, %bb.k ], [ 1, %bb.j ]
  store i64 %.sink, ptr %1, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h
  ret ptr %.034
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_file_const(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_mFConst, align 8, !tbaa !14
  tail call void @rb_define_const(i64 noundef %i.a, ptr noundef %0, i64 noundef %1) #22
  ret void
}

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @ruby_is_fd_loadable(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %1) #22
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %i.e = and i32 %i.d, 61440                      ; 2 uses
  %i.f = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %.split, label %bb.e

.split:                                           ; preds = %bb.b
  %i.h = tail call range(i32 12, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  switch i32 %i.h, label %default.unreachable [
    i32 15, label %bb.f
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.d
  ]

bb.c:                                             ; preds = %.split, %.split
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.i = tail call ptr @rb_errno_ptr() #22
  store i32 21, ptr %i.i, align 4, !tbaa !7
  br label %bb.f

default.unreachable:                              ; preds = %.split
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = tail call ptr @rb_errno_ptr() #22
  store i32 6, ptr %i.j, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.split, %bb.a, %bb.c
  %.0 = phi i32 [ 1, %.split ], [ 0, %bb.a ], [ -1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @rb_file_load_ok(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call i32 @rb_cloexec_open(ptr noundef %0, i32 noundef 2048, i32 noundef 0) #22 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #22
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7
  %i.e = tail call i32 @rb_gc_for_fd(i32 noundef %i.d) #22
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @rb_cloexec_open(ptr noundef %0, i32 noundef 2048, i32 noundef 0) #22 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ %i.f, %bb.c ], [ %i.a, %bb.a ]  ; 3 uses
  tail call void @rb_update_max_fd(i32 noundef %.0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.h = call i32 @fstat(i32 noundef %.0, ptr noundef nonnull %1) #22
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %ruby_is_fd_loadable.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %i.l = and i32 %i.k, 61440                      ; 2 uses
  %i.m = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.split.i, label %bb.h

.split.i:                                         ; preds = %bb.e
  %i.o = tail call range(i32 12, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true)
  switch i32 %i.o, label %default.unreachable.i [
    i32 15, label %ruby_is_fd_loadable.exit
    i32 12, label %bb.f
    i32 13, label %bb.f
    i32 14, label %bb.g
  ]

bb.f:                                             ; preds = %.split.i, %.split.i
  br label %ruby_is_fd_loadable.exit

bb.g:                                             ; preds = %.split.i
  %i.p = tail call ptr @rb_errno_ptr() #22
  store i32 21, ptr %i.p, align 4, !tbaa !7
  br label %ruby_is_fd_loadable.exit

default.unreachable.i:                            ; preds = %.split.i
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.q = tail call ptr @rb_errno_ptr() #22
  store i32 6, ptr %i.q, align 4, !tbaa !7
  br label %ruby_is_fd_loadable.exit

ruby_is_fd_loadable.exit:                         ; preds = %bb.d, %.split.i, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 1, %.split.i ], [ 0, %bb.d ], [ -1, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.r = tail call i32 @close(i32 noundef %.0) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %ruby_is_fd_loadable.exit
  %.010 = phi i32 [ 0, %bb.b ], [ %.0.i, %ruby_is_fd_loadable.exit ], [ 0, %bb.c ]
  ret i32 %.010
}

declare i32 @rb_cloexec_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_gc_for_fd(i32 noundef) local_unnamed_addr #2

declare void @rb_update_max_fd(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_find_file_ext(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = tail call ptr @rb_string_value_cstr(ptr noundef nonnull %0) #22 ; 3 uses
  %i.h = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = load ptr, ptr %1, align 8, !tbaa !107
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.g, align 1, !tbaa !36
  switch i8 %i.j, label %is_explicit_relative.exit.thread [
    i8 126, label %.thread
    i8 47, label %bb.c
    i8 46, label %is_explicit_relative.exit
  ]

.thread:                                          ; preds = %bb.b
  %i.k = tail call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 3 uses
  %i.l = tail call i64 @rb_file_expand_path_internal(i64 noundef %i.h, i64 noundef 4, i32 noundef 0, i32 noundef 0, i64 noundef %i.k) ; 0 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !14
  br label %.critedge

is_explicit_relative.exit:                        ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !36
  %i.o = icmp eq i8 %i.n, 46
  %i.p = getelementptr i8, ptr %i.g, i64 2
  %spec.select.i = select i1 %i.o, ptr %i.p, ptr %i.m
  %i.q = load i8, ptr %spec.select.i, align 1, !tbaa !36
  %.not89 = icmp eq i8 %i.q, 47
  br i1 %.not89, label %bb.c, label %is_explicit_relative.exit.thread

bb.c:                                             ; preds = %bb.b, %is_explicit_relative.exit
  %i.r = tail call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 2 uses
  %i.s = tail call i64 @rb_file_expand_path_internal(i64 noundef %i.h, i64 noundef 4, i32 noundef 0, i32 noundef 0, i64 noundef %i.r) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.c
  %.156 = phi i64 [ %i.k, %.thread ], [ %i.r, %bb.c ] ; 5 uses
  %i.t = inttoptr i64 %.156 to ptr                ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !90
  %i.w = load ptr, ptr %1, align 8, !tbaa !107    ; 2 uses
  %.not7194 = icmp eq ptr %i.w, null
  br i1 %.not7194, label %.loopexit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.critedge
  %i.x = getelementptr i8, ptr %i.t, i64 24       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph96, %bb.g
  %i.y = phi ptr [ %i.w, %.lr.ph96 ], [ %i.al, %bb.g ]
  %.06095 = phi i64 [ 0, %.lr.ph96 ], [ %i.aj, %bb.g ] ; 2 uses
  %i.z = tail call i64 @rb_str_cat_cstr(i64 noundef %.156, ptr noundef nonnull %i.y) #22 ; 0 uses
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, 8192
  %.not.i74 = icmp eq i64 %i.ab, 0
  br i1 %.not.i74, label %RSTRING_PTR.exit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !36
  br label %RSTRING_PTR.exit75

RSTRING_PTR.exit75:                               ; preds = %bb.d, %bb.e
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.ae = tail call i32 @rb_file_load_ok(ptr noundef %i.ad)
  %.not72 = icmp eq i32 %i.ae, 0
  br i1 %.not72, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit75
  %i.af = load i64, ptr %0, align 8, !tbaa !14
  %i.ag = tail call fastcc i64 @copy_path_class(i64 noundef %.156, i64 noundef %i.af) ; 0 uses
  store i64 %.156, ptr %0, align 8, !tbaa !14
  %i.ah = trunc i64 %.06095 to i32
  %i.ai = add i32 %i.ah, 1
  br label %.loopexit

bb.g:                                             ; preds = %RSTRING_PTR.exit75
  tail call void @rb_str_set_len(i64 noundef %.156, i64 noundef %i.v) #22
  %i.aj = add i64 %.06095, 1                      ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %1, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !107 ; 2 uses
  %.not71 = icmp eq ptr %i.al, null
  br i1 %.not71, label %.loopexit, label %bb.d, !llvm.loop !117

is_explicit_relative.exit.thread:                 ; preds = %bb.b, %is_explicit_relative.exit
  %i.am = tail call i64 @rb_get_expanded_load_path() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #22, !srcloc !118
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store volatile i64 %i.am, ptr %i.an, align 8, !tbaa !14
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !14
  %.not68 = icmp eq i64 %i.ao, 0
  br i1 %.not68, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %is_explicit_relative.exit.thread
  %i.ap = load i64, ptr %0, align 8, !tbaa !14
  %i.aq = call i64 @rb_str_dup(i64 noundef %i.ap) #22 ; 4 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !90
  %i.av = call i64 @rb_str_tmp_new(i64 noundef 4098) #22 ; 6 uses
  %i.aw = call i64 @rb_enc_associate_index(i64 noundef %i.av, i32 noundef 2) #22 ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !107   ; 2 uses
  %.not6992 = icmp eq ptr %i.ax, null
  br i1 %.not6992, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ay = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 24     ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %i.ba = phi ptr [ %i.ax, %.lr.ph ], [ %i.ct, %bb.q ]
  %.05993 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %bb.q ] ; 2 uses
  %i.bb = call i64 @rb_str_cat_cstr(i64 noundef %i.aq, ptr noundef nonnull %i.ba) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %.161 = phi i64 [ 0, %bb.i ], [ %i.cq, %bb.p ]  ; 4 uses
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !14
  %i.bd = inttoptr i64 %i.bc to ptr               ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.bf = and i64 %i.be, 8192
  %.not.i76 = icmp eq i64 %i.bf, 0
  br i1 %.not.i76, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.j
  %2 = getelementptr i8, ptr %i.bd, i64 16
  %3 = load i64, ptr %2, align 8, !tbaa !36
  %i.bg = icmp slt i64 %.161, %3
  br i1 %i.bg, label %bb.l, label %bb.q

rb_array_len.exit.thread:                         ; preds = %bb.j
  %4 = lshr i64 %i.be, 15
  %i.bh = and i64 %4, 127
  %5 = icmp samesign ult i64 %.161, %i.bh
  br i1 %5, label %bb.k, label %bb.q

bb.k:                                             ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bi = getelementptr i8, ptr %i.bd, i64 16
  br label %RARRAY_AREF.exit

bb.l:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bj = getelementptr i8, ptr %i.bd, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.bi, %bb.k ], [ %i.bk, %bb.l ]
  %i.bl = getelementptr [8 x i8], ptr %.0.i.i, i64 %.161
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14 ; 7 uses
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = and i64 %i.bm, 7
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RARRAY_AREF.exit
  %i.br = inttoptr i64 %i.bm to ptr
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %i.bt = and i64 %i.bs, 31
  %i.bu = icmp eq i64 %i.bt, 5
  br i1 %i.bu, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %RARRAY_AREF.exit
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.bv = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.bv, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.bv, %.lr.ph.i.i.i ]
  %i.bw = call i64 @rb_check_funcall_default(i64 noundef %i.bm, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.bm) #22
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !14
  %i.bx = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.by = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i77 = phi i64 [ %i.by, %rbimpl_intern_const.exit.i.i ], [ %i.bm, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bz = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr %i.d, ptr %i.e, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #22, !srcloc !119
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  store volatile i64 %i.bz, ptr %i.ca, align 8, !tbaa !14
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !90
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %bb.m

bb.m:                                             ; preds = %rb_get_path.exit
  %i.cg = call i64 @rb_file_expand_path_internal(i64 noundef %i.aq, i64 noundef %i.cb, i32 noundef 0, i32 noundef 0, i64 noundef %i.av) ; 0 uses
  %i.ch = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.ci = and i64 %i.ch, 8192
  %.not.i78 = icmp eq i64 %i.ci, 0
  br i1 %.not.i78, label %RSTRING_PTR.exit79, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.az, align 8, !tbaa !36
  br label %RSTRING_PTR.exit79

RSTRING_PTR.exit79:                               ; preds = %bb.m, %bb.n
  %i.ck = phi ptr [ %i.cj, %bb.n ], [ %i.az, %bb.m ]
  %i.cl = call i32 @rb_file_load_ok(ptr noundef %i.ck)
  %.not70 = icmp eq i32 %i.cl, 0
  br i1 %.not70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit79
  %i.cm = load i64, ptr %0, align 8, !tbaa !14
  %i.cn = call fastcc i64 @copy_path_class(i64 noundef %i.av, i64 noundef %i.cm) ; 0 uses
  store i64 %i.av, ptr %0, align 8, !tbaa !14
  %i.co = trunc i64 %.05993 to i32
  %i.cp = add i32 %i.co, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %.loopexit

bb.p:                                             ; preds = %rb_get_path.exit, %RSTRING_PTR.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.cq = add nuw nsw i64 %.161, 1
  br label %bb.j, !llvm.loop !120

bb.q:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  call void @rb_str_set_len(i64 noundef %i.aq, i64 noundef %i.au) #22
  %i.cr = add i64 %.05993, 1                      ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %1, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %.not69 = icmp eq ptr %i.ct, null
  br i1 %.not69, label %._crit_edge, label %bb.i, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.q, %bb.h
  %i.cu = call i64 @rb_str_resize(i64 noundef %i.av, i64 noundef 0) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr %i.b, ptr %i.f, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #22, !srcloc !122
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.cw = load volatile i64, ptr %i.cv, align 8, !tbaa !14 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.critedge, %bb.o, %is_explicit_relative.exit.thread, %bb.a, %._crit_edge, %bb.f
  %.3 = phi i32 [ %i.ai, %bb.f ], [ 0, %bb.a ], [ %i.cp, %bb.o ], [ 0, %._crit_edge ], [ 0, %is_explicit_relative.exit.thread ], [ 0, %.critedge ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.3
}

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rbimpl_str_cat_cstr(i64 noundef %0, ptr noundef nonnull %1) unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #23
  %i.b = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %i.a) #22 ; 0 uses
  ret void
}

declare i64 @rb_str_cat_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @copy_path_class(i64 noundef returned %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_get_index(i64 noundef %1) #22 ; 2 uses
  %i.b = and i32 %i.a, -3
  %or.cond = icmp eq i32 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_filesystem_encindex() #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.d = tail call i64 @rb_enc_associate_index(i64 noundef %0, i32 noundef %.0) #22 ; 0 uses
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90
  %i.h = tail call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.g) #22 ; 0 uses
  %i.i = tail call i64 @rb_obj_class(i64 noundef %1) #22 ; 4 uses
  %i.j = getelementptr i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !14
  %i.k = icmp eq i64 %i.i, 0
  %i.l = and i64 %i.i, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RBASIC_SET_CLASS.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.i) #22
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.c, %bb.d
  tail call void @rb_obj_freeze_inline(i64 noundef %0) #22
  ret i64 %0
}

declare i64 @rb_get_expanded_load_path() local_unnamed_addr #2

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #2

declare i64 @rb_enc_associate_index(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_find_file(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.g = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !36
  switch i8 %i.h, label %is_explicit_relative.exit.thread [
    i8 126, label %bb.b
    i8 47, label %bb.d
    i8 46, label %is_explicit_relative.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !14
  %i.j = call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 4 uses
  %i.k = call i64 @rb_file_expand_path_internal(i64 noundef %i.i, i64 noundef 4, i32 noundef 0, i32 noundef 0, i64 noundef %i.j) ; 0 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !14
  %i.m = call fastcc i64 @copy_path_class(i64 noundef %i.j, i64 noundef %i.l) ; 0 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !14
  %i.n = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  br label %.thread

is_explicit_relative.exit:                        ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.g, i64 1        ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36
  %i.u = icmp eq i8 %i.t, 46
  %i.v = getelementptr i8, ptr %i.g, i64 2
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.s
  %i.w = load i8, ptr %spec.select.i, align 1, !tbaa !36
  %.not50 = icmp eq i8 %i.w, 47
  br i1 %.not50, label %bb.d, label %is_explicit_relative.exit.thread

bb.d:                                             ; preds = %bb.a, %is_explicit_relative.exit
  %i.x = call i32 @rb_file_load_ok(ptr noundef nonnull %i.g)
  %.not30 = icmp eq i32 %i.x, 0
  br i1 %.not30, label %.thread42, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  %.025.ph = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.c ]
  %i.y = call i32 @rb_file_load_ok(ptr noundef %.025.ph)
  %.not3041 = icmp eq i32 %i.y, 0
  %.pre = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not3041, i64 0, i64 %.pre
  br label %.thread42

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14
  %i.aa = call i64 @rb_usascii_str_new_static(ptr noundef null, i64 noundef 1) #22 ; 3 uses
  %i.ab = call i64 @rb_file_expand_path_internal(i64 noundef %i.z, i64 noundef 4, i32 noundef 0, i32 noundef 0, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ad = call fastcc i64 @copy_path_class(i64 noundef %i.aa, i64 noundef %i.ac) ; 0 uses
  br label %.thread42

is_explicit_relative.exit.thread:                 ; preds = %bb.a, %is_explicit_relative.exit
  %i.ae = call i64 @rb_get_expanded_load_path() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr %i.c, ptr %i.d, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #22, !srcloc !123
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  store volatile i64 %i.ae, ptr %i.af, align 8, !tbaa !14
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !14
  %.not28 = icmp eq i64 %i.ag, 0
  br i1 %.not28, label %.thread42, label %bb.f

bb.f:                                             ; preds = %is_explicit_relative.exit.thread
  %i.ah = call i64 @rb_str_tmp_new(i64 noundef 4098) #22 ; 6 uses
  %i.ai = call i64 @rb_enc_associate_index(i64 noundef %i.ah, i32 noundef 2) #22 ; 0 uses
  %i.aj = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 24     ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %.021 = phi i64 [ 0, %bb.f ], [ %i.bw, %bb.l ]  ; 4 uses
  %i.al = load i64, ptr %i.c, align 8, !tbaa !14
  %i.am = inttoptr i64 %i.al to ptr               ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11 ; 2 uses
  %i.ao = and i64 %i.an, 8192
  %.not.i32 = icmp eq i64 %i.ao, 0
  br i1 %.not.i32, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.g
  %1 = getelementptr i8, ptr %i.am, i64 16
  %2 = load i64, ptr %1, align 8, !tbaa !36
  %i.ap = icmp slt i64 %.021, %2
  br i1 %i.ap, label %bb.i, label %bb.m

rb_array_len.exit.thread:                         ; preds = %bb.g
  %3 = lshr i64 %i.an, 15
  %i.aq = and i64 %3, 127
  %4 = icmp samesign ult i64 %.021, %i.aq
  br i1 %4, label %bb.h, label %bb.m

bb.h:                                             ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.ar = getelementptr i8, ptr %i.am, i64 16
  br label %RARRAY_AREF.exit

bb.i:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.as = getelementptr i8, ptr %i.am, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.h, %bb.i
  %.0.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.at, %bb.i ]
  %i.au = getelementptr [8 x i8], ptr %.0.i.i, i64 %.021
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14 ; 7 uses
  store i64 %i.av, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RARRAY_AREF.exit
  %i.ba = inttoptr i64 %i.av to ptr
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = and i64 %i.bb, 31
  %i.bd = icmp eq i64 %i.bc, 5
  br i1 %i.bd, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %RARRAY_AREF.exit
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.be = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.be, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.be, %.lr.ph.i.i.i ]
  %i.bf = call i64 @rb_check_funcall_default(i64 noundef %i.av, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.av) #22
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !14
  %i.bg = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i33 = phi i64 [ %i.bh, %rbimpl_intern_const.exit.i.i ], [ %i.av, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bi = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr %i.e, ptr %i.f, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #22, !srcloc !124
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  store volatile i64 %i.bi, ptr %i.bj, align 8, !tbaa !14
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !90
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %bb.l

bb.j:                                             ; preds = %rb_get_path.exit
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !14
  %i.bq = call i64 @rb_file_expand_path_internal(i64 noundef %i.bp, i64 noundef %i.bk, i32 noundef 0, i32 noundef 0, i64 noundef %i.ah) ; 0 uses
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.bs = and i64 %i.br, 8192
  %.not.i34 = icmp eq i64 %i.bs, 0
  br i1 %.not.i34, label %RSTRING_PTR.exit35, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !36
  br label %RSTRING_PTR.exit35

RSTRING_PTR.exit35:                               ; preds = %bb.j, %bb.k
  %i.bu = phi ptr [ %i.bt, %bb.k ], [ %i.ak, %bb.j ]
  %i.bv = call i32 @rb_file_load_ok(ptr noundef %i.bu)
  %.not29 = icmp eq i32 %i.bv, 0
  br i1 %.not29, label %bb.l, label %bb.n

bb.l:                                             ; preds = %rb_get_path.exit, %RSTRING_PTR.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.bw = add nuw nsw i64 %.021, 1
  br label %bb.g, !llvm.loop !125

bb.m:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  %i.bx = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef 0) #22 ; 0 uses
  br label %.thread42

bb.n:                                             ; preds = %RSTRING_PTR.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.by = load i64, ptr %i.b, align 8, !tbaa !14
  %i.bz = call fastcc i64 @copy_path_class(i64 noundef %i.ah, i64 noundef %i.by) ; 0 uses
  br label %.thread42

.thread42:                                        ; preds = %.thread, %bb.e, %bb.m, %is_explicit_relative.exit.thread, %bb.d, %bb.n
  %.1 = phi i64 [ %spec.select, %.thread ], [ 0, %bb.d ], [ %i.ah, %bb.n ], [ 0, %bb.m ], [ 0, %is_explicit_relative.exit.thread ], [ %i.aa, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_File() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_define_module(ptr noundef nonnull @.str.8) #22
  store i64 %i.a, ptr @rb_mFileTest, align 8, !tbaa !14
  %i.b = load i64, ptr @rb_cIO, align 8, !tbaa !14
  %i.c = tail call i64 @rb_define_class(ptr noundef nonnull @.str.9, i64 noundef %i.b) #22
  store i64 %i.c, ptr @rb_cFile, align 8, !tbaa !14
  %i.d = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.d, ptr noundef nonnull @.str.10, ptr noundef nonnull @rb_file_directory_p, i32 noundef 1) #22
  %i.e = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.e, ptr noundef nonnull @.str.10, ptr noundef nonnull @rb_file_directory_p, i32 noundef 1) #22
  %i.f = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.f, ptr noundef nonnull @.str.11, ptr noundef nonnull @rb_file_exist_p, i32 noundef 1) #22
  %i.g = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.g, ptr noundef nonnull @.str.11, ptr noundef nonnull @rb_file_exist_p, i32 noundef 1) #22
  %i.h = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_file_readable_p, i32 noundef 1) #22
  %i.i = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @rb_file_readable_p, i32 noundef 1) #22
  %i.j = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.j, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_file_readable_real_p, i32 noundef 1) #22
  %i.k = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull @rb_file_readable_real_p, i32 noundef 1) #22
  %i.l = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.l, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_file_world_readable_p, i32 noundef 1) #22
  %i.m = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.m, ptr noundef nonnull @.str.14, ptr noundef nonnull @rb_file_world_readable_p, i32 noundef 1) #22
  %i.n = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.n, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_file_writable_p, i32 noundef 1) #22
  %i.o = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_file_writable_p, i32 noundef 1) #22
  %i.p = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.p, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_file_writable_real_p, i32 noundef 1) #22
  %i.q = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_file_writable_real_p, i32 noundef 1) #22
  %i.r = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.r, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_file_world_writable_p, i32 noundef 1) #22
  %i.s = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.s, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_file_world_writable_p, i32 noundef 1) #22
  %i.t = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.t, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_file_executable_p, i32 noundef 1) #22
  %i.u = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.u, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_file_executable_p, i32 noundef 1) #22
  %i.v = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.v, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_file_executable_real_p, i32 noundef 1) #22
  %i.w = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.w, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_file_executable_real_p, i32 noundef 1) #22
  %i.x = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.x, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_file_file_p, i32 noundef 1) #22
  %i.y = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.y, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_file_file_p, i32 noundef 1) #22
  %i.z = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.z, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_file_zero_p, i32 noundef 1) #22
  %i.aa = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.aa, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_file_zero_p, i32 noundef 1) #22
  %i.ab = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ab, ptr noundef nonnull @.str.22, ptr noundef nonnull @rb_file_zero_p, i32 noundef 1) #22
  %i.ac = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ac, ptr noundef nonnull @.str.22, ptr noundef nonnull @rb_file_zero_p, i32 noundef 1) #22
  %i.ad = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ad, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_file_size_p, i32 noundef 1) #22
  %i.ae = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ae, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_file_size_p, i32 noundef 1) #22
  %i.af = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.af, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_file_s_size, i32 noundef 1) #22
  %i.ag = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ag, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_file_s_size, i32 noundef 1) #22
  %i.ah = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ah, ptr noundef nonnull @.str.25, ptr noundef nonnull @rb_file_owned_p, i32 noundef 1) #22
  %i.ai = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ai, ptr noundef nonnull @.str.25, ptr noundef nonnull @rb_file_owned_p, i32 noundef 1) #22
  %i.aj = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.aj, ptr noundef nonnull @.str.26, ptr noundef nonnull @rb_file_grpowned_p, i32 noundef 1) #22
  %i.ak = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ak, ptr noundef nonnull @.str.26, ptr noundef nonnull @rb_file_grpowned_p, i32 noundef 1) #22
  %i.al = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.al, ptr noundef nonnull @.str.27, ptr noundef nonnull @rb_file_pipe_p, i32 noundef 1) #22
  %i.am = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.am, ptr noundef nonnull @.str.27, ptr noundef nonnull @rb_file_pipe_p, i32 noundef 1) #22
  %i.an = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.an, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_file_symlink_p, i32 noundef 1) #22
  %i.ao = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ao, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_file_symlink_p, i32 noundef 1) #22
  %i.ap = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ap, ptr noundef nonnull @.str.29, ptr noundef nonnull @rb_file_socket_p, i32 noundef 1) #22
  %i.aq = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.aq, ptr noundef nonnull @.str.29, ptr noundef nonnull @rb_file_socket_p, i32 noundef 1) #22
  %i.ar = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ar, ptr noundef nonnull @.str.30, ptr noundef nonnull @rb_file_blockdev_p, i32 noundef 1) #22
  %i.as = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.as, ptr noundef nonnull @.str.30, ptr noundef nonnull @rb_file_blockdev_p, i32 noundef 1) #22
  %i.at = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.at, ptr noundef nonnull @.str.31, ptr noundef nonnull @rb_file_chardev_p, i32 noundef 1) #22
  %i.au = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.au, ptr noundef nonnull @.str.31, ptr noundef nonnull @rb_file_chardev_p, i32 noundef 1) #22
  %i.av = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.av, ptr noundef nonnull @.str.32, ptr noundef nonnull @rb_file_suid_p, i32 noundef 1) #22
  %i.aw = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.aw, ptr noundef nonnull @.str.32, ptr noundef nonnull @rb_file_suid_p, i32 noundef 1) #22
  %i.ax = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.ax, ptr noundef nonnull @.str.33, ptr noundef nonnull @rb_file_sgid_p, i32 noundef 1) #22
  %i.ay = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ay, ptr noundef nonnull @.str.33, ptr noundef nonnull @rb_file_sgid_p, i32 noundef 1) #22
  %i.az = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.az, ptr noundef nonnull @.str.34, ptr noundef nonnull @rb_file_sticky_p, i32 noundef 1) #22
  %i.ba = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ba, ptr noundef nonnull @.str.34, ptr noundef nonnull @rb_file_sticky_p, i32 noundef 1) #22
  %i.bb = load i64, ptr @rb_mFileTest, align 8, !tbaa !14
  tail call void @rb_define_module_function(i64 noundef %i.bb, ptr noundef nonnull @.str.35, ptr noundef nonnull @rb_file_identical_p, i32 noundef 2) #22
  %i.bc = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bc, ptr noundef nonnull @.str.35, ptr noundef nonnull @rb_file_identical_p, i32 noundef 2) #22
  %i.bd = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bd, ptr noundef nonnull @.str.36, ptr noundef nonnull @rb_file_s_stat, i32 noundef 1) #22
  %i.be = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.be, ptr noundef nonnull @.str.37, ptr noundef nonnull @rb_file_s_lstat, i32 noundef 1) #22
  %i.bf = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bf, ptr noundef nonnull @.str.38, ptr noundef nonnull @rb_file_s_ftype, i32 noundef 1) #22
  %i.bg = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bg, ptr noundef nonnull @.str.39, ptr noundef nonnull @rb_file_s_atime, i32 noundef 1) #22
  %i.bh = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bh, ptr noundef nonnull @.str.40, ptr noundef nonnull @rb_file_s_mtime, i32 noundef 1) #22
  %i.bi = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bi, ptr noundef nonnull @.str.41, ptr noundef nonnull @rb_file_s_ctime, i32 noundef 1) #22
  %i.bj = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bj, ptr noundef nonnull @.str.42, ptr noundef nonnull @rb_file_s_birthtime, i32 noundef 1) #22
  %i.bk = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bk, ptr noundef nonnull @.str.43, ptr noundef nonnull @rb_file_s_utime, i32 noundef -1) #22
  %i.bl = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bl, ptr noundef nonnull @.str.44, ptr noundef nonnull @rb_file_s_chmod, i32 noundef -1) #22
  %i.bm = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bm, ptr noundef nonnull @.str.45, ptr noundef nonnull @rb_file_s_chown, i32 noundef -1) #22
  %i.bn = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bn, ptr noundef nonnull @.str.46, ptr noundef nonnull @rb_file_s_lchmod, i32 noundef -1) #22
  %i.bo = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bo, ptr noundef nonnull @.str.47, ptr noundef nonnull @rb_file_s_lchown, i32 noundef -1) #22
  %i.bp = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bp, ptr noundef nonnull @.str.48, ptr noundef nonnull @rb_file_s_lutime, i32 noundef -1) #22
  %i.bq = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bq, ptr noundef nonnull @.str.49, ptr noundef nonnull @rb_file_s_link, i32 noundef 2) #22
  %i.br = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.br, ptr noundef nonnull @.str.50, ptr noundef nonnull @rb_file_s_symlink, i32 noundef 2) #22
  %i.bs = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bs, ptr noundef nonnull @.str.51, ptr noundef nonnull @rb_file_s_readlink, i32 noundef 1) #22
  %i.bt = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bt, ptr noundef nonnull @.str.52, ptr noundef nonnull @rb_file_s_unlink, i32 noundef -1) #22
  %i.bu = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bu, ptr noundef nonnull @.str.53, ptr noundef nonnull @rb_file_s_unlink, i32 noundef -1) #22
  %i.bv = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bv, ptr noundef nonnull @.str.54, ptr noundef nonnull @rb_file_s_rename, i32 noundef 2) #22
  %i.bw = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bw, ptr noundef nonnull @.str.55, ptr noundef nonnull @rb_file_s_umask, i32 noundef -1) #22
  %i.bx = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bx, ptr noundef nonnull @.str.56, ptr noundef nonnull @rb_file_s_truncate, i32 noundef 2) #22
  %i.by = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.by, ptr noundef nonnull @.str.57, ptr noundef nonnull @rb_file_s_mkfifo, i32 noundef -1) #22
  %i.bz = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.bz, ptr noundef nonnull @.str.58, ptr noundef nonnull @s_expand_path, i32 noundef -1) #22
  %i.ca = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ca, ptr noundef nonnull @.str.59, ptr noundef nonnull @s_absolute_path, i32 noundef -1) #22
  %i.cb = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cb, ptr noundef nonnull @.str.60, ptr noundef nonnull @s_absolute_path_p, i32 noundef 1) #22
  %i.cc = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cc, ptr noundef nonnull @.str.61, ptr noundef nonnull @rb_file_s_realpath, i32 noundef -1) #22
  %i.cd = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cd, ptr noundef nonnull @.str.62, ptr noundef nonnull @rb_file_s_realdirpath, i32 noundef -1) #22
  %i.ce = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ce, ptr noundef nonnull @.str.63, ptr noundef nonnull @rb_file_s_basename, i32 noundef -1) #22
  %i.cf = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cf, ptr noundef nonnull @.str.64, ptr noundef nonnull @rb_file_s_dirname, i32 noundef -1) #22
  %i.cg = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cg, ptr noundef nonnull @.str.65, ptr noundef nonnull @rb_file_s_extname, i32 noundef 1) #22
  %i.ch = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.ch, ptr noundef nonnull @.str.66, ptr noundef nonnull @rb_file_s_path, i32 noundef 1) #22
  %i.ci = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.67, i64 noundef 1) #22 ; 2 uses
  %i.cj = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_const(i64 noundef %i.cj, ptr noundef nonnull @.str.68, i64 noundef %i.ci) #22
  %i.ck = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_const(i64 noundef %i.ck, ptr noundef nonnull @.str.69, i64 noundef %i.ci) #22
  %i.cl = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cl, ptr noundef nonnull @.str.70, ptr noundef nonnull @rb_file_s_split, i32 noundef 1) #22
  %i.cm = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_singleton_method(i64 noundef %i.cm, ptr noundef nonnull @.str.71, ptr noundef nonnull @rb_file_s_join, i32 noundef -2) #22
  %i.cn = load i64, ptr @rb_cFile, align 8, !tbaa !14
  tail call void @rb_define_const(i64 noundef %i.cn, ptr noundef nonnull @.str.72, i64 noundef 4) #22
end_hunk_0
begin_hunk_1_@rb_check_realpath_emulate:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dk = call i32 @rb_enc_str_asciionly_p(i64 noundef %.pre89) #22
  %.not64 = icmp eq i32 %i.dk, 0
  br i1 %.not64, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = call i64 @rb_enc_associate(i64 noundef %.pre89, ptr noundef nonnull %2) #22 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dm = call i64 @rb_str_conv_enc(i64 noundef %.pre89, ptr noundef null, ptr noundef nonnull %2) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y, %bb.x
  %i.dn = phi i64 [ %.pre89, %bb.aa ], [ %i.dm, %bb.ab ], [ %.pre89, %bb.y ], [ %.pre89, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr %i.e, ptr %i.h, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #22, !srcloc !214
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.dp = load volatile i64, ptr %i.do, align 8, !tbaa !14 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store ptr %i.f, ptr %i.i, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.i) #22, !srcloc !215
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.dr = load volatile i64, ptr %i.dq, align 8, !tbaa !14 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.t, %bb.ac
  %.0 = phi i64 [ %i.dn, %bb.ac ], [ 4, %bb.t ], [ 4, %bb.v ], [ 4, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_file_join(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 15
  %i.g = and i64 %i.f, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i52 = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i64 %.0.i52, 0
  br i1 %i.j, label %bb.d, label %.preheader

.preheader:                                       ; preds = %rb_array_len.exit
  %i.k = getelementptr i8, ptr %i.c, i64 16       ; 4 uses
  %i.l = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %rb_array_len.exit
  %i.m = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #22
  br label %bb.ad

bb.e:                                             ; preds = %.preheader, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.pre104 = phi i64 [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.d, %.preheader ] ; 4 uses
  %.043 = phi i64 [ %i.am, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 0, %.preheader ] ; 4 uses
  %.042 = phi i64 [ %.1, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ 1, %.preheader ] ; 2 uses
  %i.n = and i64 %.pre104, 8192
  %.not.i53 = icmp eq i64 %i.n, 0
  br i1 %.not.i53, label %rb_array_len.exit55, label %rb_array_len.exit55.thread

rb_array_len.exit55:                              ; preds = %bb.e
  %i.o = load i64, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.p = icmp slt i64 %.043, %i.o
  br i1 %i.p, label %bb.f, label %bb.h

rb_array_len.exit55.thread:                       ; preds = %bb.e
  %i.q = lshr i64 %.pre104, 15
  %i.r = and i64 %i.q, 127                        ; 2 uses
  %i.s = icmp samesign ult i64 %.043, %i.r
  br i1 %i.s, label %RARRAY_AREF.exit, label %bb.h

bb.f:                                             ; preds = %rb_array_len.exit55
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !36
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit55.thread, %bb.f
  %.0.i.i = phi ptr [ %i.t, %bb.f ], [ %i.k, %rb_array_len.exit55.thread ]
  %i.u = getelementptr [8 x i8], ptr %.0.i.i, i64 %.043
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14   ; 6 uses
  store i64 %i.v, ptr %i.b, align 8, !tbaa !14
  %i.w = icmp eq i64 %i.v, 0
  %i.x = and i64 %i.v, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RARRAY_AREF.exit
  %i.aa = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 5
  br i1 %i.ad, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ae = tail call ptr @rb_enc_get(i64 noundef %i.v) #22 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  %.val.i.i = load i32, ptr %i.af, align 4, !tbaa !17
  %.not.i.i56 = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i56, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %bb.g
  %i.ag = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.ae) #23
  %.not3.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not3.i.i, label %check_path_encoding.exit, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.thread.i:                 ; preds = %rb_enc_asciicompat.exit.i, %bb.g
  %i.ah = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !14
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.aj = tail call i64 @rb_str_inspect(i64 noundef %i.v) #22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.119, ptr noundef %.val.i, i64 noundef %i.aj) #24
  unreachable

check_path_encoding.exit:                         ; preds = %rb_enc_asciicompat.exit.i
  %i.ak = getelementptr i8, ptr %i.aa, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !90
  %.pre.pre = load i64, ptr %i.c, align 8, !tbaa !11
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %RARRAY_AREF.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %check_path_encoding.exit
  %.pre = phi i64 [ %.pre.pre, %check_path_encoding.exit ], [ %.pre104, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.pre104, %RARRAY_AREF.exit ]
  %.pn = phi i64 [ %i.al, %check_path_encoding.exit ], [ 10, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 10, %RARRAY_AREF.exit ]
  %.1 = add i64 %.pn, %.042
  %i.am = add nuw nsw i64 %.043, 1
  br label %bb.e, !llvm.loop !216

bb.h:                                             ; preds = %rb_array_len.exit55.thread, %rb_array_len.exit55
  %.0.i5478 = phi i64 [ %i.r, %rb_array_len.exit55.thread ], [ %i.o, %rb_array_len.exit55 ]
  %i.an = add i64 %.042, -1
  %i.ao = add i64 %i.an, %.0.i5478
  %i.ap = tail call i64 @rb_str_buf_new(i64 noundef %i.ao) #22 ; 10 uses
  %i.aq = inttoptr i64 %i.ap to ptr               ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  br label %bb.i

bb.i:                                             ; preds = %fs_enc_check.exit, %bb.h
  %.045 = phi i32 [ 1, %bb.h ], [ %.146, %fs_enc_check.exit ] ; 3 uses
  %.144 = phi i64 [ 0, %bb.h ], [ %i.dw, %fs_enc_check.exit ] ; 5 uses
  %i.au = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.av = and i64 %i.au, 8192
  %.not.i57 = icmp eq i64 %i.av, 0
  br i1 %.not.i57, label %rb_array_len.exit59, label %rb_array_len.exit59.thread

rb_array_len.exit59:                              ; preds = %bb.i
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !36
  %i.ax = icmp slt i64 %.144, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.ac

rb_array_len.exit59.thread:                       ; preds = %bb.i
  %i.ay = lshr i64 %i.au, 15
  %i.az = and i64 %i.ay, 127
  %i.ba = icmp slt i64 %.144, %i.az
  br i1 %i.ba, label %RARRAY_AREF.exit62, label %bb.ac

bb.j:                                             ; preds = %rb_array_len.exit59
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !36
  br label %RARRAY_AREF.exit62

RARRAY_AREF.exit62:                               ; preds = %rb_array_len.exit59.thread, %bb.j
  %.0.i.i61 = phi ptr [ %i.bb, %bb.j ], [ %i.k, %rb_array_len.exit59.thread ]
  %i.bc = getelementptr [8 x i8], ptr %.0.i.i61, i64 %.144
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14 ; 11 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !14
  %i.be = icmp eq i64 %i.bd, 0
  %i.bf = and i64 %i.bd, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %.thread83, label %bb.k

.thread83:                                        ; preds = %RARRAY_AREF.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.k:                                             ; preds = %RARRAY_AREF.exit62
  %i.bi = inttoptr i64 %i.bd to ptr
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 31
  switch i32 %i.bl, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i [
    i32 5, label %bb.l
    i32 7, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i32 %.045, 0
  br i1 %.not, label %bb.m, label %check_path_encoding.exit69

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @rb_enc_get(i64 noundef %i.bd) #22 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 20
  %.val.i.i63 = load i32, ptr %i.bn, align 4, !tbaa !17
  %.not.i.i64 = icmp eq i32 %.val.i.i63, 1
  br i1 %.not.i.i64, label %rb_enc_asciicompat.exit.i67, label %rb_enc_asciicompat.exit.thread.i65

rb_enc_asciicompat.exit.i67:                      ; preds = %bb.m
  %i.bo = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.bm) #23
  %.not3.i.i68 = icmp eq i32 %i.bo, 0
  br i1 %.not3.i.i68, label %check_path_encoding.exit69, label %rb_enc_asciicompat.exit.thread.i65

rb_enc_asciicompat.exit.thread.i65:               ; preds = %rb_enc_asciicompat.exit.i67, %bb.m
  %i.bp = load i64, ptr @rb_eEncCompatError, align 8, !tbaa !14
  %i.bq = getelementptr i8, ptr %i.bm, i64 8
  %.val.i66 = load ptr, ptr %i.bq, align 8, !tbaa !21
  %i.br = call i64 @rb_str_inspect(i64 noundef %i.bd) #22
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bp, ptr noundef nonnull @.str.119, ptr noundef %.val.i66, i64 noundef %i.br) #24
  unreachable

check_path_encoding.exit69:                       ; preds = %rb_enc_asciicompat.exit.i67, %bb.l
  %i.bs = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.bt = icmp eq i64 %0, %i.bd
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = load i64, ptr @rb_eArgError, align 8, !tbaa !14
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.125) #24
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bv = call i64 @rb_exec_recursive(ptr noundef nonnull @file_inspect_join, i64 noundef %0, i64 noundef %i.bd) #22
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !14
  br label %bb.q

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bw = and i64 %i.bj, 31
  %i.bx = icmp eq i64 %i.bw, 5
  br i1 %i.bx, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread83, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.by = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.by, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.by, %.lr.ph.i.i.i ]
  %i.bz = call i64 @rb_check_funcall_default(i64 noundef %i.bd, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.bd) #22
  store i64 %i.bz, ptr %i.a, align 8, !tbaa !14
  %i.ca = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i70 = phi i64 [ %i.cb, %rbimpl_intern_const.exit.i.i ], [ %i.bd, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cc = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i70)
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %rb_get_path.exit, %bb.p, %check_path_encoding.exit69
  %.146 = phi i32 [ 0, %rb_get_path.exit ], [ %.045, %check_path_encoding.exit69 ], [ %.045, %bb.p ]
  %i.cd = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.ce = and i64 %i.cd, 8192
  %.not.i71 = icmp eq i64 %i.ce, 0
  br i1 %.not.i71, label %RSTRING_PTR.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = load ptr, ptr %i.as, align 8, !tbaa !36
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.q, %bb.r
  %i.cg = phi ptr [ %i.cf, %bb.r ], [ %i.as, %bb.q ] ; 5 uses
  %i.ch = icmp eq i64 %.144, 0
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %RSTRING_PTR.exit
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !14
  call void @rb_enc_copy(i64 noundef %i.ap, i64 noundef %i.ci) #22
  br label %bb.y

bb.t:                                             ; preds = %RSTRING_PTR.exit
  %i.cj = load i64, ptr %i.at, align 8, !tbaa !90
  %i.ck = getelementptr i8, ptr %i.cg, i64 %i.cj  ; 5 uses
  %i.cl = call ptr @rb_enc_get(i64 noundef %i.ap) #22
  %i.cm = icmp ult ptr %i.cg, %i.ck
  br i1 %i.cm, label %.lr.ph.i, label %chompdirsep.exit

.lr.ph.i:                                         ; preds = %bb.t, %.critedge.thread.i
  %.01822.i = phi ptr [ %.220.i, %.critedge.thread.i ], [ %i.cg, %bb.t ] ; 6 uses
  %i.cn = load i8, ptr %.01822.i, align 1, !tbaa !36
  %i.co = icmp eq i8 %i.cn, 47
  br i1 %i.co, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %.119.i136 = getelementptr i8, ptr %.01822.i, i64 1 ; 2 uses
  %i.cp = icmp ult ptr %.119.i136, %i.ck
  br i1 %i.cp, label %.lr.ph, label %chompdirsep.exit

.preheader.i:                                     ; preds = %.lr.ph
  %.119.i = getelementptr i8, ptr %.119.i137, i64 1 ; 2 uses
  %i.cq = icmp ult ptr %.119.i, %i.ck
  br i1 %i.cq, label %.lr.ph, label %chompdirsep.exit, !llvm.loop !88

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.119.i137 = phi ptr [ %.119.i, %.preheader.i ], [ %.119.i136, %.preheader.i.preheader ] ; 3 uses
  %i.cr = load i8, ptr %.119.i137, align 1, !tbaa !36
  %i.cs = icmp eq i8 %i.cr, 47
  br i1 %i.cs, label %.preheader.i, label %.critedge.thread.i, !llvm.loop !88

bb.u:                                             ; preds = %.lr.ph.i
  %i.ct = call i32 @rb_enc_mbclen(ptr noundef nonnull %.01822.i, ptr noundef nonnull %i.ck, ptr noundef %i.cl) #22
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr i8, ptr %.01822.i, i64 %i.cu
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.lr.ph, %bb.u
  %.220.i = phi ptr [ %i.cv, %bb.u ], [ %.119.i137, %.lr.ph ] ; 3 uses
  %i.cw = icmp ult ptr %.220.i, %i.ck
  br i1 %i.cw, label %.lr.ph.i, label %chompdirsep.exit, !llvm.loop !89

chompdirsep.exit:                                 ; preds = %.critedge.thread.i, %.preheader.i.preheader, %.preheader.i, %bb.t
  %.018.lcssa.i = phi ptr [ %i.cg, %bb.t ], [ %.01822.i, %.preheader.i ], [ %.220.i, %.critedge.thread.i ], [ %.01822.i, %.preheader.i.preheader ] ; 2 uses
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !14
  %i.cy = inttoptr i64 %i.cx to ptr               ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11
  %i.da = and i64 %i.cz, 8192
  %.not.i72 = icmp eq i64 %i.da, 0
  %i.db = getelementptr i8, ptr %i.cy, i64 24     ; 3 uses
  br i1 %.not.i72, label %RSTRING_PTR.exit73, label %RSTRING_PTR.exit73.thread

RSTRING_PTR.exit73:                               ; preds = %chompdirsep.exit
  %.not50 = icmp eq ptr %i.db, null
  br i1 %.not50, label %bb.w, label %RSTRING_PTR.exit75

RSTRING_PTR.exit73.thread:                        ; preds = %chompdirsep.exit
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36 ; 2 uses
  %.not5084 = icmp eq ptr %i.dc, null
  br i1 %.not5084, label %bb.w, label %RSTRING_PTR.exit75

RSTRING_PTR.exit75:                               ; preds = %RSTRING_PTR.exit73.thread, %RSTRING_PTR.exit73
  %i.dd = phi ptr [ %i.db, %RSTRING_PTR.exit73 ], [ %i.dc, %RSTRING_PTR.exit73.thread ]
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !36
  %i.df = icmp eq i8 %i.de, 47
  br i1 %i.df, label %bb.v, label %bb.w

bb.v:                                             ; preds = %RSTRING_PTR.exit75
  %i.dg = ptrtoint ptr %.018.lcssa.i to i64
  %i.dh = ptrtoint ptr %i.cg to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @rb_str_set_len(i64 noundef %i.ap, i64 noundef %i.di) #22
  br label %bb.y

bb.w:                                             ; preds = %RSTRING_PTR.exit73.thread, %RSTRING_PTR.exit75, %RSTRING_PTR.exit73
  %i.dj = load i8, ptr %.018.lcssa.i, align 1, !tbaa !36
  %.not51 = icmp eq i8 %i.dj, 0
  br i1 %.not51, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dk = call i64 @rb_str_cat(i64 noundef %i.ap, ptr noundef nonnull @.str.67, i64 noundef 1) #22 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %bb.s
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  %i.dm = call ptr @rb_enc_check(i64 noundef %i.ap, i64 noundef %i.dl) #22 ; 2 uses
  %i.dn = call i32 @rb_enc_to_index(ptr noundef %i.dm) #23
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.z, label %fs_enc_check.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = call i32 @rb_enc_get_index(i64 noundef %i.ap) #22 ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 2
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = call i32 @rb_enc_get_index(i64 noundef %i.dl) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i76 = phi i32 [ %i.dr, %bb.aa ], [ %i.dp, %bb.z ]
  %i.ds = call ptr @rb_enc_from_index(i32 noundef %.0.i76) #22
  br label %fs_enc_check.exit

fs_enc_check.exit:                                ; preds = %bb.y, %bb.ab
  %.08.i = phi ptr [ %i.ds, %bb.ab ], [ %i.dm, %bb.y ]
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !14
  %i.du = call i64 @rb_str_buf_append(i64 noundef %i.ap, i64 noundef %i.dt) #22 ; 0 uses
  %i.dv = call i64 @rb_enc_associate(i64 noundef %i.ap, ptr noundef %.08.i) #22 ; 0 uses
  %i.dw = add i64 %.144, 1
  br label %bb.i, !llvm.loop !217

bb.ac:                                            ; preds = %rb_array_len.exit59.thread, %rb_array_len.exit59
  %i.dx = load i64, ptr @rb_cString, align 8, !tbaa !14
  store i64 %i.dx, ptr %i.ar, align 8, !tbaa !14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %i.ap, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i64 %.0
}

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_dir_getwd_ospath() local_unnamed_addr #2

declare i64 @rb_hash_new() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @realpath_rec(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %7 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %8 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %9 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23 ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 4 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !14
  %i.g = tail call ptr @rb_enc_get(i64 noundef %i.f) #22 ; 3 uses
end_hunk_1
begin_hunk_2_@syserr_fail2_in:bb.a
  %i.b = tail call i64 @rb_str_ellipsize(i64 noundef %3, i64 noundef 4096) #22
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.syserr_fail2_in, i32 noundef 17, i64 noundef %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @rbimpl_str_new_cstr() ; 5 uses
  %i.d = tail call i64 @rb_str_ellipsize(i64 noundef %2, i64 noundef 4096) #22
  %i.e = tail call i64 @rb_str_append(i64 noundef %i.c, i64 noundef %i.d) #22 ; 0 uses
  tail call fastcc void @rbimpl_str_cat_cstr(i64 noundef %i.c, ptr noundef @.str.137)
  %i.f = tail call i64 @rb_str_ellipsize(i64 noundef %3, i64 noundef 4096) #22
  %i.g = tail call i64 @rb_str_append(i64 noundef %i.c, i64 noundef %i.f) #22 ; 0 uses
  tail call fastcc void @rbimpl_str_cat_cstr(i64 noundef %i.c, ptr noundef @.str.138)
  tail call void @rb_syserr_fail_path_in(ptr noundef %0, i32 noundef %1, i64 noundef %i.c) #24
  unreachable
}

declare i64 @rb_str_ellipsize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rbimpl_str_new_cstr() unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.136, i64 noundef 1) #22
  ret i64 %i.a
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef i32 @unlink_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  %i.a = tail call i32 @unlink(ptr noundef %0) #22
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @no_gvl_rename(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = tail call i32 @rename(ptr noundef %i.a, ptr noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_truncate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162
  %i.d = tail call i32 @truncate(ptr noundef %i.a, i64 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nounwind
declare i32 @truncate(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_mkfifo(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !166
  %i.d = tail call i32 @mkfifo(ptr noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nounwind
declare i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @rb_str_new_shared(i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_enc_ascget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @onigenc_get_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_thread_io_blocking_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @io_blocking_fchmod(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !174
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !176
  %i.d = tail call i32 @fchmod(i32 noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_fchown(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !239
  %i.d = getelementptr i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241
  %i.f = tail call i32 @fchown(i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #22
  %i.g = sext i32 %i.f to i64
  %i.h = inttoptr i64 %i.g to ptr
  ret ptr %i.h
}

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @nogvl_ftruncate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !179
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !177
  %i.d = tail call i32 @ftruncate(i32 noundef %i.a, i64 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @rb_thread_flock(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = tail call i32 @flock(i32 noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

declare void @rb_thread_wait_for(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @test_check(i32 noundef range(i32 1, 3) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add nuw nsw i32 %0, 1                    ; 4 uses
  %i.d = icmp sle i32 %1, %0
  %i.e = icmp samesign ugt i32 %1, %i.c
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit.preheader.preheader

rb_check_arity.exit.preheader.preheader:          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %rb_check_arity.exit.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %1, i32 noundef range(i32 1, 4) %i.c, i32 noundef range(i32 -1, 4) %i.c) #24
  unreachable

rb_check_arity.exit.preheader:                    ; preds = %rb_check_arity.exit.preheader.preheader, %rb_check_arity.exit
  %indvars.iv = phi i64 [ 1, %rb_check_arity.exit.preheader.preheader ], [ %indvars.iv.next, %rb_check_arity.exit ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = and i64 %i.g, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

.thread:                                          ; preds = %rb_check_arity.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_check_arity.exit.preheader
  %i.l = inttoptr i64 %i.g to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = and i64 %i.m, 31                         ; 2 uses
  %i.o = icmp eq i64 %i.n, 11
  br i1 %i.o, label %rb_check_arity.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.p = icmp eq i64 %i.n, 5
  br i1 %i.p, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.q = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.q, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.q, %.lr.ph.i.i.i ]
  %i.r = call i64 @rb_check_funcall_default(i64 noundef %i.g, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.g) #22
  store i64 %i.r, ptr %i.a, align 8, !tbaa !14
  %i.s = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.t, %rbimpl_intern_const.exit.i.i ], [ %i.g, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.u = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.f, ptr %i.b, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !242
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.u, ptr %i.v, align 8, !tbaa !14
  br label %rb_check_arity.exit

rb_check_arity.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rb_get_path.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %rb_check_arity.exit.preheader, !llvm.loop !243

bb.c:                                             ; preds = %rb_check_arity.exit
  ret void
}

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #2

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_buf_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind allocsize(1,2) }
attributes #28 = { nounwind allocsize(1) }

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
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !8, i64 20}
!18 = !{!"OnigEncodingTypeST", !19, i64 0, !20, i64 8, !8, i64 16, !8, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !8, i64 128, !8, i64 132}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!18, !20, i64 8}
!22 = !{!23, !13, i64 24}
!23 = !{!"RTypedData", !12, i64 0, !13, i64 16, !13, i64 24, !19, i64 32}
!24 = !{!23, !19, i64 32}
!25 = !{!26, !13, i64 16}
!26 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !27, i64 72, !27, i64 88, !27, i64 104, !9, i64 120}
!27 = !{!"timespec", !13, i64 0, !13, i64 8}
!28 = !{!26, !8, i64 24}
!29 = !{!26, !13, i64 8}
!30 = !{!26, !13, i64 48}
!31 = !{!26, !13, i64 64}
!32 = !{!33, !33, i64 0}
!33 = !{!"long long", !9, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !9, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{!38, !41, i64 256}
!38 = !{!"rb_stat", !39, i64 0, !41, i64 256}
!39 = !{!"statx", !8, i64 0, !8, i64 4, !33, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !35, i64 28, !9, i64 30, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !40, i64 64, !40, i64 80, !40, i64 96, !40, i64 112, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !33, i64 144, !8, i64 152, !8, i64 156, !9, i64 160}
!40 = !{!"statx_timestamp", !33, i64 0, !8, i64 8, !8, i64 12}
!41 = !{!"_Bool", !9, i64 0}
!42 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 8, !32, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 2, !34, i64 30, i64 2, !36, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 4, !7, i64 76, i64 4, !7, i64 80, i64 8, !32, i64 88, i64 4, !7, i64 92, i64 4, !7, i64 96, i64 8, !32, i64 104, i64 4, !7, i64 108, i64 4, !7, i64 112, i64 8, !32, i64 120, i64 4, !7, i64 124, i64 4, !7, i64 128, i64 4, !7, i64 132, i64 4, !7, i64 136, i64 4, !7, i64 140, i64 4, !7, i64 144, i64 8, !32, i64 152, i64 4, !7, i64 156, i64 4, !7, i64 160, i64 96, !36}
!43 = !{!44, !45, i64 16}
!44 = !{!"RFile", !12, i64 0, !45, i64 16}
!45 = !{!"p1 _ZTS5rb_io", !19, i64 0}
!46 = !{!47, !8, i64 16}
!47 = !{!"rb_io", !13, i64 0, !48, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !19, i64 40, !49, i64 48, !49, i64 68, !13, i64 88, !50, i64 96, !52, i64 128, !49, i64 136, !52, i64 160, !13, i64 168, !8, i64 176, !8, i64 180, !13, i64 184, !13, i64 192, !13, i64 200, !53, i64 208, !56, i64 224, !13, i64 232, !33, i64 240}
!48 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!49 = !{!"rb_io_internal_buffer", !20, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!50 = !{!"rb_io_encoding", !51, i64 0, !51, i64 8, !8, i64 16, !13, i64 24}
!51 = !{!"p1 _ZTS18OnigEncodingTypeST", !19, i64 0}
!52 = !{!"p1 _ZTS10rb_econv_t", !19, i64 0}
!53 = !{!"ccan_list_head", !54, i64 0}
!54 = !{!"ccan_list_node", !55, i64 0, !55, i64 8}
!55 = !{!"p1 _ZTS14ccan_list_node", !19, i64 0}
!56 = !{!"p1 _ZTS27rb_execution_context_struct", !19, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"no_gvl_stat_data", !59, i64 0, !9, i64 8}
!59 = !{!"p1 _ZTS4stat", !19, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 long", !19, i64 0}
!62 = !{i64 2151487287}
!63 = !{i64 2151487464}
!64 = !{!65, !66, i64 0}
!65 = !{!"no_gvl_rb_io_stat_data", !66, i64 0, !8, i64 8, !20, i64 16, !8, i64 24, !8, i64 28}
!66 = !{!"p1 _ZTS5statx", !19, i64 0}
!67 = !{!65, !8, i64 8}
!68 = !{!65, !20, i64 16}
!69 = !{!65, !8, i64 24}
!70 = !{!65, !8, i64 28}
!71 = !{i64 2151486525}
!72 = !{i64 2151486702}
!73 = !{i64 2151502298}
!74 = !{!39, !8, i64 0}
!75 = !{!39, !33, i64 80}
!76 = !{!39, !8, i64 88}
!77 = !{!47, !8, i64 20}
!78 = !{!47, !13, i64 32}
!79 = !{i64 2151509557}
!80 = !{!81, !20, i64 0}
!81 = !{!"readlink_arg", !20, i64 0, !20, i64 8, !13, i64 16}
!82 = !{!81, !20, i64 8}
!83 = !{!81, !13, i64 16}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = !{!91, !13, i64 16}
!91 = !{!"RString", !12, i64 0, !13, i64 16, !9, i64 24}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
end_hunk_2
