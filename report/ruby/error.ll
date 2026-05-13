inline.NumInlined: 575
inline.NumDeleted: 105
begin_hunk_0_@nometh_err_initialize:rb_scan_args_n_opt.exit
  %i.aj = tail call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.ai, i64 noundef %.not.i1756) #32 ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @nometh_err_args(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_args, align 8, !tbaa !15
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #32
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @nometh_err_private_call_p(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_private_call_p, align 8, !tbaa !15
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #32
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @frozen_err_initialize(i32 noundef %0, ptr noundef %1, i64 noundef returned %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %i.b = alloca [1 x i64], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = tail call i32 @rb_keyword_given_p() #32
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %rb_scan_args_set.exit, label %bb.c

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.i = icmp slt i32 %0, 0
  br i1 %i.i, label %bb.d, label %rb_scan_args_set.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_hash_dup(i64 noundef %i.g) #32
  %i.k = add nsw i32 %0, -1
  br label %rb_scan_args_set.exit

bb.d:                                             ; preds = %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef -1) #36
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c, %bb.b, %bb.a
  %.188.i917 = phi i64 [ 4, %bb.b ], [ %i.j, %bb.c ], [ 4, %bb.a ]
  %.1.i1015 = phi i32 [ 0, %bb.b ], [ %i.k, %bb.c ], [ %0, %bb.a ]
  %i.l = load i64, ptr @id_receiver, align 8, !tbaa !15
  store i64 %i.l, ptr %i.a, align 8, !tbaa !15
  %i.m = call i32 @rb_get_kwargs(i64 noundef %.188.i917, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #32 ; 0 uses
  %i.n = call i64 @rb_call_super(i32 noundef %.1.i1015, ptr noundef %1) #32 ; 0 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.p = icmp eq i64 %i.o, 36
  br i1 %i.p, label %err_init_recv.exit, label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.q = load i64, ptr @id_recv, align 8, !tbaa !15
  %i.r = call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.q, i64 noundef %i.o) #32 ; 0 uses
  br label %err_init_recv.exit

err_init_recv.exit:                               ; preds = %rb_scan_args_set.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @no_matching_pattern_key_err_initialize(i32 noundef %0, ptr noundef %1, i64 noundef returned %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = tail call i32 @rb_keyword_given_p() #32
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader.thread29, label %.preheader

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.i = icmp slt i32 %0, 0
  br i1 %i.i, label %bb.c, label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %bb.b
  %i.j = tail call i64 @rb_call_super(i32 noundef %0, ptr noundef %1) #32 ; 0 uses
  br label %bb.i

.preheader:                                       ; preds = %bb.a
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.g) #32 ; 2 uses
  %i.l = add nsw i32 %0, -1                       ; 2 uses
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %rb_scan_args_set.exit, label %.preheader.thread29

.preheader.thread29:                              ; preds = %bb.a, %.preheader
  %.1.i.ph34 = phi i32 [ %i.l, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %.188.i.ph33 = phi i64 [ %i.k, %.preheader ], [ 4, %bb.a ]
  %i.m = icmp eq i32 %.1.i.ph34, 1
  br i1 %i.m, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.thread29, %bb.b
  %.1.i21 = phi i32 [ %.1.i.ph34, %.preheader.thread29 ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.1.i21, i32 noundef 0, i32 noundef 1) #36
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader, %.preheader.thread29
  %.1.i202541 = phi i32 [ 1, %.preheader.thread29 ], [ 0, %.preheader ]
  %.188.i192740 = phi i64 [ %.188.i.ph33, %.preheader.thread29 ], [ %i.k, %.preheader ] ; 2 uses
  %i.n = tail call i64 @rb_call_super(i32 noundef %.1.i202541, ptr noundef nonnull %1) #32 ; 0 uses
  %i.o = icmp eq i64 %.188.i192740, 4
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.p = load i64, ptr @id_matchee, align 8, !tbaa !15
  store i64 %i.p, ptr %i.a, align 16, !tbaa !15
  %i.q = load i64, ptr @id_key, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !15
  %i.s = call i32 @rb_get_kwargs(i64 noundef %.188.i192740, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.b) #32 ; 0 uses
  %i.t = load i64, ptr %i.b, align 16, !tbaa !15  ; 2 uses
  %i.u = icmp eq i64 %i.t, 36
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.a, align 16, !tbaa !15
  %i.w = call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.v, i64 noundef %i.t) #32 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = icmp eq i64 %i.y, 36
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !15
  %i.ab = call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.aa, i64 noundef %i.y) #32 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.i

