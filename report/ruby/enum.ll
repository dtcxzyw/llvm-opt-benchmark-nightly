Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/enum?download=true
inline.NumInlined: 672
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@enum_cycle:bb.a
  br i1 %i.ao, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %enum_yield_array.exit.us

bb.s:                                             ; preds = %bb.q
  br i1 %.not.i.i27.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr i8, ptr %i.ag, i64 16
  br label %RARRAY_AREF.exit.i.us

bb.u:                                             ; preds = %bb.s
  %i.ar = getelementptr i8, ptr %i.ag, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  br label %RARRAY_AREF.exit.i.us

RARRAY_AREF.exit.i.us:                            ; preds = %bb.u, %bb.t
  %.0.i.i.i.us = phi ptr [ %i.aq, %bb.t ], [ %i.as, %bb.u ]
  %i.at = load i64, ptr %.0.i.i.i.us, align 8, !tbaa !13
  %i.au = tail call i64 @rb_yield(i64 noundef %i.at) #13 ; 0 uses
  br label %enum_yield_array.exit.us

bb.v:                                             ; preds = %rb_array_len.exit.i.us
  %i.av = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.af) #13 ; 0 uses
  br label %enum_yield_array.exit.us

enum_yield_array.exit.us:                         ; preds = %bb.v, %RARRAY_AREF.exit.i.us, %bb.r
  %i.aw = add nuw nsw i64 %.02131.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %.0.i26.fr
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.m, !llvm.loop !121

..loopexit_crit_edge.us:                          ; preds = %enum_yield_array.exit.us
  br label %.preheader.split.us, !llvm.loop !122

.loopexit30:                                      ; preds = %bb.l, %.preheader, %rb_array_len.exit, %rb_num2long_inline.exit, %bb.c
  %.0 = phi i64 [ 4, %rb_num2long_inline.exit ], [ 4, %rb_array_len.exit ], [ %i.d, %bb.c ], [ 4, %.preheader ], [ 4, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_chunk(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #13
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #13
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @enum_size) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.f = tail call i64 @rb_obj_alloc(i64 noundef %i.e) #13 ; 5 uses
  %i.g = load i64, ptr @id_chunk_enumerable, align 8, !tbaa !13
  %i.h = tail call i64 @rb_ivar_set(i64 noundef %i.f, i64 noundef %i.g, i64 noundef %0) #13 ; 0 uses
  %i.i = load i64, ptr @id_chunk_categorize, align 8, !tbaa !13
  %i.j = tail call i64 @rb_block_proc() #13
  %i.k = tail call i64 @rb_ivar_set(i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.j) #13 ; 0 uses
  %i.l = tail call i64 @rb_block_call(i64 noundef %i.f, i64 noundef 3185, i32 noundef 0, ptr noundef null, ptr noundef nonnull @chunk_i, i64 noundef %i.f) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_slice_before(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq i32 %0, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 0) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.c = tail call i64 @rb_obj_alloc(i64 noundef %i.b) #13 ; 2 uses
  %i.d = load i64, ptr @id_slicebefore_sep_pred, align 8, !tbaa !13
  %i.e = tail call i64 @rb_block_proc() #13
  %i.f = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.e) #13 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 1) #14
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.h = load i64, ptr %1, align 8, !tbaa !13
  %i.i = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.j = tail call i64 @rb_obj_alloc(i64 noundef %i.i) #13 ; 2 uses
  %i.k = load i64, ptr @id_slicebefore_sep_pat, align 8, !tbaa !13
  %i.l = tail call i64 @rb_ivar_set(i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.h) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit, %bb.d
  %.0 = phi i64 [ %i.c, %bb.d ], [ %i.j, %rb_scan_args_set.exit ] ; 4 uses
  %i.m = load i64, ptr @id_slicebefore_enumerable, align 8, !tbaa !13
  %i.n = tail call i64 @rb_ivar_set(i64 noundef %.0, i64 noundef %i.m, i64 noundef %2) #13 ; 0 uses
  %i.o = tail call i64 @rb_block_call(i64 noundef %.0, i64 noundef 3185, i32 noundef 0, ptr noundef null, ptr noundef nonnull @slicebefore_i, i64 noundef %.0) #13 ; 0 uses
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_slice_after(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.95) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_block_proc() #13
  br label %rb_scan_args_set.exit

bb.e:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.f, label %.preheader.split

.preheader.split:                                 ; preds = %bb.e
  %i.f = load i64, ptr %1, align 8, !tbaa !13
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.split, %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 1) #14
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader.split, %bb.d
  %i.h = phi i64 [ 4, %bb.d ], [ %i.f, %.preheader.split ]
  %.0 = phi i64 [ %i.d, %bb.d ], [ 4, %.preheader.split ]
  %i.i = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.j = tail call i64 @rb_obj_alloc(i64 noundef %i.i) #13 ; 6 uses
  %i.k = load i64, ptr @id_sliceafter_enum, align 8, !tbaa !13
  %i.l = tail call i64 @rb_ivar_set(i64 noundef %i.j, i64 noundef %i.k, i64 noundef %2) #13 ; 0 uses
  %i.m = load i64, ptr @id_sliceafter_pat, align 8, !tbaa !13
  %i.n = tail call i64 @rb_ivar_set(i64 noundef %i.j, i64 noundef %i.m, i64 noundef %i.h) #13 ; 0 uses
  %i.o = load i64, ptr @id_sliceafter_pred, align 8, !tbaa !13
  %i.p = tail call i64 @rb_ivar_set(i64 noundef %i.j, i64 noundef %i.o, i64 noundef %.0) #13 ; 0 uses
  %i.q = tail call i64 @rb_block_call(i64 noundef %i.j, i64 noundef 3185, i32 noundef 0, ptr noundef null, ptr noundef nonnull @sliceafter_i, i64 noundef %i.j) #13 ; 0 uses
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_slice_when(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_block_proc() #13
  %i.b = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.c = tail call i64 @rb_obj_alloc(i64 noundef %i.b) #13 ; 6 uses
  %i.d = load i64, ptr @id_slicewhen_enum, align 8, !tbaa !13
  %i.e = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.d, i64 noundef %0) #13 ; 0 uses
  %i.f = load i64, ptr @id_slicewhen_pred, align 8, !tbaa !13
  %i.g = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.a) #13 ; 0 uses
  %i.h = load i64, ptr @id_slicewhen_inverted, align 8, !tbaa !13
  %i.i = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.h, i64 noundef 0) #13 ; 0 uses
  %i.j = tail call i64 @rb_block_call(i64 noundef %i.c, i64 noundef 3185, i32 noundef 0, ptr noundef null, ptr noundef nonnull @slicewhen_i, i64 noundef %i.c) #13 ; 0 uses
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_chunk_while(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_block_proc() #13
  %i.b = load i64, ptr @rb_cEnumerator, align 8, !tbaa !13
  %i.c = tail call i64 @rb_obj_alloc(i64 noundef %i.b) #13 ; 6 uses
  %i.d = load i64, ptr @id_slicewhen_enum, align 8, !tbaa !13
  %i.e = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.d, i64 noundef %0) #13 ; 0 uses
  %i.f = load i64, ptr @id_slicewhen_pred, align 8, !tbaa !13
  %i.g = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.a) #13 ; 0 uses
  %i.h = load i64, ptr @id_slicewhen_inverted, align 8, !tbaa !13
  %i.i = tail call i64 @rb_ivar_set(i64 noundef %i.c, i64 noundef %i.h, i64 noundef 20) #13 ; 0 uses
  %i.j = tail call i64 @rb_block_call(i64 noundef %i.c, i64 noundef 3185, i32 noundef 0, ptr noundef null, ptr noundef nonnull @slicewhen_i, i64 noundef %i.c) #13 ; 0 uses
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_sum(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.enum_sum_memo, align 8      ; 17 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #14
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.d = icmp eq i32 %0, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.e = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit, %bb.c
  %i.f = phi i64 [ %i.e, %bb.c ], [ 1, %rb_check_arity.exit ] ; 10 uses
  store i64 %i.f, ptr %3, align 8, !tbaa !59
  %i.g = tail call i32 @rb_block_given_p() #13    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.g, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 36, ptr %i.j, align 8, !tbaa !62
  %i.k = and i64 %i.f, 3
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %i.f, 0
  %i.n = and i64 %i.f, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %RB_FLOAT_TYPE_P.exit.thread22, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit.thread22:                    ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !63
  br label %bb.i

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.e
  %i.r = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 4                      ; 2 uses
  %i.v = zext i1 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !63
  br i1 %i.u, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 3 uses
  store i32 1, ptr %i.x, align 4, !tbaa !63
  %.not.i.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg.i.i = ashr i64 %i.f, 63
  %i.y = add nsw i64 %.neg.i.i, 2
  %i.z = and i64 %i.f, -4
  %i.aa = or i64 %i.y, %i.z                       ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.aa, i64 range(i64 1, 0) %i.aa, i64 61)
  %i.ac = bitcast i64 %i.ab to double
  br label %rb_float_value_inline.exit

bb.h:                                             ; preds = %RB_FLOAT_TYPE_P.exit
  %i.ad = getelementptr i8, ptr %i.r, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !65
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  %i.af = phi ptr [ %i.w, %bb.h ], [ %i.x, %bb.g ], [ %i.x, %bb.f ]
  %.0.i17 = phi double [ %i.ae, %bb.h ], [ %i.ac, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %.0.i17, ptr %i.ag, align 8, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !67
  br label %bb.j

bb.i:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread22, %RB_FLOAT_TYPE_P.exit
  %i.ai = phi ptr [ %i.q, %RB_FLOAT_TYPE_P.exit.thread22 ], [ %i.w, %RB_FLOAT_TYPE_P.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_float_value_inline.exit
  %i.ak = phi ptr [ %i.ai, %bb.i ], [ %i.af, %rb_float_value_inline.exit ] ; 2 uses
  %i.al = call i32 @rb_range_values(i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #13
  %i.am = and i32 %i.al, -5
  %.not30 = icmp eq i32 %i.am, 0
  br i1 %.not30, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp ne i32 %i.g, 0
  %i.ao = load i32, ptr %i.ak, align 4
  %i.ap = icmp ne i32 %i.ao, 0
  %or.cond = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !13  ; 7 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = and i64 %i.aq, 6
  %i.au = icmp ne i64 %i.at, 0
  %i.av = or i1 %i.as, %i.au
  br i1 %i.av, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread, label %rbimpl_RB_TYPE_P_fastpath.exit15

rbimpl_RB_TYPE_P_fastpath.exit15:                 ; preds = %bb.m
  %i.aw = inttoptr i64 %i.aq to ptr
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !23
  %i.ay = and i64 %i.ax, 31
  %i.az = icmp eq i64 %i.ay, 10
  br i1 %i.az, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit15, %bb.l
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !13  ; 8 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp eq i64 %i.ba, 0
  %i.bd = and i64 %i.ba, 6
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread, label %rbimpl_RB_TYPE_P_fastpath.exit13

rbimpl_RB_TYPE_P_fastpath.exit13:                 ; preds = %bb.o
  %i.bg = inttoptr i64 %i.ba to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !23
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 10
  br i1 %i.bj, label %.thread26, label %rbimpl_RB_TYPE_P_fastpath.exit15.thread

bb.p:                                             ; preds = %bb.n
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.bk, 0
  %i.bl = add i64 %i.ba, -2
  %spec.select = select i1 %.not.i, i64 %i.ba, i64 %i.bl
  br label %bb.r

.thread26:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit13
  %i.bm = load i32, ptr %i.c, align 4, !tbaa !11
  %.not.i27 = icmp eq i32 %i.bm, 0
  br i1 %.not.i27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread26
  %i.bn = call i64 @rb_big_minus(i64 noundef %i.ba, i64 noundef 3) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %.thread26, %bb.q
  %.016.i = phi i64 [ %i.ba, %.thread26 ], [ %i.bn, %bb.q ], [ %spec.select, %bb.p ] ; 3 uses
  %i.bo = call i64 @rb_int_ge(i64 noundef %.016.i, i64 noundef %i.aq) #13
  %.not17.i = icmp eq i64 %i.bo, 0
  br i1 %.not17.i, label %int_range_sum.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = call i64 @rb_int_minus(i64 noundef %.016.i, i64 noundef %i.aq) #13
  %i.bq = call i64 @rb_int_plus(i64 noundef %i.bp, i64 noundef 3) #13
  %i.br = call i64 @rb_int_plus(i64 noundef %.016.i, i64 noundef %i.aq) #13
  %i.bs = call i64 @rb_int_mul(i64 noundef %i.bq, i64 noundef %i.br) #13
  %i.bt = call i64 @rb_int_idiv(i64 noundef %i.bs, i64 noundef 5) #13
  %i.bu = call i64 @rb_int_plus(i64 noundef %i.f, i64 noundef %i.bt) #13
  br label %int_range_sum.exit

rbimpl_RB_TYPE_P_fastpath.exit15.thread:          ; preds = %bb.o, %bb.m, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit13, %rbimpl_RB_TYPE_P_fastpath.exit15, %bb.k
  %i.bv = icmp eq i64 %2, 0
  %i.bw = and i64 %2, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = or i1 %i.bv, %i.bx
  br i1 %i.by, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit15.thread
  %i.bz = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !23
  %i.cb = and i64 %i.ca, 31
  %i.cc = icmp eq i64 %i.cb, 8
  br i1 %i.cc, label %rb_class_of.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_class_of.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cd = getelementptr i8, ptr %i.bz, i64 8
  %.0.i19 = load i64, ptr %i.cd, align 8, !tbaa !13
  %i.ce = call i32 @rb_method_basic_definition_p(i64 noundef %.0.i19, i64 noundef 3089) #13
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.t

bb.t:                                             ; preds = %rb_class_of.exit
  %i.cf = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef nonnull @hash_sum_i, i64 noundef %i.cf) #13
  br label %bb.u

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit15.thread, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cg = ptrtoint ptr %3 to i64
  %i.ch = call i64 @rb_block_call(i64 noundef %2, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull @enum_sum_i, i64 noundef %i.cg) #13 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.t
  %i.ci = load i32, ptr %i.ak, align 4, !tbaa !63
  %.not10 = icmp eq i32 %i.ci, 0
  br i1 %.not10, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = load <2 x double>, ptr %i.cj, align 8, !tbaa !123
  %5 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %4) ; 2 uses
  %i.ck = bitcast double %5 to i64                ; 5 uses
  %cond.i = icmp eq i64 %i.ck, 3458764513820540928
  br i1 %cond.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = lshr i64 %i.ck, 60
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = and i32 %i.cm, 7
  %i.co = add nsw i32 %i.cn, -5
  %i.cp = icmp ult i32 %i.co, -2
  br i1 %i.cp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ck, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ck, i64 3)
  %i.cr = and i64 %i.cq, -4
  %i.cs = or disjoint i64 %i.cr, 2
  br label %int_range_sum.exit

