Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/marshal?download=true
inline.NumInlined: 424
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@w_symbol:bb.a
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !44
  %i.be = icmp sgt i64 %i.bd, 8191
  br i1 %i.be, label %bb.q, label %w_byte.exit21

bb.q:                                             ; preds = %bb.p
  %i.bf = call i64 @rb_io_write(i64 noundef %i.ba, i64 noundef %i.ax) #21 ; 0 uses
  %i.bg = call i64 @rb_str_resize(i64 noundef %i.ax, i64 noundef 0) #21 ; 0 uses
  br label %w_byte.exit21

w_byte.exit21:                                    ; preds = %w_encivar.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bh = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !59
  %i.bj = and i64 %i.bi, 8192
  %.not.i = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.r

bb.r:                                             ; preds = %w_byte.exit21
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %w_byte.exit21, %bb.r
  %i.bm = phi ptr [ %i.bl, %bb.r ], [ %i.bk, %w_byte.exit21 ]
  %i.bn = getelementptr i8, ptr %i.bh, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !44
  call fastcc void @w_bytes(ptr noundef %i.bm, i64 noundef %i.bo, ptr noundef nonnull %1)
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !40  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !71
  call void @rb_st_add_direct(ptr noundef %i.bp, i64 noundef %0, i64 noundef %i.br) #21
  %i.bs = icmp eq i64 %.0.i, 4
  br i1 %i.bs, label %w_encname.exit, label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.bt, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.bu, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 6, ptr %i.a, align 1, !tbaa !26
  %i.bv = load i64, ptr %1, align 8, !tbaa !42    ; 4 uses
  %i.bw = call i64 @rb_str_cat(i64 noundef %i.bv, ptr noundef nonnull %i.a, i64 noundef 1) #21 ; 0 uses
  %i.bx = load i64, ptr %i.az, align 8, !tbaa !39 ; 2 uses
  %.not.i.i22 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i22, label %w_long.exit23, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = inttoptr i64 %i.bv to ptr
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.cb = icmp sgt i64 %i.ca, 8191
  br i1 %i.cb, label %bb.u, label %w_long.exit23

bb.u:                                             ; preds = %bb.t
  %i.cc = call i64 @rb_io_write(i64 noundef %i.bx, i64 noundef %i.bv) #21 ; 0 uses
  %i.cd = call i64 @rb_str_resize(i64 noundef %i.bv, i64 noundef 0) #21 ; 0 uses
  br label %w_long.exit23

w_long.exit23:                                    ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call fastcc void @w_encoding(i64 noundef %.0.i, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %w_encname.exit

w_encname.exit:                                   ; preds = %w_long.exit23, %RSTRING_PTR.exit, %w_long.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  ret void
}

declare i32 @rb_st_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_float(double noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = tail call double @llvm.fabs.f64(double %0) #27
  %i.f = fcmp oeq double %i.e, +inf
  %i.g = bitcast double %0 to i64
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp olt double %0, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @w_bytes(ptr noundef nonnull @.str.42, i64 noundef 4, ptr noundef %1)
  br label %bb.w

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @w_bytes(ptr noundef nonnull @.str.43, i64 noundef 3, ptr noundef %1)
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.j = fcmp uno double %0, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @w_bytes(ptr noundef nonnull @.str.44, i64 noundef 3, ptr noundef %1)
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.k = fcmp oeq double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @w_bytes(ptr noundef nonnull @.str.45, i64 noundef 2, ptr noundef %1)
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @w_bytes(ptr noundef nonnull @.str.46, i64 noundef 1, ptr noundef %1)
  br label %bb.w

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %i.l = call ptr @ruby_dtoa(double noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #21 ; 7 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !16
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 45, ptr %i.a, align 16, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %bb.k ]        ; 6 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = load i32, ptr %i.b, align 4, !tbaa !16   ; 10 uses
  %i.t = icmp slt i32 %i.s, -3
  %i.u = icmp sgt i32 %i.s, %i.r
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.v = load i8, ptr %i.l, align 1, !tbaa !26
  %i.w = add nuw nsw i32 %.0, 1                   ; 3 uses
  %i.x = zext nneg i32 %.0 to i64
  %i.y = getelementptr i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !26
  %i.z = add i32 %i.r, -1                         ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  %i.ab = or disjoint i32 %.0, 2
  %i.ac = zext nneg i32 %i.w to i64
  %i.ad = getelementptr i8, ptr %i.a, i64 %i.ac
  store i8 46, ptr %i.ad, align 1, !tbaa !26
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %.169 = phi i32 [ %i.ab, %.thread ], [ %i.w, %bb.o ] ; 2 uses
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr i8, ptr %i.l, i64 1
  %i.ag = zext nneg i32 %.169 to i64
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %i.ae, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.o, %bb.p
  %.170 = phi i32 [ %i.w, %bb.o ], [ %.169, %bb.p ]
  %i.ai = add i32 %.170, %i.z                     ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.al = sub nsw i64 32, %i.aj
  %i.am = add i32 %i.s, -1
  %i.an = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.47, i32 noundef %i.am) #21
  %i.ao = add i32 %i.an, %i.ai
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.ap = icmp sgt i32 %i.s, 0
  %i.aq = zext nneg i32 %.0 to i64
  %i.ar = getelementptr i8, ptr %i.a, i64 %i.aq   ; 3 uses
  br i1 %i.ap, label %ruby_nonempty_memcpy.exit55, label %bb.r

