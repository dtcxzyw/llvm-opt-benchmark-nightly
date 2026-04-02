begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @build_decrypt_dictionaries(ptr noundef nonnull %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.pr.i.i = load i32, ptr %0, align 8, !tbaa !23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 10 uses
end_hunk_0
begin_hunk_1
.loopexit.i80:                                    ; preds = %bb.l, %..loopexit.i80_crit_edge
  %i.bt = phi i32 [ %.pr.i.i87, %..loopexit.i80_crit_edge ], [ %i.br, %bb.l ] ; 2 uses
  %i.bu = phi i32 [ %.pre155, %..loopexit.i80_crit_edge ], [ %i.bp, %bb.l ]
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.bv = sub nuw nsw i32 8, %i.bt
  %i.bw = lshr i32 %i.bu, %i.bv
  %i.bx = lshr i32 %i.bw, 21
end_hunk_1
begin_hunk_2
.loopexit.i88:                                    ; preds = %bb.o, %..loopexit.i88_crit_edge
  %i.cm = phi i32 [ %.pr.i.i87, %..loopexit.i88_crit_edge ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cn = phi i32 [ %.pre159, %..loopexit.i88_crit_edge ], [ %i.ci, %bb.o ]
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.co = sub nuw nsw i32 8, %i.cm
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = lshr i32 %i.cp, 17
end_hunk_2
begin_hunk_3

.preheader111.thread:                             ; preds = %bb.p
  %.pre156 = load i32, ptr %i.ab, align 4, !tbaa !17
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.dd = add nuw nsw i32 %.pr.i.i87, 2
  store i32 %i.dd, ptr %0, align 8, !tbaa !23
  br label %.lr.ph.preheader
end_hunk_3
begin_hunk_4
  br i1 %i.do, label %bb.q, label %.preheader111, !llvm.loop !25

.preheader111:                                    ; preds = %bb.r
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.dp = add nsw i32 %i.dg, -6
  store i32 %i.dp, ptr %0, align 8, !tbaa !23
  %i.dq = icmp samesign ugt i32 %.155132, 756
end_hunk_4