bb.y:                                             ; preds = %bb.w
  %i.ct = icmp eq i64 %i.ck, 0
  br i1 %i.ct, label %int_range_sum.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %i.cu = call i64 @rb_float_new_in_heap(double noundef %5) #13
  br label %int_range_sum.exit

bb.aa:                                            ; preds = %bb.u
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !61  ; 2 uses
  %.not11 = icmp eq i64 %i.cv, 0
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !59 ; 2 uses
  br i1 %.not11, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = shl i64 %i.cv, 1
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = call i64 @rb_fix_plus(i64 noundef %i.cx, i64 noundef %.pre.pre) #13 ; 2 uses
  store i64 %i.cy, ptr %3, align 8, !tbaa !59
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre = phi i64 [ %i.cy, %bb.ab ], [ %.pre.pre, %bb.aa ] ; 2 uses
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.da = icmp eq i64 %i.cz, 36
  br i1 %i.da, label %int_range_sum.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = call i64 @rb_rational_plus(i64 noundef %i.cz, i64 noundef %.pre) #13
  br label %int_range_sum.exit

int_range_sum.exit:                               ; preds = %bb.ac, %bb.ad, %bb.z, %bb.y, %bb.x, %bb.s, %bb.r
  %.0 = phi i64 [ %i.f, %bb.r ], [ -9223372036854775806, %bb.y ], [ %i.bu, %bb.s ], [ %i.cs, %bb.x ], [ %i.cu, %bb.z ], [ %i.db, %bb.ad ], [ %.pre, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_uniq(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @uniq_func, ptr @uniq_iter
  %i.c = tail call i64 @rb_hash_new() #13
  %i.d = tail call i64 @rb_obj_hide(i64 noundef %i.c) #13 ; 3 uses
  %i.e = tail call i64 @rb_block_call(i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.b, i64 noundef %i.d) #13 ; 0 uses
  %i.f = tail call i64 @rb_hash_values(i64 noundef %i.d) #13
  %i.g = tail call i64 @rb_hash_clear(i64 noundef %i.d) #13 ; 0 uses
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_compact(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_new() #13          ; 2 uses
  %i.b = tail call i64 @rb_block_call(i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull @compact_i, i64 noundef %i.a) #13 ; 0 uses
  ret i64 %i.a
}

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare i32 @rb_str_cmp(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_float_cmp(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_cmpint(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_yield_values(i32 noundef, ...) local_unnamed_addr #1

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield_force_blockarg(i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield(i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield_values2(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i64 @rb_block_call_kw(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @collect_all(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.d = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %.0.i) #13 ; 0 uses
  ret i64 4
}

declare i32 @rb_keyword_given_p() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_to_h_ii(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
  %i.b = tail call i64 @rb_hash_set_pair(i64 noundef %1, i64 noundef %i.a) #13
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_to_h_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.d = tail call i64 @rb_hash_set_pair(i64 noundef %1, i64 noundef %.0.i) #13
  ret i64 %i.d
}

declare i64 @rb_hash_set_pair(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_new() local_unnamed_addr #1

declare i64 @rb_ary_sort_bang(i64 noundef) local_unnamed_addr #1

declare i64 @rb_enumeratorize_with_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_frame_this_func() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_size(i64 noundef %0, i64 %1, i64 %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef 3041, i32 noundef 0, ptr noundef null, i64 noundef 4) #13
  ret i64 %i.a
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @sort_by_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  switch i32 %2, label %rb_enum_values_pack.exit [
    i32 0, label %.thread
    i32 1, label %bb.c
  ]

rb_enum_values_pack.exit:                         ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13 ; 3 uses
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_enum_values_pack.exit
  %i.g = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.e) #13
  br label %enum_yield.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.i = tail call i64 @rb_yield(i64 noundef %i.h) #13
  br label %enum_yield.exit

.thread:                                          ; preds = %rb_enum_values_pack.exit, %bb.a
  %.0.i3336 = phi i64 [ 4, %bb.a ], [ %i.e, %rb_enum_values_pack.exit ]
  %i.j = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.b, %bb.c, %.thread
  %.0.i34 = phi i64 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %.0.i3336, %.thread ] ; 4 uses
  %.0.i26 = phi i64 [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.j, %.thread ] ; 14 uses
  %i.k = inttoptr i64 %i.c to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 8
end_hunk_0
begin_hunk_1_@sort_by_cmp:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.81) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !13     ; 10 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !13     ; 12 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = trunc i64 %i.e to i1
  %i.h = trunc i64 %i.f to i1
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.j = and i16 %i.i, 1
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @llvm.scmp.i32.i64(i64 %i.e, i64 %i.f)
  br label %bb.l

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.m = icmp eq i64 %i.e, 0
  %i.n = and i64 %i.e, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit14

rbimpl_RB_TYPE_P_fastpath.exit14:                 ; preds = %bb.f
  %i.q = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = and i64 %i.r, 31
  switch i64 %i.s, label %RB_FLOAT_TYPE_P.exit.thread28 [
    i64 5, label %rb_class_of.exit
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread
  ]

rb_class_of.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %.0.i15 = load i64, ptr %i.t, align 8, !tbaa !13 ; 2 uses
  %i.u = load i64, ptr @rb_cString, align 8, !tbaa !13
  %i.v = icmp eq i64 %.0.i15, %i.u
  br i1 %i.v, label %bb.g, label %RB_FLOAT_TYPE_P.exit.thread28

bb.g:                                             ; preds = %rb_class_of.exit
  %i.w = icmp eq i64 %i.f, 0
  %i.x = and i64 %i.f, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %RB_FLOAT_TYPE_P.exit.thread28, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.g
  %i.aa = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 5
  br i1 %i.ad, label %rb_class_of.exit19, label %RB_FLOAT_TYPE_P.exit.thread28

rb_class_of.exit19:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.0.i17 = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.af = icmp eq i64 %.0.i17, %.0.i15
  br i1 %i.af, label %bb.h, label %RB_FLOAT_TYPE_P.exit.thread28

bb.h:                                             ; preds = %rb_class_of.exit19
  %i.ag = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.ah = and i16 %i.ag, 4
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %RB_FLOAT_TYPE_P.exit.thread28, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @rb_str_cmp(i64 noundef %i.e, i64 noundef %i.f) #13
  br label %bb.l

.thread:                                          ; preds = %bb.f
  %i.ak = and i64 %i.e, 3
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread28

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14, %.thread
  %i.am = and i64 %i.f, 3
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %RB_FLOAT_TYPE_P.exit22.thread, label %bb.j

bb.j:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread
  %i.ao = icmp eq i64 %i.f, 0
  %i.ap = and i64 %i.f, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %RB_FLOAT_TYPE_P.exit.thread28, label %RB_FLOAT_TYPE_P.exit22

RB_FLOAT_TYPE_P.exit22:                           ; preds = %bb.j
  %i.as = inttoptr i64 %i.f to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %RB_FLOAT_TYPE_P.exit22.thread, label %RB_FLOAT_TYPE_P.exit.thread28

RB_FLOAT_TYPE_P.exit22.thread:                    ; preds = %RB_FLOAT_TYPE_P.exit.thread, %RB_FLOAT_TYPE_P.exit22
  %i.aw = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.ax = and i16 %i.aw, 2
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %RB_FLOAT_TYPE_P.exit.thread28, !prof !28

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit22.thread
  %i.az = tail call i32 @rb_float_cmp(i64 noundef %i.e, i64 noundef %i.f) #13
  br label %bb.l

RB_FLOAT_TYPE_P.exit.thread28:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit14, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %rb_class_of.exit19, %bb.h, %bb.g, %bb.j, %.thread, %RB_FLOAT_TYPE_P.exit22.thread, %RB_FLOAT_TYPE_P.exit22
  %i.ba = call i64 @rb_funcallv(i64 noundef %i.e, i64 noundef 135, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bc = call i32 @rb_cmpint(i64 noundef %i.ba, i64 noundef %i.e, i64 noundef %i.bb) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %RB_FLOAT_TYPE_P.exit.thread28, %bb.k, %bb.e
  %i.bd = phi i32 [ %i.l, %bb.e ], [ %i.aj, %bb.i ], [ %i.az, %bb.k ], [ %i.bc, %RB_FLOAT_TYPE_P.exit.thread28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.bd
}

declare i64 @rb_check_funcall_default(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_new(i32 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 17
  br i1 %i.e, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph169

tailrecurse:                                      ; preds = %bb.ab
  %i.g = icmp samesign ult i64 %i.eb, 272
  br i1 %i.g, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr92.lcssa = phi ptr [ %1, %bb.a ], [ %.us-phi119, %tailrecurse ] ; 2 uses
  %.lcssa102 = phi i64 [ %i.c, %bb.a ], [ %i.eb, %tailrecurse ]
  %i.h = icmp sgt i64 %.lcssa102, 16
  %.037.i = getelementptr i8, ptr %0, i64 16      ; 2 uses
  %i.i = icmp ult ptr %.037.i, %.tr92.lcssa
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %.lr.ph42.i, label %rb_uniform_insertionsort_2.exit

.lr.ph42.i:                                       ; preds = %tailrecurse._crit_edge, %.loopexit.i
  %.039.i = phi ptr [ %.0.i, %.loopexit.i ], [ %.037.i, %tailrecurse._crit_edge ] ; 10 uses
  %i.j = load <2 x i64>, ptr %.039.i, align 8, !tbaa !13
  %.sroa.0.0.copyload.i = load i64, ptr %.039.i, align 8, !tbaa !13 ; 8 uses
  %i.k = load i64, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.l = trunc i64 %.sroa.0.0.copyload.i to i1
  br i1 %i.l, label %bb.b, label %.critedge.i.i

bb.b:                                             ; preds = %.lr.ph42.i
  %i.m = trunc i64 %i.k to i1
  br i1 %i.m, label %.split.i, label %rb_uniform_is_less.exit.i

.split.i:                                         ; preds = %bb.b
  %i.n = icmp slt i64 %.sroa.0.0.copyload.i, %i.k
  br i1 %i.n, label %.preheader.i, label %.preheader29.split.us.i.preheader

.preheader29.split.us.i.preheader:                ; preds = %rb_uniform_is_less.exit.i, %.split.i
  br label %.preheader29.split.us.i

.critedge.i.i:                                    ; preds = %.lr.ph42.i
  %i.o = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.k) #13
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.preheader.i, label %.preheader29.split.i

.preheader29.split.us.i:                          ; preds = %.preheader29.split.us.i.preheader, %bb.c
  %.1.us.i = phi ptr [ %i.q, %bb.c ], [ %.039.i, %.preheader29.split.us.i.preheader ] ; 4 uses
  %i.q = getelementptr i8, ptr %.1.us.i, i64 -16  ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %.split28.us.i, label %rb_uniform_is_less.exit27.us.i

rb_uniform_is_less.exit27.us.i:                   ; preds = %.preheader29.split.us.i
  %i.t = tail call i32 @rb_float_cmp(i64 noundef %i.r, i64 noundef %.sroa.0.0.copyload.i) #13
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %.loopexit.i

.split28.us.i:                                    ; preds = %.preheader29.split.us.i
  %i.v = icmp slt i64 %.sroa.0.0.copyload.i, %i.r
  br i1 %i.v, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.split28.us.i, %rb_uniform_is_less.exit27.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !68
  br label %.preheader29.split.us.i, !llvm.loop !124

.preheader29.split.i:                             ; preds = %.critedge.i.i
  %i.w = getelementptr i8, ptr %.039.i, i64 -16   ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.x) #13
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %.critedge.i25.i, label %.loopexit.i

rb_uniform_is_less.exit.i:                        ; preds = %bb.b
  %i.aa = tail call i32 @rb_float_cmp(i64 noundef %i.k, i64 noundef %.sroa.0.0.copyload.i) #13
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.preheader.i, label %.preheader29.split.us.i.preheader

.preheader.i:                                     ; preds = %rb_uniform_is_less.exit.i, %.critedge.i.i, %.split.i
  %i.ac = icmp ult ptr %0, %.039.i
  br i1 %i.ac, label %.lr.ph35.i, label %.loopexit.i

.lr.ph35.i:                                       ; preds = %.preheader.i, %.lr.ph35.i
  %.02234.i = phi ptr [ %i.ad, %.lr.ph35.i ], [ %.039.i, %.preheader.i ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.02234.i, i64 -16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02234.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !68
  %i.ae = icmp ult ptr %0, %i.ad
  br i1 %i.ae, label %.lr.ph35.i, label %.loopexit.i, !llvm.loop !125

.critedge.i25.i:                                  ; preds = %.preheader29.split.i, %.critedge.i25.i
  %i.af = phi ptr [ %i.ag, %.critedge.i25.i ], [ %i.w, %.preheader29.split.i ] ; 4 uses
  %.133.i = phi ptr [ %i.af, %.critedge.i25.i ], [ %.039.i, %.preheader29.split.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.133.i, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !68
  %i.ag = getelementptr i8, ptr %i.af, i64 -16    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.i, i64 noundef %i.ah) #13
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.critedge.i25.i, label %.loopexit.i, !llvm.loop !124

.loopexit.i:                                      ; preds = %.critedge.i25.i, %.split28.us.i, %rb_uniform_is_less.exit27.us.i, %.lr.ph35.i, %.preheader.i, %.preheader29.split.i
  %.2.i = phi ptr [ %i.ad, %.lr.ph35.i ], [ %.039.i, %.preheader.i ], [ %.039.i, %.preheader29.split.i ], [ %.1.us.i, %.split28.us.i ], [ %.1.us.i, %rb_uniform_is_less.exit27.us.i ], [ %i.af, %.critedge.i25.i ]
  store <2 x i64> %i.j, ptr %.2.i, align 8, !tbaa !13
  %.0.i = getelementptr i8, ptr %.039.i, i64 16   ; 2 uses
  %i.ak = icmp ult ptr %.0.i, %.tr92.lcssa
  br i1 %i.ak, label %.lr.ph42.i, label %rb_uniform_insertionsort_2.exit, !llvm.loop !126

.lr.ph:                                           ; preds = %tailrecurse
  %i.al = add i64 %.tr93122167, -1                ; 2 uses
  %i.am = lshr exact i64 %i.eb, 4                 ; 2 uses
  %i.an = icmp eq i64 %i.al, 0
  br i1 %i.an, label %.lr.ph._crit_edge, label %.lr.ph169

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa161 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.am, %.lr.ph ] ; 2 uses
  %i.ao = lshr i64 %.lcssa161, 1
  %.pre.i = add nsw i64 %.lcssa161, -1            ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph._crit_edge, %.lr.ph.i
  %.01721.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.ao, %.lr.ph._crit_edge ]
  %i.ap = add nsw i64 %.01721.i, -1               ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef %0, i64 noundef %i.ap, i64 noundef %.pre.i)
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %.lr.ph25.i, label %.lr.ph.i, !llvm.loop !127

.lr.ph25.i:                                       ; preds = %.lr.ph.i, %.lr.ph25.i
  %.023.i = phi i64 [ %i.ar, %.lr.ph25.i ], [ %.pre.i, %.lr.ph.i ] ; 2 uses
  %.sroa.0185.0.copyload = load <2 x i64>, ptr %0, align 8
  %i.aq = getelementptr [16 x i8], ptr %0, i64 %.023.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !68
  store <2 x i64> %.sroa.0185.0.copyload, ptr %i.aq, align 8
  %i.ar = add i64 %.023.i, -1                     ; 3 uses
  tail call fastcc void @rb_uniform_heap_down_2(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.ar)
  %.not19.i = icmp eq i64 %i.ar, 0
  br i1 %.not19.i, label %rb_uniform_insertionsort_2.exit, label %.lr.ph25.i, !llvm.loop !128

.lr.ph169:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.tr92121168 = phi ptr [ %.us-phi119, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.tr93122167 = phi i64 [ %i.al, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i64 [ %i.ea, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.at = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.au = load i64, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr [16 x i8], ptr %0, i64 %i.av ; 9 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 4 uses
  %i.ay = trunc i64 %i.au to i1
  br i1 %i.ay, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph169
  %i.az = trunc i64 %i.ax to i1
  br i1 %i.az, label %.split, label %rb_uniform_is_less.exit

.split:                                           ; preds = %bb.d
  %i.ba = icmp slt i64 %i.au, %i.ax
  br i1 %i.ba, label %bb.e, label %bb.k

.critedge.i:                                      ; preds = %.lr.ph169
  %i.bb = tail call i32 @rb_float_cmp(i64 noundef %i.au, i64 noundef %i.ax) #13
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %bb.k

rb_uniform_is_less.exit:                          ; preds = %bb.d
  %i.bd = tail call i32 @rb_float_cmp(i64 noundef %i.ax, i64 noundef %i.au) #13
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.e, label %bb.k

bb.e:                                             ; preds = %.critedge.i, %.split, %rb_uniform_is_less.exit
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !36 ; 4 uses
  %i.bg = getelementptr i8, ptr %.tr92121168, i64 -16 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !36 ; 4 uses
  %i.bi = trunc i64 %i.bf to i1
  br i1 %i.bi, label %bb.f, label %.critedge.i70

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc i64 %i.bh to i1
  br i1 %i.bj, label %.split88, label %rb_uniform_is_less.exit72

.split88:                                         ; preds = %bb.f
  %i.bk = icmp slt i64 %i.bf, %i.bh
  br i1 %i.bk, label %bb.q, label %bb.g

.critedge.i70:                                    ; preds = %bb.e
  %i.bl = tail call i32 @rb_float_cmp(i64 noundef %i.bf, i64 noundef %i.bh) #13
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %bb.g

rb_uniform_is_less.exit72:                        ; preds = %bb.f
  %i.bn = tail call i32 @rb_float_cmp(i64 noundef %i.bh, i64 noundef %i.bf) #13
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.q, label %bb.g

bb.g:                                             ; preds = %.critedge.i70, %.split88, %rb_uniform_is_less.exit72
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !36 ; 4 uses
  %i.bq = load i64, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.br = trunc i64 %i.bp to i1
  br i1 %i.br, label %bb.h, label %.critedge.i73

bb.h:                                             ; preds = %bb.g
  %i.bs = trunc i64 %i.bq to i1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = icmp slt i64 %i.bp, %i.bq
  br label %rb_uniform_is_less.exit75

bb.j:                                             ; preds = %bb.h
  %i.bu = tail call i32 @rb_float_cmp(i64 noundef %i.bq, i64 noundef %i.bp) #13
  %i.bv = icmp sgt i32 %i.bu, 0
  br label %rb_uniform_is_less.exit75

.critedge.i73:                                    ; preds = %bb.g
  %i.bw = tail call i32 @rb_float_cmp(i64 noundef %i.bp, i64 noundef %i.bq) #13
  %i.bx = icmp slt i32 %i.bw, 0
  br label %rb_uniform_is_less.exit75

rb_uniform_is_less.exit75:                        ; preds = %bb.i, %bb.j, %.critedge.i73
  %.0.i74 = phi i1 [ %i.bt, %bb.i ], [ %i.bv, %bb.j ], [ %i.bx, %.critedge.i73 ]
  %. = select i1 %.0.i74, ptr %0, ptr %i.bg
  br label %bb.q

bb.k:                                             ; preds = %.critedge.i, %.split, %rb_uniform_is_less.exit
  %i.by = getelementptr i8, ptr %.tr92121168, i64 -16 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !36 ; 4 uses
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !36 ; 4 uses
  %i.cb = trunc i64 %i.bz to i1
  br i1 %i.cb, label %bb.l, label %.critedge.i76

bb.l:                                             ; preds = %bb.k
  %i.cc = trunc i64 %i.ca to i1
  br i1 %i.cc, label %.split89, label %rb_uniform_is_less.exit78

.split89:                                         ; preds = %bb.l
  %i.cd = icmp slt i64 %i.bz, %i.ca
  br i1 %i.cd, label %bb.q, label %bb.m

.critedge.i76:                                    ; preds = %bb.k
  %i.ce = tail call i32 @rb_float_cmp(i64 noundef %i.bz, i64 noundef %i.ca) #13
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.m

rb_uniform_is_less.exit78:                        ; preds = %bb.l
  %i.cg = tail call i32 @rb_float_cmp(i64 noundef %i.ca, i64 noundef %i.bz) #13
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.critedge.i76, %.split89, %rb_uniform_is_less.exit78
  %i.ci = load i64, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.cj = load i64, ptr %i.by, align 8, !tbaa !36 ; 4 uses
  %i.ck = trunc i64 %i.ci to i1
  br i1 %i.ck, label %bb.n, label %.critedge.i79

bb.n:                                             ; preds = %bb.m
  %i.cl = trunc i64 %i.cj to i1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = icmp slt i64 %i.ci, %i.cj
  br label %rb_uniform_is_less.exit81

bb.p:                                             ; preds = %bb.n
  %i.cn = tail call i32 @rb_float_cmp(i64 noundef %i.cj, i64 noundef %i.ci) #13
  %i.co = icmp sgt i32 %i.cn, 0
  br label %rb_uniform_is_less.exit81

.critedge.i79:                                    ; preds = %bb.m
  %i.cp = tail call i32 @rb_float_cmp(i64 noundef %i.ci, i64 noundef %i.cj) #13
  %i.cq = icmp slt i32 %i.cp, 0
  br label %rb_uniform_is_less.exit81

rb_uniform_is_less.exit81:                        ; preds = %bb.o, %bb.p, %.critedge.i79
  %.0.i80 = phi i1 [ %i.cm, %bb.o ], [ %i.co, %bb.p ], [ %i.cq, %.critedge.i79 ]
  %.67 = select i1 %.0.i80, ptr %0, ptr %i.by
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i76, %.split89, %.critedge.i70, %.split88, %rb_uniform_is_less.exit81, %rb_uniform_is_less.exit78, %rb_uniform_is_less.exit75, %rb_uniform_is_less.exit72
  %.in = phi ptr [ %i.aw, %rb_uniform_is_less.exit72 ], [ %i.aw, %rb_uniform_is_less.exit78 ], [ %., %rb_uniform_is_less.exit75 ], [ %.67, %rb_uniform_is_less.exit81 ], [ %i.aw, %.split88 ], [ %i.aw, %.critedge.i70 ], [ %i.aw, %.split89 ], [ %i.aw, %.critedge.i76 ]
  %i.cr = load i64, ptr %.in, align 8, !tbaa !36
  %.fr124 = freeze i64 %i.cr                      ; 8 uses
  %i.cs = getelementptr i8, ptr %.tr92121168, i64 -16 ; 2 uses
  %i.ct = trunc i64 %.fr124 to i1
  br i1 %i.ct, label %.split107.us.us, label %.split107

.split107.us.us:                                  ; preds = %bb.q, %bb.v
  %.061.us = phi ptr [ %.263.us, %bb.v ], [ %0, %bb.q ]
  %.0.us = phi ptr [ %.2.us, %bb.v ], [ %i.cs, %bb.q ]
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.split107.us.us
  %.162.us.us = phi ptr [ %.061.us, %.split107.us.us ], [ %i.cz, %bb.s ] ; 7 uses
  %i.cu = load i64, ptr %.162.us.us, align 8, !tbaa !36 ; 3 uses
  %i.cv = trunc i64 %i.cu to i1
  br i1 %i.cv, label %.split90.us.us, label %.critedge.i82.us.us

.critedge.i82.us.us:                              ; preds = %bb.r
  %i.cw = tail call i32 @rb_float_cmp(i64 noundef %i.cu, i64 noundef %.fr124) #13
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.s, label %.preheader.split108.us.us.preheader

.split90.us.us:                                   ; preds = %bb.r
  %i.cy = icmp slt i64 %i.cu, %.fr124
  br i1 %i.cy, label %bb.s, label %.preheader.split108.us.us.preheader

.preheader.split108.us.us.preheader:              ; preds = %.critedge.i82.us.us, %.split90.us.us
  br label %.preheader.split108.us.us

bb.s:                                             ; preds = %.split90.us.us, %.critedge.i82.us.us
  %i.cz = getelementptr i8, ptr %.162.us.us, i64 16
  br label %bb.r, !llvm.loop !129

.preheader.split108.us.us:                        ; preds = %.preheader.split108.us.us.preheader, %bb.t
  %.1.us.us = phi ptr [ %i.df, %bb.t ], [ %.0.us, %.preheader.split108.us.us.preheader ] ; 7 uses
  %i.da = load i64, ptr %.1.us.us, align 8, !tbaa !36 ; 3 uses
  %i.db = trunc i64 %i.da to i1
  br i1 %i.db, label %.split91.us.us, label %rb_uniform_is_less.exit87.us.us

rb_uniform_is_less.exit87.us.us:                  ; preds = %.preheader.split108.us.us
  %i.dc = tail call i32 @rb_float_cmp(i64 noundef %i.da, i64 noundef %.fr124) #13
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %.split110.us115

.split91.us.us:                                   ; preds = %.preheader.split108.us.us
  %i.de = icmp slt i64 %.fr124, %i.da
  br i1 %i.de, label %bb.t, label %.split110.us115

bb.t:                                             ; preds = %.split91.us.us, %rb_uniform_is_less.exit87.us.us
  %i.df = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %.preheader.split108.us.us, !llvm.loop !130

.split110.us115:                                  ; preds = %rb_uniform_is_less.exit87.us.us, %.split91.us.us
  %.not.us = icmp ugt ptr %.162.us.us, %.1.us.us
  br i1 %.not.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.split110.us115
  %.sroa.0.0.copyload183 = load <2 x i64>, ptr %.162.us.us, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162.us.us, ptr noundef nonnull align 8 dereferenceable(16) %.1.us.us, i64 16, i1 false), !tbaa.struct !68
  store <2 x i64> %.sroa.0.0.copyload183, ptr %.1.us.us, align 8
  %i.dg = getelementptr i8, ptr %.162.us.us, i64 16
  %i.dh = getelementptr i8, ptr %.1.us.us, i64 -16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.split110.us115
  %.263.us = phi ptr [ %i.dg, %bb.u ], [ %.162.us.us, %.split110.us115 ] ; 3 uses
  %.2.us = phi ptr [ %i.dh, %bb.u ], [ %.1.us.us, %.split110.us115 ] ; 3 uses
  %.not66.us = icmp ugt ptr %.263.us, %.2.us
  br i1 %.not66.us, label %.split118.us, label %.split107.us.us, !llvm.loop !131

.split107:                                        ; preds = %bb.q, %bb.z
  %.061 = phi ptr [ %.263, %bb.z ], [ %0, %bb.q ]
  %.0 = phi ptr [ %.2, %bb.z ], [ %i.cs, %bb.q ]
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.split107
  %.162 = phi ptr [ %.061, %.split107 ], [ %i.do, %bb.x ] ; 7 uses
  %i.di = load i64, ptr %.162, align 8, !tbaa !36 ; 3 uses
  %i.dj = trunc i64 %i.di to i1
  br i1 %i.dj, label %rb_uniform_is_less.exit84, label %.critedge.i82

rb_uniform_is_less.exit84:                        ; preds = %bb.w
  %i.dk = tail call i32 @rb_float_cmp(i64 noundef %.fr124, i64 noundef %i.di) #13
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %bb.x, label %.critedge.i85.preheader

.critedge.i85.preheader:                          ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  br label %.critedge.i85

.critedge.i82:                                    ; preds = %bb.w
  %i.dm = tail call i32 @rb_float_cmp(i64 noundef %i.di, i64 noundef %.fr124) #13
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.x, label %.critedge.i85.preheader

bb.x:                                             ; preds = %.critedge.i82, %rb_uniform_is_less.exit84
  %i.do = getelementptr i8, ptr %.162, i64 16
  br label %bb.w, !llvm.loop !129

.critedge.i85:                                    ; preds = %.critedge.i85.preheader, %.critedge.i85
  %.1 = phi ptr [ %i.ds, %.critedge.i85 ], [ %.0, %.critedge.i85.preheader ] ; 7 uses
  %i.dp = load i64, ptr %.1, align 8, !tbaa !36
  %i.dq = tail call i32 @rb_float_cmp(i64 noundef %.fr124, i64 noundef %i.dp) #13
  %i.dr = icmp slt i32 %i.dq, 0
  %i.ds = getelementptr i8, ptr %.1, i64 -16
  br i1 %i.dr, label %.critedge.i85, label %.split110.us, !llvm.loop !130

.split110.us:                                     ; preds = %.critedge.i85
  %.not = icmp ugt ptr %.162, %.1
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.split110.us
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.162, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.162, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !68
  store <2 x i64> %.sroa.0.0.copyload, ptr %.1, align 8
  %i.dt = getelementptr i8, ptr %.162, i64 16
  %i.du = getelementptr i8, ptr %.1, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.split110.us, %bb.y
  %.263 = phi ptr [ %i.dt, %bb.y ], [ %.162, %.split110.us ] ; 3 uses
  %.2 = phi ptr [ %i.du, %bb.y ], [ %.1, %.split110.us ] ; 3 uses
  %.not66 = icmp ugt ptr %.263, %.2
  br i1 %.not66, label %.split118.us, label %.split107, !llvm.loop !131

.split118.us:                                     ; preds = %bb.z, %bb.v
  %.us-phi119 = phi ptr [ %.263.us, %bb.v ], [ %.263, %bb.z ] ; 3 uses
  %.us-phi120 = phi ptr [ %.2.us, %bb.v ], [ %.2, %bb.z ]
  %i.dv = getelementptr i8, ptr %.us-phi120, i64 16 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.as, %i.dw
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.split118.us
  %i.dz = add i64 %.tr93122167, -1
  tail call fastcc void @rb_uniform_quicksort_intro_2(ptr noundef %i.dv, ptr noundef %.tr92121168, i64 noundef %i.dz)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split118.us
  %i.ea = ptrtoint ptr %.us-phi119 to i64         ; 2 uses
  %i.eb = sub i64 %i.ea, %i.a                     ; 4 uses
  %i.ec = icmp sgt i64 %i.eb, 16
  br i1 %i.ec, label %tailrecurse, label %rb_uniform_insertionsort_2.exit

rb_uniform_insertionsort_2.exit:                  ; preds = %bb.ab, %.lr.ph25.i, %.loopexit.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_uniform_heap_down_2(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 9223372036854775807) %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr [16 x i8], ptr %0, i64 %1  ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !13
  %.sroa.0.0.copyload.fr = freeze i64 %.sroa.0.0.copyload ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %i.b = shl nuw i64 %1, 1                        ; 4 uses
  %.not.not28 = icmp ult i64 %i.b, %2
  br i1 %.not.not28, label %.lr.ph, label %.critedge.i25._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = or disjoint i64 %i.b, 1                  ; 2 uses
  %i.d = trunc i64 %.sroa.0.0.copyload.fr to i1
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %i.e = phi i64 [ %i.ab, %bb.g ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.f = phi i64 [ %i.aa, %bb.g ], [ %i.b, %.lr.ph ]
  %.02229.us = phi i64 [ %.0.us, %bb.g ], [ %1, %.lr.ph ] ; 3 uses
  %i.g = icmp ult i64 %i.e, %2
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = getelementptr [16 x i8], ptr %0, i64 %i.e
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  %i.j = add nuw i64 %i.f, 2                      ; 2 uses
  %i.k = getelementptr [16 x i8], ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !36   ; 4 uses
  %i.m = trunc i64 %i.i to i1
  br i1 %i.m, label %bb.c, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.b
  %i.n = tail call i32 @rb_float_cmp(i64 noundef %i.i, i64 noundef %i.l) #13
  %i.o = icmp slt i32 %i.n, 0
  br label %rb_uniform_is_less.exit.us

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %i.l to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @rb_float_cmp(i64 noundef %i.l, i64 noundef %i.i) #13
  %i.r = icmp sgt i32 %i.q, 0
  br label %rb_uniform_is_less.exit.us

bb.e:                                             ; preds = %bb.c
  %i.s = icmp slt i64 %i.i, %i.l
  br label %rb_uniform_is_less.exit.us

rb_uniform_is_less.exit.us:                       ; preds = %bb.e, %bb.d, %.critedge.i.us
  %.0.i.us = phi i1 [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ %i.o, %.critedge.i.us ]
  %spec.select.us = select i1 %.0.i.us, i64 %i.j, i64 %i.e
  br label %bb.f

bb.f:                                             ; preds = %rb_uniform_is_less.exit.us, %.lr.ph.split.us
  %.0.us = phi i64 [ %i.e, %.lr.ph.split.us ], [ %spec.select.us, %rb_uniform_is_less.exit.us ] ; 4 uses
  %i.t = getelementptr [16 x i8], ptr %0, i64 %.0.us ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36   ; 3 uses
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %.split.us, label %rb_uniform_is_less.exit27.us

rb_uniform_is_less.exit27.us:                     ; preds = %bb.f
  %i.w = tail call i32 @rb_float_cmp(i64 noundef %i.u, i64 noundef %.sroa.0.0.copyload.fr) #13
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %.critedge.i25._crit_edge

.split.us:                                        ; preds = %bb.f
  %i.y = icmp slt i64 %.sroa.0.0.copyload.fr, %i.u
  br i1 %i.y, label %bb.g, label %.critedge.i25._crit_edge

bb.g:                                             ; preds = %.split.us, %rb_uniform_is_less.exit27.us
  %i.z = getelementptr [16 x i8], ptr %0, i64 %.02229.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !68
  %i.aa = shl i64 %.0.us, 1                       ; 3 uses
  %i.ab = or disjoint i64 %i.aa, 1
  %.not.not.us = icmp ult i64 %i.aa, %2
  br i1 %.not.not.us, label %.lr.ph.split.us, label %.critedge.i25._crit_edge, !llvm.loop !132

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.ac = phi i64 [ %i.ax, %bb.l ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.ad = phi i64 [ %i.aw, %bb.l ], [ %i.b, %.lr.ph ]
  %.02229 = phi i64 [ %.0, %bb.l ], [ %1, %.lr.ph ] ; 2 uses
  %i.ae = icmp ult i64 %i.ac, %2
  br i1 %i.ae, label %bb.h, label %.critedge.i25

bb.h:                                             ; preds = %.lr.ph.split
  %i.af = getelementptr [16 x i8], ptr %0, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36 ; 4 uses
  %i.ah = add nuw i64 %i.ad, 2                    ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !36 ; 4 uses
  %i.ak = trunc i64 %i.ag to i1
  br i1 %i.ak, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.al = trunc i64 %i.aj to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = icmp slt i64 %i.ag, %i.aj
  br label %rb_uniform_is_less.exit

bb.k:                                             ; preds = %bb.i
  %i.an = tail call i32 @rb_float_cmp(i64 noundef %i.aj, i64 noundef %i.ag) #13
  %i.ao = icmp sgt i32 %i.an, 0
  br label %rb_uniform_is_less.exit

.critedge.i:                                      ; preds = %bb.h
  %i.ap = tail call i32 @rb_float_cmp(i64 noundef %i.ag, i64 noundef %i.aj) #13
  %i.aq = icmp slt i32 %i.ap, 0
  br label %rb_uniform_is_less.exit

rb_uniform_is_less.exit:                          ; preds = %bb.j, %bb.k, %.critedge.i
  %.0.i = phi i1 [ %i.am, %bb.j ], [ %i.ao, %bb.k ], [ %i.aq, %.critedge.i ]
  %spec.select = select i1 %.0.i, i64 %i.ah, i64 %i.ac
  br label %.critedge.i25

.critedge.i25:                                    ; preds = %rb_uniform_is_less.exit, %.lr.ph.split
  %.0 = phi i64 [ %i.ac, %.lr.ph.split ], [ %spec.select, %rb_uniform_is_less.exit ] ; 4 uses
  %i.ar = getelementptr [16 x i8], ptr %0, i64 %.0 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = tail call i32 @rb_float_cmp(i64 noundef %.sroa.0.0.copyload.fr, i64 noundef %i.as) #13
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %.critedge.i25._crit_edge

bb.l:                                             ; preds = %.critedge.i25
  %i.av = getelementptr [16 x i8], ptr %0, i64 %.02229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !68
  %i.aw = shl i64 %.0, 1                          ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 1
  %.not.not = icmp ult i64 %i.aw, %2
  br i1 %.not.not, label %.lr.ph.split, label %.critedge.i25._crit_edge, !llvm.loop !132

.critedge.i25._crit_edge:                         ; preds = %bb.l, %.critedge.i25, %bb.g, %rb_uniform_is_less.exit27.us, %.split.us, %bb.a
  %.022.lcssa = phi i64 [ %1, %bb.a ], [ %.02229.us, %.split.us ], [ %.02229.us, %rb_uniform_is_less.exit27.us ], [ %.0.us, %bb.g ], [ %.0, %bb.l ], [ %.02229, %.critedge.i25 ]
  %i.ay = getelementptr [16 x i8], ptr %0, i64 %.022.lcssa ; 2 uses
  store i64 %.sroa.0.0.copyload.fr, ptr %i.ay, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @enum_grep0(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 0, 21) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_ary_new() #13          ; 2 uses
  %i.b = tail call i64 @rb_imemo_new(i32 noundef 5, i64 noundef 0, i64 noundef 40, i1 noundef zeroext false) #13 ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr i8, ptr %i.c, i64 24
  store i64 %i.a, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.c, i64 32
  store i64 %2, ptr %i.f, align 8, !tbaa !24
  %i.g = tail call i32 @rb_block_given_p() #13
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %1, 0
  %i.i = and i64 %1, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.l = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %rb_class_of.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rb_class_of.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.0.i9 = load i64, ptr %i.p, align 8, !tbaa !13
  %i.q = tail call i32 @rb_method_basic_definition_p(i64 noundef %.0.i9, i64 noundef 141) #13
  %.not8 = icmp eq i32 %i.q, 0
  br i1 %.not8, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.c, !prof !133

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  br label %bb.c

bb.c:                                             ; preds = %rb_class_of.exit, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi ptr [ @grep_i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ @grep_iter_i, %bb.a ], [ @grep_regexp_i, %rb_class_of.exit ]
  %i.r = tail call i64 @rb_block_call(i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, ptr noundef nonnull %.0, i64 noundef %i.b) #13 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_iter_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 4, %bb.a ]
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = call i64 @rb_funcallv(i64 noundef %i.g, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.i = and i64 %i.h, -5
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = xor i1 %i.j, %i.n
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.p = getelementptr i8, ptr %i.b, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  %i.r = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp sgt i32 %2, 1
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = call i64 @rb_yield_force_blockarg(i64 noundef %i.r) #13
  br label %enum_yield.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i32 %2, 1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = call i64 @rb_yield(i64 noundef %i.r) #13
  br label %enum_yield.exit

bb.h:                                             ; preds = %bb.f
  %i.w = call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.e, %bb.g, %bb.h
  %.0.i6 = phi i64 [ %i.t, %bb.e ], [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  %i.x = call i64 @rb_ary_push(i64 noundef %i.q, i64 noundef %.0.i6) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %enum_yield.exit, %rb_enum_values_pack.exit
  ret i64 4
}

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_regexp_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %bb.e
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ] ; 8 uses
  %i.e = and i64 %.0.i, 255
  %i.f = icmp eq i64 %i.e, 12
  br i1 %i.f, label %.thread21, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.g = icmp eq i64 %.0.i, 0
  %i.h = and i64 %.0.i, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.k = inttoptr i64 %.0.i to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 20
  br i1 %i.n, label %.thread21, label %bb.e

bb.e:                                             ; preds = %RB_SYMBOL_P.exit, %bb.d, %bb.a
  %.0.i1417 = phi i64 [ %.0.i, %RB_SYMBOL_P.exit ], [ %.0.i, %bb.d ], [ 4, %bb.a ] ; 3 uses
  %i.o = tail call i64 @rb_check_string_type(i64 noundef %.0.i1417) #13
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.f, label %.thread21

.thread21:                                        ; preds = %RB_SYMBOL_P.exit, %rb_enum_values_pack.exit, %bb.e
  %.0.i141823 = phi i64 [ %.0.i1417, %bb.e ], [ %.0.i, %rb_enum_values_pack.exit ], [ %.0.i, %RB_SYMBOL_P.exit ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  %i.s = tail call i64 @rb_reg_match_p(i64 noundef %i.r, i64 noundef %.0.i141823, i64 noundef 0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread21
  %.0.i141824 = phi i64 [ %.0.i141823, %.thread21 ], [ %.0.i1417, %bb.e ]
  %i.t = phi i64 [ %i.s, %.thread21 ], [ 0, %bb.e ]
  %i.u = getelementptr i8, ptr %i.a, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.a, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = tail call i64 @rb_ary_push(i64 noundef %i.y, i64 noundef %.0.i141824) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @grep_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 3 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ 4, %bb.a ]
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = call i64 @rb_funcallv(i64 noundef %i.g, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.i = and i64 %i.h, -5
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr i8, ptr %i.b, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = xor i1 %i.j, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.p = getelementptr i8, ptr %i.b, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !40
  %i.r = load i64, ptr %i.a, align 8, !tbaa !13
  %i.s = call i64 @rb_ary_push(i64 noundef %i.q, i64 noundef %i.r) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rb_enum_values_pack.exit
  ret i64 4
}

declare i64 @rb_check_string_type(i64 noundef) local_unnamed_addr #1

declare i64 @rb_reg_match_p(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @count_iter_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
end_hunk_1
begin_hunk_2_@inject_op_i:bb.a
MEMO_V1_SET.exit13:                               ; preds = %RB_SYMBOL_P.exit.thread14, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %MEMO_V1_SET.exit

MEMO_V1_SET.exit:                                 ; preds = %bb.h, %RB_SYMBOL_P.exit.thread, %bb.e, %bb.d, %MEMO_V1_SET.exit13
  ret i64 4
}

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #1

declare i64 @rb_funcallv_public(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_f_send(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_obj_respond_to(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_big_plus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fix_plus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @partition_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %rb_enum_values_pack.exit [
    i32 0, label %.thread
    i32 1, label %bb.c
  ]

rb_enum_values_pack.exit:                         ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @rb_ary_new_from_values(i64 noundef %i.a, ptr noundef %3) #13 ; 3 uses
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_enum_values_pack.exit
  %i.d = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.b) #13
  br label %enum_yield.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.f = tail call i64 @rb_yield(i64 noundef %i.e) #13
  br label %enum_yield.exit

.thread:                                          ; preds = %rb_enum_values_pack.exit, %bb.a
  %.0.i1113 = phi i64 [ 4, %bb.a ], [ %i.b, %rb_enum_values_pack.exit ]
  %i.g = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.b, %bb.c, %.thread
  %.0.i10 = phi i64 [ %i.b, %bb.b ], [ %i.e, %bb.c ], [ %.0.i1113, %.thread ]
  %.0.i8 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %.thread ]
  %i.h = inttoptr i64 %1 to ptr
  %i.i = and i64 %.0.i8, -5
  %.not = icmp eq i64 %i.i, 0
  %.0.in.v = select i1 %.not, i64 24, i64 16
  %.0.in = getelementptr i8, ptr %i.h, i64 %.0.in.v
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !13
  %i.j = tail call i64 @rb_ary_push(i64 noundef %.0, i64 noundef %.0.i10) #13 ; 0 uses
  ret i64 4
}

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @group_by_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %rb_enum_values_pack.exit [
    i32 0, label %.thread
    i32 1, label %bb.c
  ]

rb_enum_values_pack.exit:                         ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @rb_ary_new_from_values(i64 noundef %i.a, ptr noundef %3) #13 ; 3 uses
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_enum_values_pack.exit
  %i.d = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.b) #13
  br label %enum_yield.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.f = tail call i64 @rb_yield(i64 noundef %i.e) #13
  br label %enum_yield.exit

.thread:                                          ; preds = %rb_enum_values_pack.exit, %bb.a
  %.0.i121618 = phi i64 [ 4, %bb.a ], [ %i.b, %rb_enum_values_pack.exit ]
  %i.g = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.b, %bb.c, %.thread
  %.0.i1215 = phi i64 [ %i.b, %bb.b ], [ %i.e, %bb.c ], [ %.0.i121618, %.thread ] ; 2 uses
  %.0.i13 = phi i64 [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %.thread ] ; 2 uses
  %i.h = tail call i64 @rb_hash_aref(i64 noundef %1, i64 noundef %.0.i13) #13 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %enum_yield.exit
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %enum_yield.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %.0.i1215) #13
  %i.r = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %.0.i13, i64 noundef %i.q) #13 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.s = tail call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %.0.i1215) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  ret i64 4
}

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #1

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @tally_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ] ; 4 uses
  %i.d = tail call i32 @rb_hash_stlike_update(i64 noundef %1, i64 noundef %.0.i, ptr noundef nonnull @tally_up, i64 noundef %1) #13
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %rb_enum_tally_up.exit

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.e = icmp eq i64 %.0.i, 0
  %i.f = and i64 %.0.i, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rb_enum_tally_up.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %.0.i) #13
  br label %rb_enum_tally_up.exit

rb_enum_tally_up.exit:                            ; preds = %rb_enum_values_pack.exit, %bb.d, %bb.e
  ret i64 4
}

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare i32 @rb_hash_stlike_update(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tally_up(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !13     ; 8 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %i.a to i1
  %i.c = icmp ult i64 %i.a, 9223372036854775807
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i64 %i.a, 2
  br label %rb_obj_written.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.a, 0
  %i.f = and i64 %i.a, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !134

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.i = inttoptr i64 %i.a to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 10
  br i1 %i.l, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !41

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  tail call void @rb_unexpected_type(i64 noundef %i.a, i32 noundef 10) #17
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_big_plus(i64 noundef %i.a, i64 noundef 3) #13 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.m, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rb_obj_written.exit, label %bb.e

bb.e:                                             ; preds = %Check_Type.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.m) #13
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.e, %Check_Type.exit, %bb.a, %bb.c
  %.0 = phi i64 [ %i.d, %bb.c ], [ 3, %bb.a ], [ %i.m, %Check_Type.exit ], [ %i.m, %bb.e ]
  store i64 %.0, ptr %1, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @first_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #8 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = tail call i64 @rb_enum_values_pack(i32 noundef %2, ptr noundef %3)
  tail call fastcc void @MEMO_V1_SET(ptr noundef %i.a, i64 noundef %i.b)
  tail call void @rb_iter_break() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @all_eqq(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ 4, %bb.a ]
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !13
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = call i64 @rb_funcallv(i64 noundef %i.g, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.i = and i64 %i.h, -5
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %enum_all_func.exit

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !13
  call void @rb_iter_break() #14
  unreachable

enum_all_func.exit:                               ; preds = %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @all_iter_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
  %i.b = and i64 %i.a, -5
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %enum_all_func.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !13
  tail call void @rb_iter_break() #14
  unreachable

enum_all_func.exit:                               ; preds = %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @all_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit.thread
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ]
  %i.d = and i64 %.0.i, -5
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %rb_enum_values_pack.exit.thread, label %enum_all_func.exit

rb_enum_values_pack.exit.thread:                  ; preds = %bb.a, %rb_enum_values_pack.exit
  %i.e = inttoptr i64 %1 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !13
  tail call void @rb_iter_break() #14
  unreachable

enum_all_func.exit:                               ; preds = %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @any_eqq(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ 4, %bb.a ]
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !13
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = call i64 @rb_funcallv(i64 noundef %i.g, i64 noundef 141, i32 noundef 1, ptr noundef nonnull %i.a) #13
  %i.i = and i64 %i.h, -5
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %enum_any_func.exit, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.j = getelementptr i8, ptr %i.e, i64 16
  store i64 20, ptr %i.j, align 8, !tbaa !13
  call void @rb_iter_break() #14
  unreachable

enum_any_func.exit:                               ; preds = %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @any_iter_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
  %i.b = and i64 %i.a, -5
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %enum_any_func.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 16
  store i64 20, ptr %i.d, align 8, !tbaa !13
  tail call void @rb_iter_break() #14
  unreachable

enum_any_func.exit:                               ; preds = %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @any_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %enum_any_func.exit
    i32 1, label %bb.b
  ]
end_hunk_2
begin_hunk_3_@minmax_by_i_update:bb.a
bb.l:                                             ; preds = %RB_FLOAT_TYPE_P.exit74.thread
  %i.ay = tail call i32 @rb_float_cmp(i64 noundef %0, i64 noundef %i.a) #13
  br label %bb.m

RB_FLOAT_TYPE_P.exit.thread92:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit66, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit64, %rb_class_of.exit71, %bb.i, %bb.h, %bb.k, %.thread, %RB_FLOAT_TYPE_P.exit74.thread, %RB_FLOAT_TYPE_P.exit74
  %i.az = tail call i64 @rb_funcallv(i64 noundef %0, i64 noundef 135, i32 noundef 1, ptr noundef nonnull %4) #13
  %i.ba = load i64, ptr %4, align 8, !tbaa !51
  %i.bb = tail call i32 @rb_cmpint(i64 noundef %i.az, i64 noundef %0, i64 noundef %i.ba) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %RB_FLOAT_TYPE_P.exit.thread92, %bb.l, %bb.f
  %i.bc = phi i32 [ %i.bb, %RB_FLOAT_TYPE_P.exit.thread92 ], [ %i.k, %bb.f ], [ %i.ai, %bb.j ], [ %i.ay, %bb.l ]
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %.thread97

bb.n:                                             ; preds = %bb.m
  store i64 %0, ptr %4, align 8, !tbaa !51
  %i.be = getelementptr i8, ptr %4, i64 16
  store i64 %2, ptr %i.be, align 8, !tbaa !53
  br label %.thread97

.thread97:                                        ; preds = %bb.e, %bb.n, %bb.m
  %i.bf = trunc i64 %1 to i1
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.thread97
  %i.bg = getelementptr i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bj = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.bk = and i16 %i.bj, 1
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.r, !prof !28

bb.q:                                             ; preds = %bb.p
  %i.bm = icmp sgt i64 %1, %i.bh
  br i1 %i.bm, label %.thread110.sink.split, label %.thread110

bb.r:                                             ; preds = %.thread97, %bb.o, %bb.p
  %i.bn = icmp eq i64 %1, 0
  %i.bo = and i64 %1, 7
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %.thread100, label %rbimpl_RB_TYPE_P_fastpath.exit62

rbimpl_RB_TYPE_P_fastpath.exit62:                 ; preds = %bb.r
  %i.br = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !23
  %i.bt = and i64 %i.bs, 31
  switch i64 %i.bt, label %RB_FLOAT_TYPE_P.exit84.thread104 [
    i64 5, label %rb_class_of.exit78
    i64 4, label %RB_FLOAT_TYPE_P.exit84.thread
  ]

rb_class_of.exit78:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.0.i76 = load i64, ptr %i.bu, align 8, !tbaa !13 ; 2 uses
  %i.bv = load i64, ptr @rb_cString, align 8, !tbaa !13
  %i.bw = icmp eq i64 %.0.i76, %i.bv
  br i1 %i.bw, label %bb.s, label %RB_FLOAT_TYPE_P.exit84.thread104

bb.s:                                             ; preds = %rb_class_of.exit78
  %i.bx = getelementptr i8, ptr %4, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !52 ; 4 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = and i64 %i.by, 7
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = or i1 %i.bz, %i.cb
  br i1 %i.cc, label %RB_FLOAT_TYPE_P.exit84.thread104, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.s
  %i.cd = inttoptr i64 %i.by to ptr               ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !23
  %i.cf = and i64 %i.ce, 31
  %i.cg = icmp eq i64 %i.cf, 5
  br i1 %i.cg, label %rb_class_of.exit82, label %RB_FLOAT_TYPE_P.exit84.thread104

rb_class_of.exit82:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %.0.i80 = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.ci = icmp eq i64 %.0.i80, %.0.i76
  br i1 %i.ci, label %bb.t, label %RB_FLOAT_TYPE_P.exit84.thread104

bb.t:                                             ; preds = %rb_class_of.exit82
  %i.cj = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.ck = and i16 %i.cj, 4
  %i.cl = icmp eq i16 %i.ck, 0
  br i1 %i.cl, label %bb.u, label %RB_FLOAT_TYPE_P.exit84.thread104, !prof !28

bb.u:                                             ; preds = %bb.t
  %i.cm = tail call i32 @rb_str_cmp(i64 noundef %1, i64 noundef %i.by) #13
  br label %bb.x

.thread100:                                       ; preds = %bb.r
  %i.cn = and i64 %1, 3
  %i.co = icmp eq i64 %i.cn, 2
  br i1 %i.co, label %RB_FLOAT_TYPE_P.exit84.thread, label %RB_FLOAT_TYPE_P.exit84.thread104

RB_FLOAT_TYPE_P.exit84.thread:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62, %.thread100
  %i.cp = getelementptr i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52 ; 5 uses
  %i.cr = and i64 %i.cq, 3
  %i.cs = icmp eq i64 %i.cr, 2
  br i1 %i.cs, label %RB_FLOAT_TYPE_P.exit86.thread, label %bb.v

bb.v:                                             ; preds = %RB_FLOAT_TYPE_P.exit84.thread
  %i.ct = icmp eq i64 %i.cq, 0
  %i.cu = and i64 %i.cq, 7
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = or i1 %i.ct, %i.cv
  br i1 %i.cw, label %RB_FLOAT_TYPE_P.exit84.thread104, label %RB_FLOAT_TYPE_P.exit86

RB_FLOAT_TYPE_P.exit86:                           ; preds = %bb.v
  %i.cx = inttoptr i64 %i.cq to ptr
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23
  %i.cz = and i64 %i.cy, 31
  %i.da = icmp eq i64 %i.cz, 4
  br i1 %i.da, label %RB_FLOAT_TYPE_P.exit86.thread, label %RB_FLOAT_TYPE_P.exit84.thread104

RB_FLOAT_TYPE_P.exit86.thread:                    ; preds = %RB_FLOAT_TYPE_P.exit84.thread, %RB_FLOAT_TYPE_P.exit86
  %i.db = load i16, ptr getelementptr inbounds nuw (i8, ptr @ruby_vm_redefined_flag, i64 62), align 2, !tbaa !27
  %i.dc = and i16 %i.db, 2
  %i.dd = icmp eq i16 %i.dc, 0
  br i1 %i.dd, label %bb.w, label %RB_FLOAT_TYPE_P.exit84.thread104, !prof !28

bb.w:                                             ; preds = %RB_FLOAT_TYPE_P.exit86.thread
  %i.de = tail call i32 @rb_float_cmp(i64 noundef %1, i64 noundef %i.cq) #13
  br label %bb.x

RB_FLOAT_TYPE_P.exit84.thread104:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62, %rb_class_of.exit78, %rbimpl_RB_TYPE_P_fastpath.exit, %rb_class_of.exit82, %bb.t, %bb.s, %bb.v, %.thread100, %RB_FLOAT_TYPE_P.exit86.thread, %RB_FLOAT_TYPE_P.exit86
  %i.df = getelementptr i8, ptr %4, i64 8         ; 2 uses
  %i.dg = tail call i64 @rb_funcallv(i64 noundef %1, i64 noundef 135, i32 noundef 1, ptr noundef %i.df) #13
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !52
  %i.di = tail call i32 @rb_cmpint(i64 noundef %i.dg, i64 noundef %1, i64 noundef %i.dh) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %RB_FLOAT_TYPE_P.exit84.thread104, %bb.w
  %i.dj = phi i32 [ %i.di, %RB_FLOAT_TYPE_P.exit84.thread104 ], [ %i.de, %bb.w ], [ %i.cm, %bb.u ]
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.thread110.sink.split, label %.thread110

.thread110.sink.split:                            ; preds = %bb.x, %bb.q, %bb.b
  %.sink118 = phi i64 [ 16, %bb.b ], [ 8, %bb.q ], [ 8, %bb.x ]
  %.sink = phi i64 [ %2, %bb.b ], [ %1, %bb.q ], [ %1, %bb.x ]
  %i.dl = getelementptr i8, ptr %4, i64 %.sink118
  store i64 %.sink, ptr %i.dl, align 8, !tbaa !13
  %i.dm = getelementptr i8, ptr %4, i64 24
  store i64 %3, ptr %i.dm, align 8, !tbaa !54
  br label %.thread110

.thread110:                                       ; preds = %.thread110.sink.split, %bb.q, %bb.x
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @member_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ 4, %bb.a ]
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  %i.g = tail call i64 @rb_equal(i64 noundef %.0.i, i64 noundef %i.f) #13
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.h = getelementptr i8, ptr %i.a, i64 24
  store i64 20, ptr %i.h, align 8, !tbaa !13
  tail call void @rb_iter_break() #14
  unreachable

bb.e:                                             ; preds = %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @each_with_index_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call ptr @rb_current_ifunc() #13
  %i.b = tail call i64 @rb_int_succ(i64 noundef %1) #13
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !137
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %2 to i64
  %i.g = tail call i64 @rb_ary_new_from_values(i64 noundef %i.f, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ 4, %bb.a ]
  %i.h = tail call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %.0.i, i64 noundef %1) #13
  ret i64 %i.h
}