bb.i:                                             ; preds = %rb_scan_args_set.exit.thread, %bb.h, %rb_scan_args_set.exit
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @no_matching_pattern_key_err_matchee(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_matchee, align 8, !tbaa !15
  %i.b = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.a, i64 noundef 36) #32 ; 2 uses
  %i.c = icmp eq i64 %i.b, 36
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret i64 %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef @.str.304) #33
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @no_matching_pattern_key_err_key(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_key, align 8, !tbaa !15
  %i.b = tail call i64 @rb_ivar_lookup(i64 noundef %0, i64 noundef %i.a, i64 noundef 36) #32 ; 2 uses
  %i.c = icmp eq i64 %i.b, 36
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret i64 %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef @.str.296) #33
  unreachable
}

declare ptr @rb_st_init_numtable() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @syserr_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = tail call i64 @rb_obj_class(i64 noundef %2) #32 ; 3 uses
  %i.d = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !15
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.c, ptr %i.b, align 8, !tbaa !15
  %i.f = icmp slt i32 %0, 1
  br i1 %i.f, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !15     ; 4 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  %.not84 = icmp eq i32 %0, 1
  br i1 %.not84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %.pr = phi i64 [ %i.i, %bb.c ], [ 4, %.preheader ]
  %.286.i40 = phi i32 [ 2, %bb.c ], [ 1, %.preheader ] ; 4 uses
  %i.j = icmp samesign ult i32 %.286.i40, %0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %.286.i40 to i64
  %i.l = getelementptr [8 x i8], ptr %1, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = add nuw nsw i32 %.286.i40, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = phi i64 [ %i.m, %bb.e ], [ 4, %bb.d ]
  %.286.i40.1 = phi i32 [ %i.n, %bb.e ], [ %.286.i40, %bb.d ]
  %i.p = icmp eq i32 %.286.i40.1, %0
  br i1 %i.p, label %rb_scan_args_set.exit43, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #36
  unreachable

rb_scan_args_set.exit43:                          ; preds = %bb.f
  %i.q = icmp eq i32 %0, 1
  %i.r = trunc i64 %i.g to i1
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %rb_scan_args_set.exit43
  store i64 4, ptr %i.a, align 8, !tbaa !15
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %rb_scan_args_set.exit43, %bb.h
  %3 = phi i64 [ 4, %bb.h ], [ %i.g, %rb_scan_args_set.exit43 ]
  %.pr50 = phi i64 [ %i.g, %bb.h ], [ %.pr, %rb_scan_args_set.exit43 ] ; 5 uses
  %i.s = icmp eq i64 %.pr50, 4
  br i1 %i.s, label %RBASIC_SET_CLASS.exit, label %bb.i

bb.i:                                             ; preds = %thread-pre-split
  %i.t = load ptr, ptr @syserr_tbl, align 8, !tbaa !104
  %i.u = trunc i64 %.pr50 to i1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = ashr i64 %.pr50, 1
  br label %rb_num2long_inline.exit

bb.k:                                             ; preds = %bb.i
  %i.w = tail call i64 @rb_num2long(i64 noundef %.pr50) #32
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.j, %bb.k
  %.0.i47 = phi i64 [ %i.v, %bb.j ], [ %i.w, %bb.k ]
  %i.x = call i32 @rb_st_lookup(ptr noundef %i.t, i64 noundef %.0.i47, ptr noundef nonnull %i.b) #32
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %RBASIC_SET_CLASS.exit, label %bb.l

bb.l:                                             ; preds = %rb_num2long_inline.exit
  %i.y = icmp eq i64 %2, 0
  %i.z = and i64 %2, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.l
  %i.ac = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ag = load i64, ptr @rb_eTypeError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ag, ptr noundef @.str.306) #33
  unreachable

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !15  ; 4 uses
  %i.ai = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !15
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = and i64 %i.ah, 7
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %RBASIC_SET_CLASS.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.ah) #32
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.n, %bb.m, %rb_num2long_inline.exit, %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.t

