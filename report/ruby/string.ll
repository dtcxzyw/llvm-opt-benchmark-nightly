inline.NumInlined: 2336
inline.NumDeleted: 196
begin_hunk_0_@rb_str_concat:bb.a
  %i.aj = tail call i64 @rb_str_buf_append(i64 noundef %0, i64 noundef %.0..0.1.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.e:                                             ; preds = %.thread, %rb_integer_type_p.exit.thread
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !7   ; 4 uses
  %i.al = call i32 @rb_enc_to_index(ptr noundef %i.j) #32
  switch i32 %i.al, label %rb_ascii8bit_appendable_encoding_index.exit [
    i32 2, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.am = icmp ugt i32 %i.ak, 255
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr @rb_eRangeError, align 8, !tbaa !27
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.23, i32 noundef %i.ak) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = trunc nuw i32 %i.ak to i8
  call fastcc void @rb_str_buf_cat_byte(i64 noundef %0, i8 noundef zeroext %i.ao)
  br label %bb.p

rb_ascii8bit_appendable_encoding_index.exit:      ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %i.c, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !11
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3145728                  ; 3 uses
  %i.au = call i32 @rb_enc_codelen(i32 noundef %i.ak, ptr noundef %i.j) #28 ; 5 uses
  switch i32 %i.au, label %bb.k [
    i32 -400, label %bb.i
    i32 -401, label %bb.j
    i32 0, label %bb.j
  ]

bb.i:                                             ; preds = %rb_ascii8bit_appendable_encoding_index.exit
  %i.av = load i64, ptr @rb_eRangeError, align 8, !tbaa !27
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !7
  %i.ax = getelementptr i8, ptr %i.j, i64 8
  %.val37 = load ptr, ptr %i.ax, align 8, !tbaa !42
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.av, ptr noundef nonnull @.str.22, i32 noundef %i.aw, ptr noundef %.val37) #30
  unreachable

bb.j:                                             ; preds = %rb_ascii8bit_appendable_encoding_index.exit, %rb_ascii8bit_appendable_encoding_index.exit
  %i.ay = load i64, ptr @rb_eRangeError, align 8, !tbaa !27
  %i.az = load i32, ptr %i.b, align 4, !tbaa !7
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.23, i32 noundef %i.az) #30
  unreachable

bb.k:                                             ; preds = %rb_ascii8bit_appendable_encoding_index.exit
  %i.ba = add i32 %i.au, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = alloca i8, i64 %i.bb, align 16          ; 4 uses
  %i.bd = load i32, ptr %i.b, align 4, !tbaa !7
  %i.be = getelementptr i8, ptr %i.j, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93
  %i.bg = call i32 %i.bf(i32 noundef %i.bd, ptr noundef nonnull %i.bc, ptr noundef %i.j) #28, !inline_history !94 ; 0 uses
  %i.bh = sext i32 %i.au to i64                   ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 1
  %i.bk = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.bc, ptr noundef %i.bj, ptr noundef %i.j) #28
  %.not = icmp eq i32 %i.bk, %i.au
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load i64, ptr @rb_eRangeError, align 8, !tbaa !27
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bn = getelementptr i8, ptr %i.j, i64 8
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !42
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bl, ptr noundef nonnull @.str.22, i32 noundef %i.bm, ptr noundef %.val) #30
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bo = add i64 %i.aq, %i.bh
  %i.bp = call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.bo) ; 0 uses
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.br = and i64 %i.bq, 8192
  %.not.i = icmp eq i64 %i.br, 0
  %i.bs = getelementptr i8, ptr %i.c, i64 24      ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.m, %bb.n
  %i.bu = phi ptr [ %i.bt, %bb.n ], [ %i.bs, %bb.m ]
  %.not.i39 = icmp eq i32 %i.au, 0
  br i1 %.not.i39, label %ruby_nonempty_memcpy.exit, label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bv, ptr noundef nonnull readonly align 16 %i.bc, i64 noundef range(i64 1, 0) %i.bh, i1 noundef false) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !11
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit, %bb.o
  %i.bw = phi i64 [ %i.bq, %RSTRING_PTR.exit ], [ %.pre, %bb.o ]
  %i.bx = icmp eq i32 %i.at, 1048576
  %i.by = load i32, ptr %i.b, align 4
  %i.bz = icmp ugt i32 %i.by, 127
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  %i.ca = icmp eq i32 %i.at, 3145728
  %spec.store.select = select i1 %i.ca, i32 0, i32 %i.at
  %i.cb = and i64 %i.bw, -3145729
  %i.cc = zext nneg i32 %spec.store.select to i64
  %i.cd = select i1 %or.cond, i64 2097152, i64 %i.cc
  %i.ce = or disjoint i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.c, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %ruby_nonempty_memcpy.exit, %rb_str_append.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %0
}

