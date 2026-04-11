inline.NumInlined: 54
inline.NumDeleted: 14
begin_hunk_0_@VP8DecodeMB:bb.a
  br i1 %i.p, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.a, %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 798
  %i.s = load i8, ptr %i.r, align 2, !tbaa !79
end_hunk_0
begin_hunk_1_@VP8DecodeMB:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 768
  %i.w = load i8, ptr %i.v, align 4, !tbaa !80
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %bb.c, label %3

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
end_hunk_1
begin_hunk_2_@VP8DecodeMB:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

3:                                                ; preds = %.critedge
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2664
  br label %bb.e

bb.e:                                             ; preds = %3, %.loopexit.i
  %.0123.i = phi i32 [ 0, %3 ], [ 1, %.loopexit.i ] ; 8 uses
  %.0.i = phi ptr [ %4, %3 ], [ %2, %.loopexit.i ] ; 4 uses
  %i.bg = load i8, ptr %i.h, align 1, !tbaa !85
  %i.bh = load i8, ptr %i.d, align 1, !tbaa !85
  %i.bi = and i8 %i.bh, 15
end_hunk_2
begin_hunk_3_@GetCoeffsAlt:bb.a
  %i.ck = add nsw i32 %i.cj, 1                    ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !34
  %i.cq = zext i8 %i.cp to i32
end_hunk_3
begin_hunk_4_@GetCoeffsAlt:bb.a
  %i.dv = phi i32 [ %i.du, %bb.v ], [ %i.db, %bb.u ]
  %.1.i44 = phi i32 [ %i.dt, %bb.v ], [ %.0.i43, %bb.u ]
  store i32 %.1.i44, ptr %i.g, align 8, !tbaa !102, !alias.scope !122
  br i1 %.not52, label %bb.w, label %6

6:                                                ; preds = %VP8GetBitAlt.exit47
  %7 = getelementptr inbounds nuw i8, ptr %i.cn, i64 11
  br label %bb.x

bb.w:                                             ; preds = %VP8GetBitAlt.exit47
  %i.dw = tail call fastcc i32 @GetLargeValue(ptr noundef nonnull %0, ptr noundef nonnull %.1)
  %8 = getelementptr inbounds nuw i8, ptr %i.cn, i64 22
  %.pre68 = load i32, ptr %i.h, align 4, !tbaa !106, !alias.scope !129
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %6
  %i.dx = phi i32 [ %.pre68, %bb.w ], [ %i.dv, %6 ] ; 3 uses
  %.2 = phi ptr [ %8, %bb.w ], [ %7, %6 ]
  %.0 = phi i32 [ %i.dw, %bb.w ], [ 1, %6 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %bb.y, label %VP8GetSigned.exit
end_hunk_4
begin_hunk_5_@GetCoeffsFast:bb.a
  %i.cc = add nsw i32 %i.cb, 1                    ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !34
  %i.ci = zext i8 %i.ch to i32
end_hunk_5
begin_hunk_6_@GetCoeffsFast:bb.a
  store i32 %i.dh, ptr %i.h, align 4, !tbaa !106, !alias.scope !152
  %i.di = add i32 %i.dg, -1
  store i32 %i.di, ptr %i.g, align 8, !tbaa !102, !alias.scope !152
  br i1 %.not48, label %bb.t, label %6

6:                                                ; preds = %VP8GetBit.exit43
  %7 = getelementptr inbounds nuw i8, ptr %i.cf, i64 11
  br label %bb.u

bb.t:                                             ; preds = %VP8GetBit.exit43
  %i.dj = tail call fastcc i32 @GetLargeValue(ptr noundef nonnull %0, ptr noundef nonnull %.1)
  %8 = getelementptr inbounds nuw i8, ptr %i.cf, i64 22
  %.pre68 = load i32, ptr %i.h, align 4, !tbaa !106, !alias.scope !159
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %6
  %i.dk = phi i32 [ %.pre68, %bb.t ], [ %i.dh, %6 ] ; 3 uses
  %.2 = phi ptr [ %8, %bb.t ], [ %7, %6 ]
  %.0 = phi i32 [ %i.dj, %bb.t ], [ 1, %6 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %bb.v, label %VP8GetSigned.exit
end_hunk_6