declare ptr @rb_current_ifunc() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @each_val_i(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %rb_enum_values_pack.exit [
    i32 0, label %.thread
    i32 1, label %bb.c
  ]

rb_enum_values_pack.exit:                         ; preds = %bb.a
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @rb_ary_new_from_values(i64 noundef %i.a, ptr noundef %3) #13
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_enum_values_pack.exit
  %i.d = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.b) #13 ; 0 uses
  br label %enum_yield.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !13
  %i.f = tail call i64 @rb_yield(i64 noundef %i.e) #13 ; 0 uses
  br label %enum_yield.exit

.thread:                                          ; preds = %rb_enum_values_pack.exit, %bb.a
  %i.g = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.b, %bb.c, %.thread
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @enum_each_slice_size(i64 noundef %0, i64 noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = and i64 %i.d, 8192
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 16
  br label %RARRAY_AREF.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = load i64, ptr %.0.i.i, align 8, !tbaa !13 ; 3 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RARRAY_AREF.exit
  %i.k = ashr i64 %i.i, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %RARRAY_AREF.exit
  %i.l = tail call i64 @rb_num2long(i64 noundef %i.i) #13
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 6 uses
  %.pr.i = load i64, ptr @enum_each_slice_size.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_num2long_inline.exit, %.lr.ph.i
  %i.m = tail call i64 @rb_intern2(ptr noundef nonnull @.str.88, i64 noundef 9) #13 ; 3 uses
  store i64 %i.m, ptr @enum_each_slice_size.rbimpl_id, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_num2long_inline.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_num2long_inline.exit ], [ %i.m, %.lr.ph.i ]
  %i.n = icmp slt i64 %.0.i, 1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_intern_const.exit
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.87) #14
  unreachable

