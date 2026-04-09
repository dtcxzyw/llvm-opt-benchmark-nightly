inline.NumInlined: 20
inline.NumDeleted: 14
begin_hunk_0_@FinishRow:bb.a

bb.ac:                                            ; preds = %DitherRow.exit
  %i.gx = shl i32 %i.ao, 4                        ; 2 uses
  br i1 %i.ap, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@FinishRow:bb.a
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  store ptr %.sink, ptr %i.hh, align 8, !tbaa !91
  %i.hi = select i1 %i.at, i32 0, i32 %i.j
  %spec.select.a = sub i32 %i.gx, %i.hi
  %spec.select = add i32 %spec.select.a, 16
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !92
  %.1135 = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.hk) ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  store ptr null, ptr %i.hl, align 8, !tbaa !93
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 2968
end_hunk_1
begin_hunk_2_@VP8EnterCritical:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %i.ac = phi i32 [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.k, %bb.f ] ; 2 uses
  %i.ad = phi i32 [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ 2, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !92
  %i.ag = add i32 %i.af, %i.ac
  %i.ah = add i32 %i.ag, 15
  %i.ai = ashr i32 %i.ah, 4                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !99
  %2 = add i32 %i.al, %i.ac
  %i.am = add i32 %2, 15
  %i.an = ashr i32 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 408
end_hunk_2
begin_hunk_3_@VP8InitFrame:bb.a

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.bl = phi i64 [ %i.bk, %bb.e ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bm = add nsw i64 %i.aa, %i.y
  %i.bn = add nsw i64 %i.bm, %i.ad
  %i.bo = add nsw i64 %i.bn, %i.ar
  %i.bp = add nsw i64 %i.bo, %i.am
  %i.bq = add i64 %i.bp, %i.bb
  %i.br = add i64 %i.bq, %i.bl
  %i.bs = add i64 %i.br, 863                      ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2896 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !120
  %i.bv = icmp ugt i64 %i.bs, %i.bu
end_hunk_3
