Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/io?download=true
inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@argf_read:bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !19
  %i.j = add nuw nsw i32 %.286.i, 1
  %i.k = icmp eq i64 %i.i, 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i1 [ %i.k, %bb.d ], [ true, %bb.c ]
  %.286.i.1 = phi i32 [ %i.j, %bb.d ], [ %.286.i, %bb.c ]
  %i.m = icmp eq i32 %.286.i.1, %0
  br i1 %i.m, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.n = icmp eq i64 %i.e, 4                      ; 2 uses
  br i1 %i.n, label %rb_num2long_inline.exit, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.o = load i64, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = ashr i64 %i.o, 1
  br label %rb_num2long_inline.exit

bb.i:                                             ; preds = %bb.g
  %i.r = tail call i64 @rb_num2long(i64 noundef %i.o) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.i, %bb.h, %rb_scan_args_set.exit
  %.027 = phi i64 [ 0, %rb_scan_args_set.exit ], [ %i.q, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_num2long_inline.exit
  %i.s = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !19
  %i.u = call i64 @rb_str_resize(i64 noundef %i.t, i64 noundef 0) #28 ; 0 uses
  %i.v = getelementptr i8, ptr %1, i64 8
  store i64 4, ptr %i.v, align 8, !tbaa !19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rb_num2long_inline.exit
  %i.w = call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not45 = icmp eq i32 %i.w, 0
  br i1 %.not45, label %.thread39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.x = inttoptr i64 %2 to ptr
  %i.y = getelementptr i8, ptr %i.x, i64 32       ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %.backedge
  %.old = phi i64 [ %i.e, %.lr.ph ], [ %.old54, %.backedge ] ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !82 ; 6 uses
  %i.ac = load i64, ptr @rb_stdin, align 8, !tbaa !19
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp eq i64 %i.ab, 0
  %i.af = and i64 %i.ab, 7
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %i.ae, %i.ag
  br i1 %i.ah, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.m
  %i.ai = inttoptr i64 %i.ab to ptr
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.ak = and i64 %i.aj, 31
  %i.al = icmp eq i64 %i.ak, 11
  br i1 %i.al, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.am = call i64 @rb_frame_this_func() #28
  %i.an = call i32 @rb_keyword_given_p() #28
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = call i64 @rb_funcallv_public_kw(i64 noundef %i.ab, i64 noundef %i.am, i32 noundef %0, ptr noundef %1, i32 noundef %i.ap) #28
  br label %bb.o

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.l
  %i.ar = call i64 @io_read(i32 noundef %0, ptr noundef %1, i64 noundef %i.ab)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.028 = phi i64 [ %i.ar, %bb.n ], [ %i.aq, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 4 uses
  %i.as = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = icmp eq i64 %.028, 4
  br i1 %i.au, label %.thread, label %.thread38

.thread38:                                        ; preds = %bb.p
  %i.av = call i64 @rb_str_append(i64 noundef %i.as, i64 noundef %.028) #28 ; 0 uses
  %.old41 = icmp eq i64 %.old, 4
  br i1 %.old41, label %.thread, label %bb.s

bb.q:                                             ; preds = %bb.o
  store i64 %.028, ptr %i.a, align 8, !tbaa !19
  %i.aw = icmp eq i64 %.028, 4
  %or.cond = or i1 %i.aw, %i.n
  br i1 %or.cond, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.p, %.thread38, %bb.q
  %.old56 = phi i64 [ %.old, %bb.p ], [ 4, %.thread38 ], [ %i.e, %bb.q ]
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.ay = getelementptr i8, ptr %i.ax, i64 81
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !149
  %.not32 = icmp eq i8 %i.az, -1
  br i1 %.not32, label %.thread39, label %bb.r

bb.r:                                             ; preds = %.thread
  call fastcc void @argf_close(i64 noundef %2)
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.bb = getelementptr i8, ptr %i.ba, i64 81
  store i8 1, ptr %i.bb, align 1, !tbaa !149
  br label %.backedge

.backedge:                                        ; preds = %bb.r, %bb.x
  %.old54 = phi i64 [ %.old56, %bb.r ], [ %.old55, %bb.x ]
  %i.bc = call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.thread39, label %bb.l

bb.s:                                             ; preds = %bb.q, %.thread38
  %.old55 = phi i64 [ %i.e, %bb.q ], [ %.old, %.thread38 ]
  br i1 %i.b, label %bb.t, label %.thread39

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !19
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !86 ; 2 uses
  %i.bh = icmp slt i64 %i.bg, %.027
  br i1 %i.bh, label %bb.u, label %.thread39

bb.u:                                             ; preds = %bb.t
  %i.bi = sub i64 %.027, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bi, 4611686018427387904
  %or.cond.i35 = icmp sgt i64 %i.bj, -1
  br i1 %or.cond.i35, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bk = shl nsw i64 %i.bi, 1
  %i.bl = or disjoint i64 %i.bk, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bm = call i64 @rb_int2big(i64 noundef %i.bi) #28
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i36 = phi i64 [ %i.bl, %bb.v ], [ %i.bm, %bb.w ]
  store i64 %.0.i36, ptr %1, align 8, !tbaa !19
  br label %.backedge

.thread39:                                        ; preds = %.backedge, %bb.s, %.thread, %bb.t, %bb.k
  %.029 = load i64, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.029
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @argf_readpartial(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @argf_getpartial(i32 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @argf_read_nonblock(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [8 x i8], ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call i32 @rb_keyword_given_p() #28
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_hash_dup(i64 noundef %i.e) #28
  %i.h = add nsw i32 %0, -1                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i17 = phi i64 [ %i.g, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %.193.i16 = phi i32 [ %i.h, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %3 = icmp ult i32 %.193.i16, 3
  br i1 %3, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.b
  %.193.i7 = phi i32 [ 0, %bb.b ], [ %.193.i16, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.193.i7, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.j = icmp ne i64 %.1.i17, 4
  %i.k = sext i1 %i.j to i32
  %spec.select = add nsw i32 %0, %i.k
  %i.l = tail call fastcc i64 @argf_getpartial(i32 noundef %spec.select, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.1.i17, i32 noundef 1)
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @argf_readlines(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32       ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %i.f = tail call i64 @rb_ary_new() #28          ; 3 uses
  %i.g = tail call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not25 = icmp eq i32 %i.g, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rb_array_len.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !82   ; 6 uses
  %i.m = load i64, ptr @rb_stdin, align 8, !tbaa !19
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 0
  %i.p = and i64 %i.l, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.s = inttoptr i64 %i.l to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 11
  br i1 %i.v, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit
  %.pr.i = load i64, ptr @argf_readlines.rbimpl_id, align 8, !tbaa !19 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %.lr.ph.i
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.49, i64 noundef 9) #28 ; 3 uses
  store i64 %i.w, ptr @argf_readlines.rbimpl_id, align 8, !tbaa !19
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !1

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.w, %.lr.ph.i ]
  %i.x = tail call i32 @rb_keyword_given_p() #28
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = tail call i64 @rb_funcallv_public_kw(i64 noundef %i.l, i64 noundef %.lcssa.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.z) #28
  br label %bb.e

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.b
  %i.ab = tail call i64 @rb_io_readlines(i32 noundef %0, ptr noundef %1, i64 noundef %i.l)
  tail call fastcc void @argf_close(i64 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.ab, %bb.d ], [ %i.aa, %rbimpl_intern_const.exit ]
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.ad = getelementptr i8, ptr %i.ac, i64 81
  store i8 1, ptr %i.ad, align 1, !tbaa !149
  %i.ae = tail call i64 @rb_ary_concat(i64 noundef %i.f, i64 noundef %.0) #28 ; 0 uses
  %i.af = load i64, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %i.ag = and i64 %i.af, 8192
  %.not.i22 = icmp eq i64 %i.ag, 0
  br i1 %.not.i22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i64 %i.af, 15
  %i.ai = and i64 %i.ah, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !90
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i23 = phi i64 [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i64 %.0.i23, %i.e                   ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !80  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !83
  %i.an = getelementptr i8, ptr %i.al, i64 16
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !84
  %i.ao = tail call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !350

._crit_edge:                                      ; preds = %rb_array_len.exit, %bb.a
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.aq = getelementptr i8, ptr %i.ap, i64 80
  store i8 0, ptr %i.aq, align 8, !tbaa !150
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @argf_gets(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.getline_arg, align 8        ; 5 uses
  %4 = alloca %struct.getline_arg, align 8        ; 6 uses
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32       ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %i.f = tail call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not33.i = icmp eq i32 %i.f, 0
  br i1 %.not33.i, label %argf_getline.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = icmp eq i32 %0, 0
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  br i1 %i.g, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !82   ; 9 uses
  %i.q = load i64, ptr @rb_stdin, align 8, !tbaa !19
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.s = icmp eq i64 %i.p, 0
  %i.t = and i64 %i.p, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.us.i

rbimpl_RB_TYPE_P_fastpath.exit.us.i:              ; preds = %bb.b
  %i.w = inttoptr i64 %i.p to ptr
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = and i64 %i.x, 31
  %i.z = icmp eq i64 %i.y, 11
  br i1 %i.z, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.us.i, %.lr.ph.split.us.i
  %i.aa = load i64, ptr @rb_rs, align 8, !tbaa !19 ; 3 uses
  %i.ab = load i64, ptr @rb_default_rs, align 8, !tbaa !19
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %.split23.us.i

.split23.us.i:                                    ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !163
  store i64 -1, ptr %i.l, align 8, !tbaa !164
  %i.ad = load i8, ptr %i.m, align 8
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.m, align 8
  call fastcc void @check_getline_args(ptr noundef nonnull %i.k, i64 noundef %i.p)
  %i.af = load i64, ptr %i.k, align 8, !tbaa !163
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !164
  %i.ah = load i8, ptr %i.m, align 8
  %i.ai = and i8 %i.ah, 1
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.af, i64 noundef %i.ag, i32 noundef %i.aj, i64 noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.aa, i64 noundef -1, i32 noundef 0, i64 noundef %i.p)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split23.us.i
  %.0.us.i = phi i64 [ %i.al, %bb.d ], [ %i.ak, %.split23.us.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.us.i, 4
  br i1 %i.am, label %bb.f, label %.thread29.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.ao = getelementptr i8, ptr %i.an, i64 81
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !149
  %.not26.us.i = icmp eq i8 %i.ap, -1
end_hunk_0
