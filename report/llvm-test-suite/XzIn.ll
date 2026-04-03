begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc i32 @Xz_ReadIndex(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 4, 17179869185) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp samesign ugt i64 %2, 2147483648
  br i1 %i.b, label %bb.q, label %bb.b

end_hunk_0
begin_hunk_1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.o = add nsw i64 %2, -5
  %i.p = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not85.i = icmp eq i32 %i.p, 0
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  br i1 %.not85.i, label %.critedge.i, label %4

4:                                                ; preds = %bb.g
  %5 = load i64, ptr %i.a, align 8, !tbaa !32     ; 6 uses
  %6 = shl i64 %5, 1
  %7 = icmp ugt i64 %6, %i.j
  br i1 %7, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @Xz_Free(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  %.not86.i = icmp eq i64 %5, 0
  br i1 %.not86.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %i.t, align 8, !tbaa !48
  %i.u = load ptr, ptr %3, align 8, !tbaa !43
  %i.v = shl i64 %5, 4
  %i.w = call ptr %i.u(ptr noundef nonnull %3, i64 noundef %i.v) #9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !15
end_hunk_1
begin_hunk_2
  %i.z = add nuw i64 %.06798.i, 1                 ; 2 uses
  %i.aa = zext i32 %i.am to i64
  %i.ab = add i64 %i.aj, %i.aa                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %5
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !49

.preheader.i:                                     ; preds = %bb.i, %bb.j
end_hunk_2
begin_hunk_3
  %i.bf = select i1 %i.be, i32 0, i32 16
  br label %Xz_ReadIndex2.exit

.critedge.i:                                      ; preds = %4, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %Xz_ReadIndex2.exit

Xz_ReadIndex2.exit:                               ; preds = %bb.l, %bb.k, %.preheader.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.critedge.i, %._crit_edge, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.020 = phi i32 [ %i.f, %bb.c ], [ 16, %.critedge.i ], [ 16, %bb.d ], [ 16, %bb.f ], [ 2, %bb.i ], [ 16, %.lr.ph ], [ %i.bf, %._crit_edge ], [ 16, %bb.e ], [ 16, %.lr.ph.3 ], [ 16, %.lr.ph.2 ], [ 16, %.lr.ph.1 ], [ 16, %.preheader.i ], [ 16, %bb.k ], [ 16, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26
  call void %i.bh(ptr noundef nonnull %3, ptr noundef nonnull %i.d) #9
end_hunk_3
