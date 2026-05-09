inline.NumInlined: 29
inline.NumDeleted: 12
begin_hunk_0_@CustomSetup:bb.a
  %or.cond86 = select i1 %i.u, i1 %switch.lobit85, i1 false
  %i.v = add i32 %i.t, -7
  %narrow.i.i.i64 = icmp ult i32 %i.v, 4
  %.not.i59.not = select i1 %or.cond86, i1 true, i1 %narrow.i.i.i64 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
end_hunk_0
begin_hunk_1_@CustomSetup:bb.a
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = ashr i32 %i.ag, 1                       ; 2 uses
  %i.ai = sext i32 %i.x to i64                    ; 5 uses
  %1 = shl nsw i64 %i.ai, 1                       ; 2 uses
  %spec.select78 = select i1 %.not.i59.not, i64 4, i64 3 ; 3 uses
  %2 = mul nsw i64 %1, %spec.select78             ; 2 uses
  %3 = mul nsw i64 %spec.select78, %i.ai
  %4 = shl nsw i64 %2, 2
  %5 = add nsw i64 %4, %3                         ; 2 uses
  %6 = mul nuw nsw i64 %spec.select78, 104
  %7 = add nuw nsw i64 %6, 31
  %8 = add nsw i64 %7, %5
  %9 = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %8) #8 ; 8 uses
  store ptr %9, ptr %i.i, align 8, !tbaa !31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %.critedge, label %bb.g

bb.g:                                             ; preds = %WebPIsAlphaMode.exit.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %9, i64 %5
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 31
  %i.an = and i64 %i.am, -32
end_hunk_1
begin_hunk_2_@CustomSetup:bb.a
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !35
  %i.ax = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.az = tail call i32 @WebPRescalerInit(ptr noundef %i.ao, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull %i.aj, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %9) #8
  %.not80.i = icmp eq i32 %i.az, 0
  br i1 %.not80.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.bb = getelementptr inbounds i8, ptr %i.aj, i64 %i.ai
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  %i.bc = tail call i32 @WebPRescalerInit(ptr noundef %i.ba, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bb, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %11) #8
  %.not81.i = icmp eq i32 %i.bc, 0
  br i1 %.not81.i, label %.critedge, label %bb.i

end_hunk_2
begin_hunk_3_@CustomSetup:bb.a
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.aj, i64 %i.bf
  %.idx.i = shl nsw i64 %i.ai, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i
  %i.bi = tail call i32 @WebPRescalerInit(ptr noundef %i.bd, i32 noundef %i.ad, i32 noundef %i.ah, ptr noundef nonnull %i.bg, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bh) #8
  %.not82.i = icmp eq i32 %i.bi, 0
  br i1 %.not82.i, label %.critedge, label %bb.j
end_hunk_3
begin_hunk_4_@CustomSetup:bb.a
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.aj, i64 %i.bn
  %.idx83.i = mul nsw i64 %i.ai, 24
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 %.idx83.i
  %i.bq = tail call i32 @WebPRescalerInit(ptr noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, ptr noundef nonnull %i.bo, i32 noundef %i.x, i32 noundef %i.z, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.bp) #8
  %.not84.i = icmp eq i32 %i.bq, 0
  br i1 %.not84.i, label %.critedge, label %bb.l
end_hunk_4
begin_hunk_5_@CustomSetup:bb.a
  tail call void @WebPInitAlphaProcessing() #8
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.o, %bb.m, %bb.q, %WebPIsAlphaMode.exit.i58, %bb.h, %bb.i, %bb.g, %bb.k, %WebPIsAlphaMode.exit.i, %bb.x, %bb.w, %bb.r, %bb.p, %bb.l, %bb.j, %.thread66, %.thread67, %bb.u, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.n ], [ 0, %bb.u ], [ 1, %.thread67 ], [ 1, %.thread66 ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.x ], [ 0, %WebPIsAlphaMode.exit.i ], [ 0, %bb.k ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %WebPIsAlphaMode.exit.i58 ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.o ]
  ret i32 %.2
}

end_hunk_5
