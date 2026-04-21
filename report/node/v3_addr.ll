inline.NumInlined: 160
inline.NumDeleted: 17
begin_hunk_0_@extract_min_max:bb.a
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %4 = trunc nuw nsw i64 %i.k to i16
  %5 = sub nuw nsw i16 8, %4
  %6 = ashr i16 -256, %5
  %i.l = trunc nsw i16 %6 to i8
  %i.m = sext i32 %.pre46 to i64
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = and i8 %i.p, %i.l
  store i8 %i.q, ptr %i.o, align 1, !tbaa !19
  %.pre45 = load i32, ptr %i.d, align 8, !tbaa !18
  br label %bb.g
end_hunk_0
begin_hunk_1_@extract_min_max:bb.a
  br i1 %.not24.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %7 = trunc nuw nsw i64 %i.an to i16
  %8 = sub nuw nsw i16 8, %7
  %9 = ashr i16 -256, %8
  %i.ao = trunc nsw i16 %9 to i8
  %i.ap = sext i32 %.pre42 to i64
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1     ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = and i8 %i.as, %i.ao
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !19
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !18
  br label %bb.n
end_hunk_1
begin_hunk_2_@extract_min_max:bb.a
  %.pre44.sink = phi i32 [ %.pre48, %bb.i ], [ %.pre44, %bb.p ]
  %.sink63 = phi ptr [ %i.w, %bb.i ], [ %i.bb, %bb.p ]
  %i.bj = trunc nuw nsw i64 %.sink74 to i16
  %10 = sub nuw nsw i16 8, %i.bj
  %11 = lshr i16 255, %10
  %12 = sext i32 %.pre44.sink to i64
  %13 = getelementptr i8, ptr %2, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -1         ; 2 uses
  %15 = load i8, ptr %14, align 1, !tbaa !19
  %i.bk = trunc nuw nsw i16 %11 to i8
  %i.bl = or i8 %15, %i.bk
  store i8 %i.bl, ptr %14, align 1, !tbaa !19
  %.pre43 = load i32, ptr %.sink63, align 8, !tbaa !18
  br label %addr_expand.exit27.sink.split

end_hunk_2
begin_hunk_3_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = trunc nuw nsw i64 %i.l to i16
  %4 = sub nuw nsw i16 8, %3
  %5 = ashr i16 -256, %4
  %i.m = trunc nsw i16 %5 to i8
  %i.n = getelementptr i8, ptr %i.a, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %i.q = and i8 %i.p, %i.m
  store i8 %i.q, ptr %i.o, align 1, !tbaa !19
  br label %bb.f

end_hunk_3
begin_hunk_4_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i29, label %._crit_edge56, label %bb.j

bb.j:                                             ; preds = %bb.i
  %6 = trunc nuw nsw i64 %i.ai to i16
  %7 = sub nuw nsw i16 8, %6
  %8 = ashr i16 -256, %7
  %i.aj = trunc nsw i16 %8 to i8
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 -1     ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %i.an = and i8 %i.am, %i.aj
  store i8 %i.an, ptr %i.al, align 1, !tbaa !19
  br label %._crit_edge56

end_hunk_4
begin_hunk_5_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %9 = trunc nuw nsw i64 %i.bb to i16
  %10 = sub nuw nsw i16 8, %9
  %11 = ashr i16 -256, %10
  %i.bc = trunc nsw i16 %11 to i8
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.ay
  %i.be = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %i.bg = and i8 %i.bf, %i.bc
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !19
  br label %bb.p

end_hunk_5
begin_hunk_6_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i39, label %._crit_edge57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %12 = trunc nuw nsw i64 %i.by to i16
  %13 = sub nuw nsw i16 8, %12
  %14 = ashr i16 -256, %13
  %i.bz = trunc nsw i16 %14 to i8
  %i.ca = getelementptr i8, ptr %i.b, i64 %i.bv
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %i.cd = and i8 %i.cc, %i.bz
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !19
  br label %._crit_edge57

end_hunk_6
begin_hunk_7_@BIO_puts
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @i2r_address(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i8 noundef zeroext range(i8 -1, 1) %2, ptr noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i32, ptr %3, align 8, !tbaa !18     ; 10 uses
  %i.c = icmp slt i32 %i.b, 0
end_hunk_7
begin_hunk_8_@i2r_address:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = zext nneg i32 %i.b to i64                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.l, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
end_hunk_8
begin_hunk_9_@i2r_address:bb.a
  br i1 %.not24.i, label %._crit_edge53, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %i.p to i16
  %4 = sub nuw nsw i16 8, %i.q                    ; 2 uses
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %6 = ashr i16 -256, %4
  %i.r = trunc nsw i16 %6 to i8
  %7 = getelementptr i8, ptr %i.a, i64 %i.m
  %8 = getelementptr i8, ptr %7, i64 -1           ; 2 uses
  %9 = load i8, ptr %8, align 1, !tbaa !19
  %i.s = and i8 %9, %i.r
  store i8 %i.s, ptr %8, align 1, !tbaa !19
  br label %._crit_edge53

bb.h:                                             ; preds = %bb.f
  %10 = lshr i16 255, %4
  %11 = getelementptr i8, ptr %i.a, i64 %i.m
  %12 = getelementptr i8, ptr %11, i64 -1         ; 2 uses
  %13 = load i8, ptr %12, align 1, !tbaa !19
  %i.t = trunc nuw nsw i16 %10 to i8
  %i.u = or i8 %13, %i.t
  store i8 %i.u, ptr %12, align 1, !tbaa !19
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.d, %bb.h, %bb.g, %bb.e
  %.pre-phi = phi i64 [ %i.m, %bb.e ], [ %i.m, %bb.h ], [ %i.m, %bb.g ], [ 0, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  %i.w = sub nuw nsw i32 4, %i.b
  %i.x = zext nneg i32 %i.w to i64
end_hunk_9
begin_hunk_10_@i2r_address:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.am = zext nneg i32 %i.b to i64               ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.al, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
end_hunk_10
begin_hunk_11_@i2r_address:bb.a
  br i1 %.not24.i37, label %addr_expand.exit39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.ap to i16
  %14 = sub nuw nsw i16 8, %i.aq                  ; 2 uses
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %16 = ashr i16 -256, %14
  %i.ar = trunc nsw i16 %16 to i8
  %17 = getelementptr i8, ptr %i.a, i64 %i.am
  %18 = getelementptr i8, ptr %17, i64 -1         ; 2 uses
  %19 = load i8, ptr %18, align 1, !tbaa !19
  %i.as = and i8 %19, %i.ar
  store i8 %i.as, ptr %18, align 1, !tbaa !19
  br label %addr_expand.exit39

bb.n:                                             ; preds = %bb.l
  %20 = lshr i16 255, %14
  %21 = getelementptr i8, ptr %i.a, i64 %i.am
  %22 = getelementptr i8, ptr %21, i64 -1         ; 2 uses
  %23 = load i8, ptr %22, align 1, !tbaa !19
  %i.at = trunc nuw nsw i16 %20 to i8
  %i.au = or i8 %23, %i.at
  store i8 %i.au, ptr %22, align 1, !tbaa !19
  br label %addr_expand.exit39

addr_expand.exit39:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  %.pre-phi55 = phi i64 [ %i.am, %bb.n ], [ %i.am, %bb.k ], [ %i.am, %bb.m ], [ 0, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi55
  %i.aw = sub nuw nsw i32 16, %i.b
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 range(i8 -1, 1) %2, i64 %i.ax, i1 false)
end_hunk_11
