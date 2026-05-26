inline.NumInlined: 672
inline.NumDeleted: 87
begin_hunk_0_@slicewhen_i:bb.a
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %bb.f

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
  %2 = freeze i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %2, %bb.b ], [ %0, %bb.a ]      ; 15 uses
  %i.f = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !94
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sum_iter_Kahan_Babuska(i64 noundef %.0, ptr noundef nonnull %1)
  br label %sum_iter_fixnum.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load i64, ptr %1, align 8, !tbaa !88
  %.fr41 = freeze i64 %i.h                        ; 10 uses
  %i.i = icmp eq i64 %.fr41, 0
  %i.j = and i64 %.fr41, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i64 @llvm.fshl.i64(i64 %.fr41, i64 %.fr41, i64 62)
  switch i64 %i.m, label %bb.g [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = and i64 %.fr41, 255
  %or.cond = icmp eq i64 %i.n, 12
  br i1 %or.cond, label %rb_type.exit.thread, label %rb_type.exit.thread32

rb_type.exit:                                     ; preds = %bb.e
  %i.o = inttoptr i64 %.fr41 to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 31
  switch i32 %i.r, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread32
    i32 21, label %rb_type.exit.thread32
    i32 10, label %rb_type.exit.thread32
    i32 15, label %rb_type.exit.thread32
  ]

rb_type.exit.thread:                              ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %rb_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.0, ptr %i.b, align 8, !tbaa !11
  %i.s = call i64 @rb_funcallv(i64 noundef %.fr41, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.b) #13
  store i64 %i.s, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sum_iter_fixnum.exit

rb_type.exit.thread32:                            ; preds = %bb.g, %rb_type.exit, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.t = icmp eq i64 %.0, 0
  %i.u = and i64 %.0, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %bb.h, label %rb_type.exit27

