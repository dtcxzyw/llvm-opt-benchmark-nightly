inline.NumInlined: 156
inline.NumDeleted: 15
begin_hunk_0_@doParseXmlDecl:bb.a
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %4, i64 %i.r       ; 6 uses
  %i.t = call fastcc i32 @parsePseudoAttribute(ptr noundef %2, ptr noundef %i.o, ptr noundef %i.s, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.h, ptr noundef %i.g)
  %11 = trunc nuw i32 %i.t to i1
  %i.u = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.v = icmp ne ptr %i.u, null
  %or.cond = select i1 %11, i1 %i.v, i1 false
end_hunk_0
begin_hunk_1_@initScan:bb.a

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.h = icmp eq i8 %i.f, 0
  %6 = trunc nuw i32 %2 to i1
  %or.cond = select i1 %i.h, i1 %6, i1 false
  br i1 %or.cond, label %bb.y, label %bb.z

bb.f:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@initScan:bb.a
  %i.n = getelementptr i8, ptr %1, i64 133
  %i.o = load i8, ptr %i.n, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.o, 0
  %7 = trunc nuw i32 %2 to i1
  %or.cond3 = select i1 %i.p, i1 %7, i1 false
  br i1 %or.cond3, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@initScan:bb.a

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i8 %i.u, 3
  %8 = trunc nuw i32 %2 to i1
  %or.cond5 = select i1 %i.w, i1 %8, i1 false
  br i1 %or.cond5, label %bb.y, label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@initScan:bb.a
  %i.ad = getelementptr i8, ptr %1, i64 133
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !39
  %i.af = icmp eq i8 %i.ae, 0
  %9 = trunc nuw i32 %2 to i1
  %or.cond8 = select i1 %i.af, i1 %9, i1 false
  br i1 %or.cond8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_4
begin_hunk_5_@initScan:bb.a

bb.w:                                             ; preds = %bb.s
  %i.bc = icmp ne i8 %i.l, 0
  %10 = trunc nuw i32 %2 to i1
  %or.cond20 = select i1 %i.bc, i1 true, i1 %10
  br i1 %or.cond20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_5
