inline.NumInlined: 374
inline.NumDeleted: 35
begin_hunk_0_@FT_Stream_ReadFields:bb.a
bb.d:                                             ; preds = %bb.ab, %bb.c
  %.080 = phi ptr [ %1, %bb.c ], [ %.282, %bb.ab ] ; 7 uses
  %.075 = phi i8 [ 0, %bb.c ], [ %.176, %bb.ab ]  ; 7 uses
  %.073 = phi ptr [ %i.b, %bb.c ], [ %.3, %bb.ab ] ; 21 uses
  %i.h = load i8, ptr %.080, align 2, !tbaa !615  ; 3 uses
  switch i8 %i.h, label %bb.v [
    i8 4, label %bb.e
end_hunk_0
begin_hunk_1_@FT_Stream_ReadFields:bb.a
  br label %bb.ab

bb.o:                                             ; preds = %bb.d, %bb.d
  %3 = getelementptr inbounds nuw i8, ptr %.073, i64 1
  %i.at = load i8, ptr %.073, align 1, !tbaa !242
  %i.au = zext i8 %i.at to i64
  br label %bb.w

bb.p:                                             ; preds = %bb.d, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %.073, i64 2
  %i.av = load i8, ptr %.073, align 1, !tbaa !242
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 8
end_hunk_1
begin_hunk_2_@FT_Stream_ReadFields:bb.a
  br label %bb.w

bb.q:                                             ; preds = %bb.d, %bb.d
  %5 = getelementptr inbounds nuw i8, ptr %.073, i64 2
  %i.bc = load i16, ptr %.073, align 1
  %i.bd = zext i16 %i.bc to i64
  br label %bb.w

bb.r:                                             ; preds = %bb.d, %bb.d
  %6 = getelementptr inbounds nuw i8, ptr %.073, i64 4
  %i.be = load i32, ptr %.073, align 1
  %i.bf = tail call i32 @llvm.bswap.i32(i32 %i.be)
  %i.bg = zext i32 %i.bf to i64
  br label %bb.w

bb.s:                                             ; preds = %bb.d, %bb.d
  %7 = getelementptr inbounds nuw i8, ptr %.073, i64 4
  %i.bh = load i32, ptr %.073, align 1
  %i.bi = zext i32 %i.bh to i64
  br label %bb.w

bb.t:                                             ; preds = %bb.d, %bb.d
  %8 = getelementptr inbounds nuw i8, ptr %.073, i64 3
  %i.bj = load i8, ptr %.073, align 1, !tbaa !242
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 16
end_hunk_2
begin_hunk_3_@FT_Stream_ReadFields:bb.a
  br label %bb.w

bb.u:                                             ; preds = %bb.d, %bb.d
  %9 = getelementptr inbounds nuw i8, ptr %.073, i64 3
  %i.bv = getelementptr i8, ptr %.073, i64 1
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i64
end_hunk_3
begin_hunk_4_@FT_Stream_ReadFields:bb.a
  br label %FT_Stream_EnterFrame.exit.thread

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.2 = phi ptr [ %3, %bb.o ], [ %4, %bb.p ], [ %5, %bb.q ], [ %6, %bb.r ], [ %7, %bb.s ], [ %8, %bb.t ], [ %9, %bb.u ] ; 4 uses
  %.070 = phi i64 [ %i.au, %bb.o ], [ %i.bb, %bb.p ], [ %i.bd, %bb.q ], [ %i.bg, %bb.r ], [ %i.bi, %bb.s ], [ %i.bu, %bb.t ], [ %i.cb, %bb.u ] ; 2 uses
  %.069 = phi i32 [ 24, %bb.o ], [ 16, %bb.p ], [ 16, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 8, %bb.t ], [ 8, %bb.u ] ; 2 uses
  %i.cc = and i8 %i.h, 1
  %.not89 = icmp eq i8 %i.cc, 0
  %i.cd = zext nneg i32 %.069 to i64
end_hunk_4