bb.h:                                             ; preds = %rb_type.exit.thread32
  %i.x = tail call i64 @llvm.fshl.i64(i64 %.0, i64 %.0, i64 62)
  switch i64 %i.x, label %bb.i [
    i64 0, label %rb_type.exit27.thread
    i64 1, label %rb_type.exit27.thread
    i64 5, label %rb_type.exit27.thread
    i64 9, label %rb_type.exit27.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = trunc i64 %.0 to i1
  br i1 %i.y, label %rb_type.exit27.thread37, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = and i64 %.0, 254
  %i.aa = icmp eq i64 %i.z, 12
  br i1 %i.aa, label %rb_type.exit27.thread, label %rb_type.exit27.thread39

rb_type.exit27:                                   ; preds = %rb_type.exit.thread32
  %i.ab = inttoptr i64 %.0 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 31
  switch i32 %i.ae, label %rb_type.exit27.thread [
    i32 21, label %rb_type.exit27.thread37
    i32 10, label %bb.k
    i32 15, label %bb.l
    i32 4, label %rb_type.exit27.thread39
  ]

rb_type.exit27.thread37:                          ; preds = %bb.i, %rb_type.exit27
  %i.af = ashr i64 %.0, 1
  %i.ag = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !92
  %i.ai = add i64 %i.ah, %i.af                    ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !92
  %i.aj = add i64 %i.ai, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aj, -1
  br i1 %or.cond.i, label %sum_iter_fixnum.exit, label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %rb_type.exit27.thread37
  %i.ak = tail call i64 @rb_int2big(i64 noundef %i.ai) #13
  %i.al = load i64, ptr %1, align 8, !tbaa !88
  %i.am = tail call i64 @rb_big_plus(i64 noundef %i.ak, i64 noundef %i.al) #13
  store i64 %i.am, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.ag, align 8, !tbaa !92
  br label %sum_iter_fixnum.exit

bb.k:                                             ; preds = %rb_type.exit27
  %i.an = tail call i64 @rb_big_plus(i64 noundef %.0, i64 noundef %.fr41) #13
  store i64 %i.an, ptr %1, align 8, !tbaa !88
  br label %sum_iter_fixnum.exit

bb.l:                                             ; preds = %rb_type.exit27
  %i.ao = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !93 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 36
  br i1 %i.aq, label %sum_iter_rational.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = tail call i64 @rb_rational_plus(i64 noundef %i.ap, i64 noundef %.0) #13
  br label %sum_iter_rational.exit

sum_iter_rational.exit:                           ; preds = %bb.l, %bb.m
  %storemerge.i = phi i64 [ %i.ar, %bb.m ], [ %.0, %bb.l ]
  store i64 %storemerge.i, ptr %i.ao, align 8, !tbaa !93
  br label %sum_iter_fixnum.exit

rb_type.exit27.thread39:                          ; preds = %bb.j, %rb_type.exit27
  %i.as = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !92
  %i.au = shl i64 %i.at, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = tail call i64 @rb_fix_plus(i64 noundef %i.av, i64 noundef %.fr41) #13 ; 4 uses
  store i64 %i.aw, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.as, align 8, !tbaa !92
  %i.ax = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !93 ; 4 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = and i64 %i.ay, 7
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %sum_iter_normalize_memo.exit, label %rb_type.exit.i

rb_type.exit.i:                                   ; preds = %rb_type.exit27.thread39
  %i.bd = inttoptr i64 %i.ay to ptr
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !21
  %i.bf = and i64 %i.be, 31
  %i.bg = icmp eq i64 %i.bf, 15
  br i1 %i.bg, label %bb.n, label %sum_iter_normalize_memo.exit

bb.n:                                             ; preds = %rb_type.exit.i
  %i.bh = tail call i64 @rb_rational_plus(i64 noundef %i.ay, i64 noundef %i.aw) #13 ; 2 uses
  store i64 %i.bh, ptr %1, align 8, !tbaa !88
  br label %sum_iter_normalize_memo.exit

sum_iter_normalize_memo.exit:                     ; preds = %rb_type.exit27.thread39, %rb_type.exit.i, %bb.n
  %i.bi = phi i64 [ %i.aw, %rb_type.exit27.thread39 ], [ %i.aw, %rb_type.exit.i ], [ %i.bh, %bb.n ]
  store i64 36, ptr %i.ax, align 8, !tbaa !93
  %i.bj = tail call double @rb_num2dbl(i64 noundef %i.bi) #13
  %i.bk = getelementptr i8, ptr %1, i64 24
  store double %i.bj, ptr %i.bk, align 8, !tbaa !97
  %i.bl = getelementptr i8, ptr %1, i64 32
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !98
  store i32 1, ptr %i.f, align 4, !tbaa !94
  tail call fastcc void @sum_iter_Kahan_Babuska(i64 noundef %.0, ptr noundef nonnull %1)
  br label %sum_iter_fixnum.exit

rb_type.exit27.thread:                            ; preds = %bb.j, %bb.h, %bb.h, %bb.h, %bb.h, %rb_type.exit27
  %i.bm = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !92
  %i.bo = shl i64 %i.bn, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = tail call i64 @rb_fix_plus(i64 noundef %i.bp, i64 noundef %.fr41) #13 ; 4 uses
  store i64 %i.bq, ptr %1, align 8, !tbaa !88
  store i64 0, ptr %i.bm, align 8, !tbaa !92
  %i.br = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !93 ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 0
  %i.bu = and i64 %i.bs, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br i1 %i.bw, label %sum_iter_normalize_memo.exit29, label %rb_type.exit.i28

rb_type.exit.i28:                                 ; preds = %rb_type.exit27.thread
  %i.bx = inttoptr i64 %i.bs to ptr
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !21
  %i.bz = and i64 %i.by, 31
  %i.ca = icmp eq i64 %i.bz, 15
  br i1 %i.ca, label %bb.o, label %sum_iter_normalize_memo.exit29

bb.o:                                             ; preds = %rb_type.exit.i28
  %i.cb = tail call i64 @rb_rational_plus(i64 noundef %i.bs, i64 noundef %i.bq) #13 ; 2 uses
  store i64 %i.cb, ptr %1, align 8, !tbaa !88
  br label %sum_iter_normalize_memo.exit29

sum_iter_normalize_memo.exit29:                   ; preds = %rb_type.exit27.thread, %rb_type.exit.i28, %bb.o
  %i.cc = phi i64 [ %i.bq, %rb_type.exit27.thread ], [ %i.bq, %rb_type.exit.i28 ], [ %i.cb, %bb.o ]
  store i64 36, ptr %i.br, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0, ptr %i.a, align 8, !tbaa !11
  %i.cd = call i64 @rb_funcallv(i64 noundef %i.cc, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.a) #13
  store i64 %i.cd, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %sum_iter_fixnum.exit

sum_iter_fixnum.exit:                             ; preds = %rb_long2num_inline.exit.i, %rb_type.exit27.thread37, %sum_iter_normalize_memo.exit29, %sum_iter_normalize_memo.exit, %sum_iter_rational.exit, %bb.k, %rb_type.exit.thread, %bb.d
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
  %i.f = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %i.f, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %rb_type.exit.thread53, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  br i1 %i.i, label %rb_type.exit.thread, label %rb_type.exit.thread51

rb_type.exit:                                     ; preds = %bb.a
  %i.j = inttoptr i64 %0 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread51
    i32 21, label %rb_type.exit.thread53
    i32 10, label %bb.h
    i32 15, label %bb.i
  ]

