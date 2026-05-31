inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@slicewhen_i:bb.a
bb.f:                                             ; preds = %RARRAY_PTR.exit18
  %i.ad = getelementptr i8, ptr %.0.i.i17, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !139
  %i.af = tail call i64 @rb_funcallv(i64 noundef %i.ae, i64 noundef 136, i32 noundef 1, ptr noundef nonnull %i.aa) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RARRAY_PTR.exit18
  ret i64 4
}

declare void @rb_ary_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @slicewhen_ii(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  tail call void @rb_gc_writebarrier_unprotect(i64 noundef %1) #13
  %i.b = inttoptr i64 %1 to ptr                   ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !21
  %i.d = and i64 %i.c, 8192
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 16
  br label %RARRAY_PTR.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  br label %RARRAY_PTR.exit

RARRAY_PTR.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  switch i32 %2, label %bb.e [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %RARRAY_PTR.exit
  %i.h = load i64, ptr %3, align 8, !tbaa !11
  br label %rb_enum_values_pack.exit

bb.e:                                             ; preds = %RARRAY_PTR.exit
  %i.i = sext i32 %2 to i64
  %i.j = tail call i64 @rb_ary_new_from_values(i64 noundef %i.i, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %RARRAY_PTR.exit, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.e ], [ %i.h, %bb.d ], [ 4, %RARRAY_PTR.exit ] ; 6 uses
  %i.k = getelementptr i8, ptr %.0.i.i, i64 8     ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !137  ; 2 uses
  %i.m = icmp eq i64 %i.l, 36
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_enum_values_pack.exit
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !137
  %i.n = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %.0.i) #13
  %i.o = getelementptr i8, ptr %.0.i.i, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !138
  br label %bb.o

bb.g:                                             ; preds = %rb_enum_values_pack.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.l, ptr %i.a, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.0.i, ptr %i.p, align 8, !tbaa !11
  %i.q = load i64, ptr %.0.i.i, align 8, !tbaa !135
  %i.r = call i64 @rb_funcallv(i64 noundef %i.q, i64 noundef 3473, i32 noundef 2, ptr noundef nonnull %i.a) #13
  %i.s = and i64 %i.r, -5
  %i.t = icmp ne i64 %i.s, 0
  call void @rb_gc_writebarrier_unprotect(i64 noundef %1) #13
  %i.u = load i64, ptr %i.b, align 8, !tbaa !21
  %i.v = and i64 %i.u, 8192
  %.not.i.i24 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.b, i64 16
  br label %RARRAY_PTR.exit26

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.b, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  br label %RARRAY_PTR.exit26

RARRAY_PTR.exit26:                                ; preds = %bb.h, %bb.i
  %.0.i.i25 = phi ptr [ %i.w, %bb.h ], [ %i.y, %bb.i ] ; 5 uses
  %i.z = getelementptr i8, ptr %.0.i.i25, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !140
  %.not = icmp ne i32 %i.aa, 0
  %spec.select = xor i1 %i.t, %.not
  br i1 %spec.select, label %bb.j, label %bb.m

bb.j:                                             ; preds = %RARRAY_PTR.exit26
  %i.ab = getelementptr i8, ptr %.0.i.i25, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !139
  %i.ad = getelementptr i8, ptr %.0.i.i25, i64 16
  %i.ae = call i64 @rb_funcallv(i64 noundef %i.ac, i64 noundef 136, i32 noundef 1, ptr noundef %i.ad) #13 ; 0 uses
  call void @rb_gc_writebarrier_unprotect(i64 noundef %1) #13
  %i.af = load i64, ptr %i.b, align 8, !tbaa !21
  %i.ag = and i64 %i.af, 8192
  %.not.i.i27 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.b, i64 16
  br label %RARRAY_PTR.exit29

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.b, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !23
  br label %RARRAY_PTR.exit29

RARRAY_PTR.exit29:                                ; preds = %bb.k, %bb.l
  %.0.i.i28 = phi ptr [ %i.ah, %bb.k ], [ %i.aj, %bb.l ] ; 2 uses
  %i.ak = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %.0.i) #13
  %i.al = getelementptr i8, ptr %.0.i.i28, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !138
  br label %bb.n

bb.m:                                             ; preds = %RARRAY_PTR.exit26
  %i.am = getelementptr i8, ptr %.0.i.i25, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !138
  %i.ao = call i64 @rb_ary_push(i64 noundef %i.an, i64 noundef %.0.i) #13 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %RARRAY_PTR.exit29
  %.023 = phi ptr [ %.0.i.i28, %RARRAY_PTR.exit29 ], [ %.0.i.i25, %bb.m ]
  %i.ap = getelementptr i8, ptr %.023, i64 8
  store i64 %.0.i, ptr %i.ap, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  ret i64 4
}

