inline.NumInlined: 100
inline.NumDeleted: 51
begin_hunk_0_@psh_blues_set_zones:bb.a
bb.a:
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %.092.v = select i1 %.not, i64 776, i64 2328
  %.092 = getelementptr inbounds nuw i8, ptr %0, i64 %.092.v ; 9 uses
  %.089.idx = select i1 %.not, i64 0, i64 1552
  %.089.a = getelementptr inbounds nuw i8, ptr %0, i64 %.089.idx ; 8 uses
  store i32 0, ptr %.089.a, align 8, !tbaa !126
  store i32 0, ptr %.092, align 8, !tbaa !126
  %i.a = icmp samesign ugt i32 %1, 1
  br i1 %i.a, label %.lr.ph21.i, label %psh_blues_set_zones_0.exit

end_hunk_0
begin_hunk_1_@psh_blues_set_zones:bb.a
  %.05418.i = phi ptr [ %i.ae, %bb.k ], [ %2, %bb.a ] ; 4 uses
  %or.cond.not.not.i = phi i1 [ true, %bb.k ], [ false, %bb.a ] ; 5 uses
  %.06316.i = phi i32 [ %.164.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %.06515.i = phi i32 [ %.166.i, %bb.k ], [ 0, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05418.i, i64 2 ; 2 uses
  %..05418.i = select i1 %or.cond.not.not.i, ptr %i.b, ptr %.05418.i
  %.05418.i. = select i1 %or.cond.not.not.i, ptr %.05418.i, ptr %i.b
  %.06515.i..06316.i = select i1 %or.cond.not.not.i, i32 %.06515.i, i32 %.06316.i ; 3 uses
  %.089..092 = select i1 %or.cond.not.not.i, ptr %.089.a, ptr %.092
  %.sink39.in.i = load i16, ptr %.05418.i., align 2, !tbaa !32
  %.sink39.i = sext i16 %.sink39.in.i to i32      ; 4 uses
  %.sink40.i = load i16, ptr %..05418.i, align 2, !tbaa !32
end_hunk_1
begin_hunk_2_@psh_blues_set_zones:bb.a
  br i1 %i.ag, label %.lr.ph21.i, label %psh_blues_set_zones_0.exit, !llvm.loop !262

psh_blues_set_zones_0.exit:                       ; preds = %bb.k, %bb.a
  %.065.lcssa.i = phi i32 [ 0, %bb.a ], [ %.166.i, %bb.k ] ; 5 uses
  %.063.lcssa.i = phi i32 [ 0, %bb.a ], [ %.164.i, %bb.k ] ; 3 uses
  store i32 %.065.lcssa.i, ptr %.089.a, align 8, !tbaa !126
  store i32 %.063.lcssa.i, ptr %.092, align 8, !tbaa !126
  %i.ah = icmp samesign ugt i32 %3, 1
  br i1 %i.ah, label %.lr.ph21.i111.preheader, label %psh_blues_set_zones_0.exit140

.lr.ph21.i111.preheader:                          ; preds = %psh_blues_set_zones_0.exit
  %.057.i126 = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  br label %.lr.ph21.i111

.lr.ph21.i111:                                    ; preds = %.lr.ph21.i111.preheader, %bb.s
end_hunk_2
begin_hunk_3_@psh_blues_set_zones:bb.a

psh_blues_set_zones_0.exit140:                    ; preds = %bb.s, %psh_blues_set_zones_0.exit
  %.063.lcssa.i110 = phi i32 [ %.063.lcssa.i, %psh_blues_set_zones_0.exit ], [ %.164.i135, %bb.s ] ; 4 uses
  store i32 %.065.lcssa.i, ptr %.089.a, align 8, !tbaa !126
  store i32 %.063.lcssa.i110, ptr %.092, align 8, !tbaa !126
  %.not101 = icmp eq i32 %.065.lcssa.i, 0         ; 2 uses
  br i1 %.not101, label %.loopexit141, label %bb.t

bb.t:                                             ; preds = %psh_blues_set_zones_0.exit140
  %i.bn = getelementptr inbounds nuw i8, ptr %.089.a, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.094 = phi ptr [ %i.bn, %bb.t ], [ %i.cb, %bb.x ] ; 8 uses
  %.087 = phi i32 [ %.065.lcssa.i, %bb.t ], [ %i.ca, %bb.x ] ; 2 uses
  switch i32 %.087, label %bb.v [
    i32 0, label %.loopexit141
    i32 1, label %._crit_edge185
end_hunk_3
begin_hunk_4_@psh_blues_set_zones:bb.a
  br i1 %.not103, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.loopexit141
  %i.cc = getelementptr inbounds nuw i8, ptr %.092, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
end_hunk_4
begin_hunk_5_@psh_blues_set_zones:bb.a
  br i1 %.not101, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %.0164 = getelementptr inbounds nuw i8, ptr %.089.a, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.089.a, i64 20 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !128
  %i.ct = sub nsw i32 %i.cs, %5
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !128
  %i.cu = getelementptr inbounds nuw i8, ptr %.089.a, i64 16
  %.3153 = add i32 %.065.lcssa.i, -1              ; 2 uses
  %.090154 = load i32, ptr %i.cu, align 8, !tbaa !129 ; 2 uses
  %.not106155 = icmp eq i32 %.3153, 0
  br i1 %.not106155, label %._crit_edge, label %.lr.ph
end_hunk_5
begin_hunk_6_@psh_blues_set_zones:bb.a
  br i1 %.not103, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.0164.1 = getelementptr inbounds nuw i8, ptr %.092, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.092, i64 20 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !128
  %i.dk = sub nsw i32 %i.dj, %5
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %.092, i64 16
  %.3153.1 = add i32 %.063.lcssa.i110, -1         ; 2 uses
  %.090154.1 = load i32, ptr %i.dl, align 8, !tbaa !129 ; 2 uses
  %.not106155.1 = icmp eq i32 %.3153.1, 0
end_hunk_6