rb_type.exit.thread51:                            ; preds = %bb.d, %rb_type.exit
  %i.n = and i64 %0, 3
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %rb_type.exit.thread51
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.neg.i.i = ashr i64 %0, 63
  %i.p = add nsw i64 %.neg.i.i, 2
  %i.q = and i64 %0, -4
  %i.r = or i64 %i.p, %i.q                        ; 2 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.r, i64 range(i64 1, 0) %i.r, i64 61)
  %i.t = bitcast i64 %i.s to double
  br label %rb_float_value_inline.exit

bb.g:                                             ; preds = %rb_type.exit.thread51
  %i.u = inttoptr i64 %0 to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !95
  br label %rb_float_value_inline.exit

rb_type.exit.thread53:                            ; preds = %bb.c, %rb_type.exit
  %i.x = ashr i64 %0, 1
  %i.y = sitofp i64 %i.x to double
  br label %rb_float_value_inline.exit

bb.h:                                             ; preds = %rb_type.exit
  %i.z = tail call double @rb_big2dbl(i64 noundef %0) #13
  br label %rb_float_value_inline.exit

bb.i:                                             ; preds = %rb_type.exit
  %i.aa = tail call double @rb_num2dbl(i64 noundef %0) #13
  br label %rb_float_value_inline.exit

rb_type.exit.thread:                              ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %rb_type.exit
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !97 ; 2 uses
  %i.ad = bitcast double %i.ac to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ad, 3458764513820540928
  br i1 %cond.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %rb_type.exit.thread
  %i.ae = lshr i64 %i.ad, 60
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 7
  %i.ah = add nsw i32 %i.ag, -5
  %i.ai = icmp ult i32 %i.ah, -2
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ad, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ad, i64 3)
  %i.ak = and i64 %i.aj, -4
  %i.al = or disjoint i64 %i.ak, 2
  br label %rb_float_new_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.ad, 0
  br i1 %i.am, label %rb_float_new_inline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %rb_type.exit.thread
  %i.an = tail call i64 @rb_float_new_in_heap(double noundef %i.ac) #13
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.k, %bb.l, %bb.m
  %.0.i46 = phi i64 [ %i.al, %bb.k ], [ %i.an, %bb.m ], [ -9223372036854775806, %bb.l ] ; 2 uses
  store i64 %.0.i46, ptr %1, align 8, !tbaa !88
  %i.ao = getelementptr i8, ptr %1, i64 44
  store i32 0, ptr %i.ao, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.ap = call i64 @rb_funcallv(i64 noundef %.0.i46, i64 noundef 43, i32 noundef 1, ptr noundef nonnull %i.a) #13
  store i64 %i.ap, ptr %1, align 8, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

rb_float_value_inline.exit:                       ; preds = %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %rb_type.exit.thread53
  %.041 = phi double [ %i.aa, %bb.i ], [ %i.y, %rb_type.exit.thread53 ], [ %i.z, %bb.h ], [ %i.w, %bb.g ], [ %i.t, %bb.f ], [ 0.000000e+00, %bb.e ] ; 7 uses
  %i.aq = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !97 ; 8 uses
  %i.as = fcmp uno double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.t, label %bb.n

bb.n:                                             ; preds = %rb_float_value_inline.exit
  %i.at = tail call double @llvm.fabs.f64(double %.041) ; 3 uses
  %i.au = fcmp ueq double %i.at, +inf
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = fcmp oeq double %i.at, +inf
  %i.aw = tail call double @llvm.fabs.f64(double %i.ar) #18
  %i.ax = fcmp oeq double %i.aw, +inf
  %or.cond = and i1 %i.av, %i.ax
  br i1 %or.cond, label %bb.p, label %rb_float_new_inline.exit49

bb.p:                                             ; preds = %bb.o
  %i.ay = bitcast double %.041 to i64
  %i.az = bitcast double %i.ar to i64
  %.not.unshifted = xor i64 %i.az, %i.ay
  %.not = icmp sgt i64 %.not.unshifted, -1
  br i1 %.not, label %rb_float_new_inline.exit49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call i64 @rb_float_new_in_heap(double noundef %i.ar) #13
  br label %rb_float_new_inline.exit49

rb_float_new_inline.exit49:                       ; preds = %bb.q, %bb.p, %bb.o
  %.1 = phi double [ %.041, %bb.o ], [ %.041, %bb.p ], [ +qnan, %bb.q ]
  %.0 = phi i64 [ %0, %bb.o ], [ %0, %bb.p ], [ %i.ba, %bb.q ]
  store i64 %.0, ptr %1, align 8, !tbaa !88
  store double %.1, ptr %i.aq, align 8, !tbaa !97
  br label %bb.t

bb.r:                                             ; preds = %bb.n
  %i.bb = tail call double @llvm.fabs.f64(double %i.ar) ; 2 uses
  %i.bc = fcmp oeq double %i.bb, +inf
  br i1 %i.bc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !98
  %i.bf = fadd double %.041, %i.ar                ; 3 uses
end_hunk_0
