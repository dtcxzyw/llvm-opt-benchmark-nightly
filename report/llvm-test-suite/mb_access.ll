begin_hunk_0_@getAffNeighbour:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.fx = load ptr, ptr @get_mb_block_pos, align 8, !tbaa !8
  tail call void %i.fx(i32 noundef %i.fu, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fw) #5
  %i.fy = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 15552
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.g
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!55 = !{!51, !5, i64 16}
!56 = !{!51, !5, i64 20}
!57 = !{!32, !5, i64 424}
end_hunk_1