bb.o:                                             ; preds = %bb.a
  %i.an = icmp slt i32 %0, 0
  br i1 %i.an, label %bb.s, label %.preheader52.preheader

.preheader52.preheader:                           ; preds = %bb.o
  %.not83 = icmp eq i32 %0, 0
  br i1 %.not83, label %.preheader52.1, label %bb.p

bb.p:                                             ; preds = %.preheader52.preheader
  %i.ao = load i64, ptr %1, align 8, !tbaa !15
  br label %.preheader52.1

.preheader52.1:                                   ; preds = %.preheader52.preheader, %bb.p
  %.sink = phi i64 [ %i.ao, %bb.p ], [ 4, %.preheader52.preheader ] ; 2 uses
  %.286.i = phi i32 [ 1, %bb.p ], [ 0, %.preheader52.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !15
  %i.ap = icmp samesign ult i32 %.286.i, %0
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader52.1
  %i.aq = zext nneg i32 %.286.i to i64
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = add nuw nsw i32 %.286.i, 1
  br label %bb.r

bb.r:                                             ; preds = %.preheader52.1, %bb.q
  %i.au = phi i64 [ %i.as, %bb.q ], [ 4, %.preheader52.1 ]
  %.286.i.1 = phi i32 [ %i.at, %bb.q ], [ %.286.i, %.preheader52.1 ]
  %i.av = icmp eq i32 %.286.i.1, %0
  br i1 %i.av, label %rb_scan_args_set.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #36
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.r
  %i.aw = load i64, ptr @id_Errno, align 8, !tbaa !15
  %i.ax = tail call i64 @rb_const_get(i64 noundef %i.c, i64 noundef %i.aw) #32
  br label %bb.t

bb.t:                                             ; preds = %rb_scan_args_set.exit, %RBASIC_SET_CLASS.exit
  %i.ay = phi i64 [ %i.au, %rb_scan_args_set.exit ], [ %i.o, %RBASIC_SET_CLASS.exit ] ; 2 uses
  %4 = phi i64 [ %.sink, %rb_scan_args_set.exit ], [ %3, %RBASIC_SET_CLASS.exit ]
  %i.az = phi i64 [ %i.ax, %rb_scan_args_set.exit ], [ %.pr50, %RBASIC_SET_CLASS.exit ] ; 5 uses
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = trunc i64 %i.az to i1
  br i1 %i.bb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bc = call i64 @rb_fix2int(i64 noundef %i.az) #32
  br label %rb_num2int_inline.exit

bb.w:                                             ; preds = %bb.u
  %i.bd = call i64 @rb_num2int(i64 noundef %i.az) #32
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.v, %bb.w
  %.0.i48 = phi i64 [ %i.bc, %bb.v ], [ %i.bd, %bb.w ]
  %i.be = trunc i64 %.0.i48 to i32
  %i.bf = call ptr @strerror(i32 noundef %i.be) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %rb_num2int_inline.exit
  %.0 = phi ptr [ %i.bf, %rb_num2int_inline.exit ], [ @.str.308, %bb.t ]
  %i.bg = call ptr @rb_locale_encoding() #32
  %i.bh = call i64 @rb_enc_str_new_cstr(ptr noundef %.0, ptr noundef %i.bg) #32 ; 3 uses
  %i.bi = icmp eq i64 %4, 4
  br i1 %i.bi, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = call i64 @rb_string_value(ptr noundef nonnull %i.a) #32
  %i.bk = icmp eq i64 %i.ay, 4
  br i1 %i.bk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.bh, ptr noundef nonnull @.str.309, i64 noundef %i.ay) #32 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bm = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.bh, ptr noundef nonnull @.str.310, i64 noundef %i.bj) #32 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !15
  %i.bn = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #32 ; 0 uses
  %i.bo = load i64, ptr @id_errno, align 8, !tbaa !15
  %i.bp = call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.bo, i64 noundef %i.az) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @syserr_errno(i64 noundef %0) #0 {