ruby_nonempty_memcpy.exit55:                      ; preds = %bb.q
  %i.as = zext nneg i32 %i.s to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ar, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.as, i1 noundef false) #21
  %i.at = add nuw i32 %i.s, %.0                   ; 3 uses
  %i.au = sub i32 %i.r, %i.s                      ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %ruby_nonempty_memcpy.exit58, label %bb.v

ruby_nonempty_memcpy.exit58:                      ; preds = %ruby_nonempty_memcpy.exit55
  %i.aw = add nuw i32 %i.at, 1                    ; 2 uses
  %i.ax = sext i32 %i.at to i64
  %i.ay = getelementptr i8, ptr %i.a, i64 %i.ax
  store i8 46, ptr %i.ay, align 1, !tbaa !26
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr i8, ptr %i.a, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.l, i64 %i.as
  %i.bc = zext nneg i32 %i.au to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ba, ptr noundef nonnull readonly align 1 %i.bb, i64 noundef range(i64 1, 0) %i.bc, i1 noundef false) #21
  %i.bd = add i32 %i.au, %i.aw
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  store i8 48, ptr %i.ar, align 1, !tbaa !26
  %i.be = or disjoint i32 %.0, 2                  ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ar, i64 1
  store i8 46, ptr %i.bf, align 1, !tbaa !26
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bi = sub nsw i32 0, %i.s
  %i.bj = zext nneg i32 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bh, i8 noundef 48, i64 noundef range(i64 -2147483648, 2147483648) %i.bj, i1 noundef false) #21
  %i.bk = sub nsw i32 %i.be, %i.s
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2 = phi i32 [ %i.bk, %bb.s ], [ %i.be, %bb.r ] ; 2 uses
  %sext = shl i64 %i.q, 32                        ; 2 uses
  %.not.i59 = icmp eq i64 %sext, 0
  br i1 %.not.i59, label %ruby_nonempty_memcpy.exit61, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = zext nneg i32 %.2 to i64
  %i.bn = getelementptr i8, ptr %i.a, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bn, ptr noundef nonnull readonly align 1 %i.l, i64 noundef range(i64 1, 0) %i.bl, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit61

ruby_nonempty_memcpy.exit61:                      ; preds = %bb.t, %bb.u
  %i.bo = add i32 %.2, %i.r
  br label %bb.v

bb.v:                                             ; preds = %ruby_nonempty_memcpy.exit61, %ruby_nonempty_memcpy.exit58, %ruby_nonempty_memcpy.exit55, %ruby_nonempty_memcpy.exit
  %.3 = phi i32 [ %i.ao, %ruby_nonempty_memcpy.exit ], [ %i.bd, %ruby_nonempty_memcpy.exit58 ], [ %i.at, %ruby_nonempty_memcpy.exit55 ], [ %i.bo, %ruby_nonempty_memcpy.exit61 ]
  call void @free(ptr noundef %i.l) #21
  %i.bp = sext i32 %.3 to i64
  call fastcc void @w_bytes(ptr noundef nonnull %i.a, i64 noundef %i.bp, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.w

bb.w:                                             ; preds = %bb.f, %bb.i, %bb.j, %bb.v, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare ptr @rb_builtin_type_name(i32 noundef) local_unnamed_addr #2

declare i32 @rb_obj_respond_to(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @check_userdump_arg(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_funcallv(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #21 ; 7 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !18 ; 2 uses
  %i.k = icmp eq i64 %i.a, 0
  %i.l = and i64 %i.a, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.o = inttoptr i64 %i.a to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 8
  br label %rb_class_of.exit14

bb.i:                                             ; preds = %rb_class_of.exit
  switch i64 %i.a, label %bb.l [
    i64 0, label %rb_class_of.exit14
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit14

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit14

bb.l:                                             ; preds = %bb.i
  %i.q = trunc i64 %i.a to i1
  br i1 %i.q, label %rb_class_of.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = and i64 %i.a, 254
  %i.s = icmp eq i64 %i.r, 12
  %spec.select.i13 = select i1 %i.s, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit14

rb_class_of.exit14:                               ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i11 = phi ptr [ %i.p, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i13, %bb.m ]
  %.0.i12 = load i64, ptr %.0.in.i11, align 8, !tbaa !18
  %i.t = icmp eq i64 %.0.i12, %.0.i
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_class_of.exit14
  %i.u = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.48, i64 noundef %.0.i, ptr noundef %5) #22
  unreachable

bb.o:                                             ; preds = %rb_class_of.exit14
  %i.v = getelementptr i8, ptr %4, i64 16
  %.val = load ptr, ptr %i.v, align 8, !tbaa !40
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.p, label %check_dump_arg.exit

bb.p:                                             ; preds = %bb.o
  %i.w = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.28, ptr noundef %5) #22
  unreachable

check_dump_arg.exit:                              ; preds = %bb.o
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @w_class(i8 noundef signext range(i8 83, 118) %0, i64 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = getelementptr i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @rb_st_lookup(ptr noundef nonnull %i.d, i64 noundef %1, ptr noundef nonnull %i.b) #21
  %.not12 = icmp eq i32 %i.e, 0
  %i.f = load i64, ptr %i.b, align 8
  %spec.select = select i1 %.not12, i64 %1, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 6 uses
  %i.g = icmp eq i64 %.0, 0
  %i.h = and i64 %.0, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = inttoptr i64 %.0 to ptr
  %i.l = getelementptr i8, ptr %i.k, i64 8
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  switch i64 %.0, label %bb.h [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.f
    i64 20, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %rb_class_of.exit

bb.g:                                             ; preds = %bb.e
  br label %rb_class_of.exit

end_hunk_0
