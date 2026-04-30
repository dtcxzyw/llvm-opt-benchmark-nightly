inline.NumInlined: 30
inline.NumDeleted: 5
begin_hunk_0_@Falign_noudp:bb.a
._crit_edge581:                                   ; preds = %bb.bk, %._crit_edge581.unr-lcssa
  %i.xn = load i32, ptr @kobetsubunkatsu, align 4, !tbaa !4
  %.not444 = icmp eq i32 %i.xn, 0
  %i.xo = load ptr, ptr @Falign_noudp.cut1, align 8, !tbaa !15 ; 12 uses
  br i1 %.not444, label %.lr.ph588, label %.preheader491

._crit_edge581.thread.critedge:                   ; preds = %bb.bg, %.thread882
end_hunk_0
begin_hunk_1_@Falign_noudp:bb.a
  %wide.trip.count753 = zext nneg i32 %.0399.lcssa880 to i64
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !20 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !75 ; 2 uses
  %i.zg = icmp sgt i32 %i.zf, 0
  br i1 %i.zg, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %.lr.ph588
end_hunk_1
begin_hunk_2_@Falign_noudp:bb.a

bb.bn:                                            ; preds = %bb.bm
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  store i32 %i.zf, ptr %i.zm, align 4, !tbaa !4
  %i.zn = load i32, ptr %i.zj, align 8, !tbaa !75
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !4
end_hunk_2