bb.a:
  %i.a = load i64, ptr @id_errno, align 8, !tbaa !15
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef %i.a) #32
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @syserr_eqq(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !15
  %i.b = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.a) #32
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @id_errno, align 8, !tbaa !15
  %i.d = tail call i32 @rb_respond_to(i64 noundef %1, i64 noundef %i.c) #32
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !15
  %i.f = icmp eq i64 %0, %i.e
  br i1 %i.f, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i64, ptr @id_errno, align 8, !tbaa !15
  %i.h = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef %i.g) #32 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @id_errno, align 8, !tbaa !15
  %i.k = tail call i64 @rb_funcallv(i64 noundef %1, i64 noundef %i.j, i32 noundef 0, ptr noundef null) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013 = phi i64 [ %i.k, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.l = load i64, ptr @id_Errno, align 8, !tbaa !15
  %i.m = tail call i64 @rb_const_get(i64 noundef %0, i64 noundef %i.l) #32 ; 2 uses
  %i.n = trunc i64 %.013 to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i64 %.013, %i.m
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = tail call i64 @rb_equal(i64 noundef %.013, i64 noundef %i.m) #32
  %i.q = icmp eq i64 %i.p, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not15 = phi i1 [ %i.o, %bb.g ], [ %i.q, %bb.h ]
  %i.r = select i1 %.not15, i64 0, i64 20
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.i
  %.0 = phi i64 [ 0, %bb.b ], [ %i.r, %bb.i ], [ 20, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_warning_s_aref(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = and i64 %1, 255
  %i.d = icmp eq i64 %i.c, 12
  br i1 %i.d, label %Check_Type.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  %i.f = and i64 %1, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %.split.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %1 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %Check_Type.exit.i, label %.split.i.i, !prof !23

.split.i.i:                                       ; preds = %bb.c, %bb.b
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 20) #35
  unreachable

Check_Type.exit.i:                                ; preds = %bb.c, %bb.a
  %i.m = call i64 @rb_check_id(ptr noundef nonnull %i.a) #32 ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Check_Type.exit.i
  %i.n = load ptr, ptr @warning_categories.0, align 8, !tbaa !24
  %i.o = call i32 @rb_st_lookup(ptr noundef %i.n, i64 noundef %i.m, ptr noundef nonnull %i.b) #32
  %.not1.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i, label %bb.e, label %rb_warning_category_from_name.exit

bb.e:                                             ; preds = %bb.d, %Check_Type.exit.i
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  %i.q = load i64, ptr %i.a, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef @.str.1, i64 noundef %i.q) #33
  unreachable

rb_warning_category_from_name.exit:               ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !15
  %i.s = trunc i64 %i.r to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = load i32, ptr @warning_disabled_categories, align 4, !tbaa !7
  %i.u = shl nuw i32 1, %i.s
  %i.v = and i32 %i.t, %i.u
  %.not.i2 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i2, i64 20, i64 0
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_warning_s_aset(i64 %0, i64 noundef %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.c = and i64 %1, 255
  %i.d = icmp eq i64 %i.c, 12
  br i1 %i.d, label %Check_Type.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  %i.f = and i64 %1, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %.split.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %1 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 20
  br i1 %i.l, label %Check_Type.exit.i.i, label %.split.i.i.i, !prof !23

.split.i.i.i:                                     ; preds = %bb.c, %bb.b
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 20) #35
  unreachable

Check_Type.exit.i.i:                              ; preds = %bb.c, %bb.a
  %i.m = call i64 @rb_check_id(ptr noundef nonnull %i.a) #32 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %Check_Type.exit.i.i
  %i.n = load ptr, ptr @warning_categories.0, align 8, !tbaa !24
  %i.o = call i32 @rb_st_lookup(ptr noundef %i.n, i64 noundef %i.m, ptr noundef nonnull %i.b) #32
  %.not1.i.i = icmp eq i32 %i.o, 0
  br i1 %.not1.i.i, label %bb.e, label %rb_warning_category_mask.exit

bb.e:                                             ; preds = %bb.d, %Check_Type.exit.i.i
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  %i.q = load i64, ptr %i.a, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef @.str.1, i64 noundef %i.q) #33
  unreachable

rb_warning_category_mask.exit:                    ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !15
  %i.s = trunc i64 %i.r to i32
end_hunk_0
