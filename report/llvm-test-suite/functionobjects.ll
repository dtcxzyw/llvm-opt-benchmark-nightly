inline.NumInlined: 306
inline.NumDeleted: 127
begin_hunk_0_@main:bb.a
  %i.bn = ptrtoint ptr %i.s to i64
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %2 = xor i64 %i.bp, 126                         ; 3 uses
  %i.bq = icmp sgt i32 %.fr, 16
  %.018.i16.i = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 4 uses
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.er = getelementptr inbounds i8, ptr %i.s, i64 %i.n ; 3 uses
  %i.es = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.et = shl nuw nsw i64 %i.es, 1
  %3 = xor i64 %i.et, 126
  %i.eu = icmp sgt i32 %.fr, 1
  %i.ev = icmp eq i32 %.fr, 1
  %cond459 = icmp eq i32 %.fr, 0
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.fo = getelementptr inbounds i8, ptr %i.s, i64 %i.n ; 3 uses
  %i.fp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %4 = xor i64 %i.fq, 126
  %.not.i226427 = icmp eq i32 %.fr, 1
  %.06.i225426 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.by
end_hunk_2
begin_hunk_3_@main:bb.a
  %i.gj = getelementptr inbounds i8, ptr %i.s, i64 %i.n ; 3 uses
  %i.gk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.gl = shl nuw nsw i64 %i.gk, 1
  %5 = xor i64 %i.gl, 126
  %.not.i237437 = icmp eq i32 %.fr, 1
  %.06.i236436 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.cl
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.he = getelementptr inbounds i8, ptr %i.s, i64 %i.n ; 3 uses
  %i.hf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.hg = shl nuw nsw i64 %i.hf, 1
  %6 = xor i64 %i.hg, 126
  %.not.i248447 = icmp eq i32 %.fr, 1
  %.06.i247446 = getelementptr i8, ptr %i.s, i64 8
  br label %bb.cy
end_hunk_4
