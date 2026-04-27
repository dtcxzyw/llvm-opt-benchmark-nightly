inline.NumInlined: 112
inline.NumDeleted: 33
begin_hunk_0_@opj_tcd_init_tile:bb.a

.lr.ph630:                                        ; preds = %bb.ae, %bb.ad
  %.sink698 = phi i32 [ 3, %bb.ae ], [ 1, %bb.ad ]
  %.0494 = phi i32 [ %i.hk, %bb.ae ], [ %i.ft, %bb.ad ] ; 2 uses
  %.0493 = phi i32 [ %i.hl, %bb.ae ], [ %i.fn, %bb.ad ] ; 3 uses
  %.0492 = phi i32 [ %i.hm, %bb.ae ], [ %i.fp, %bb.ad ] ; 3 uses
  %.0491 = phi i32 [ %i.hg, %bb.ae ], [ %i.fr, %bb.ad ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0464634, i64 24 ; 2 uses
  store i32 %.sink698, ptr %i.hn, align 8, !tbaa !104
  %i.ho = load i32, ptr %i.eg, align 4, !tbaa !105
end_hunk_0
begin_hunk_1_@opj_tcd_init_tile:bb.a
  %i.hv = icmp ne i32 %i.gy, 0
  %i.hw = zext i32 %i.hb to i64                   ; 3 uses
  %.not650 = icmp eq i32 %i.gy, 0
  %i.hx = zext i32 %i.hp to i64                   ; 2 uses
  %notmask651 = shl nsw i64 -1, %i.hx
  %i.hy = xor i64 %notmask651, -1
end_hunk_1
begin_hunk_2_@opj_tcd_init_tile:bb.a
  %.0459621 = phi i32 [ 0, %.lr.ph623 ], [ %i.rn, %._crit_edge ] ; 3 uses
  %.0470619 = phi ptr [ %i.li, %.lr.ph623 ], [ %i.rm, %._crit_edge ] ; 14 uses
  %i.lj = load i32, ptr %i.gr, align 8, !tbaa !102 ; 2 uses
  %i.lk = urem i32 %.0459621, %i.lj               ; 2 uses
  %i.ll = shl i32 %i.lk, %.0493
  %i.lm = add nsw i32 %i.ll, %.0491
  %i.ln = udiv i32 %.0459621, %i.lj               ; 2 uses
  %5 = shl i32 %i.ln, %.0492
  %6 = add nsw i32 %5, %.0494
  %7 = add nuw i32 %i.lk, 1
  %i.lo = shl i32 %7, %.0493
  %i.lp = add i32 %i.lo, %.0491
  %i.lq = add nuw i32 %i.ln, 1
  %8 = shl i32 %i.lq, %.0492
  %i.lr = add i32 %8, %.0494
  %i.ls = load i32, ptr %.0466625, align 8, !tbaa !108
  %i.lt = tail call noundef i32 @llvm.smax.i32(i32 %i.lm, i32 %i.ls) ; 2 uses
  store i32 %i.lt, ptr %.0470619, align 8, !tbaa !120
  %i.lu = load i32, ptr %i.jq, align 4, !tbaa !109
  %i.lv = tail call noundef i32 @llvm.smax.i32(i32 %6, i32 %i.lu) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0470619, i64 4 ; 3 uses
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !121
  %i.lx = load i32, ptr %i.jr, align 8, !tbaa !110
  %i.ly = tail call noundef i32 @llvm.smin.i32(i32 %i.lp, i32 %i.lx) ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0470619, i64 8 ; 3 uses
  store i32 %i.ly, ptr %i.lz, align 8, !tbaa !122
  %i.ma = load i32, ptr %i.js, align 4, !tbaa !111
end_hunk_2
