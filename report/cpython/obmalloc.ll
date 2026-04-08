inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@mi_heap_realloc_zero_aligned_at:bb.a

bb.o:                                             ; preds = %mi_usable_size.exit
  %i.bf = lshr i64 %.1.i.i, 1
  %i.bg = sub i64 %.1.i.i, %i.bf
  %.not50 = icmp ult i64 %2, %i.bg
  br i1 %.not50, label %bb.q, label %bb.p

end_hunk_0
begin_hunk_1_@_mi_page_reclaim
define hidden void @_mi_page_reclaim(ptr noundef captures(address) %0, ptr noundef initializes((56, 72)) %1) local_unnamed_addr #36 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %2, label %_mi_segment_page_start.exit.i, !prof !53

2:                                                ; preds = %bb.a
  %3 = zext nneg i32 %i.b to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !50
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %2, %_mi_segment_page_start.exit.i
  %.0.i = phi i64 [ %3, %2 ], [ %i.f, %_mi_segment_page_start.exit.i ] ; 4 uses
  %i.g = add nuw nsw i64 %.0.i, 7
  %i.h = lshr i64 %i.g, 3                         ; 2 uses
  %i.i = icmp samesign ult i64 %.0.i, 9
  br i1 %i.i, label %mi_page_queue.exit, label %bb.b

bb.b:                                             ; preds = %mi_page_block_size.exit
  %i.j = icmp samesign ult i64 %.0.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i64 %i.h, 1
  %i.l = and i64 %i.k, 30
  br label %mi_page_queue.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.0.i, 131072
  br i1 %i.m, label %mi_page_queue.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i64 %i.h, -1                     ; 2 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false) ; 2 uses
  %i.p = sub nsw i64 61, %i.o
  %i.q = and i64 %i.p, 4294967295
end_hunk_1
begin_hunk_2_@mi_segment_reclaim:bb.a
  br label %bb.au

bb.al:                                            ; preds = %_mi_page_free_collect.exit
  %i.ge = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, -1
  br i1 %i.gf, label %5, label %_mi_segment_page_start.exit.i.i, !prof !53

5:                                                ; preds = %bb.al
  %6 = zext nneg i32 %i.ge to i64
  br label %mi_page_block_size.exit.i

_mi_segment_page_start.exit.i.i:                  ; preds = %bb.al
  %i.gg = load i32, ptr %.04494, align 8, !tbaa !50
  %i.gh = zext i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 16
  br label %mi_page_block_size.exit.i

mi_page_block_size.exit.i:                        ; preds = %_mi_segment_page_start.exit.i.i, %5
  %.0.i.i55 = phi i64 [ %6, %5 ], [ %i.gi, %_mi_segment_page_start.exit.i.i ] ; 4 uses
  %i.gj = add nuw nsw i64 %.0.i.i55, 7
  %i.gk = lshr i64 %i.gj, 3                       ; 2 uses
  %i.gl = icmp samesign ult i64 %.0.i.i55, 9
  br i1 %i.gl, label %_mi_page_reclaim.exit, label %bb.am

bb.am:                                            ; preds = %mi_page_block_size.exit.i
  %i.gm = icmp samesign ult i64 %.0.i.i55, 65
  br i1 %i.gm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gn = add nuw nsw i64 %i.gk, 1
  %i.go = and i64 %i.gn, 30
  br label %_mi_page_reclaim.exit

bb.ao:                                            ; preds = %bb.am
  %i.gp = icmp samesign ugt i64 %.0.i.i55, 131072
  br i1 %i.gp, label %_mi_page_reclaim.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gq = add nsw i64 %i.gk, -1                   ; 2 uses
  %i.gr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gq, i1 false) ; 2 uses
  %i.gs = sub nsw i64 61, %i.gr
  %i.gt = and i64 %i.gs, 4294967295
end_hunk_2
begin_hunk_3_@mi_segment_commit_mask:bb.a
  %i.ac = select i1 %i.z, i64 -1, i64 %i.ab
  %i.ad = getelementptr [8 x i8], ptr %6, i64 %i.v
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !101
  %i.ae = sub nsw i64 %i.s, %i.y                  ; 2 uses
  %.not.peel.i = icmp eq i64 %i.ae, 0
  br i1 %.not.peel.i, label %mi_commit_mask_create.exit, label %.peel.next.i

end_hunk_3
begin_hunk_4_@mi_segment_commit_mask:bb.a
  %i.ai = select i1 %i.ag, i64 -1, i64 %i.ah
  %i.aj = getelementptr [8 x i8], ptr %6, i64 %.02127.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !101
  %i.ak = sub i64 %.028.i, %i.af                  ; 2 uses
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %mi_commit_mask_create.exit, label %.peel.next.i, !llvm.loop !601

end_hunk_4
begin_hunk_5_@mi_segment_alloc:bb.a
  %i.bi = xor i64 %notmask.peel.i.i, -1
  %i.bj = select i1 %i.bh, i64 -1, i64 %i.bi
  store i64 %i.bj, ptr %7, align 8, !tbaa !101
  %i.bk = sub nsw i64 %.059, %i.bg                ; 2 uses
  %.not.peel.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.peel.i.i, label %mi_commit_mask_create.exit.i, label %.peel.next.i.i

end_hunk_5
begin_hunk_6_@mi_segment_alloc:bb.a
  %i.bo = select i1 %i.bm, i64 -1, i64 %i.bn
  %i.bp = getelementptr [8 x i8], ptr %7, i64 %.02127.i.i
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !101
  %i.bq = sub i64 %.028.i.i, %i.bl                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i, label %mi_commit_mask_create.exit.i, label %.peel.next.i.i, !llvm.loop !601

end_hunk_6