bb.g:                                             ; preds = %rbimpl_intern_const.exit
  %i.p = tail call i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef 3041, i32 noundef 0, ptr noundef null, i64 noundef 4) #13 ; 13 uses
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.p, 3
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %RB_FLOAT_TYPE_P.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = icmp eq i64 %i.p, 0
  %i.u = and i64 %i.p, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %RB_FLOAT_TYPE_P.exit.thread24, label %RB_FLOAT_TYPE_P.exit

RB_FLOAT_TYPE_P.exit:                             ; preds = %bb.i
  %i.x = inttoptr i64 %i.p to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %RB_FLOAT_TYPE_P.exit.thread, label %RB_FLOAT_TYPE_P.exit.thread24

RB_FLOAT_TYPE_P.exit.thread:                      ; preds = %bb.h, %RB_FLOAT_TYPE_P.exit
  %i.ab = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.p, i64 noundef %.lcssa.i, i32 noundef 0) #13
  %i.ac = and i64 %i.ab, -5
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %RB_FLOAT_TYPE_P.exit.thread24, label %bb.p

RB_FLOAT_TYPE_P.exit.thread24:                    ; preds = %bb.i, %RB_FLOAT_TYPE_P.exit.thread, %RB_FLOAT_TYPE_P.exit
  %i.ad = add nsw i64 %.0.i, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ae = icmp samesign ult i64 %.0.i, 4611686018427387905
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread24
  %i.af = shl nuw nsw i64 %i.ad, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %rb_long2num_inline.exit.i

