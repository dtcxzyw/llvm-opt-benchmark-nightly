inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_encode_tile:bb.a
  %.val262.i.i = load ptr, ptr %i.bp, align 8, !tbaa !7
  %.val262.val.i.i = load ptr, ptr %.val262.i.i, align 8, !tbaa !18
  %i.qt = call fastcc i32 @opj_tcd_makelayer(ptr %.val262.val.i.i, i32 noundef %i.pd, double noundef %i.qo, i32 noundef 0)
  %8 = trunc nuw i32 %i.qt to i1                  ; 2 uses
  %i.qu = load i32, ptr %i.it, align 4, !tbaa !31
  %i.qv = icmp eq i32 %i.qu, 1
  br i1 %i.qv, label %bb.bc, label %bb.bm
end_hunk_0
begin_hunk_1_@opj_tcd_encode_tile:bb.a
  br i1 %i.rp, label %bb.bq, label %bb.bp

bb.bm:                                            ; preds = %bb.bb
  %9 = icmp eq i32 %.0198330.i.i, 0
  %or.cond.i.i = select i1 %8, i1 %9, i1 false
  br i1 %or.cond.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %8, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.rq = load i32, ptr %i.g, align 8, !tbaa !160
end_hunk_1
