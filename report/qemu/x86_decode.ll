inline.NumInlined: 76
inline.NumDeleted: 15
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_linear_addr:bb.a
bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %3, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 0, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ]
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call i64 @linear_addr_size(ptr noundef nonnull %i.c, i64 noundef %2, i32 noundef %i.e, i32 noundef %.0) #15
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local ptr @get_reg_ref(ptr nofree noundef readnone captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %3, 0
  %i.a = or i32 %1, 8
  %spec.select = select i1 %.not, i32 %1, i32 %i.a ; 4 uses
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %spec.select, 4
  %i.c = or i32 %3, %2
  %i.d = icmp ne i32 %i.c, 0
  %or.cond3 = or i1 %i.d, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %spec.select to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %spec.select to i64
  %i.h = getelementptr [8 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -31
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = sext i32 %spec.select to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local i64 @get_reg_val(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  %.not.i = icmp eq i32 %3, 0
  %i.b = or i32 %1, 8
  %spec.select.i = select i1 %.not.i, i32 %1, i32 %i.b ; 4 uses
  %cond.i = icmp eq i32 %4, 1
  br i1 %cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %spec.select.i, 4
  %i.d = or i32 %3, %2
  %i.e = icmp ne i32 %i.d, 0
  %or.cond3.i = or i1 %i.e, %i.c
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %spec.select.i to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f
  br label %get_reg_ref.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext nneg i32 %spec.select.i to i64
  %i.i = getelementptr [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -31
  br label %get_reg_ref.exit

bb.e:                                             ; preds = %bb.a
  %i.k = sext i32 %spec.select.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k
  br label %get_reg_ref.exit

get_reg_ref.exit:                                 ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %i.m = sext i32 %4 to i64
  %i.n = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 8) #15, !alias.scope !23 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @calc_modrm_operand32(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %sign.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = zext i8 %i.f to i32                      ; 3 uses
  %i.k = tail call range(i32 1, 9) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.b
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 true)
  switch i32 %i.m, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %sign.exit
  ]

bb.c:                                             ; preds = %.split.i
  %sext8.i = shl i64 %i.i, 56
  %i.n = ashr exact i64 %sext8.i, 56
  br label %sign.exit

bb.d:                                             ; preds = %.split.i
  %sext7.i = shl i64 %i.i, 48
  %i.o = ashr exact i64 %sext7.i, 48
  br label %sign.exit

bb.e:                                             ; preds = %.split.i
  %i.p = zext i32 %i.h to i64
  br label %sign.exit

bb.f:                                             ; preds = %.split.i, %bb.b
  %i.q = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sign, i32 noundef %i.j) #15 ; 0 uses
  tail call void @abort() #16
  unreachable

sign.exit:                                        ; preds = %bb.e, %bb.d, %bb.c, %.split.i, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.i, %.split.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.s = load i8, ptr %i.r, align 1               ; 3 uses
  %i.t = and i8 %i.s, 7                           ; 2 uses
  %i.u = icmp eq i8 %i.t, 4
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sign.exit
  %i.v = call fastcc i64 @get_sib_val(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.b)
  %i.w = add i64 %i.v, %.0
  br label %bb.o

bb.h:                                             ; preds = %sign.exit
  %i.x = and i8 %i.s, -57
  %or.cond = icmp eq i8 %i.x, 5
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.z = tail call zeroext i1 @x86_is_long_mode(ptr noundef nonnull %i.y) #15
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = load i32, ptr %1, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add i64 %i.ab, %.0
  %i.af = add i64 %i.ae, %i.ad
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.aj = and i8 %i.s, 6
  %switch = icmp eq i8 %i.aj, 4
  br i1 %switch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.b, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  %i.am = shl i8 %i.al, 3
  %i.an = and i8 %i.am, 8
  %spec.select.i.i34 = or disjoint i8 %i.an, %i.t ; 3 uses
  %cond.i.i = icmp eq i32 %i.d, 1
  br i1 %cond.i.i, label %3, label %8