bb.k:                                             ; preds = %RB_FLOAT_TYPE_P.exit.thread24
  %i.ah = tail call i64 @rb_int2big(i64 noundef range(i64 -9223372036854775806, 9223372036854775807) %i.ad) #13
  br label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.k, %bb.j
  %.0.i.i15 = phi i64 [ %i.ag, %bb.j ], [ %i.ah, %bb.k ] ; 2 uses
  store i64 %.0.i.i15, ptr %i.b, align 8, !tbaa !13
  %i.ai = trunc i64 %i.p to i1
  br i1 %i.ai, label %rb_integer_type_p.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %rb_long2num_inline.exit.i
  %i.aj = icmp eq i64 %i.p, 0
  %i.ak = and i64 %i.p, 6
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %rb_integer_type_p.exit.thread7.i, label %rb_integer_type_p.exit.i

rb_integer_type_p.exit.i:                         ; preds = %bb.l
  %i.an = inttoptr i64 %i.p to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !23
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 10
  br i1 %i.aq, label %rb_integer_type_p.exit.thread.i, label %rb_integer_type_p.exit.thread7.i

rb_integer_type_p.exit.thread.i:                  ; preds = %rb_integer_type_p.exit.i, %rb_long2num_inline.exit.i
  %i.ar = tail call i64 @rb_int_plus(i64 noundef %i.p, i64 noundef %.0.i.i15) #13
  br label %add_int.exit

