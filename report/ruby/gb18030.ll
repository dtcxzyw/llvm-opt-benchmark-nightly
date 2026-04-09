begin_hunk_0_@fun_so_from_gb18030:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.c, -1810682
  %i.p = add nsw i32 %i.o, %i.g
  %i.q = add nsw i32 %i.p, %i.k
  %i.r = add nsw i32 %i.q, %i.n                   ; 4 uses
  %i.s = lshr i32 %i.r, 18
  %i.t = lshr i32 %i.r, 12
  %i.u = lshr i32 %i.r, 6
end_hunk_0
begin_hunk_1_@fun_sio_from_gb18030:bb.a
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i32
  %reass.sub = sub nsw i32 %i.s, %i.b
  %i.t = add i32 %reass.sub, -1507328
  %i.u = add i32 %i.t, %i.p
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@fun_so_to_gb18030:bb.a
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %i.q = and i8 %i.p, 63
  %i.r = zext nneg i8 %i.q to i32
  %5 = add nsw i32 %i.d, -65536
  %i.s = add nsw i32 %5, %i.i
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = or disjoint i32 %i.t, %i.n               ; 4 uses
  %i.v = urem i32 %i.u, 10
end_hunk_2
begin_hunk_3_@fun_sio_to_gb18030
define internal range(i64 2, 5) i64 @fun_sio_to_gb18030(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, i64 %2, i64 noundef %3, ptr noundef writeonly captures(none) initializes((0, 2)) %4, i64 %5) #2 {
bb.a:
  %i.a = lshr i64 %3, 8
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !10
  %i.d = and i8 %i.c, 15
  %i.e = zext nneg i8 %i.d to i32
end_hunk_3
begin_hunk_4_@fun_sio_to_gb18030:bb.a
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i32
  %i.q = or disjoint i32 %i.l, %i.p               ; 2 uses
  %i.r = and i32 %i.b, 131072
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %6 = add i32 %i.b, -181650
  %i.s = add i32 %6, %i.q                         ; 2 uses
  %i.t = urem i32 %i.s, 10
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or disjoint i8 %i.u, 48
end_hunk_4
begin_hunk_5_@fun_sio_to_gb18030:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %7 = add i32 %i.b, -24055
  %i.ak = add i32 %7, %i.q                        ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  %i.am = lshr i32 %i.ak, 8
  br label %bb.d
end_hunk_5
