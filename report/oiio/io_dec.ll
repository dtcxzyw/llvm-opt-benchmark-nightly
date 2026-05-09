inline.NumInlined: 29
inline.NumDeleted: 12
begin_hunk_0_@CustomSetup:bb.a
  %or.cond86 = select i1 %i.u, i1 %switch.lobit85, i1 false
  %i.v = add i32 %i.t, -7
  %narrow.i.i.i64 = icmp ult i32 %i.v, 4
  %.not.i59.not = select i1 %or.cond86, i1 true, i1 %narrow.i.i.i64 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
end_hunk_0
begin_hunk_1_@CustomSetup:bb.a
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = ashr i32 %i.ag, 1                       ; 2 uses
  %i.ai = sext i32 %i.x to i64                    ; 10 uses
  br i1 %.not.i59.not, label %1, label %5

1:                                                ; preds = %WebPIsAlphaMode.exit.i
  %2 = shl nsw i64 %i.ai, 3
  %3 = shl nsw i64 %i.ai, 2
  %4 = shl nsw i64 %i.ai, 5
  br label %9

5:                                                ; preds = %WebPIsAlphaMode.exit.i
  %6 = mul nsw i64 %i.ai, 6
  %7 = mul nsw i64 %i.ai, 3
  %8 = mul nsw i64 %i.ai, 24
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ %4, %1 ]
  %11 = phi i64 [ %7, %5 ], [ %3, %1 ]
  %12 = phi i64 [ %6, %5 ], [ %2, %1 ]
  %13 = phi i64 [ 343, %5 ], [ 447, %1 ]
  %14 = add nsw i64 %11, %10
  %15 = add nsw i64 %14, %13                      ; 2 uses
  %16 = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %15) #8 ; 8 uses
  store ptr %16, ptr %i.i, align 8, !tbaa !31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %.critedge, label %bb.g

bb.g:                                             ; preds = %9
  %.neg.i = select i1 %.not.i59.not, i64 -447, i64 -343
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %12 ; 4 uses
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %15
  %i.ak = getelementptr inbounds i8, ptr %18, i64 %.neg.i
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 31
  %i.an = and i64 %i.am, -32
end_hunk_1
begin_hunk_2_@CustomSetup:bb.a
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !35
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.az = tail call i32 @WebPRescalerInit(ptr noundef %i.ao, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull %i.aj, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %16) #8
  %.not80.i = icmp eq i32 %i.az, 0
  br i1 %.not80.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.bb = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai
  %.idx = shl nsw i64 %i.ai, 3
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 %.idx
  %i.bc = tail call i32 @WebPRescalerInit(ptr noundef %i.ba, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bb, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %19) #8
  %.not81.i = icmp eq i32 %i.bc, 0
  br i1 %.not81.i, label %.critedge, label %bb.i

end_hunk_2
begin_hunk_3_@CustomSetup:bb.a
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.aj, i64 %i.bf
  %.idx.i = shl nsw i64 %i.ai, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 %.idx.i
  %i.bi = tail call i32 @WebPRescalerInit(ptr noundef %i.bd, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bg, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bh) #8
  %.not82.i = icmp eq i32 %i.bi, 0
  br i1 %.not82.i, label %.critedge, label %bb.j
end_hunk_3
begin_hunk_4_@CustomSetup:bb.a
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.aj, i64 %i.bn
  %.idx83.i = mul nsw i64 %i.ai, 24
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 %.idx83.i
  %i.bq = tail call i32 @WebPRescalerInit(ptr noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef nonnull %i.bo, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bp) #8
  %.not84.i = icmp eq i32 %i.bq, 0
  br i1 %.not84.i, label %.critedge, label %bb.l
end_hunk_4
begin_hunk_5_@CustomSetup:bb.a
  tail call void @WebPInitAlphaProcessing() #8
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.m, %bb.q, %WebPIsAlphaMode.exit.i58, %bb.h, %bb.i, %bb.g, %bb.k, %9, %bb.x, %bb.w, %bb.r, %bb.p, %bb.l, %bb.j, %.thread66, %.thread67, %bb.u, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %bb.u ], [ 1, %.thread67 ], [ 1, %.thread66 ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.x ], [ 0, %9 ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %WebPIsAlphaMode.exit.i58 ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ]
  ret i32 %.2
}

end_hunk_5