rb_integer_type_p.exit.thread7.i:                 ; preds = %rb_integer_type_p.exit.i, %bb.l
  %i.as = call i64 @rb_funcallv(i64 noundef %i.p, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.b) #13
  br label %add_int.exit

add_int.exit:                                     ; preds = %rb_integer_type_p.exit.thread.i, %rb_integer_type_p.exit.thread7.i
  %.0.i16 = phi i64 [ %i.ar, %rb_integer_type_p.exit.thread.i ], [ %i.as, %rb_integer_type_p.exit.thread7.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.at = icmp samesign ult i64 %.0.i, 4611686018427387904
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %add_int.exit
  %i.au = shl nuw nsw i64 %.0.i, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %rb_long2num_inline.exit.i17

bb.n:                                             ; preds = %add_int.exit
  %i.aw = call i64 @rb_int2big(i64 noundef range(i64 1, -9223372036854775808) %.0.i) #13
  br label %rb_long2num_inline.exit.i17

rb_long2num_inline.exit.i17:                      ; preds = %bb.n, %bb.m
  %.0.i.i18 = phi i64 [ %i.av, %bb.m ], [ %i.aw, %bb.n ] ; 2 uses
end_hunk_3
begin_hunk_4_@each_cons_i:bb.a
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_array_len.exit
  %i.q = tail call i64 @rb_ary_shift(i64 noundef %i.c) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_array_len.exit
  %i.r = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %.0.i) #13 ; 0 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.t = and i64 %i.s, 8192
  %.not.i17 = icmp eq i64 %i.t, 0
  br i1 %.not.i17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = lshr i64 %i.s, 15
  %i.v = and i64 %i.u, 127
  br label %rb_array_len.exit19

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24
  br label %rb_array_len.exit19

