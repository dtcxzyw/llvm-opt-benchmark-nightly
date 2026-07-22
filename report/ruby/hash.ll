inline.NumInlined: 822
inline.NumDeleted: 151
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_hash_default_proc:bb.a

bb.b:                                             ; preds = %RB_FL_TEST.exit
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  br label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit.thread:                           ; preds = %bb.a, %RB_FL_TEST.exit, %bb.b
  %.0 = phi i64 [ %i.h, %bb.b ], [ 4, %RB_FL_TEST.exit ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_key(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %1, ptr %i.a, align 16, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 4, ptr %i.b, align 8, !tbaa !11
  %i.c = ptrtoint ptr %i.a to i64
  call void @rb_hash_foreach(i64 noundef %0, ptr noundef @key_i, i64 noundef %i.c)
  %i.d = load i64, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_each_value(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @each_value_i, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %0, %bb.c ], [ %i.d, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_each_key(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @each_key_i, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %0, %bb.c ], [ %i.d, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_each_pair(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_block_pair_yield_optimizable() #29
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @each_pair_i_fast, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @rb_hash_foreach(i64 noundef %0, ptr noundef @each_pair_i, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %bb.e ], [ %0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_transform_keys(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.transform_keys_args, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !11
  %i.c = tail call i64 @rb_convert_type_with_id(i64 noundef %i.b, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29 ; 2 uses
  store i64 %i.c, ptr %3, align 8, !tbaa !102
  %i.d = tail call i32 @rb_block_given_p() #29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.d, ptr %i.e, align 8, !tbaa !104
  %i.f = icmp eq i64 %i.c, 0
  br label %bb.f

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.g = tail call i32 @rb_block_given_p() #29
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @rb_frame_this_func() #29
  %i.i = tail call i64 @rb_id2sym(i64 noundef %i.h) #29
  %i.j = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.l

bb.f:                                             ; preds = %bb.d, %bb.c
  %.not12 = phi i1 [ true, %bb.d ], [ %i.f, %bb.c ]
  %i.k = load i64, ptr @rb_cHash, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  store volatile ptr %i.m, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.k, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 6 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i64 4, ptr %i.p, align 8, !tbaa !11
  %i.q = inttoptr i64 %2 to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.s = and i64 %i.r, 32768
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = lshr i64 %i.r, 16
  %i.u = and i64 %i.t, 15
  br label %RHASH_EMPTY_P.exit

bb.h:                                             ; preds = %bb.f
  %i.v = add i64 %2, 24
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.u, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i64 %.0.i.i, 0
  br i1 %i.z, label %bb.l, label %bb.i

bb.i:                                             ; preds = %RHASH_EMPTY_P.exit
  br i1 %.not12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.aa, align 8, !tbaa !105
  %i.ab = ptrtoint ptr %3 to i64
  call void @rb_hash_foreach(i64 noundef %2, ptr noundef @transform_keys_hash_i, i64 noundef %i.ab)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @rb_hash_foreach(i64 noundef %2, ptr noundef @transform_keys_i, i64 noundef %i.n)
  br label %bb.l

bb.l:                                             ; preds = %RHASH_EMPTY_P.exit, %bb.k, %bb.j, %bb.e
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %RHASH_EMPTY_P.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_transform_keys_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #31
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !11
  %i.d = tail call i64 @rb_convert_type_with_id(i64 noundef %i.c, i32 noundef 8, ptr noundef nonnull @.str.2, i64 noundef 3313) #29
  %i.e = tail call i32 @rb_block_given_p() #29
  %i.f = icmp eq i32 %i.e, 0
  br label %bb.f

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.g = tail call i32 @rb_block_given_p() #29
  %.not35 = icmp eq i32 %i.g, 0
  br i1 %.not35, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i64 @rb_frame_this_func() #29
  %i.i = tail call i64 @rb_id2sym(i64 noundef %i.h) #29
  %i.j = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %compact_after_delete.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.033 = phi i1 [ %i.f, %bb.c ], [ true, %bb.d ]
  %.032 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.d ]   ; 2 uses
  %i.k = icmp ne i64 %2, 0
  %i.l = and i64 %2, 7
  %i.m = icmp eq i64 %i.l, 0
  %.not3.i.i.i = and i1 %i.k, %i.m
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.f
  %i.n = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 4 uses
  %i.p = and i64 %i.o, 2048
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.f
  tail call void @rb_error_frozen_object(i64 noundef %2) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i = or i1 %i.r, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.g, !prof !68

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #29
  %.pre = load i64, ptr %i.n, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.g
  %i.t = phi i64 [ %i.o, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.g ] ; 3 uses
  %i.u = and i64 %i.t, 32768
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_hash_modify_check.exit
  %i.v = lshr i64 %i.t, 16
  %i.w = and i64 %i.v, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.i:                                             ; preds = %rb_hash_modify_check.exit
  %i.x = add i64 %2, 24
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  br label %RHASH_TABLE_EMPTY_P.exit

RHASH_TABLE_EMPTY_P.exit:                         ; preds = %bb.h, %bb.i
  %.0.i.i = phi i64 [ %i.w, %bb.h ], [ %i.aa, %bb.i ]
  %.not55 = icmp eq i64 %.0.i.i, 0
  br i1 %.not55, label %bb.y, label %bb.j

bb.j:                                             ; preds = %RHASH_TABLE_EMPTY_P.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  store volatile ptr %i.ac, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef 0, i64 noundef 8, i32 noundef 0, i64 noundef 160) #29 ; 4 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  store i64 4, ptr %i.af, align 8, !tbaa !11
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !13  ; 2 uses
  %i.ah = and i64 %i.ag, 32768
  %.not.i.i40 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i40, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = lshr i64 %i.ag, 16
  %i.aj = and i64 %i.ai, 15
  br label %RHASH_SIZE.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = add i64 %2, 24
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !51
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.aj, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = shl i64 %.0.i, 1
  %i.ap = tail call i64 @rb_ary_hidden_new(i64 noundef %i.ao) #29 ; 3 uses
  tail call void @rb_hash_foreach(i64 noundef %2, ptr noundef @flatten_i, i64 noundef %i.ap)
  %i.aq = inttoptr i64 %i.ap to ptr               ; 5 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16     ; 3 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 32     ; 2 uses
  %.not37 = icmp eq i64 %.032, 0
  %i.at = add i64 %i.ad, 24
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  br label %bb.m

bb.m:                                             ; preds = %hash_stlike_lookup.exit.thread52, %RHASH_SIZE.exit
  %.034 = phi i64 [ 0, %RHASH_SIZE.exit ], [ %i.cj, %hash_stlike_lookup.exit.thread52 ] ; 4 uses
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.ax = and i64 %i.aw, 8192
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %5, label %rb_array_len.exit.a

rb_array_len.exit.a:                              ; preds = %bb.m
  %3 = lshr i64 %i.aw, 15
  %4 = and i64 %3, 127
  br label %rb_array_len.exit.thread

5:                                                ; preds = %bb.m
  %6 = load i64, ptr %i.ar, align 8, !tbaa !24
  br label %rb_array_len.exit.thread

rb_array_len.exit.thread:                         ; preds = %rb_array_len.exit.a, %5
  %.0.i41 = phi i64 [ %4, %rb_array_len.exit.a ], [ %6, %5 ]
  %i.ay = icmp slt i64 %.034, %.0.i41
  br i1 %i.ay, label %.thread, label %bb.x

.thread:                                          ; preds = %rb_array_len.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %7 = load i64, ptr %i.aq, align 8, !tbaa !13
  %8 = and i64 %7, 8192
  %.not.i.i42 = icmp eq i64 %8, 0
  br i1 %.not.i.i42, label %bb.n, label %RARRAY_AREF.exit

bb.n:                                             ; preds = %.thread
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !24
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %.thread, %bb.n
  %.0.i.i43 = phi ptr [ %i.az, %bb.n ], [ %i.ar, %.thread ]
  %i.ba = getelementptr [8 x i8], ptr %.0.i.i43, i64 %.034
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11 ; 3 uses
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !11
  br i1 %.not37, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %RARRAY_AREF.exit
  %i.bc = call i64 @rb_hash_lookup2(i64 noundef %.032, i64 noundef %i.bb, i64 noundef 36) ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 36
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  br i1 %.033, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %RARRAY_AREF.exit
  %.sink = phi i64 [ %i.bb, %RARRAY_AREF.exit ], [ %i.be, %bb.p ]
  %i.bf = call i64 @rb_yield(i64 noundef %.sink) #29
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.p, %bb.o
  %.031 = phi i64 [ %i.bc, %bb.o ], [ %i.be, %bb.p ], [ %i.bf, %.sink.split ] ; 2 uses
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !13
  %i.bh = and i64 %i.bg, 8192
  %.not.i.i44 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i44, label %bb.r, label %RARRAY_AREF.exit46

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !24
  br label %RARRAY_AREF.exit46

RARRAY_AREF.exit46:                               ; preds = %bb.q, %bb.r
  %.0.i.i45 = phi ptr [ %i.bi, %bb.r ], [ %i.ar, %bb.q ]
  %i.bj = getelementptr [8 x i8], ptr %.0.i.i45, i64 %.034
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.bn = load i64, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.bo = and i64 %i.bn, 32768
  %.not.i.i47 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i47, label %bb.s, label %hash_stlike_lookup.exit

bb.s:                                             ; preds = %RARRAY_AREF.exit46
  %i.bp = and i64 %i.bn, 983040
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %hash_stlike_lookup.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @any_hash(i64 noundef %i.bm, ptr noundef nonnull @obj_any_hash)
  %i.bs = load i64, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.bt = and i64 %i.bs, 32768
  %.not.i.i.i49 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i49, label %bb.u, label %hash_stlike_lookup.exit, !prof !64

bb.u:                                             ; preds = %bb.t
  %i.bu = trunc i64 %i.br to i8
  %i.bv = trunc i64 %i.bs to i32
  %i.bw = lshr i32 %i.bv, 20
  %i.bx = and i32 %i.bw, 15                       ; 2 uses
  %.not19.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not19.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.u
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.bx to i64
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.w ] ; 4 uses
  %i.by = getelementptr i8, ptr %i.au, i64 %indvars.iv.i.i.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = icmp eq i8 %i.bz, %i.bu
  br i1 %i.ca, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr [16 x i8], ptr %i.av, i64 %indvars.iv.i.i.i.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !45
  %i.cd = call fastcc i32 @ar_equal(i64 noundef %i.bm, i64 noundef %i.cc)
  %.not.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %ar_find_entry.exit.i.i

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %hash_stlike_lookup.exit.thread, label %.lr.ph.i.i.i.i, !llvm.loop !57

ar_find_entry.exit.i.i:                           ; preds = %bb.v
  %i.ce = icmp eq i64 %indvars.iv.i.i.i.i, 8
  br i1 %i.ce, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread52

hash_stlike_lookup.exit:                          ; preds = %RARRAY_AREF.exit46, %bb.t
  %i.cf = call i32 @rb_st_lookup(ptr noundef nonnull %i.au, i64 noundef %i.bm, ptr noundef null) #29
  %.not39 = icmp eq i32 %i.cf, 0
  br i1 %.not39, label %hash_stlike_lookup.exit.thread, label %hash_stlike_lookup.exit.thread52

hash_stlike_lookup.exit.thread:                   ; preds = %bb.w, %bb.u, %ar_find_entry.exit.i.i, %bb.s, %hash_stlike_lookup.exit
  %i.cg = call i32 @rb_hash_stlike_delete(i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  br label %hash_stlike_lookup.exit.thread52

hash_stlike_lookup.exit.thread52:                 ; preds = %ar_find_entry.exit.i.i, %hash_stlike_lookup.exit.thread, %hash_stlike_lookup.exit
  %i.ch = call i64 @rb_hash_aset(i64 noundef %2, i64 noundef %.031, i64 noundef %i.bl) ; 0 uses
  %i.ci = call i64 @rb_hash_aset(i64 noundef %i.ad, i64 noundef %.031, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.cj = add i64 %.034, 2
  br label %bb.m, !llvm.loop !106

bb.x:                                             ; preds = %rb_array_len.exit.thread
  %i.ck = call i64 @rb_ary_clear(i64 noundef %i.ap) #29 ; 0 uses
  %i.cl = call i64 @rb_hash_clear(i64 noundef %i.ad) ; 0 uses
  %.pre58 = load i64, ptr %i.n, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %RHASH_TABLE_EMPTY_P.exit
  %i.cm = phi i64 [ %.pre58, %bb.x ], [ %i.t, %RHASH_TABLE_EMPTY_P.exit ]
  %i.cn = and i64 %i.cm, 4261445632
  %or.cond.i = icmp eq i64 %i.cn, 32768
  br i1 %or.cond.i, label %bb.z, label %compact_after_delete.exit

bb.z:                                             ; preds = %bb.y
  %i.co = add i64 %2, 24
  %i.cp = inttoptr i64 %i.co to ptr
  call void @rb_st_compact_table(ptr noundef nonnull %i.cp) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.z, %bb.y, %bb.e
  %.0 = phi i64 [ %i.j, %bb.e ], [ %2, %bb.y ], [ %2, %bb.z ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_transform_values(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_frame_this_func() #29
  %i.d = tail call i64 @rb_id2sym(i64 noundef %i.c) #29
  %i.e = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.d, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %compact_after_delete.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = and i64 %i.h, 32768
  %.not.i.i.not.i = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not.i.i.not.i, i64 160, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.f, i64 noundef 8, i32 noundef 0, i64 noundef %i.j) #29 ; 10 uses
  %i.n = inttoptr i64 %i.m to ptr                 ; 7 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  store i64 4, ptr %i.o, align 8, !tbaa !11
  %i.p = load i64, ptr %i.g, align 8, !tbaa !13
  %i.q = and i64 %i.p, 32768
  %i.r = load i64, ptr %i.n, align 8, !tbaa !13
  %i.s = and i64 %i.r, -32769
  %storemerge.i = or disjoint i64 %i.s, %i.q
  store i64 %storemerge.i, ptr %i.n, align 8, !tbaa !13
  %i.t = tail call fastcc i64 @hash_copy(i64 noundef %i.m, i64 noundef %0) ; 0 uses
  %i.u = load i64, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.v = and i64 %i.u, -16385
  store i64 %i.v, ptr %i.n, align 8, !tbaa !13
  store i64 4, ptr %i.o, align 8, !tbaa !11
  %i.w = load i64, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.x = and i64 %i.w, 32768
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = lshr i64 %i.w, 16
  %i.z = and i64 %i.y, 15
  br label %RHASH_EMPTY_P.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %0, 24
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.z, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = icmp eq i64 %.0.i.i, 0
  br i1 %i.ae, label %compact_after_delete.exit, label %bb.f

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.af = lshr i64 %i.u, 25
  %i.ag = and i64 %i.af, 127                      ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 127
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11
  %i.aj = tail call i64 @rb_ivar_get(i64 noundef %i.m, i64 noundef %i.ai) #29
  %i.ak = ashr i64 %i.aj, 1
  %i.al = add nsw i64 %i.ak, 1                    ; 2 uses
  %i.am = icmp ult i64 %i.al, 4611686018427387904
  br i1 %i.am, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.98) #31
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ao = and i64 %i.u, -4261429249
  %i.ap = shl nuw nsw i64 %i.ag, 25
  %i.aq = add nuw nsw i64 %i.ap, 33554432
  %i.ar = or i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.n, align 8, !tbaa !13
  %i.as = icmp samesign ult i64 %i.ag, 126
  br i1 %i.as, label %transform_values.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.0.i.i10 = phi i64 [ %i.al, %bb.g ], [ 127, %bb.i ]
  %i.at = load i64, ptr @id_hash_iter_lev, align 8, !tbaa !11
  %i.au = shl nuw nsw i64 %.0.i.i10, 1
  %i.av = or disjoint i64 %i.au, 1
  tail call void @rb_ivar_set_internal(i64 noundef %i.m, i64 noundef %i.at, i64 noundef %i.av) #29
  br label %transform_values.exit

transform_values.exit:                            ; preds = %bb.i, %bb.j
  %i.aw = tail call i64 @rb_ensure(ptr noundef nonnull @transform_values_call, i64 noundef %i.m, ptr noundef nonnull @hash_foreach_ensure, i64 noundef %i.m) #29 ; 0 uses
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !13
  %i.ay = and i64 %i.ax, 4261445632
  %or.cond.i = icmp eq i64 %i.ay, 32768
  br i1 %or.cond.i, label %bb.k, label %compact_after_delete.exit

bb.k:                                             ; preds = %transform_values.exit
  %i.az = add i64 %i.m, 24
  %i.ba = inttoptr i64 %i.az to ptr
  tail call void @rb_st_compact_table(ptr noundef nonnull %i.ba) #29
  br label %compact_after_delete.exit

compact_after_delete.exit:                        ; preds = %bb.k, %transform_values.exit, %RHASH_EMPTY_P.exit, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.m, %RHASH_EMPTY_P.exit ], [ %i.m, %transform_values.exit ], [ %i.m, %bb.k ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_hash_transform_values_bang(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #29
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #29
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @hash_enum_size) #29
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not3.i.i.i = and i1 %i.e, %i.g
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !73

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13   ; 4 uses
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !74

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #31
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.k = and i64 %i.i, 31
  %i.l = icmp ne i64 %i.k, 5
  %i.m = and i64 %i.i, 49152
  %.not8.i.i = icmp eq i64 %i.m, 0
  %or.cond.i.i = or i1 %i.l, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_hash_modify_check.exit, label %bb.d, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #29
  %.pre = load i64, ptr %i.h, align 8, !tbaa !13
  br label %rb_hash_modify_check.exit

rb_hash_modify_check.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.n = phi i64 [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre, %bb.d ] ; 4 uses
  %i.o = and i64 %i.n, 32768
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_hash_modify_check.exit
  %i.p = lshr i64 %i.n, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_TABLE_EMPTY_P.exit

bb.f:                                             ; preds = %rb_hash_modify_check.exit
  %i.r = add i64 %0, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !51
end_hunk_0
