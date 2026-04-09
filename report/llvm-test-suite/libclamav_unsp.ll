inline.NumInlined: 24
inline.NumDeleted: 1
begin_hunk_0_@very_real_unpack:bb.a
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.aan, %select.unfold ] ; 4 uses
  %.0247564 = phi i32 [ 0, %.lr.ph ], [ %.3250, %select.unfold ]
  %.0251561 = phi i32 [ 0, %.lr.ph ], [ %.3254, %select.unfold ] ; 13 uses
  %.0255558 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
end_hunk_0
begin_hunk_1_@very_real_unpack:bb.a
  %.0269547 = phi i32 [ 0, %.lr.ph ], [ %.3272, %select.unfold ] ; 22 uses
  %.0273546 = phi i32 [ 0, %.lr.ph ], [ %.3276, %select.unfold ]
  %.0279541 = phi i32 [ %6, %.lr.ph ], [ %.3282, %select.unfold ] ; 4 uses
  %i.bq = shl i32 %.0251561, 4
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs ; 5 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
end_hunk_1
begin_hunk_2_@very_real_unpack:bb.a
bb.bi:                                            ; preds = %bb.ba, %get_byte.exit.i365
  %i.iq = phi i32 [ %i.ho, %bb.ba ], [ %i.ib, %get_byte.exit.i365 ] ; 3 uses
  %i.ir = phi i32 [ %i.hn, %bb.ba ], [ %i.ic, %get_byte.exit.i365 ] ; 2 uses
  %i.is = add i32 %i.br, 240
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.it ; 5 uses
  %.not49.i369 = icmp uge ptr %i.iu, %i.bw
end_hunk_2