declare i32 @rb_num_to_uint(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 3) i32 @rb_ascii8bit_appendable_encoding_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @rb_enc_to_index(ptr noundef %0) #32 ; 3 uses
  %i.b = icmp eq i32 %i.a, 2
  switch i32 %i.a, label %bb.e [
    i32 2, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = icmp ugt i32 %1, 255
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eRangeError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.23, i32 noundef %1) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i32 %1, 127
  %or.cond3 = and i1 %i.e, %i.b
  %. = select i1 %or.cond3, i32 0, i32 %i.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %., %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_str_buf_cat_byte(i64 noundef %0, i8 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !20
  %i.b = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = and i64 %i.c, 1074321408
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %str_independent.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @str_modifiable(i64 noundef %0), !inline_history !33
  %i.e = load i64, ptr %i.b, align 8, !tbaa !11
  %.fr6.i.i = freeze i64 %i.e                     ; 4 uses
  %i.f = and i64 %.fr6.i.i, 8192
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %str_independent.exit.thread, label %str_independent.exit

str_independent.exit:                             ; preds = %bb.b
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not5.i.not9.not12.i.not6.i.not35 = and i1 %i.g, %i.i
  %i.j = and i64 %.fr6.i.i, 1073745920
  %.not.i.i = icmp ne i64 %i.j, 0
  %or.cond.not.i.not.i.not = and i1 %.not5.i.not9.not12.i.not6.i.not35, %.not.i.i
  br i1 %or.cond.not.i.not.i.not, label %bb.c, label %str_independent.exit.thread, !prof !25

bb.c:                                             ; preds = %str_independent.exit
  tail call fastcc void @str_make_independent(i64 noundef %0)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !11
  br label %str_independent.exit.thread

str_independent.exit.thread:                      ; preds = %bb.b, %bb.a, %bb.c, %str_independent.exit
  %i.k = phi i64 [ %.fr6.i.i, %bb.b ], [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ %.fr6.i.i, %str_independent.exit ] ; 4 uses
  %i.l = and i64 %i.k, 8192
  %.not.i26 = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit, label %RSTRING_PTR.exit.thread

RSTRING_PTR.exit:                                 ; preds = %str_independent.exit.thread
  %i.n = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.p, label %bb.d, label %bb.e, !prof !34

RSTRING_PTR.exit.thread:                          ; preds = %str_independent.exit.thread
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14   ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.d, label %bb.f, !prof !34

bb.d:                                             ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !27
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.199) #30
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit
  %i.v = tail call i64 @rb_gc_obj_slot_size(i64 noundef %0) #28
  %i.w = add i64 %i.v, -25
  %.pre36 = load i64, ptr %i.b, align 8, !tbaa !11
  br label %str_capacity.exit

bb.f:                                             ; preds = %RSTRING_PTR.exit.thread
  %i.x = and i64 %i.k, 1073745920
  %.not.i28 = icmp eq i64 %i.x, 0
  br i1 %.not.i28, label %bb.g, label %str_capacity.exit.thread

str_capacity.exit.thread:                         ; preds = %bb.f
  %2 = trunc i64 %i.k to i32
  %3 = and i32 %2, 3145728
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.b, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  br label %str_capacity.exit

