inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@best_scalefac_store:bb.a
bb.ac:                                            ; preds = %bb.ab
  store i32 %.178.9.i, ptr %i.ls, align 4, !tbaa !64
  store i32 1, ptr %i.lt, align 8, !tbaa !77
  br label %.thread151.i

bb.ad:                                            ; preds = %bb.aa
  %i.ly = icmp samesign ult i32 %.182.9.i, 4
end_hunk_0
begin_hunk_1_@best_scalefac_store:bb.a
  %.pre243 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread147.i

.thread147.i:                                     ; preds = %..thread147.i_crit_edge, %bb.ab
  %6 = phi i32 [ %.pre243, %..thread147.i_crit_edge ], [ %i.lw, %bb.ab ] ; 2 uses
  %i.lz = shl nuw nsw i32 %.178.9.i, 1            ; 3 uses
  %i.ma = icmp sgt i32 %6, %i.lz
  br i1 %i.ma, label %bb.ae, label %.thread151.i
end_hunk_1
begin_hunk_2_@best_scalefac_store:bb.a
  %.pre244 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread151.i

.thread151.i:                                     ; preds = %bb.ac, %..thread151.i_crit_edge, %bb.ae, %.thread147.i
  %7 = phi i32 [ %.pre244, %..thread151.i_crit_edge ], [ %i.lz, %bb.ae ], [ %6, %.thread147.i ], [ %.178.9.i, %bb.ac ]
  %i.mc = mul nuw nsw i32 %.178.9.i, 3            ; 2 uses
  %i.md = icmp sgt i32 %7, %i.mc
  br i1 %i.md, label %bb.ag, label %.thread153.i
end_hunk_2
begin_hunk_3_@best_scalefac_store:bb.a
bb.an:                                            ; preds = %bb.am
  store i32 %i.ml, ptr %i.ls, align 4, !tbaa !64
  store i32 5, ptr %i.lt, align 8, !tbaa !77
  br label %.thread162.i

bb.ao:                                            ; preds = %bb.al
  %i.mo = icmp samesign ult i32 %.182.9.i, 4
end_hunk_3
begin_hunk_4_@best_scalefac_store:bb.a
  %.pre245 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread158.i

.thread158.i:                                     ; preds = %..thread158.i_crit_edge, %bb.am
  %8 = phi i32 [ %.pre245, %..thread158.i_crit_edge ], [ %i.mm, %bb.am ] ; 2 uses
  %i.mp = shl nuw nsw i32 %.178.9.i, 1
  %i.mq = add nuw nsw i32 %i.mp, %.180.10.i       ; 3 uses
  %i.mr = icmp sgt i32 %8, %i.mq
end_hunk_4
begin_hunk_5_@best_scalefac_store:bb.a
  %.pre246 = load i32, ptr %i.ls, align 4, !tbaa !64
  br label %.thread162.i

.thread162.i:                                     ; preds = %bb.an, %..thread162.i_crit_edge, %bb.ap, %.thread158.i
  %9 = phi i32 [ %.pre246, %..thread162.i_crit_edge ], [ %i.mq, %bb.ap ], [ %8, %.thread158.i ], [ %i.ml, %bb.an ]
  %i.mt = mul nuw nsw i32 %.178.9.i, 3
  %i.mu = add nuw nsw i32 %i.mt, %.180.10.i       ; 2 uses
  %i.mv = icmp sgt i32 %9, %i.mu
end_hunk_5
