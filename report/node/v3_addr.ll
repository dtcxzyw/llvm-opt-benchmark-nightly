inline.NumInlined: 160
inline.NumDeleted: 17
begin_hunk_0_@extract_min_max:bb.a
  br i1 %.not24.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %i.k to i8
  %i.m = sext i32 %.pre46 to i64
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %4 = shl nsw i8 -1, %i.l
  %i.q = and i8 %i.p, %4
  store i8 %i.q, ptr %i.o, align 1, !tbaa !19
  %.pre45 = load i32, ptr %i.d, align 8, !tbaa !18
  br label %bb.g
end_hunk_0
begin_hunk_1_@extract_min_max:bb.a
  br i1 %.not24.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = sext i32 %.pre42 to i64
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1     ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %5 = shl nsw i8 -1, %i.ao
  %i.at = and i8 %i.as, %5
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !19
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !18
  br label %bb.n
end_hunk_1
begin_hunk_2_@extract_min_max:bb.a
  %.pre44.sink = phi i32 [ %.pre48, %bb.i ], [ %.pre44, %bb.p ]
  %.sink63 = phi ptr [ %i.w, %bb.i ], [ %i.bb, %bb.p ]
  %i.bj = trunc nuw nsw i64 %.sink74 to i16
  %6 = sext i32 %.pre44.sink to i64
  %7 = getelementptr i8, ptr %2, i64 %6
  %8 = getelementptr i8, ptr %7, i64 -1           ; 2 uses
  %9 = load i8, ptr %8, align 1, !tbaa !19
  %10 = sub nuw nsw i16 8, %i.bj
  %11 = lshr i16 255, %10
  %i.bk = trunc nuw nsw i16 %11 to i8
  %i.bl = or i8 %9, %i.bk
  store i8 %i.bl, ptr %8, align 1, !tbaa !19
  %.pre43 = load i32, ptr %.sink63, align 8, !tbaa !18
  br label %addr_expand.exit27.sink.split

end_hunk_2
begin_hunk_3_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr i8, ptr %i.a, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19
  %3 = shl nsw i8 -1, %i.m
  %i.q = and i8 %i.p, %3
  store i8 %i.q, ptr %i.o, align 1, !tbaa !19
  br label %bb.f

end_hunk_3
begin_hunk_4_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i29, label %._crit_edge56, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = trunc nuw nsw i64 %i.ai to i8
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.af
  %i.al = getelementptr i8, ptr %i.ak, i64 -1     ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19
  %4 = shl nsw i8 -1, %i.aj
  %i.an = and i8 %i.am, %4
  store i8 %i.an, ptr %i.al, align 1, !tbaa !19
  br label %._crit_edge56

end_hunk_4
begin_hunk_5_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  %i.bd = getelementptr i8, ptr %i.b, i64 %i.ay
  %i.be = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !19
  %5 = shl nsw i8 -1, %i.bc
  %i.bg = and i8 %i.bf, %5
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !19
  br label %bb.p

end_hunk_5
begin_hunk_6_@IPAddressOrRange_cmp:bb.a
  br i1 %.not24.i39, label %._crit_edge57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = getelementptr i8, ptr %i.b, i64 %i.bv
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !19
  %6 = shl nsw i8 -1, %i.bz
  %i.cd = and i8 %i.cc, %6
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !19
  br label %._crit_edge57

end_hunk_6
begin_hunk_7_@BIO_puts
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @i2r_address(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i8 noundef zeroext range(i8 -1, 1) %2, ptr noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = load i32, ptr %3, align 8, !tbaa !18     ; 10 uses
  %i.c = icmp slt i32 %i.b, 0
end_hunk_7
begin_hunk_8_@i2r_address:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = zext nneg i32 %i.b to i64                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.l, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
end_hunk_8
begin_hunk_9_@i2r_address:bb.a
  br i1 %.not24.i, label %._crit_edge53, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %i.p to i16            ; 2 uses
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr i8, ptr %i.a, i64 %i.m
  %6 = getelementptr i8, ptr %5, i64 -1           ; 2 uses
  %7 = load i8, ptr %6, align 1, !tbaa !19        ; 2 uses
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %8 = shl nsw i16 -1, %i.q
  %i.r = trunc nsw i16 %8 to i8
  %i.s = and i8 %7, %i.r
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  %9 = sub nuw nsw i16 8, %i.q
  %10 = lshr i16 255, %9
  %i.t = trunc nuw nsw i16 %10 to i8
  %i.u = or i8 %7, %i.t
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.g
  %.sink.i = phi i8 [ %i.s, %bb.g ], [ %i.u, %bb.h ]
  store i8 %.sink.i, ptr %6, align 1, !tbaa !19
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %bb.d, %.sink.split.i, %bb.e
  %.pre-phi = phi i64 [ %i.m, %bb.e ], [ %i.m, %.sink.split.i ], [ 0, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi
  %i.w = sub nuw nsw i32 4, %i.b
  %i.x = zext nneg i32 %i.w to i64
end_hunk_9
begin_hunk_10_@i2r_address:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.am = zext nneg i32 %i.b to i64               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.al, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !36
end_hunk_10
begin_hunk_11_@i2r_address:bb.a
  br i1 %.not24.i37, label %addr_expand.exit39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = trunc nuw nsw i64 %i.ap to i16          ; 2 uses
  %11 = icmp eq i8 %2, 0
  %12 = getelementptr i8, ptr %i.a, i64 %i.am
  %13 = getelementptr i8, ptr %12, i64 -1         ; 2 uses
  %14 = load i8, ptr %13, align 1, !tbaa !19      ; 2 uses
  br i1 %11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %15 = shl nsw i16 -1, %i.aq
  %i.ar = trunc nsw i16 %15 to i8
  %i.as = and i8 %14, %i.ar
  br label %.sink.split.i38

bb.n:                                             ; preds = %bb.l
  %16 = sub nuw nsw i16 8, %i.aq
  %17 = lshr i16 255, %16
  %i.at = trunc nuw nsw i16 %17 to i8
  %i.au = or i8 %14, %i.at
  br label %.sink.split.i38

.sink.split.i38:                                  ; preds = %bb.n, %bb.m
  %.sink.i39 = phi i8 [ %i.as, %bb.m ], [ %i.au, %bb.n ]
  store i8 %.sink.i39, ptr %13, align 1, !tbaa !19
  br label %addr_expand.exit39

addr_expand.exit39:                               ; preds = %bb.j, %bb.k, %.sink.split.i38
  %.pre-phi57 = phi i64 [ %i.am, %.sink.split.i38 ], [ %i.am, %bb.k ], [ 0, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.pre-phi57
  %i.aw = sub nuw nsw i32 16, %i.b
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 range(i8 -1, 1) %2, i64 %i.ax, i1 false)
end_hunk_11
