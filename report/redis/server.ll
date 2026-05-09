inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@call:bb.a
  br label %.critedge174

.critedge174:                                     ; preds = %bb.v, %bb.an, %bb.ao, %.critedge173
  %i.et = phi i64 [ %i.cq, %bb.v ], [ %i.ek, %bb.an ], [ %.pre193, %bb.ao ], [ %i.ek, %.critedge173 ] ; 9 uses
  %i.eu = and i64 %i.et, 16
  %.not147 = icmp eq i64 %i.eu, 0
  br i1 %.not147, label %bb.ap, label %bb.aq
end_hunk_0
begin_hunk_1_@call:bb.a
  br i1 %.not151, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not152.not = icmp sgt i64 %i.cb, %i.l
  %i.fc = trunc i64 %i.et to i32
  %i.fd = lshr i32 %i.fc, 14
  %i.fe = and i32 %i.fd, 3
  %.2 = select i1 %.not152.not, i32 3, i32 %i.fe  ; 2 uses
  %i.ff = and i64 %i.et, 562949954469888
  %or.cond175 = icmp ne i64 %i.ff, 0
  %i.fg = and i32 %1, 2
end_hunk_1
begin_hunk_2_@addReplyCommandArgList:bb.a
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %indvars.iv ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !605
  %.not = icmp eq i32 %i.e, -1
  %spec.select = select i1 %.not, i64 2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !607
  %.not99 = icmp ne ptr %i.g, null
  %3 = zext i1 %.not99 to i64
  %.1 = add nuw nsw i64 %spec.select, %3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !608
  %.not100 = icmp ne ptr %i.i, null
end_hunk_2
begin_hunk_3_@addReplyCommandDocs:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !630
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, i64 1, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !631
  %.not65 = icmp ne ptr %i.d, null
  %2 = zext i1 %.not65 to i64
  %.1 = add nuw nsw i64 %spec.select, %2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !496
  %i.g = lshr i64 %i.f, 3
  %i.h = and i64 %i.g, 1
  %.2 = add nuw nsw i64 %.1, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !632
  %.not67 = icmp ne ptr %i.j, null
end_hunk_3