str_capacity.exit:                                ; preds = %bb.e, %bb.g
  %4 = phi i64 [ %.pre36, %bb.e ], [ %i.k, %bb.g ]
  %5 = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.g ]
  %6 = phi ptr [ %i.n, %bb.e ], [ %i.r, %bb.g ]
  %7 = phi i64 [ %i.o, %bb.e ], [ %i.s, %bb.g ]   ; 5 uses
  %.0.i29 = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.g ]
  %8 = trunc i64 %4 to i32
  %9 = and i32 %8, 3145728                        ; 2 uses
  %.not24.not = icmp sgt i64 %.0.i29, %7
  br i1 %.not24.not, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %str_capacity.exit
  %10 = add nsw i64 %7, 1
  %i.aa = getelementptr i8, ptr %5, i64 %7        ; 2 uses
  store i8 %1, ptr %i.aa, align 1, !tbaa !20
  store i64 %10, ptr %6, align 8, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.aa, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %str_capacity.exit.thread, %str_capacity.exit
  %11 = phi i32 [ %3, %str_capacity.exit.thread ], [ %9, %str_capacity.exit ]
  %12 = phi i64 [ %i.s, %str_capacity.exit.thread ], [ %7, %str_capacity.exit ]
  %i.ac = call fastcc i64 @str_buf_cat4(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef 1, i1 noundef zeroext false) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %13 = phi i32 [ %11, %bb.i ], [ %9, %bb.h ]
  %14 = phi i64 [ %12, %bb.i ], [ %7, %bb.h ]
  %i.ad = icmp eq i32 %13, 1048576
  %i.ae = icmp eq i64 %14, 0
  %or.cond = or i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %i.a, align 1, !tbaa !20
  %i.ag = icmp slt i8 %i.af, 0
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  %i.ai = and i64 %i.ah, -3145729                 ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = or disjoint i64 %i.ai, 1048576
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !11
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ak = or disjoint i64 %i.ai, 2097152
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !11
  %i.al = and i64 %i.ah, 532676608
  %i.am = icmp eq i64 %i.al, 8388608
  br i1 %i.am, label %bb.n, label %bb.o, !prof !34

bb.n:                                             ; preds = %bb.m
  %i.an = call i64 @rb_enc_associate_index(i64 noundef %0, i32 noundef 0) #28 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_hash(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.c = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_END.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %i.g, i64 %i.i
  %i.k = and i64 %i.b, 532676608
  %switch.i.i = icmp samesign ult i64 %i.k, 12582912
  br i1 %switch.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %RSTRING_END.exit
  %i.l = trunc i64 %i.b to i32
  %i.m = lshr i32 %i.l, 22
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 127
  br i1 %i.o, label %bb.e, label %RB_ENCODING_GET.exit

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.p, %bb.e ], [ %i.n, %bb.d ]
  %i.q = tail call ptr @rb_enc_from_index(i32 noundef %.0.i) #28
  %i.r = getelementptr i8, ptr %i.q, i64 20
  %.val = load i32, ptr %i.r, align 4, !tbaa !16
  %i.s = sext i32 %.val to i64
  br label %bb.f

