inline.NumInlined: 26
inline.NumDeleted: 10
begin_hunk_0_@mi_random_init_ex:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c
  %i.c = call i64 @_mi_prim_clock_now() #7, !inline_history !13 ; 2 uses
  %i.d = xor i64 %i.c, ptrtoint (ptr @_mi_os_random_weak to i64) ; 3 uses
  %i.e = lshr i64 %i.d, 17
  %i.f = xor i64 %i.e, %i.d
end_hunk_0
begin_hunk_1_@_mi_random_reinit_if_weak
define hidden void @_mi_random_reinit_if_weak(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i8, ptr %i.a, align 4, !tbaa !14, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_1
begin_hunk_2_@chacha_block:.preheader21
  %i.es = tail call noundef i32 @llvm.fshl.i32(i32 %i.er, i32 %i.er, i32 7) ; 2 uses
  %i.et = add nuw nsw i64 %.01953, 2
  %i.eu = icmp samesign ult i64 %.01953, 18
  br i1 %i.eu, label %bb.a, label %.preheader, !llvm.loop !17

bb.b:                                             ; preds = %.preheader
  %i.ev = add i32 %i.z, 1                         ; 2 uses
end_hunk_2
begin_hunk_3_@_mi_warning_message
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{ptr @_mi_os_random_weak}
!14 = !{!8, !9, i64 132}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !11}
end_hunk_3
