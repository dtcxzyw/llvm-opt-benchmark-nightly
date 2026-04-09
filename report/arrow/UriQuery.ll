inline.NumInlined: 24
begin_hunk_0_@uriComposeQueryEngineA:bb.a
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sext i32 %i.t to i64
  %reass.sub.peel = sub i64 %i.y, %i.e
  %i.z = add i64 %reass.sub.peel, %i.x
  %i.aa = add i64 %i.z, 1
  %i.ab = icmp sgt i64 %i.aa, %i.g
  br i1 %i.ab, label %.thread, label %bb.i

end_hunk_0
begin_hunk_1_@uriComposeQueryEngineA:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %.not.peel = icmp eq ptr %i.ah, null
  br i1 %.not.peel, label %.split102.us.thread135, label %.split

.split.us.preheader:                              ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@uriComposeQueryEngineA:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bo = mul nsw i32 %i.bj, %i.c
  %i.bp = mul nsw i32 %i.bn, %i.c
  %i.bq = add nsw i32 %i.bp, 1
  %7 = select i1 %i.bk, i32 0, i32 %i.bq
  %8 = add i32 %i.bo, %7
  %i.br = add i32 %8, %i.bc
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.063100.us, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14 ; 2 uses
  %.not.us = icmp eq ptr %i.bu, null
  br i1 %.not.us, label %.split102.us, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.j, %bb.ac
  %.063100 = phi ptr [ %i.cz, %bb.ac ], [ %i.ah, %bb.j ] ; 3 uses
  %.07398 = phi ptr [ %.275, %bb.ac ], [ %.275.peel, %bb.j ] ; 3 uses
  %i.bv = load ptr, ptr %.063100, align 8, !tbaa !7 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.063100, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !12 ; 4 uses
end_hunk_2
begin_hunk_3_@uriComposeQueryEngineA:bb.a
  %i.cg = mul nsw i32 %i.cb, %i.c
  %i.ch = mul nsw i32 %i.cf, %i.c
  %i.ci = ptrtoint ptr %.07398 to i64
  %9 = sub i64 %i.ci, %i.e
  %i.cj = sext i32 %i.cg to i64
  %10 = add i64 %9, %i.cj
  %i.ck = add i64 %10, 1
  %i.cl = icmp sgt i64 %i.ck, %i.g
  br i1 %i.cl, label %.thread, label %bb.z

end_hunk_3
begin_hunk_4_@uriComposeQueryEngineA:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sext i32 %i.ch to i64
  %reass.sub = sub i64 %i.cr, %i.e
  %.reass141.reass = add i64 %reass.sub, %i.cq
  %i.cs = add i64 %.reass141.reass, 1
  %i.ct = icmp sgt i64 %i.cs, %i.g
  br i1 %i.ct, label %.thread, label %bb.ab

end_hunk_4
begin_hunk_5_@uriComposeQueryEngineW:bb.a
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sext i32 %i.t to i64
  %i.ab = add nsw i64 %i.z, %i.aa
  %.not92.peel = icmp slt i64 %i.ab, %i.g
  br i1 %.not92.peel, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 61, ptr %i.w, align 4, !tbaa !3
end_hunk_5
begin_hunk_6_@uriComposeQueryEngineW:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bo = mul nsw i32 %i.bj, %i.c
  %i.bp = mul nsw i32 %i.bn, %i.c
  %i.bq = add nsw i32 %i.bp, 1
  %7 = select i1 %i.bk, i32 0, i32 %i.bq
  %8 = add i32 %i.bo, %7
  %i.br = add i32 %8, %i.bc
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  store i32 %i.bs, ptr %4, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.063100.us, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !35 ; 2 uses
end_hunk_6
begin_hunk_7_@uriComposeQueryEngineW:bb.a
  %i.ci = ptrtoint ptr %.07398 to i64
  %i.cj = sub i64 %i.ci, %i.e
  %i.ck = ashr exact i64 %i.cj, 2
  %i.cl = sext i32 %i.cg to i64
  %i.cm = add nsw i64 %i.ck, %i.cl
  %.not133 = icmp slt i64 %i.cm, %i.g
  br i1 %.not133, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  store i32 38, ptr %.07398, align 4, !tbaa !3
end_hunk_7
begin_hunk_8_@uriComposeQueryEngineW:bb.a
  %i.cs = sub i64 %i.cr, %i.e
  %i.ct = ashr exact i64 %i.cs, 2
  %i.cu = sext i32 %i.ch to i64
  %i.cv = add nsw i64 %i.ct, %i.cu
  %.not92 = icmp slt i64 %i.cv, %i.g
  br i1 %.not92, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 61, ptr %i.cq, align 4, !tbaa !3
end_hunk_8