bb.f:                                             ; preds = %RSTRING_END.exit, %RB_ENCODING_GET.exit
  %i.t = phi i64 [ %i.s, %RB_ENCODING_GET.exit ], [ 1, %RSTRING_END.exit ]
  %i.u = getelementptr i8, ptr %i.j, i64 %i.t
  %i.v = load i64, ptr %i.u, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.w = tail call fastcc i64 @str_do_hash(i64 noundef %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @str_do_hash(i64 noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = tail call i64 @rb_memhash(ptr noundef %i.f, i64 noundef %i.h) #28 ; 4 uses
  %i.j = load i64, ptr %i.g, align 8, !tbaa !14
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %RB_ENCODING_GET.exit.thread, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.k = load i64, ptr %i.a, align 8, !tbaa !11
  %i.l = trunc i64 %i.k to i32
  %i.m = lshr i32 %i.l, 22
  %i.n = and i32 %i.m, 127                        ; 2 uses
  %i.o = icmp eq i32 %i.n, 127
  br i1 %i.o, label %bb.d, label %RB_ENCODING_GET.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %RB_ENCODING_GET.exit

RB_ENCODING_GET.exit:                             ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.n, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.not10 = icmp eq i32 %i.q, 0
  br i1 %.not10, label %RB_ENCODING_GET.exit.thread, label %bb.e

bb.e:                                             ; preds = %RB_ENCODING_GET.exit
  %i.r = load i64, ptr %i.a, align 8, !tbaa !11
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = and i32 %i.s, 3145728                    ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %is_ascii_string.exit

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %i.s, 22
  %i.w = and i32 %i.v, 127                        ; 2 uses
  %i.x = icmp eq i32 %i.w, 127
  br i1 %i.x, label %bb.g, label %get_encoding.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.g ], [ %i.w, %bb.f ]
  %i.z = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ab = and i64 %i.aa, 8192
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %enc_coderange_scan.exit.i.i, label %bb.h

bb.h:                                             ; preds = %get_encoding.exit.i.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %enc_coderange_scan.exit.i.i

enc_coderange_scan.exit.i.i:                      ; preds = %bb.h, %get_encoding.exit.i.i
  %i.ad = phi ptr [ %i.ac, %bb.h ], [ %i.d, %get_encoding.exit.i.i ]
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !14
  %i.af = tail call fastcc range(i32 1048576, 3145729) i32 @coderange_scan(ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef %i.z) ; 2 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ah = and i64 %i.ag, -3145729
  %i.ai = zext nneg i32 %i.af to i64
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !11
  br label %is_ascii_string.exit

is_ascii_string.exit:                             ; preds = %bb.e, %enc_coderange_scan.exit.i.i
  %.0.i.i = phi i32 [ %i.af, %enc_coderange_scan.exit.i.i ], [ %i.t, %bb.e ]
  %i.ak = icmp eq i32 %.0.i.i, 1048576
  br i1 %i.ak, label %RB_ENCODING_GET.exit.thread, label %bb.i

bb.i:                                             ; preds = %is_ascii_string.exit
  %i.al = tail call i64 @rb_st_hash_uint32(i64 noundef %i.i, i32 noundef %i.q) #35
  %i.am = tail call i64 @rb_st_hash_end(i64 noundef %i.al) #35
  br label %RB_ENCODING_GET.exit.thread

RB_ENCODING_GET.exit.thread:                      ; preds = %RSTRING_PTR.exit, %bb.i, %is_ascii_string.exit, %RB_ENCODING_GET.exit
  %.0 = phi i64 [ %i.i, %is_ascii_string.exit ], [ %i.am, %bb.i ], [ %i.i, %RB_ENCODING_GET.exit ], [ %i.i, %RSTRING_PTR.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_str_hash_cmp(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

end_hunk_0
begin_hunk_1_@rb_str_upto_each:bb.a
  %i.bx = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.by = and i64 %i.bx, 8192
  %.not.i114 = icmp eq i64 %i.by, 0
  %i.bz = getelementptr i8, ptr %i.bn, i64 24     ; 2 uses
  br i1 %.not.i114, label %RSTRING_PTR.exit115, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20
  br label %RSTRING_PTR.exit115

RSTRING_PTR.exit115:                              ; preds = %RSTRING_PTR.exit, %bb.m
  %i.cb = phi ptr [ %i.ca, %bb.m ], [ %i.bz, %RSTRING_PTR.exit ]
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !20  ; 4 uses
  %i.cd = icmp sgt i8 %i.bw, %i.cc
  br i1 %i.cd, label %.thread, label %bb.n

bb.n:                                             ; preds = %RSTRING_PTR.exit115
  %.not96 = icmp eq i32 %2, 0                     ; 2 uses
  %i.ce = icmp ne i8 %i.bw, %i.cc
  %or.cond98.not = or i1 %.not96, %i.ce
  br i1 %or.cond98.not, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.n
  br i1 %.not96, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.o
  %i.cf = phi i8 [ %i.co, %bb.o ], [ %i.bw, %.preheader ] ; 2 uses
  %i.cg = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.ch = call fastcc noundef i64 @str_enc_new(i64 noundef %i.cg, ptr noundef nonnull readonly %i.c, i64 noundef 1, ptr noundef %i.o) ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = and i64 %i.cj, -3145729
  %i.cl = or disjoint i64 %i.ck, 1048576
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !11
  %i.cm = call i32 %3(i64 noundef %i.ch, i64 noundef %4) #28
  %.not97.us = icmp ne i32 %i.cm, 0
  %i.cn = icmp eq i8 %i.cf, %i.cc
  %or.cond170.us = select i1 %.not97.us, i1 true, i1 %i.cn
  br i1 %or.cond170.us, label %.thread, label %bb.o

bb.o:                                             ; preds = %.preheader.split.us
  %i.co = add i8 %i.cf, 1                         ; 2 uses
  store i8 %i.co, ptr %i.c, align 1, !tbaa !20
  br label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.p
  %i.cp = phi i8 [ %i.cx, %bb.p ], [ %i.bw, %.preheader ]
  %i.cq = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.cr = call fastcc noundef i64 @str_enc_new(i64 noundef %i.cq, ptr noundef nonnull readonly %i.c, i64 noundef 1, ptr noundef %i.o) ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !11
  %i.cu = and i64 %i.ct, -3145729
  %i.cv = or disjoint i64 %i.cu, 1048576
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !11
  %i.cw = call i32 %3(i64 noundef %i.cr, i64 noundef %4) #28
  %.not97.not = icmp eq i32 %i.cw, 0
  br i1 %.not97.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %.preheader.split
  %i.cx = add i8 %i.cp, 1                         ; 3 uses
  store i8 %i.cx, ptr %i.c, align 1, !tbaa !20
  %.not = icmp eq i8 %i.cx, %i.cc
  br i1 %.not, label %.thread, label %.preheader.split

.thread:                                          ; preds = %.preheader.split, %bb.p, %.preheader.split.us, %RSTRING_PTR.exit115, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.thread168

bb.q:                                             ; preds = %bb.j, %bb.i
  br i1 %i.bj, label %bb.r, label %all_digits_p.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = load i64, ptr %i.p, align 8, !tbaa !11
  %i.cz = and i64 %i.cy, 8192
  %.not.i116 = icmp eq i64 %i.cz, 0               ; 2 uses
  %i.da = getelementptr i8, ptr %i.p, i64 24      ; 4 uses
  br i1 %.not.i116, label %RSTRING_PTR.exit117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  br label %RSTRING_PTR.exit117

RSTRING_PTR.exit117:                              ; preds = %bb.r, %bb.s
  %i.dc = phi ptr [ %i.db, %bb.s ], [ %i.da, %bb.r ]
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !20
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -58
  %i.dg = icmp ult i32 %i.df, -10
  br i1 %i.dg, label %all_digits_p.exit, label %bb.t

bb.t:                                             ; preds = %RSTRING_PTR.exit117
  %i.dh = inttoptr i64 %.0..0.142 to ptr          ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11
  %i.dj = and i64 %i.di, 8192
  %.not.i118 = icmp eq i64 %i.dj, 0               ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dh, i64 24     ; 4 uses
  br i1 %.not.i118, label %RSTRING_PTR.exit119, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  br label %RSTRING_PTR.exit119

RSTRING_PTR.exit119:                              ; preds = %bb.t, %bb.u
  %i.dm = phi ptr [ %i.dl, %bb.u ], [ %i.dk, %bb.t ]
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !20
  %i.do = sext i8 %i.dn to i32
  %i.dp = add nsw i32 %i.do, -58
  %i.dq = icmp ult i32 %i.dp, -10
  br i1 %i.dq, label %all_digits_p.exit, label %bb.v

bb.v:                                             ; preds = %RSTRING_PTR.exit119
  br i1 %.not.i116, label %RSTRING_PTR.exit121, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = load ptr, ptr %i.da, align 8, !tbaa !20
  br label %RSTRING_PTR.exit121

RSTRING_PTR.exit121:                              ; preds = %bb.v, %bb.w
  %i.ds = phi ptr [ %i.dr, %bb.w ], [ %i.da, %bb.v ]
  %i.dt = icmp sgt i64 %i.bl, 0
  br i1 %i.dt, label %.lr.ph.i122, label %.loopexit175

bb.x:                                             ; preds = %.lr.ph.i122
  %i.du = add nsw i64 %.in.i, -1
  %i.dv = getelementptr i8, ptr %.035.i, i64 1
  %i.dw = icmp sgt i64 %.in.i, 1
  br i1 %i.dw, label %.lr.ph.i122, label %.loopexit175, !llvm.loop !138

.lr.ph.i122:                                      ; preds = %RSTRING_PTR.exit121, %bb.x
  %.in.i = phi i64 [ %i.du, %bb.x ], [ %i.bl, %RSTRING_PTR.exit121 ] ; 2 uses
  %.035.i = phi ptr [ %i.dv, %bb.x ], [ %i.ds, %RSTRING_PTR.exit121 ] ; 2 uses
  %i.dx = load i8, ptr %.035.i, align 1, !tbaa !20
  %i.dy = sext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -58
  %i.ea = icmp ult i32 %i.dz, -10
  br i1 %i.ea, label %all_digits_p.exit, label %bb.x

.loopexit175:                                     ; preds = %bb.x, %RSTRING_PTR.exit121
  br i1 %.not.i118, label %RSTRING_PTR.exit124, label %bb.y

bb.y:                                             ; preds = %.loopexit175
  %i.eb = load ptr, ptr %i.dk, align 8, !tbaa !20
  br label %RSTRING_PTR.exit124

RSTRING_PTR.exit124:                              ; preds = %.loopexit175, %bb.y
  %i.ec = phi ptr [ %i.eb, %bb.y ], [ %i.dk, %.loopexit175 ]
  %i.ed = getelementptr i8, ptr %i.dh, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.i126, label %.loopexit

bb.z:                                             ; preds = %.lr.ph.i126
  %i.eg = add nsw i64 %.in.i127, -1
  %i.eh = getelementptr i8, ptr %.035.i128, i64 1
  %i.ei = icmp sgt i64 %.in.i127, 1
  br i1 %i.ei, label %.lr.ph.i126, label %.loopexit, !llvm.loop !138

.lr.ph.i126:                                      ; preds = %RSTRING_PTR.exit124, %bb.z
  %.in.i127 = phi i64 [ %i.eg, %bb.z ], [ %i.ee, %RSTRING_PTR.exit124 ] ; 2 uses
  %.035.i128 = phi ptr [ %i.eh, %bb.z ], [ %i.ec, %RSTRING_PTR.exit124 ] ; 2 uses
  %i.ej = load i8, ptr %.035.i128, align 1, !tbaa !20
  %i.ek = sext i8 %i.ej to i32
  %i.el = add nsw i32 %i.ek, -58
  %i.em = icmp ult i32 %i.el, -10
  br i1 %i.em, label %all_digits_p.exit, label %bb.z

.loopexit:                                        ; preds = %bb.z, %RSTRING_PTR.exit124
  %i.en = add i64 %i.bl, 2147483648
  %.not.i.i = icmp ult i64 %i.en, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  tail call void @rb_out_of_int(i64 noundef %i.bl) #29
  unreachable

RSTRING_LENINT.exit:                              ; preds = %.loopexit
  %i.eo = trunc nsw i64 %i.bl to i32              ; 2 uses
  %i.ep = tail call i64 @rb_str_to_inum(i64 noundef %0, i32 noundef 10, i32 noundef 0) #28 ; 4 uses
  %i.eq = tail call i64 @rb_str_to_inum(i64 noundef %.0..0.142, i32 noundef 10, i32 noundef 0) #28 ; 4 uses
  %i.er = trunc i64 %i.ep to i1
  %i.es = trunc i64 %i.eq to i1
  %or.cond171 = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond171, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %RSTRING_LENINT.exit
  %i.et = ashr i64 %i.ep, 1                       ; 4 uses
  %i.eu = ashr i64 %i.eq, 1                       ; 5 uses
  %i.ev = tail call nonnull ptr @rb_usascii_encoding() #28 ; 2 uses
  %.not93180 = icmp sgt i64 %i.et, %i.eu
  br i1 %.not93180, label %.thread168, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.ab
  %.not94.not = icmp eq i32 %2, 0
  br i1 %.not94.not, label %.lr.ph183.split.us, label %.lr.ph183.split.preheader

.lr.ph183.split.preheader:                        ; preds = %.lr.ph183
  %i.ew = icmp eq i64 %i.et, %i.eu
  br i1 %i.ew, label %.thread168, label %.lr.ph221

.lr.ph183.split.us:                               ; preds = %.lr.ph183, %.lr.ph183.split.us
  %.077181.us = phi i64 [ %i.ez, %.lr.ph183.split.us ], [ %i.et, %.lr.ph183 ] ; 3 uses
  %i.ex = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.ev, ptr noundef nonnull @.str.25, i32 noundef %i.eo, i64 noundef %.077181.us) #28
  %i.ey = tail call i32 %3(i64 noundef %i.ex, i64 noundef %4) #28
  %.not95.us = icmp ne i32 %i.ey, 0
  %i.ez = add nsw i64 %.077181.us, 1
  %.not93.us = icmp sge i64 %.077181.us, %i.eu
  %or.cond186 = select i1 %.not95.us, i1 true, i1 %.not93.us
  br i1 %or.cond186, label %.thread168, label %.lr.ph183.split.us, !llvm.loop !139

.lr.ph183.split:                                  ; preds = %.lr.ph221
  %7 = add nsw i64 %.077181220, 1                 ; 2 uses
  %i.fa = icmp eq i64 %7, %i.eu
  br i1 %i.fa, label %.thread168, label %.lr.ph221, !llvm.loop !139

.lr.ph221:                                        ; preds = %.lr.ph183.split.preheader, %.lr.ph183.split
  %.077181220 = phi i64 [ %7, %.lr.ph183.split ], [ %i.et, %.lr.ph183.split.preheader ] ; 3 uses
  %i.fb = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef nonnull %i.ev, ptr noundef nonnull @.str.25, i32 noundef %i.eo, i64 noundef %.077181220) #28
  %i.fc = tail call i32 %3(i64 noundef %i.fb, i64 noundef %4) #28
  %.not95 = icmp ne i32 %i.fc, 0
  %.not93 = icmp sge i64 %.077181220, %i.eu
  %or.cond187 = select i1 %.not95, i1 true, i1 %.not93
  br i1 %or.cond187, label %..thread168.loopexit217_crit_edge, label %.lr.ph183.split, !llvm.loop !139

bb.ac:                                            ; preds = %RSTRING_LENINT.exit
  %.not90 = icmp eq i32 %2, 0
  %i.fd = select i1 %.not90, i64 138, i64 60      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.fe = ptrtoint ptr %6 to i64                  ; 2 uses
  store i64 3229622277, ptr %6, align 8, !tbaa !11
  %i.ff = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !27
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 4, ptr %i.fh, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.26, ptr %i.fi, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i64 4, ptr %i.fj, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i8 0, ptr %5, align 1, !tbaa !28
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.fk, align 1, !tbaa !31
  %i.fl = call fastcc i64 @str_do_hash(i64 noundef %i.fe)
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !20
  %i.fm = call i64 @rb_concurrent_set_find_or_insert(ptr noundef nonnull @fstring_table_obj, i64 noundef %i.fe, ptr noundef nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fn = shl nsw i64 %i.bl, 1
  %i.fo = or disjoint i64 %i.fn, 1
  store i64 %i.fo, ptr %i.d, align 16, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fq = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ep, i64 noundef %i.fd, i32 noundef 1, i64 noundef %i.eq) #28
  %.not91177 = icmp eq i64 %i.fq, 0
  br i1 %.not91177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %bb.ad
  %.076178 = phi i64 [ %i.ft, %bb.ad ], [ %i.ep, %bb.ac ] ; 2 uses
  store i64 %.076178, ptr %i.fp, align 8, !tbaa !27
  %i.fr = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.fm) #28
  %i.fs = call i32 %3(i64 noundef %i.fr, i64 noundef %4) #28
  %.not92 = icmp eq i32 %i.fs, 0
  br i1 %.not92, label %bb.ad, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph
  %i.ft = call i64 @rb_funcallv(i64 noundef %.076178, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  %i.fu = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ft, i64 noundef %i.fd, i32 noundef 1, i64 noundef %i.eq) #28
  %.not91 = icmp eq i64 %i.fu, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %bb.ad, %.lr.ph, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %.thread168

