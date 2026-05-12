inline.NumInlined: 1359
inline.NumDeleted: 295
begin_hunk_0_@_mi_bin:bb.a
  %i.i = add nsw i64 %i.b, -1                     ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 false) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i8
  %1 = xor i8 %i.k, -1
  %2 = shl i8 %1, 2
  %i.l = sub nsw i64 61, %i.j
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.i, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 3
  %3 = add i8 %2, -3
  %i.q = add i8 %3, %i.p
  br label %mi_bin.exit

mi_bin.exit:                                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@_mi_page_queue_append:bb.a
  %i.bi = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false) ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  %3 = xor i8 %i.bk, -1
  %4 = shl i8 %3, 2
  %i.bl = sub nsw i64 61, %i.bj
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = lshr i64 %i.bi, %i.bm
  %i.bo = trunc nuw nsw i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 3
  %5 = add nsw i8 %4, -3
  %i.bq = add nsw i8 %5, %i.bp
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.n, %bb.m
end_hunk_1
begin_hunk_2_@_mi_page_queue_append:bb.a
  %i.cc = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false) ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  %6 = xor i8 %i.ce, -1
  %7 = shl i8 %6, 2
  %i.cf = sub nsw i64 61, %i.cd
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = lshr i64 %i.cc, %i.cg
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = and i8 %i.ci, 3
  %8 = add i8 %7, -3
  %i.ck = add i8 %8, %i.cj
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.o
end_hunk_2
begin_hunk_3_@mi_page_queue_push:bb.a
  %i.z = add nsw i64 %i.p, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %3 = xor i8 %i.ab, -1
  %4 = shl i8 %3, 2
  %i.ac = sub nsw i64 61, %i.aa
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = lshr i64 %i.z, %i.ad
  %i.af = trunc nuw nsw i64 %i.ae to i8
  %i.ag = and i8 %i.af, 3
  %5 = add nsw i8 %4, -3
  %i.ah = add nsw i8 %5, %i.ag
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.i, %bb.h
end_hunk_3
begin_hunk_4_@mi_page_queue_push:bb.a
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false) ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i8
  %6 = xor i8 %i.av, -1
  %7 = shl i8 %6, 2
  %i.aw = sub nsw i64 61, %i.au
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = lshr i64 %i.at, %i.ax
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 3
  %8 = add i8 %7, -3
  %i.bb = add i8 %8, %i.ba
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
end_hunk_4
begin_hunk_5_@mi_page_queue_enqueue_from:bb.a
  %i.ac = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %3 = xor i8 %i.ae, -1
  %4 = shl i8 %3, 2
  %i.af = sub nsw i64 61, %i.ad
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = lshr i64 %i.ac, %i.ag
  %i.ai = trunc nuw nsw i64 %i.ah to i8
  %i.aj = and i8 %i.ai, 3
  %5 = add nsw i8 %4, -3
  %i.ak = add nsw i8 %5, %i.aj
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
end_hunk_5
begin_hunk_6_@mi_page_queue_enqueue_from:bb.a
  %i.aw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %6 = xor i8 %i.ay, -1
  %7 = shl i8 %6, 2
  %i.az = sub nsw i64 61, %i.ax
  %i.ba = and i64 %i.az, 4294967295
  %i.bb = lshr i64 %i.aw, %i.ba
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = and i8 %i.bc, 3
  %8 = add i8 %7, -3
  %i.be = add i8 %8, %i.bd
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
end_hunk_6
begin_hunk_7_@mi_page_queue_enqueue_from:bb.a
  %i.cj = add nsw i64 %i.bz, -1                   ; 2 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i8
  %9 = xor i8 %i.cl, -1
  %10 = shl i8 %9, 2
  %i.cm = sub nsw i64 61, %i.ck
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = lshr i64 %i.cj, %i.cn
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = and i8 %i.cp, 3
  %11 = add nsw i8 %10, -3
  %i.cr = add nsw i8 %11, %i.cq
  br label %mi_bin.exit.i39

mi_bin.exit.i39:                                  ; preds = %bb.y, %bb.x
end_hunk_7
begin_hunk_8_@mi_page_queue_enqueue_from:bb.a
  %i.dd = add nsw i64 %i.cw, -1                   ; 2 uses
  %i.de = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dd, i1 false) ; 2 uses
  %i.df = trunc nuw nsw i64 %i.de to i8
  %12 = xor i8 %i.df, -1
  %13 = shl i8 %12, 2
  %i.dg = sub nsw i64 61, %i.de
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.dd, %i.dh
  %i.dj = trunc i64 %i.di to i8
  %i.dk = and i8 %i.dj, 3
  %14 = add i8 %13, -3
  %i.dl = add i8 %14, %i.dk
  br label %mi_bin.exit35.i44

mi_bin.exit35.i44:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
end_hunk_8
begin_hunk_9_@mi_page_queue_remove:bb.a
  %i.ab = add nsw i64 %i.r, -1                    ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %2 = xor i8 %i.ad, -1
  %3 = shl i8 %2, 2
  %i.ae = sub nsw i64 61, %i.ac
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = lshr i64 %i.ab, %i.af
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 3
  %4 = add nsw i8 %3, -3
  %i.aj = add nsw i8 %4, %i.ai
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
end_hunk_9
begin_hunk_10_@mi_page_queue_remove:bb.a
  %i.av = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false) ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %5 = xor i8 %i.ax, -1
  %6 = shl i8 %5, 2
  %i.ay = sub nsw i64 61, %i.aw
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = lshr i64 %i.av, %i.az
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 3
  %7 = add i8 %6, -3
  %i.bd = add i8 %7, %i.bc
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
end_hunk_10
begin_hunk_11_@mi_segments_page_alloc:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.bj, align 4, !tbaa !21
  %i.bk = icmp samesign ult i64 %spec.store.select.i, %.us-phi61.i
  %.neg3.i.i.i = xor i64 %.us-phi.i, -264
  %i.bl = add i64 %.neg3.i.i.i, %.us-phi59.i      ; 2 uses
  br i1 %i.bk, label %bb.m, label %mi_span_queue_delete.exit._crit_edge.i

bb.m:                                             ; preds = %mi_span_queue_delete.exit.i
end_hunk_11
begin_hunk_12_@mi_segments_page_alloc:bb.a

bb.q:                                             ; preds = %mi_span_queue_for.exit.i.i.i, %bb.n, %bb.m
  %i.ce = phi ptr [ %i.cd, %mi_span_queue_for.exit.i.i.i ], [ null, %bb.n ], [ null, %bb.m ] ; 4 uses
  %5 = getelementptr i8, ptr %.us-phi60.i, i64 264
  %i.cf = getelementptr i8, ptr %5, i64 %i.bl     ; 2 uses
  %i.cg = getelementptr [80 x i8], ptr %i.cf, i64 %spec.store.select.i ; 8 uses
  %i.ch = trunc nuw i64 %i.bm to i32              ; 2 uses
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !52
end_hunk_12
begin_hunk_13_@allocate_from_new_pool:bb.a
  %narrow = add nuw nsw i32 %i.bm, 48
  %i.bn = getelementptr i8, ptr %.071, i64 40
  store i32 %narrow, ptr %i.bn, align 8, !tbaa !587
  %2 = xor i32 %i.bj, 16368
  %i.bo = getelementptr i8, ptr %.071, i64 44
  store i32 %2, ptr %i.bo, align 4, !tbaa !588
  %i.bp = zext nneg i32 %i.bk to i64
end_hunk_13
