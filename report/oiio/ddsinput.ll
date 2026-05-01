inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@bcdec_bc7:bb.a
  %.sroa.0.9 = phi i64 [ %.sroa.0.7, %switch.early.test ], [ %.sroa.0.7, %bb.p ], [ %i.ih, %.loopexit322.loopexit ], [ %i.jd, %.loopexit322.loopexit634.unr-lcssa ], [ %i.jm, %.preheader323.epil.preheader ] ; 4 uses
  %i.jo = lshr i32 203, %.0237337.lcssa524552
  %i.jp = and i32 %i.jo, 1                        ; 2 uses
  %i.jq = add nsw i32 %i.jp, %i.ca                ; 3 uses
  %i.jr = sub nsw i32 8, %i.jq                    ; 2 uses
  %i.js = sext i8 %i.ez to i32
  %i.jt = add nsw i32 %i.jp, %i.js                ; 2 uses
  %i.ju = sub nsw i32 8, %i.jt
  %3 = insertelement <2 x i32> poison, i32 %i.jr, i64 0
  %4 = shufflevector <2 x i32> %3, <2 x i32> poison, <2 x i32> zeroinitializer
  %5 = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %.loopexit322, %bb.q
  %indvars.iv443 = phi i64 [ 0, %.loopexit322 ], [ %indvars.iv.next444, %bb.q ] ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv443 ; 4 uses
  %7 = load <2 x i32>, ptr %i.jv, align 16, !tbaa !3
  %8 = shl <2 x i32> %7, %4                       ; 2 uses
  %9 = ashr <2 x i32> %8, %6
  %10 = or <2 x i32> %9, %8
  store <2 x i32> %10, ptr %i.jv, align 16, !tbaa !3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !3
  %i.jy = shl i32 %i.jx, %i.jr                    ; 2 uses
end_hunk_0