3:                                                ; preds = %bb.n
  %4 = icmp samesign ult i8 %spec.select.i.i34, 4
  %5 = icmp ne i8 %i.al, 0
  %or.cond3.i.i = or i1 %5, %4
  %6 = zext nneg i8 %spec.select.i.i34 to i64
  %7 = getelementptr [8 x i8], ptr %0, i64 %6
  %spec.select.idx = select i1 %or.cond3.i.i, i64 0, i64 -31
  %spec.select = getelementptr i8, ptr %7, i64 %spec.select.idx
  br label %get_reg_val.exit

8:                                                ; preds = %bb.n
  %9 = zext nneg i8 %spec.select.i.i34 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %9
  br label %get_reg_val.exit

get_reg_val.exit:                                 ; preds = %3, %8
  %.0.i.i = phi ptr [ %10, %8 ], [ %spec.select, %3 ]
  %11 = sext i32 %i.d to i64
  %12 = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.i, i64 noundef range(i64 -2147483648, 2147483648) %11, i64 noundef 8) #15, !alias.scope !27 ; 0 uses
  %13 = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %14 = add i64 %13, %.0
  br label %bb.o

bb.o:                                             ; preds = %get_reg_val.exit, %bb.k, %bb.j, %bb.g
  %.1 = phi i64 [ %i.w, %bb.g ], [ %14, %get_reg_val.exit ], [ %i.af, %bb.j ], [ %i.ai, %bb.k ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, 31
  %i.ar = and i64 %.1, 4294967295                 ; 2 uses
  br i1 %i.aq, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.b, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i32, ptr %i.at, align 8
  switch i32 %i.au, label %decode_linear_addr.exit [
    i32 46, label %bb.q
    i32 54, label %bb.r
    i32 62, label %bb.s
    i32 38, label %bb.t
    i32 100, label %bb.u
    i32 101, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

bb.r:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

bb.s:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

bb.t:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

bb.u:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

bb.v:                                             ; preds = %bb.p
  br label %decode_linear_addr.exit

decode_linear_addr.exit:                          ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i33 = phi i32 [ %i.as, %bb.p ], [ 1, %bb.q ], [ 2, %bb.r ], [ 3, %bb.s ], [ 0, %bb.t ], [ 4, %bb.u ], [ 5, %bb.v ]
  %i.av = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.aw = load i32, ptr %i.c, align 8
  %i.ax = call i64 @linear_addr_size(ptr noundef nonnull %i.av, i64 noundef %i.ar, i32 noundef %i.aw, i32 noundef %.0.i33) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %decode_linear_addr.exit
  %.sink = phi i64 [ %i.ax, %decode_linear_addr.exit ], [ %i.ar, %bb.o ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sink, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc i64 @get_sib_val(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = and i8 %i.f, 7                           ; 2 uses
  %i.h = lshr i8 %i.f, 3
  %i.i = and i8 %i.h, 7
  store i32 3, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp ugt i8 %i.k, 63
  %i.m = icmp ne i8 %i.g, 5
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.p = shl i8 %i.o, 3                           ; 2 uses
  %spec.select41 = or disjoint i8 %i.p, %i.g
  %i.q = and i8 %spec.select41, 14
  %or.cond3 = icmp eq i8 %i.q, 4
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %2, align 4
  %.pre = load i8, ptr %i.n, align 1              ; 2 uses
  %.pre46 = shl i8 %.pre, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi = phi i8 [ %i.p, %bb.b ], [ %.pre46, %bb.c ]
  %i.r = phi i8 [ %i.o, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.s = load i8, ptr %i.e, align 4
  %i.t = and i8 %i.s, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8
  %i.u = and i8 %.pre-phi, 8
  %spec.select.i.i42 = or disjoint i8 %i.u, %i.t  ; 3 uses
  %cond.i.i = icmp eq i32 %i.d, 1
  br i1 %cond.i.i, label %3, label %8

3:                                                ; preds = %bb.d
  %4 = icmp samesign ult i8 %spec.select.i.i42, 4
  %5 = icmp ne i8 %i.r, 0
  %or.cond3.i.i = or i1 %5, %4
  %6 = zext nneg i8 %spec.select.i.i42 to i64
  %7 = getelementptr [8 x i8], ptr %0, i64 %6
  %spec.select.idx = select i1 %or.cond3.i.i, i64 0, i64 -31
  %spec.select = getelementptr i8, ptr %7, i64 %spec.select.idx
  br label %get_reg_val.exit

8:                                                ; preds = %bb.d
  %9 = zext nneg i8 %spec.select.i.i42 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %9
  br label %get_reg_val.exit

get_reg_val.exit:                                 ; preds = %3, %8
  %.0.i.i = phi ptr [ %10, %8 ], [ %spec.select, %3 ]
  %11 = sext i32 %i.d to i64
  %12 = call ptr @__memcpy_chk(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i.i, i64 noundef range(i64 -2147483648, 2147483648) %11, i64 noundef 8) #15, !alias.scope !31 ; 0 uses
  %13 = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %get_reg_val.exit
  %i.v = phi i8 [ %i.r, %get_reg_val.exit ], [ %i.o, %bb.a ] ; 3 uses
  %.030 = phi i64 [ %13, %get_reg_val.exit ], [ 0, %bb.a ]
  %i.w = shl i8 %i.v, 2
  %i.x = and i8 %i.w, 8
  %spec.select3443 = or disjoint i8 %i.x, %i.i    ; 2 uses
  %.not33 = icmp eq i8 %spec.select3443, 4
  br i1 %.not33, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.y = lshr i8 %i.v, 1
  %i.z = and i8 %i.y, 1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  %i.aa = shl nuw nsw i8 %i.z, 3
  %spec.select.i.i3644 = or i8 %spec.select3443, %i.aa ; 3 uses
  %cond.i.i37 = icmp eq i32 %i.d, 1
  br i1 %cond.i.i37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ult i8 %spec.select.i.i3644, 4
  %i.ac = or i8 %i.z, %i.v
  %i.ad = icmp ne i8 %i.ac, 0
  %or.cond3.i.i39 = or i1 %i.ad, %i.ab
  %i.ae = zext nneg i8 %spec.select.i.i3644 to i64
  %i.af = getelementptr [8 x i8], ptr %0, i64 %i.ae
  %spec.select47.idx = select i1 %or.cond3.i.i39, i64 0, i64 -31
  %spec.select47 = getelementptr i8, ptr %i.af, i64 %spec.select47.idx
  br label %get_reg_val.exit40

bb.g:                                             ; preds = %bb.e
  %i.ag = zext nneg i8 %spec.select.i.i3644 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  br label %get_reg_val.exit40

get_reg_val.exit40:                               ; preds = %bb.f, %bb.g
  %.0.i.i38 = phi ptr [ %i.ah, %bb.g ], [ %spec.select47, %bb.f ]
  %i.ai = sext i32 %i.d to i64
  %i.aj = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.i38, i64 noundef range(i64 -2147483648, 2147483648) %i.ai, i64 noundef 8) #15, !alias.scope !35 ; 0 uses
  %i.ak = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.al = load i8, ptr %i.e, align 4
  %i.am = lshr i8 %i.al, 6
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = shl i64 %i.ak, %i.an
  br label %bb.h

bb.h:                                             ; preds = %get_reg_val.exit40, %._crit_edge
  %.031 = phi i64 [ %i.ao, %get_reg_val.exit40 ], [ 0, %._crit_edge ]
  %i.ap = add i64 %.031, %.030
  ret i64 %i.ap
}

declare zeroext i1 @x86_is_long_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @calc_modrm_operand64(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 3, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 61
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = and i8 %i.c, 7                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = zext i8 %i.f to i32                      ; 3 uses
  %i.k = tail call range(i32 1, 9) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.b
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.j, i1 true)
  switch i32 %i.m, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %sign.exit
  ]

bb.c:                                             ; preds = %.split.i
  %sext8.i = shl i64 %i.i, 56
  %i.n = ashr exact i64 %sext8.i, 56
  br label %sign.exit

bb.d:                                             ; preds = %.split.i
  %sext7.i = shl i64 %i.i, 48
  %i.o = ashr exact i64 %sext7.i, 48
  br label %sign.exit

bb.e:                                             ; preds = %.split.i
  %i.p = zext i32 %i.h to i64
  br label %sign.exit

bb.f:                                             ; preds = %.split.i, %bb.b
  %i.q = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sign, i32 noundef %i.j) #15 ; 0 uses
  tail call void @abort() #16
  unreachable

sign.exit:                                        ; preds = %.split.i, %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.o, %bb.d ], [ %i.p, %bb.e ], [ %i.i, %.split.i ]
  %sext = shl i64 %.0.i, 32
  %i.r = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %sign.exit, %bb.a
  %.0 = phi i64 [ %i.r, %sign.exit ], [ 0, %bb.a ]
  %i.s = icmp eq i8 %i.d, 4
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = call fastcc i64 @get_sib_val(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.a)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.u = and i8 %i.c, -57
  %or.cond = icmp eq i8 %i.u, 5
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load i64, ptr %i.v, align 16
  %i.x = load i32, ptr %1, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %i.w, %i.y
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = shl i8 %i.ab, 3
  %i.ad = and i8 %i.ac, 8
  %spec.select.i.i31 = or disjoint i8 %i.ad, %i.d
  %i.ae = zext nneg i8 %spec.select.i.i31 to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.pn = phi i64 [ %i.t, %bb.h ], [ %i.z, %bb.j ], [ %i.ag, %bb.k ]
  %.027 = add i64 %.pn, %.0                       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, 31
  br i1 %i.aj, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i32, ptr %i.al, align 8
  switch i32 %i.am, label %decode_linear_addr.exit [
    i32 46, label %bb.n
    i32 54, label %bb.o
    i32 62, label %bb.p
    i32 38, label %bb.q
    i32 100, label %bb.r
    i32 101, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

bb.o:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

bb.p:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

bb.q:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

bb.r:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

bb.s:                                             ; preds = %bb.m
  br label %decode_linear_addr.exit

decode_linear_addr.exit:                          ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i30 = phi i32 [ %i.ak, %bb.m ], [ 1, %bb.n ], [ 2, %bb.o ], [ 3, %bb.p ], [ 0, %bb.q ], [ 4, %bb.r ], [ 5, %bb.s ]
  %i.an = getelementptr inbounds i8, ptr %0, i64 -16496
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = tail call i64 @linear_addr_size(ptr noundef nonnull %i.an, i64 noundef %.027, i32 noundef %i.ap, i32 noundef %.0.i30) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %decode_linear_addr.exit
  %.sink = phi i64 [ %i.aq, %decode_linear_addr.exit ], [ %.027, %bb.l ]
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sink, ptr %i.ar, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @calc_modrm_operand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 61 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, -65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i8 %i.b, 3
  %i.e = and i8 %i.d, 7
  %i.f = zext nneg i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %i.g, align 8
  store i32 2, ptr %2, align 8
  %i.h = load i8, ptr %i.a, align 1
  %i.i = and i8 %i.h, 7
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i8 %i.k, 3
  %i.o = and i8 %i.n, 8
  %spec.select.i21 = or disjoint i8 %i.o, %i.i    ; 3 uses
  %cond.i = icmp eq i32 %i.m, 1
  br i1 %cond.i, label %3, label %8

3:                                                ; preds = %bb.b
  %4 = icmp samesign ult i8 %spec.select.i21, 4
  %5 = icmp ne i8 %i.k, 0
  %or.cond3.i = or i1 %5, %4
  %6 = zext nneg i8 %spec.select.i21 to i64
  %7 = getelementptr [8 x i8], ptr %0, i64 %6
  %spec.select.idx = select i1 %or.cond3.i, i64 0, i64 -31
  %spec.select = getelementptr i8, ptr %7, i64 %spec.select.idx
  br label %get_reg_ref.exit

8:                                                ; preds = %bb.b
  %9 = zext nneg i8 %spec.select.i21 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %9
  br label %get_reg_ref.exit

get_reg_ref.exit:                                 ; preds = %3, %8
  %.0.i = phi ptr [ %10, %8 ], [ %spec.select, %3 ]
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.0.i, ptr %11, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  switch i32 %i.q, label %bb.g [
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 8, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @calc_modrm_operand16(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @calc_modrm_operand32(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @calc_modrm_operand64(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.r = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %i.q) #15 ; 0 uses
  tail call void @abort() #16
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %get_reg_ref.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_addressing_size(ptr noundef %0, ptr nofree noundef captures(none) initializes((16, 20)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.x86_segment_descriptor, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16496 ; 4 uses
  %i.c = tail call zeroext i1 @x86_is_real(ptr noundef nonnull %i.b) #15
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @x86_is_v8086(ptr noundef nonnull %i.b) #15
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %i.a, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @x86_is_long_mode(ptr noundef nonnull %i.b) #15
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !annotation !39
  %i.h = load ptr, ptr @emul_ops, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i32 noundef 1) #15
  %i.k = load i64, ptr %2, align 8
  %i.l = and i64 %i.k, 18014398509481984
  %.not = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i32, ptr %i.m, align 4
  %.not17 = icmp eq i32 %i.n, 0
  %i.o = xor i1 %.not17, %.not
  %.sink = select i1 %i.o, i32 4, i32 2
  store i32 %.sink, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.q = load i32, ptr %i.p, align 4
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 4, ptr %i.a, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 8, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.d, %bb.e
  ret void
}

declare zeroext i1 @x86_is_real(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @x86_is_v8086(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_operand_size(ptr noundef %0, ptr nofree noundef captures(none) initializes((20, 24)) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.x86_segment_descriptor, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  store i32 -1, ptr %i.a, align 4
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16496 ; 4 uses
  %i.c = tail call zeroext i1 @x86_is_real(ptr noundef nonnull %i.b) #15
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @x86_is_v8086(ptr noundef nonnull %i.b) #15
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %i.a, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  store i32 2, ptr %i.a, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @x86_is_long_mode(ptr noundef nonnull %i.b) #15
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !annotation !39
  %i.h = load ptr, ptr @emul_ops, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i32 noundef 1) #15
  %i.k = load i64, ptr %2, align 8
  %i.l = and i64 %i.k, 18014398509481984
  %.not = icmp eq i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %.not19 = icmp eq i32 %i.n, 0
  %i.o = xor i1 %.not19, %.not
  %.sink = select i1 %i.o, i32 4, i32 2
  store i32 %.sink, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i32, ptr %i.p, align 8
  %.not21 = icmp eq i32 %i.q, 0
  %. = select i1 %.not21, i32 4, i32 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.s = load i8, ptr %i.r, align 1
  %i.t = and i8 %i.s, 8
  %.not22 = icmp eq i8 %i.t, 0
  %spec.store.select = select i1 %.not22, i32 %., i32 8
  store i32 %spec.store.select, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @decode_instruction(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %1, i8 noundef 0, i64 noundef 208, i1 noundef false) #15
  %i.a = tail call fastcc i32 @decode_opcode(ptr noundef %0, ptr noundef nonnull %1)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @decode_opcode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.x86_segment_descriptor, align 8 ; 5 uses
  %3 = alloca %struct.x86_segment_descriptor, align 8 ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16496 ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i64 0, ptr %i.g, align 8
  %i.q = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %1, align 8                ; 2 uses
  %i.s = add i32 %i.r, 1                          ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %.not16.i.i.i = icmp ult i64 %i.v, %i.t
  br i1 %.not16.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = sext i32 %i.r to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  store i8 %i.z, ptr %i.g, align 8
  br label %decode_byte.exit.i

bb.e:                                             ; preds = %bb.c, %bb.b
end_hunk_0