rb_array_len.exit19:                              ; preds = %bb.h, %bb.i
  %.0.i18 = phi i64 [ %i.v, %bb.h ], [ %i.x, %bb.i ]
  %i.y = icmp eq i64 %.0.i18, %i.e
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %rb_array_len.exit19
  %i.z = getelementptr i8, ptr %i.a, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !40
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i64 @rb_ary_dup(i64 noundef %i.c) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.015 = phi i64 [ %i.ab, %bb.k ], [ %i.c, %bb.j ]
  %i.ac = tail call i64 @rb_yield(i64 noundef %.015) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %rb_array_len.exit19
  %.0 = phi i64 [ %i.ac, %bb.l ], [ 4, %rb_array_len.exit19 ]
  ret i64 %.0
}

declare i64 @rb_ary_shift(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @each_with_object_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.d = tail call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %.0.i, i64 noundef %1) #13
  ret i64 %i.d
}

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @zip_ary(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 4 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.h, align 8, !tbaa !24
  %i.k = inttoptr i64 %i.g to ptr                 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.m = and i64 %i.l, 8192
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i64 %i.l, 15
  %i.o = and i64 %i.n, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.k, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ]
  %i.r = add i64 %.0.i, 1
  %i.s = tail call i64 @rb_ary_new_capa(i64 noundef %i.r) #13 ; 5 uses
  switch i32 %2, label %bb.e [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %rb_array_len.exit
  %i.t = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.u = sext i32 %2 to i64
  %i.v = tail call i64 @rb_ary_new_from_values(i64 noundef %i.u, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %rb_array_len.exit, %bb.d, %bb.e
  %.0.i22 = phi i64 [ %i.v, %bb.e ], [ %i.t, %bb.d ], [ 4, %rb_array_len.exit ]
  tail call void @rb_ary_store(i64 noundef %i.s, i64 noundef 0, i64 noundef %.0.i22) #13
  %i.w = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.x = getelementptr i8, ptr %i.k, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %rb_enum_values_pack.exit
  %.0 = phi i32 [ 0, %rb_enum_values_pack.exit ], [ %i.aw, %bb.i ] ; 2 uses
  %i.y = sext i32 %.0 to i64                      ; 3 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %i.aa = and i64 %i.z, 8192
  %.not.i23 = icmp eq i64 %i.aa, 0
  br i1 %.not.i23, label %rb_array_len.exit25, label %rb_array_len.exit25.thread

rb_array_len.exit25:                              ; preds = %bb.f
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !24
  %i.ac = icmp sgt i64 %i.ab, %i.y
  br i1 %i.ac, label %bb.g, label %bb.j

rb_array_len.exit25.thread:                       ; preds = %bb.f
  %i.ad = lshr i64 %i.z, 15
  %i.ae = and i64 %i.ad, 127
  %i.af = icmp sgt i64 %i.ae, %i.y
  br i1 %i.af, label %RARRAY_AREF.exit, label %bb.j

bb.g:                                             ; preds = %rb_array_len.exit25
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit25.thread, %bb.g
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.w, %rb_array_len.exit25.thread ]
  %i.ah = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.y
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = inttoptr i64 %i.ai to ptr               ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i26 = icmp eq i64 %i.al, 0
  br i1 %.not.i26, label %rb_array_len.exit28, label %rb_array_len.exit28.thread

rb_array_len.exit28:                              ; preds = %RARRAY_AREF.exit
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %.not = icmp sgt i64 %i.an, %i.i
  br i1 %.not, label %bb.h, label %bb.i

rb_array_len.exit28.thread:                       ; preds = %RARRAY_AREF.exit
  %i.ao = lshr i64 %i.ak, 15
  %i.ap = and i64 %i.ao, 127
  %.not37 = icmp sgt i64 %i.ap, %i.i
  br i1 %.not37, label %.thread38, label %bb.i

.thread38:                                        ; preds = %rb_array_len.exit28.thread
  %i.aq = getelementptr i8, ptr %i.aj, i64 16
  br label %RARRAY_AREF.exit31

bb.h:                                             ; preds = %rb_array_len.exit28
  %i.ar = getelementptr i8, ptr %i.aj, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  br label %RARRAY_AREF.exit31

RARRAY_AREF.exit31:                               ; preds = %.thread38, %bb.h
  %.0.i.i30 = phi ptr [ %i.aq, %.thread38 ], [ %i.as, %bb.h ]
  %i.at = getelementptr [8 x i8], ptr %.0.i.i30, i64 %i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit28, %rb_array_len.exit28.thread, %RARRAY_AREF.exit31
  %.sink = phi i64 [ %i.au, %RARRAY_AREF.exit31 ], [ 4, %rb_array_len.exit28.thread ], [ 4, %rb_array_len.exit28 ]
  %i.av = tail call i64 @rb_ary_push(i64 noundef %i.s, i64 noundef %.sink) #13 ; 0 uses
  %i.aw = add i32 %.0, 1
  br label %bb.f, !llvm.loop !138

bb.j:                                             ; preds = %rb_array_len.exit25.thread, %rb_array_len.exit25
  %i.ax = icmp eq i64 %i.e, 4
  br i1 %i.ax, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ay = inttoptr i64 %i.s to ptr                ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %i.ba = and i64 %i.az, 8192
  %.not.i.i32 = icmp eq i64 %i.ba, 0              ; 2 uses
  br i1 %.not.i.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = lshr i64 %i.az, 15
  %i.bc = and i64 %i.bb, 127
  br label %rb_array_len.exit.i

bb.m:                                             ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %i.ay, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !24
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i33 = phi i64 [ %i.bc, %bb.l ], [ %i.be, %bb.m ] ; 2 uses
  %i.bf = icmp sgt i64 %.0.i.i33, 1
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_array_len.exit.i
  %i.bg = tail call i64 @rb_yield_force_blockarg(i64 noundef %i.s) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.o:                                             ; preds = %rb_array_len.exit.i
  %i.bh = icmp eq i64 %.0.i.i33, 1
  br i1 %i.bh, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i32, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %i.ay, i64 16
  br label %RARRAY_AREF.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr i8, ptr %i.ay, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !24
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi ptr [ %i.bi, %bb.q ], [ %i.bk, %bb.r ]
  %i.bl = load i64, ptr %.0.i.i.i, align 8, !tbaa !13
  %i.bm = tail call i64 @rb_yield(i64 noundef %i.bl) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.s:                                             ; preds = %bb.o
  %i.bn = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.t:                                             ; preds = %bb.j
  %i.bo = tail call i64 @rb_ary_push(i64 noundef %i.e, i64 noundef %i.s) #13 ; 0 uses
  br label %enum_yield_array.exit

enum_yield_array.exit:                            ; preds = %bb.s, %RARRAY_AREF.exit.i, %bb.n, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr %i.a, ptr %i.b, align 8, !tbaa !70
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #13, !srcloc !139
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bq = load volatile i64, ptr %i.bp, align 8, !tbaa !13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @zip_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.g = getelementptr i8, ptr %i.d, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !13
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = and i64 %i.j, 8192
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.j, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  %i.p = add i64 %.0.i, 1
  %i.q = tail call i64 @rb_ary_new_capa(i64 noundef %i.p) #13 ; 6 uses
  switch i32 %2, label %bb.e [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %rb_array_len.exit
  %i.r = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.s = sext i32 %2 to i64
  %i.t = tail call i64 @rb_ary_new_from_values(i64 noundef %i.s, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %rb_array_len.exit, %bb.d, %bb.e
  %.0.i18 = phi i64 [ %i.t, %bb.e ], [ %i.r, %bb.d ], [ 4, %rb_array_len.exit ]
  tail call void @rb_ary_store(i64 noundef %i.q, i64 noundef 0, i64 noundef %.0.i18) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.w = inttoptr i64 %i.h to ptr                 ; 7 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %i.z = getelementptr i8, ptr %i.w, i64 32
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %i.ab = getelementptr i8, ptr %i.w, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %rb_enum_values_pack.exit
  %.0 = phi i32 [ 0, %rb_enum_values_pack.exit ], [ %i.bc, %bb.m ] ; 2 uses
  %i.ac = sext i32 %.0 to i64                     ; 5 uses
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !23  ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i19 = icmp eq i64 %i.ae, 0
  br i1 %.not.i19, label %rb_array_len.exit21, label %rb_array_len.exit21.thread

rb_array_len.exit21:                              ; preds = %bb.f
  %i.af = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ag = icmp sgt i64 %i.af, %i.ac
  br i1 %i.ag, label %bb.g, label %bb.n

rb_array_len.exit21.thread:                       ; preds = %bb.f
  %i.ah = lshr i64 %i.ad, 15
  %i.ai = and i64 %i.ah, 127
  %i.aj = icmp sgt i64 %i.ai, %i.ac
  br i1 %i.aj, label %RARRAY_AREF.exit, label %bb.n

bb.g:                                             ; preds = %rb_array_len.exit21
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit21.thread, %bb.g
  %.0.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.y, %rb_array_len.exit21.thread ]
  %i.al = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ac
  %i.am = load i64, ptr %i.al, align 8, !tbaa !13
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RARRAY_AREF.exit
  %i.ao = call i64 @rb_ary_push(i64 noundef %i.q, i64 noundef 4) #13 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %RARRAY_AREF.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !23
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i22 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i22, label %bb.j, label %RARRAY_AREF.exit24

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ab, align 8, !tbaa !24
  br label %RARRAY_AREF.exit24

RARRAY_AREF.exit24:                               ; preds = %bb.i, %bb.j
  %.0.i.i23 = phi ptr [ %i.ar, %bb.j ], [ %i.aa, %bb.i ]
  %i.as = getelementptr [8 x i8], ptr %.0.i.i23, i64 %i.ac
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  store i64 %i.at, ptr %i.u, align 8, !tbaa !13
  %i.au = load i64, ptr @rb_eStopIteration, align 8, !tbaa !13
  %i.av = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @call_next, i64 noundef %i.v, ptr noundef nonnull @call_stop, i64 noundef %i.v, i64 noundef %i.au, i64 noundef 0) #13 ; 0 uses
  %i.aw = load i64, ptr %i.b, align 16, !tbaa !13 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 36
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %RARRAY_AREF.exit24
  %i.ay = call ptr @rb_ary_ptr_use_start(i64 noundef %i.h) #13
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.ac
  store i64 4, ptr %i.az, align 8, !tbaa !13
  call void @rb_ary_ptr_use_end(i64 noundef %i.h) #13
  store i64 4, ptr %i.b, align 16, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %RARRAY_AREF.exit24
  %i.ba = phi i64 [ 4, %bb.k ], [ %i.aw, %RARRAY_AREF.exit24 ]
  %i.bb = call i64 @rb_ary_push(i64 noundef %i.q, i64 noundef %i.ba) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l
  %i.bc = add i32 %.0, 1
  br label %bb.f, !llvm.loop !140

bb.n:                                             ; preds = %rb_array_len.exit21.thread, %rb_array_len.exit21
  %i.bd = icmp eq i64 %i.f, 4
  br i1 %i.bd, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.be = inttoptr i64 %i.q to ptr                ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bg = and i64 %i.bf, 8192
  %.not.i.i25 = icmp eq i64 %i.bg, 0              ; 2 uses
  br i1 %.not.i.i25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = lshr i64 %i.bf, 15
  %i.bi = and i64 %i.bh, 127
  br label %rb_array_len.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %i.be, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.q, %bb.p
  %.0.i.i26 = phi i64 [ %i.bi, %bb.p ], [ %i.bk, %bb.q ] ; 2 uses
  %i.bl = icmp sgt i64 %.0.i.i26, 1
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_array_len.exit.i
  %i.bm = call i64 @rb_yield_force_blockarg(i64 noundef %i.q) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.s:                                             ; preds = %rb_array_len.exit.i
  %i.bn = icmp eq i64 %.0.i.i26, 1
  br i1 %i.bn, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  br i1 %.not.i.i25, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr i8, ptr %i.be, i64 16
  br label %RARRAY_AREF.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %i.be, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !24
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.v, %bb.u
  %.0.i.i.i = phi ptr [ %i.bo, %bb.u ], [ %i.bq, %bb.v ]
  %i.br = load i64, ptr %.0.i.i.i, align 8, !tbaa !13
  %i.bs = call i64 @rb_yield(i64 noundef %i.br) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.w:                                             ; preds = %bb.s
  %i.bt = call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %enum_yield_array.exit

bb.x:                                             ; preds = %bb.n
  %i.bu = call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %i.q) #13 ; 0 uses
  br label %enum_yield_array.exit

enum_yield_array.exit:                            ; preds = %bb.w, %RARRAY_AREF.exit.i, %bb.r, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr %i.a, ptr %i.c, align 8, !tbaa !70
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #13, !srcloc !141
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.bw = load volatile i64, ptr %i.bv, align 8, !tbaa !13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 4
}

