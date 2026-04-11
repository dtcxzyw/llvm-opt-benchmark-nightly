inline.NumInlined: 71
inline.NumDeleted: 11
begin_hunk_0_@messageToFileblob:bb.a
.preheader.i:                                     ; preds = %bb.bx, %bb.cb
  %i.gf = phi i8 [ %.pr.i, %bb.cb ], [ %i.gb, %bb.bx ] ; 2 uses
  %.6.i = phi ptr [ %.7.i, %bb.cb ], [ %.0341.us.i, %bb.bx ] ; 5 uses
  %.4.i = phi ptr [ %.5.i, %bb.cb ], [ %i.ft, %bb.bx ] ; 3 uses
  switch i8 %i.gf, label %bb.ca [
    i8 0, label %bb.cc
    i8 61, label %bb.by
end_hunk_0
begin_hunk_1_@messageToFileblob:bb.a
  br i1 %i.gi, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %3 = getelementptr inbounds nuw i8, ptr %.4.i, i64 2
  %i.gj = add i8 %i.gh, -64
  br label %bb.cb

bb.ca:                                            ; preds = %.preheader.i
  %4 = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.gk = add i8 %i.gf, -42
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %storemerge.i = phi i8 [ %i.gk, %bb.ca ], [ %i.gj, %bb.bz ]
  %.5.i = phi ptr [ %4, %bb.ca ], [ %3, %bb.bz ]  ; 2 uses
  %.7.i = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %storemerge.i, ptr %.6.i, align 1, !tbaa !26
  %.pr.i = load i8, ptr %.5.i, align 1, !tbaa !26
end_hunk_1
begin_hunk_2_@messageToBlob:bb.a
.preheader.i:                                     ; preds = %bb.bt, %bb.bx
  %i.ga = phi i8 [ %.pr.i, %bb.bx ], [ %i.fw, %bb.bt ] ; 2 uses
  %.6.i = phi ptr [ %.7.i, %bb.bx ], [ %.0341.us.i, %bb.bt ] ; 5 uses
  %.4.i = phi ptr [ %.5.i, %bb.bx ], [ %i.fo, %bb.bt ] ; 3 uses
  switch i8 %i.ga, label %bb.bw [
    i8 0, label %bb.by
    i8 61, label %bb.bu
end_hunk_2
begin_hunk_3_@messageToBlob:bb.a
  br i1 %i.gd, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %2 = getelementptr inbounds nuw i8, ptr %.4.i, i64 2
  %i.ge = add i8 %i.gc, -64
  br label %bb.bx

bb.bw:                                            ; preds = %.preheader.i
  %3 = getelementptr inbounds nuw i8, ptr %.4.i, i64 1
  %i.gf = add i8 %i.ga, -42
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge.i = phi i8 [ %i.gf, %bb.bw ], [ %i.ge, %bb.bv ]
  %.5.i = phi ptr [ %3, %bb.bw ], [ %2, %bb.bv ]  ; 2 uses
  %.7.i = getelementptr inbounds nuw i8, ptr %.6.i, i64 1
  store i8 %storemerge.i, ptr %.6.i, align 1, !tbaa !26
  %.pr.i = load i8, ptr %.5.i, align 1, !tbaa !26
end_hunk_3
begin_hunk_4_@decodeLine:bb.a
.preheader:                                       ; preds = %bb.bs, %bb.bw
  %i.iy = phi i8 [ %.pr, %bb.bw ], [ %i.iu, %bb.bs ] ; 2 uses
  %.6 = phi ptr [ %.7, %bb.bw ], [ %3, %bb.bs ]   ; 4 uses
  %.4 = phi ptr [ %.5, %bb.bw ], [ %2, %bb.bs ]   ; 3 uses
  switch i8 %i.iy, label %bb.bv [
    i8 0, label %.thread179
    i8 61, label %bb.bt
end_hunk_4
begin_hunk_5_@decodeLine:bb.a
  br i1 %i.jb, label %.thread179, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %5 = getelementptr inbounds nuw i8, ptr %.4, i64 2
  %i.jc = add i8 %i.ja, -64
  br label %bb.bw

bb.bv:                                            ; preds = %.preheader
  %6 = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.jd = add i8 %i.iy, -42
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %storemerge = phi i8 [ %i.jd, %bb.bv ], [ %i.jc, %bb.bu ]
  %.5 = phi ptr [ %6, %bb.bv ], [ %5, %bb.bu ]    ; 2 uses
  %.7 = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %storemerge, ptr %.6, align 1, !tbaa !26
  %.pr = load i8, ptr %.5, align 1, !tbaa !26
end_hunk_5