declare i32 @rb_range_values(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @enum_sum_i(i64 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 %4) #0 {
bb.a:
  switch i32 %2, label %bb.c [
    i32 0, label %rb_enum_values_pack.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !11
  br label %rb_enum_values_pack.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = tail call i64 @rb_ary_new_from_values(i64 noundef %i.b, ptr noundef %3) #13
  br label %rb_enum_values_pack.exit

rb_enum_values_pack.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.a, %bb.b ], [ 4, %bb.a ]
  %i.d = inttoptr i64 %1 to ptr
  tail call fastcc void @sum_iter(i64 noundef %.0.i, ptr noundef %i.d)
  ret i64 4
}

declare i64 @rb_rational_plus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_big_minus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_int_ge(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_int_minus(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_hash_foreach(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @hash_sum_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_assoc_new(i64 noundef %0, i64 noundef %1) #13
  %i.b = inttoptr i64 %2 to ptr
  tail call fastcc void @sum_iter(i64 noundef %i.a, ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sum_iter(i64 noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !91
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_yield(i64 noundef %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.b ], [ %0, %bb.a ]    ; 14 uses
  %i.f = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sum_iter_Kahan_Babuska(i64 noundef %.0, ptr noundef nonnull %1)
  br label %sum_iter_fixnum.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %1, align 8, !tbaa !88     ; 9 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %bb.e
  switch i64 %i.h, label %bb.g [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.m = and i64 %i.h, 255
  %or.cond = icmp eq i64 %i.m, 12
  br i1 %or.cond, label %rb_type.exit.thread, label %rb_type.exit.thread32

rb_type.exit:                                     ; preds = %bb.e
  %i.n = inttoptr i64 %i.h to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  switch i32 %i.q, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread32
    i32 21, label %rb_type.exit.thread32
    i32 10, label %rb_type.exit.thread32
    i32 15, label %rb_type.exit.thread32
  ]

rb_type.exit.thread:                              ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %rb_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.0, ptr %i.b, align 8, !tbaa !11
  %i.r = call i64 @rb_funcallv(i64 noundef %i.h, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.b) #13
  store i64 %i.r, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sum_iter_fixnum.exit

rb_type.exit.thread32:                            ; preds = %bb.g, %rb_type.exit, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.s = icmp eq i64 %.0, 0
  %i.t = and i64 %.0, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %bb.h, label %rb_type.exit27

bb.h:                                             ; preds = %rb_type.exit.thread32
  switch i64 %.0, label %bb.i [
    i64 0, label %rb_type.exit27.thread
    i64 4, label %rb_type.exit27.thread
    i64 20, label %rb_type.exit27.thread
    i64 36, label %rb_type.exit27.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = trunc i64 %.0 to i1
  br i1 %i.w, label %rb_type.exit27.thread36, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = and i64 %.0, 254
  %i.y = icmp eq i64 %i.x, 12
  br i1 %i.y, label %rb_type.exit27.thread, label %rb_type.exit27.thread38

rb_type.exit27:                                   ; preds = %rb_type.exit.thread32
  %i.z = inttoptr i64 %.0 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 31
  switch i32 %i.ac, label %rb_type.exit27.thread [
    i32 21, label %rb_type.exit27.thread36
    i32 10, label %bb.k
    i32 15, label %bb.l
    i32 4, label %rb_type.exit27.thread38
  ]

rb_type.exit27.thread36:                          ; preds = %bb.i, %rb_type.exit27
  %i.ad = ashr i64 %.0, 1
  %i.ae = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !92
  %i.ag = add i64 %i.af, %i.ad                    ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !92
  %i.ah = add i64 %i.ag, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.ah, -1
  br i1 %or.cond.i, label %sum_iter_fixnum.exit, label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %rb_type.exit27.thread36
  %i.ai = tail call i64 @rb_int2big(i64 noundef %i.ag) #13
  %i.aj = load i64, ptr %1, align 8, !tbaa !88
  %i.ak = tail call i64 @rb_big_plus(i64 noundef %i.ai, i64 noundef %i.aj) #13
  store i64 %i.ak, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.ae, align 8, !tbaa !92
  br label %sum_iter_fixnum.exit

bb.k:                                             ; preds = %rb_type.exit27
  %i.al = tail call i64 @rb_big_plus(i64 noundef %.0, i64 noundef %i.h) #13
  store i64 %i.al, ptr %1, align 8, !tbaa !88
  br label %sum_iter_fixnum.exit

bb.l:                                             ; preds = %rb_type.exit27
  %i.am = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !93 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 36
  br i1 %i.ao, label %sum_iter_rational.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call i64 @rb_rational_plus(i64 noundef %i.an, i64 noundef %.0) #13
  br label %sum_iter_rational.exit

sum_iter_rational.exit:                           ; preds = %bb.l, %bb.m
  %storemerge.i = phi i64 [ %i.ap, %bb.m ], [ %.0, %bb.l ]
  store i64 %storemerge.i, ptr %i.am, align 8, !tbaa !93
  br label %sum_iter_fixnum.exit

rb_type.exit27.thread38:                          ; preds = %bb.j, %rb_type.exit27
  %i.aq = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !92
  %i.as = shl i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  %i.au = tail call i64 @rb_fix_plus(i64 noundef %i.at, i64 noundef %i.h) #13 ; 4 uses
  store i64 %i.au, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.aq, align 8, !tbaa !92
  %i.av = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !93 ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = and i64 %i.aw, 7
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = or i1 %i.ax, %i.az
  br i1 %i.ba, label %sum_iter_normalize_memo.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %rb_type.exit27.thread38
  %i.bb = inttoptr i64 %i.aw to ptr
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !21
  %i.bd = and i64 %i.bc, 31
  %i.be = icmp eq i64 %i.bd, 15
  br i1 %i.be, label %bb.n, label %sum_iter_normalize_memo.exit

bb.n:                                             ; preds = %rb_type.exit.i
  %i.bf = tail call i64 @rb_rational_plus(i64 noundef %i.aw, i64 noundef %i.au) #13 ; 2 uses
  store i64 %i.bf, ptr %1, align 8, !tbaa !88
  br label %sum_iter_normalize_memo.exit

sum_iter_normalize_memo.exit:                     ; preds = %rb_type.exit27.thread38, %rb_type.exit.i, %bb.n
  %i.bg = phi i64 [ %i.au, %rb_type.exit27.thread38 ], [ %i.au, %rb_type.exit.i ], [ %i.bf, %bb.n ]
  store i64 36, ptr %i.av, align 8, !tbaa !93
  %i.bh = tail call double @rb_num2dbl(i64 noundef %i.bg) #13
  %i.bi = getelementptr i8, ptr %1, i64 24
  store double %i.bh, ptr %i.bi, align 8, !tbaa !97
  %i.bj = getelementptr i8, ptr %1, i64 32
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !98
  store i32 1, ptr %i.f, align 4, !tbaa !94
  tail call fastcc void @sum_iter_Kahan_Babuska(i64 noundef %.0, ptr noundef nonnull %1)
  br label %sum_iter_fixnum.exit

rb_type.exit27.thread:                            ; preds = %bb.j, %bb.h, %bb.h, %bb.h, %bb.h, %rb_type.exit27
  %i.bk = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !92
  %i.bm = shl i64 %i.bl, 1
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = tail call i64 @rb_fix_plus(i64 noundef %i.bn, i64 noundef %i.h) #13 ; 4 uses
  store i64 %i.bo, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.bk, align 8, !tbaa !92
  %i.bp = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !93 ; 4 uses
  %i.br = icmp eq i64 %i.bq, 0
  %i.bs = and i64 %i.bq, 7
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = or i1 %i.br, %i.bt
  br i1 %i.bu, label %sum_iter_normalize_memo.exit29, label %rb_type.exit.i28

rb_type.exit.i28:                                 ; preds = %rb_type.exit27.thread
  %i.bv = inttoptr i64 %i.bq to ptr
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21
  %i.bx = and i64 %i.bw, 31
  %i.by = icmp eq i64 %i.bx, 15
  br i1 %i.by, label %bb.o, label %sum_iter_normalize_memo.exit29

bb.o:                                             ; preds = %rb_type.exit.i28
  %i.bz = tail call i64 @rb_rational_plus(i64 noundef %i.bq, i64 noundef %i.bo) #13 ; 2 uses
  store i64 %i.bz, ptr %1, align 8, !tbaa !88
  br label %sum_iter_normalize_memo.exit29

sum_iter_normalize_memo.exit29:                   ; preds = %rb_type.exit27.thread, %rb_type.exit.i28, %bb.o
  %i.ca = phi i64 [ %i.bo, %rb_type.exit27.thread ], [ %i.bo, %rb_type.exit.i28 ], [ %i.bz, %bb.o ]
  store i64 36, ptr %i.bp, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0, ptr %i.a, align 8, !tbaa !11
  %i.cb = call i64 @rb_funcallv(i64 noundef %i.ca, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.a) #13
  store i64 %i.cb, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %sum_iter_fixnum.exit

sum_iter_fixnum.exit:                             ; preds = %rb_long2num_inline.exit.i, %rb_type.exit27.thread36, %sum_iter_normalize_memo.exit29, %sum_iter_normalize_memo.exit, %sum_iter_rational.exit, %bb.k, %rb_type.exit.thread, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sum_iter_Kahan_Babuska(i64 noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread53, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %0, 254
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %rb_type.exit.thread, label %rb_type.exit.thread51

rb_type.exit:                                     ; preds = %bb.a
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread51
    i32 21, label %rb_type.exit.thread53
    i32 10, label %bb.h
    i32 15, label %bb.i
  ]

rb_type.exit.thread51:                            ; preds = %bb.d, %rb_type.exit
  %i.m = and i64 %0, 3
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %rb_type.exit.thread51
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = ashr i64 %0, 63
  %i.o = add nsw i64 %.neg.i.i, 2
  %i.p = and i64 %0, -4
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.q, i64 range(i64 1, 0) %i.q, i64 61)
  %i.s = bitcast i64 %i.r to double
  br label %rb_float_value_inline.exit

bb.g:                                             ; preds = %rb_type.exit.thread51
  %i.t = inttoptr i64 %0 to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !95
  br label %rb_float_value_inline.exit

rb_type.exit.thread53:                            ; preds = %bb.c, %rb_type.exit
  %i.w = ashr i64 %0, 1
  %i.x = sitofp i64 %i.w to double
  br label %rb_float_value_inline.exit

bb.h:                                             ; preds = %rb_type.exit
  %i.y = tail call double @rb_big2dbl(i64 noundef %0) #13
  br label %rb_float_value_inline.exit

bb.i:                                             ; preds = %rb_type.exit
  %i.z = tail call double @rb_num2dbl(i64 noundef %0) #13
  br label %rb_float_value_inline.exit

rb_type.exit.thread:                              ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.aa = getelementptr i8, ptr %1, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !97 ; 2 uses
  %i.ac = bitcast double %i.ab to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ac, 3458764513820540928
  br i1 %cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %rb_type.exit.thread
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
  store i64 %.0.i46, ptr %1, align 8, !tbaa !88
  %i.an = getelementptr i8, ptr %1, i64 44
  store i32 0, ptr %i.an, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.ao = call i64 @rb_funcallv(i64 noundef %.0.i46, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.a) #13
  store i64 %i.ao, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

rb_float_value_inline.exit:                       ; preds = %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %rb_type.exit.thread53
  %.041 = phi double [ %i.z, %bb.i ], [ %i.x, %rb_type.exit.thread53 ], [ %i.y, %bb.h ], [ %i.v, %bb.g ], [ %i.s, %bb.f ], [ 0.000000e+00, %bb.e ] ; 7 uses
  %i.ap = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !97 ; 8 uses
  %i.ar = fcmp uno double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %rb_float_value_inline.exit
  %i.as = tail call double @llvm.fabs.f64(double %.041) ; 3 uses
  %i.at = fcmp ueq double %i.as, +inf
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = fcmp oeq double %i.as, +inf
  %i.av = tail call double @llvm.fabs.f64(double %i.aq) #18
  %i.aw = fcmp oeq double %i.av, +inf
  %or.cond = and i1 %i.au, %i.aw
  br i1 %or.cond, label %bb.p, label %rb_float_new_inline.exit49

bb.p:                                             ; preds = %bb.o
  %i.ax = bitcast double %.041 to i64
  %i.ay = bitcast double %i.aq to i64
  %.not.unshifted = xor i64 %i.ay, %i.ax
  %.not = icmp sgt i64 %.not.unshifted, -1
  br i1 %.not, label %rb_float_new_inline.exit49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = tail call i64 @rb_float_new_in_heap(double noundef %i.aq) #13
  br label %rb_float_new_inline.exit49

rb_float_new_inline.exit49:                       ; preds = %bb.q, %bb.p, %bb.o
  %.1 = phi double [ %.041, %bb.o ], [ %.041, %bb.p ], [ +qnan, %bb.q ]
  %.0 = phi i64 [ %0, %bb.o ], [ %0, %bb.p ], [ %i.az, %bb.q ]
  store i64 %.0, ptr %1, align 8, !tbaa !88
  store double %.1, ptr %i.ap, align 8, !tbaa !97
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.ba = tail call double @llvm.fabs.f64(double %i.aq) ; 2 uses
  %i.bb = fcmp oeq double %i.ba, +inf
  br i1 %i.bb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !98
  %i.be = fadd double %.041, %i.aq                ; 3 uses
  %i.bf = fcmp ult double %i.ba, %i.as
  %i.bg = fsub double %i.aq, %i.be
  %i.bh = fadd double %.041, %i.bg
  %i.bi = fsub double %.041, %i.be
  %i.bj = fadd double %i.aq, %i.bi
  %.pn = select i1 %i.bf, double %i.bj, double %i.bh
  %.040 = fadd double %.pn, %i.bd
  store double %i.be, ptr %i.ap, align 8, !tbaa !97
  store double %.040, ptr %i.bc, align 8, !tbaa !98
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
  %i.a = load i64, ptr %3, align 8, !tbaa !11
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
end_hunk_0