all_digits_p.exit:                                ; preds = %.lr.ph.i122, %.lr.ph.i126, %RSTRING_PTR.exit119, %RSTRING_PTR.exit117, %bb.q
  %i.fv = tail call i32 @rb_str_cmp(i64 noundef %0, i64 noundef %.0..0.142) ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.thread168, label %bb.ae

bb.ae:                                            ; preds = %all_digits_p.exit
  %i.fx = icmp ne i32 %2, 0                       ; 3 uses
  %i.fy = icmp eq i32 %i.fv, 0
  %or.cond3 = and i1 %i.fx, %i.fy
  br i1 %or.cond3, label %.thread168, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = tail call i64 @rb_funcallv(i64 noundef %.0..0.142, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28
  %i.ga = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.gb = tail call fastcc i64 @str_duplicate(i64 noundef %i.ga, i64 noundef %0)
  %i.gc = inttoptr i64 %.0..0.142 to ptr
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.af
  %.0..0.135 = phi i64 [ %.0..0.140, %bb.am ], [ %i.gb, %bb.af ] ; 5 uses
  %i.ge = tail call i64 @rb_str_equal(i64 noundef %.0..0.135, i64 noundef %i.fz)
  %.not86 = icmp eq i64 %i.ge, 0
  br i1 %.not86, label %bb.ah, label %.thread168

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.fx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gf = tail call i64 @rb_str_equal(i64 noundef %.0..0.135, i64 noundef %.0..0.142)
  %.not87 = icmp eq i64 %i.gf, 0
  br i1 %.not87, label %bb.aj, label %.thread160

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.gg = tail call i64 @rb_funcallv(i64 noundef %.0..0.135, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #28 ; 2 uses
  %i.gh = tail call i32 %3(i64 noundef %.0..0.135, i64 noundef %4) #28
  %.not88 = icmp ne i32 %i.gh, 0
  %i.gi = icmp eq i64 %i.gg, 4
  %or.cond172 = select i1 %.not88, i1 true, i1 %i.gi
  br i1 %or.cond172, label %.thread168, label %bb.ak

.thread160:                                       ; preds = %bb.ai
  %i.gj = tail call i32 %3(i64 noundef %.0..0.135, i64 noundef %4) #28 ; 0 uses
  br label %.thread168

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.gg, ptr %i.b, align 8, !tbaa !27
  %.0..0..0. = load volatile i64, ptr %i.b, align 8, !tbaa !27 ; 5 uses
  %i.gk = icmp eq i64 %.0..0..0., 0
  %i.gl = and i64 %.0..0..0., 7
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = or i1 %i.gk, %i.gm
  br i1 %i.gn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i132, label %rbimpl_RB_TYPE_P_fastpath.exit.i131

rbimpl_RB_TYPE_P_fastpath.exit.i131:              ; preds = %bb.ak
  %i.go = inttoptr i64 %.0..0..0. to ptr
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !11
  %i.gq = and i64 %i.gp, 31
  %i.gr = icmp eq i64 %i.gq, 5
  br i1 %i.gr, label %rb_string_value.exit134, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i132

rbimpl_RB_TYPE_P_fastpath.exit.thread.i132:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i131, %bb.ak
  %i.gs = tail call i64 @rb_convert_type_with_id(i64 noundef %.0..0..0., i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 3281) #28 ; 2 uses
  store volatile i64 %i.gs, ptr %i.b, align 8, !tbaa !27
  br label %rb_string_value.exit134

rb_string_value.exit134:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i131, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i132
  %.0..0.140 = phi i64 [ %.0..0..0., %rbimpl_RB_TYPE_P_fastpath.exit.i131 ], [ %i.gs, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i132 ] ; 3 uses
  br i1 %i.fx, label %bb.al, label %bb.am

bb.al:                                            ; preds = %rb_string_value.exit134
  %i.gt = tail call i64 @rb_str_equal(i64 noundef %.0..0.140, i64 noundef %.0..0.142)
  %.not89 = icmp eq i64 %i.gt, 0
  br i1 %.not89, label %bb.am, label %.thread168

bb.am:                                            ; preds = %bb.al, %rb_string_value.exit134
  %i.gu = inttoptr i64 %.0..0.140 to ptr
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !14 ; 2 uses
  %i.gx = load i64, ptr %i.gd, align 8, !tbaa !14
  %i.gy = icmp sgt i64 %i.gw, %i.gx
  %i.gz = icmp eq i64 %i.gw, 0
  %or.cond104 = or i1 %i.gz, %i.gy
  br i1 %or.cond104, label %.thread168, label %bb.ag

..thread168.loopexit217_crit_edge:                ; preds = %.lr.ph221
  br label %.thread168, !llvm.loop !139

.thread168:                                       ; preds = %.lr.ph183.split, %.lr.ph183.split.us, %bb.am, %bb.al, %bb.aj, %bb.ag, %.lr.ph183.split.preheader, %..thread168.loopexit217_crit_edge, %bb.ab, %.thread160, %all_digits_p.exit, %bb.ae, %._crit_edge, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %0
}

declare ptr @rb_enc_check(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_to_inum(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_format(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_str_upto_endless_each(i64 noundef returned %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.fstr_create_arg, align 1    ; 5 uses
  %4 = alloca %struct.RString, align 8            ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.pr.i = load i64, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !27 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 4) #28 ; 3 uses
  store i64 %i.c, ptr @rb_str_upto_endless_each.rbimpl_id, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !137

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.c, %.lr.ph.i ] ; 2 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = and i32 %i.f, 3145728                    ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %is_ascii_string.exit

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.i = lshr i32 %i.f, 22
  %i.j = and i32 %i.i, 127                        ; 2 uses
  %i.k = icmp eq i32 %i.j, 127
  br i1 %i.k, label %bb.c, label %get_encoding.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @rb_enc_get_index(i64 noundef %0) #28
  br label %get_encoding.exit.i.i

get_encoding.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %i.m = tail call ptr @rb_enc_from_index(i32 noundef %.0.i.i.i.i) #28
  %i.n = load i64, ptr %i.d, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
end_hunk_1
