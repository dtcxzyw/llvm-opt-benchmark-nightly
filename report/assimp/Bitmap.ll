inline.NumInlined: 19
inline.NumDeleted: 3
begin_hunk_0_@_ZN6Assimp6Bitmap4SaveEP9aiTexturePNS_8IOStreamE:bb.a
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 14, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 40, ptr %i.b, align 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Bitmap4SaveEP9aiTexturePNS_8IOStreamE:bb.a
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 40, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.ae = load i32, ptr %i.f, align 4             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Bitmap4SaveEP9aiTexturePNS_8IOStreamE:bb.a
  %i.bc = load ptr, ptr %1, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 0 uses
  %i.bg = add nuw nsw i64 %.01922.i, 1            ; 2 uses
  %i.bh = load i32, ptr %0, align 8               ; 2 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp samesign ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.c, label %._crit_edge.loopexit.i, !llvm.loop !3

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre26.i = load i32, ptr %i.f, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp6Bitmap4SaveEP9aiTexturePNS_8IOStreamE:bb.a
  %i.bm = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %i.bn = zext i32 %i.bk to i64
  %i.bo = icmp samesign ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %.preheader.i, label %_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit, !llvm.loop !5

_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
end_hunk_3
begin_hunk_4_@_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE:bb.a
  %i.af = load i32, ptr %0, align 8               ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp samesign ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !3

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre26 = load i32, ptr %i.b, align 4
end_hunk_4
begin_hunk_5_@_ZN6Assimp6Bitmap9WriteDataEP9aiTexturePNS_8IOStreamE:bb.a
  %i.ak = add nuw nsw i64 %.023, 1                ; 2 uses
  %i.al = zext i32 %i.ai to i64
  %i.am = icmp samesign ult i64 %i.ak, %i.al
  br i1 %i.am, label %.preheader, label %._crit_edge24, !llvm.loop !5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_5
begin_hunk_6_@llvm.memset.p0.i64
!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
end_hunk_6