declare i64 @rb_rescue2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @call_next(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = load i64, ptr @id_next, align 8, !tbaa !13
  %i.e = tail call i64 @rb_funcallv(i64 noundef %i.c, i64 noundef %i.d, i32 noundef 0, ptr noundef null) #13 ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !13
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @call_stop(i64 noundef %0, i64 %1) #10 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  store i64 36, ptr %i.a, align 8, !tbaa !13
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @take_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.e = sext i32 %2 to i64
  %i.f = tail call i64 @rb_ary_new_from_values(i64 noundef %i.e, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.d, %bb.b ], [ 4, %bb.a ]
  %i.g = tail call i64 @rb_ary_push(i64 noundef %i.c, i64 noundef %.0.i) #13 ; 0 uses
  %i.h = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !24
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  tail call void @rb_iter_break() #14
  unreachable

bb.e:                                             ; preds = %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @take_while_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
  %i.b = and i64 %i.a, -5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_iter_break() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.e [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.e:                                             ; preds = %bb.c
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @rb_ary_new_from_values(i64 noundef %i.d, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.e, %bb.e ], [ %i.c, %bb.d ], [ 4, %bb.c ]
  %i.f = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %.0.i) #13 ; 0 uses
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @drop_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  switch i32 %2, label %bb.d [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.d:                                             ; preds = %bb.b
  %i.h = sext i32 %2 to i64
  %i.i = tail call i64 @rb_ary_new_from_values(i64 noundef %i.h, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %i.g, %bb.c ], [ 4, %bb.b ]
  %i.j = tail call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %.0.i) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, -1
  store i64 %i.k, ptr %i.b, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_enum_values_pack.exit
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @drop_while_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64
  %i.d = tail call i64 @rb_ary_new_from_values(i64 noundef %i.c, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 32       ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.g = icmp sgt i32 %2, 1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @rb_yield_force_blockarg(i64 noundef %.0.i) #13
  br label %enum_yield.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i64 @rb_yield(i64 noundef %.0.i) #13
  br label %enum_yield.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i64 @rb_yield_values2(i32 noundef 0, ptr noundef null) #13
  br label %enum_yield.exit

enum_yield.exit:                                  ; preds = %bb.e, %bb.g, %bb.h
  %.0.i10 = phi i64 [ %i.h, %bb.e ], [ %i.j, %bb.g ], [ %i.k, %bb.h ]
  %i.l = and i64 %.0.i10, -5
  %.not12 = icmp eq i64 %i.l, 0
  br i1 %.not12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %enum_yield.exit
  store i64 1, ptr %i.e, align 8, !tbaa !24
  br label %.thread

bb.j:                                             ; preds = %enum_yield.exit
  %.pr = load i64, ptr %i.e, align 8, !tbaa !24
  %.not9 = icmp eq i64 %.pr, 0
  br i1 %.not9, label %bb.k, label %.thread

end_hunk_4
begin_hunk_5_@sum_iter_Kahan_Babuska:bb.a
  %i.ad = lshr i64 %i.ac, 60
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 7
  %i.ag = add nsw i32 %i.af, -5
  %i.ah = icmp ult i32 %i.ag, -2
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ac, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ac, i64 3)
  %i.aj = and i64 %i.ai, -4
  %i.ak = or disjoint i64 %i.aj, 2
  br label %rb_float_new_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.ac, 0
  br i1 %i.al, label %rb_float_new_inline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %rb_type.exit.thread
  %i.am = tail call i64 @rb_float_new_in_heap(double noundef %i.ab) #13
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  %.0.i46 = phi i64 [ %i.ak, %bb.k ], [ %i.am, %bb.m ], [ -9223372036854775806, %bb.l ] ; 2 uses
  store i64 %.0.i46, ptr %1, align 8, !tbaa !59
  %i.an = getelementptr i8, ptr %1, i64 44
  store i32 0, ptr %i.an, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !13
  %i.ao = call i64 @rb_funcallv(i64 noundef %.0.i46, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.a) #13
  store i64 %i.ao, ptr %1, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

rb_float_value_inline.exit:                       ; preds = %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %rb_type.exit.thread53
  %.040 = phi double [ %i.z, %bb.i ], [ %i.x, %rb_type.exit.thread53 ], [ %i.y, %bb.h ], [ %i.v, %bb.g ], [ %i.s, %bb.f ], [ 0.000000e+00, %bb.e ] ; 7 uses
  %i.ap = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !66 ; 8 uses
  %i.ar = fcmp uno double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %rb_float_value_inline.exit
  %i.as = tail call double @llvm.fabs.f64(double %.040) ; 3 uses
  %i.at = fcmp ueq double %i.as, +inf
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = fcmp oeq double %i.as, +inf
  %i.av = tail call double @llvm.fabs.f64(double %i.aq) #18
  %i.aw = fcmp oeq double %i.av, +inf
  %or.cond = and i1 %i.au, %i.aw
  br i1 %or.cond, label %bb.p, label %rb_float_new_inline.exit49

bb.p:                                             ; preds = %bb.o
  %i.ax = bitcast double %.040 to i64
  %i.ay = bitcast double %i.aq to i64
  %.not.unshifted = xor i64 %i.ay, %i.ax
  %.not = icmp sgt i64 %.not.unshifted, -1
  br i1 %.not, label %rb_float_new_inline.exit49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i64 @rb_float_new_in_heap(double noundef %i.aq) #13
  br label %rb_float_new_inline.exit49

rb_float_new_inline.exit49:                       ; preds = %bb.q, %bb.p, %bb.o
  %.041 = phi i64 [ %0, %bb.o ], [ %0, %bb.p ], [ %i.az, %bb.q ]
  %.1 = phi double [ %.040, %bb.o ], [ %.040, %bb.p ], [ +qnan, %bb.q ]
  store i64 %.041, ptr %1, align 8, !tbaa !59
  store double %.1, ptr %i.ap, align 8, !tbaa !66
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.ba = tail call double @llvm.fabs.f64(double %i.aq) ; 2 uses
  %i.bb = fcmp oeq double %i.ba, +inf
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !67
  %i.be = fadd double %.040, %i.aq                ; 3 uses
  %i.bf = fcmp ult double %i.ba, %i.as
  %i.bg = fsub double %i.aq, %i.be
  %i.bh = fadd double %.040, %i.bg
  %i.bi = fsub double %.040, %i.be
  %i.bj = fadd double %i.aq, %i.bi
  %.pn = select i1 %i.bf, double %i.bj, double %i.bh
  %.0 = fadd double %.pn, %i.bd
  store double %i.be, ptr %i.ap, align 8, !tbaa !66
  store double %.0, ptr %i.bc, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %rb_float_new_inline.exit49, %bb.s, %rb_float_value_inline.exit, %bb.r, %rb_float_new_inline.exit
  ret void
}

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #1

declare double @rb_big2dbl(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @uniq_iter(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.d = tail call i64 @rb_yield_values2(i32 noundef %2, ptr noundef %3) #13
  %i.e = tail call i32 @rb_hash_add_new_element(i64 noundef %1, i64 noundef %i.d, i64 noundef %.0.i) #13 ; 0 uses
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @uniq_func(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %i.d = tail call i32 @rb_hash_add_new_element(i64 noundef %1, i64 noundef %.0.i, i64 noundef %.0.i) #13 ; 0 uses
  ret i64 4
}

declare i64 @rb_obj_hide(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_values(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_clear(i64 noundef) local_unnamed_addr #1

declare i32 @rb_hash_add_new_element(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @compact_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit.thread
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !13
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.d = icmp eq i64 %.0.i, 4
  br i1 %i.d, label %rb_enum_values_pack.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_enum_values_pack.exit
  %i.e = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %.0.i) #13 ; 0 uses
  br label %rb_enum_values_pack.exit.thread

rb_enum_values_pack.exit.thread:                  ; preds = %bb.a, %bb.d, %rb_enum_values_pack.exit
  ret i64 4
}

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #11

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !25}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"nmin_data", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !14, i64 40, !10, i64 48, !10, i64 48}
!16 = !{!15, !12, i64 0}
!17 = !{!15, !12, i64 8}
!18 = !{!15, !12, i64 16}
!19 = !{!15, !12, i64 24}
!20 = !{!15, !12, i64 32}
!21 = !{!15, !14, i64 40}
!22 = !{!"RBasic", !12, i64 0, !12, i64 8}
!23 = !{!22, !12, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"short", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!22, !12, i64 8}
!30 = !{!"sort_by_data", !12, i64 0, !12, i64 8, !9, i64 16, !9, i64 17}
!31 = !{!30, !9, i64 16}
!32 = !{!30, !9, i64 17}
!33 = !{!30, !12, i64 0}
!34 = !{!30, !12, i64 8}
!35 = !{!"rb_uniform_sort_data", !12, i64 0, !12, i64 8}
!36 = !{!35, !12, i64 0}
!37 = !{!"MEMO", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !9, i64 32}
!38 = !{!37, !12, i64 0}
!39 = !{!37, !12, i64 16}
!40 = !{!37, !12, i64 24}
!41 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!42 = !{!"min_t", !12, i64 0}
!43 = !{!42, !12, i64 0}
!44 = !{!"max_t", !12, i64 0}
!45 = !{!44, !12, i64 0}
!46 = !{!"minmax_t", !12, i64 0, !12, i64 8, !12, i64 16}
!47 = !{!46, !12, i64 0}
!48 = !{!46, !12, i64 16}
!49 = !{!46, !12, i64 8}
!50 = !{!"minmax_by_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!51 = !{!50, !12, i64 0}
!52 = !{!50, !12, i64 8}
!53 = !{!50, !12, i64 16}
!54 = !{!50, !12, i64 24}
!55 = !{!50, !12, i64 32}
!56 = !{!50, !12, i64 40}
!57 = !{!"double", !9, i64 0}
!58 = !{!"enum_sum_memo", !12, i64 0, !12, i64 8, !12, i64 16, !57, i64 24, !57, i64 32, !10, i64 40, !10, i64 44}
!59 = !{!58, !12, i64 0}
!60 = !{!58, !10, i64 40}
!61 = !{!58, !12, i64 16}
!62 = !{!58, !12, i64 8}
!63 = !{!58, !10, i64 44}
!64 = !{!"RFloat", !22, i64 0, !57, i64 16}
!65 = !{!64, !57, i64 16}
!66 = !{!58, !57, i64 24}
!67 = !{!58, !57, i64 32}
!68 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!69 = !{!"p1 long", !14, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"chunk_arg", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!72 = !{!71, !12, i64 0}
!73 = !{!71, !12, i64 8}
!74 = !{!71, !12, i64 16}
!75 = !{!71, !12, i64 24}
!76 = !{!"slicebefore_arg", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!77 = !{!76, !12, i64 0}
!78 = !{!76, !12, i64 8}
!79 = !{!76, !12, i64 16}
!80 = !{!76, !12, i64 24}
!81 = !{!"sliceafter_arg", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!82 = !{!81, !12, i64 0}
!83 = !{!81, !12, i64 8}
!84 = !{!81, !12, i64 16}
!85 = !{!81, !12, i64 24}
!86 = !{!"slicewhen_arg", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !10, i64 32}
!87 = !{!86, !12, i64 0}
!88 = !{!86, !12, i64 8}
!89 = !{!86, !12, i64 16}
!90 = !{!86, !12, i64 24}
!91 = !{!86, !10, i64 32}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !"memcpy.inline"}
!95 = distinct !{!95, !94, !"memcpy.inline: argument 1"}
!96 = distinct !{!96, !94, !"memcpy.inline: argument 0"}
!97 = distinct !{!97, !"memcpy.inline"}
!98 = distinct !{!98, !97, !"memcpy.inline: argument 1"}
!99 = distinct !{!99, !97, !"memcpy.inline: argument 0"}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !"memcpy.inline"}
!102 = distinct !{!102, !101, !"memcpy.inline: argument 1"}
!103 = distinct !{!103, !101, !"memcpy.inline: argument 0"}
!104 = distinct !{!104, !"memcpy.inline"}
!105 = distinct !{!105, !104, !"memcpy.inline: argument 1"}
!106 = distinct !{!106, !104, !"memcpy.inline: argument 0"}
!107 = distinct !{!107, !25}
!108 = !{!96, !95}
!109 = !{!99, !98}
!110 = !{!103, !102}
!111 = !{!106, !105}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = !{!"branch_weights", i32 2146410443, i32 1073205}
!117 = !{!"branch_weights", i32 4001, i32 1}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{!57, !57, i64 0}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !25}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = !{!"branch_weights", i32 1073205, i32 2146410443}
!135 = !{!"vm_ifunc_argc", !10, i64 0, !10, i64 4}
!136 = !{!"vm_ifunc", !12, i64 0, !69, i64 8, !14, i64 16, !14, i64 24, !135, i64 32}
!137 = !{!136, !14, i64 24}
!138 = distinct !{!138, !25}
!139 = !{i64 2155309413}
!140 = distinct !{!140, !25}
!141 = !{i64 2155310111}
end_hunk_5
