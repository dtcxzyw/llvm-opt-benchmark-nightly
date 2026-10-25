Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraBddThresh?download=true
inline.NumInlined: 72
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 47
begin_hunk_0_@Extra_ThreshSelectWeights7:bb.a
  br label %.preheader.us135.us.us.us.us.us.4

.preheader.us135.us.us.us.us.us.4:                ; preds = %.split.split.us.us.us.us.us.us.4, %.preheader91.us.us169.us.us.us.us.4
  %storemerge75121.us136.us.us.us.us.us.4 = phi i32 [ %storemerge73131.us.us170.us.us.us.us.4, %.preheader91.us.us169.us.us.us.us.4 ], [ %i.ef, %.split.split.us.us.us.us.us.us.4 ] ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.preheader.us135.us.us.us.us.us.4
  %.05694.us.us.us.us.us.us.4 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.4 ], [ %i.el, %bb.v ] ; 3 uses
  %i.dx = lshr i32 %.05694.us.us.us.us.us.us.4, 6
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !34
  %i.eb = and i32 %.05694.us.us.us.us.us.us.4, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ea, %i.ed
  %.not77.us.us.us.us.us.us.4 = icmp eq i64 %i.ee, 0
  br i1 %.not77.us.us.us.us.us.us.4, label %bb.v, label %.split.split.us.us.us.us.us.us.4

.split.split.us.us.us.us.us.us.4:                 ; preds = %bb.u
  %i.ef = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.4, 1 ; 2 uses
  %.not76.us137.us.us.us.us.us.not.4 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.4, %i.b
  br i1 %.not76.us137.us.us.us.us.us.not.4, label %.preheader.us135.us.us.us.us.us.4, label %.split124.split.us138.us.us.us.us.us.4, !llvm.loop !80

.split124.split.us138.us.us.us.us.us.4:           ; preds = %.split.split.us.us.us.us.us.us.4
  %i.eg = add nuw nsw i32 %storemerge73131.us.us170.us.us.us.us.4, 1 ; 2 uses
  %.not74.us.us171.us.us.us.us.not.4 = icmp slt i32 %storemerge73131.us.us170.us.us.us.us.4, %i.b
  br i1 %.not74.us.us171.us.us.us.us.not.4, label %.preheader91.us.us169.us.us.us.us.4, label %.split150.us.split.split.us172.us.us.us.us.4, !llvm.loop !81

.split150.us.split.split.us172.us.us.us.us.4:     ; preds = %.split124.split.us138.us.us.us.us.us.4
  store i32 %i.ef, ptr %2, align 4, !tbaa !31
  %i.eh = add nuw nsw i32 %storemerge71164.us.us211.us.us.us.4, 1 ; 2 uses
  %.not72.us.us212.us.us.us.not.4 = icmp slt i32 %storemerge71164.us.us211.us.us.us.4, %i.b
  br i1 %.not72.us.us212.us.us.us.not.4, label %.split.us.us.us210.us.us.us.4, label %.split185.us.split.split.us213.us.us.us.4, !llvm.loop !82

.split185.us.split.split.us213.us.us.us.4:        ; preds = %.split150.us.split.split.us172.us.us.us.us.4
  store i32 %i.eg, ptr %i.h, align 4, !tbaa !31
  %i.ei = add nuw nsw i32 %storemerge69205.us.us260.us.us.4, 1 ; 2 uses
  %.not70.us.us261.us.us.not.4 = icmp slt i32 %storemerge69205.us.us260.us.us.4, %i.b
  br i1 %.not70.us.us261.us.us.not.4, label %.split166.us.us.us259.us.us.4, label %.split228.us.split.split.us262.us.us.4, !llvm.loop !83

.split228.us.split.split.us262.us.us.4:           ; preds = %.split185.us.split.split.us213.us.us.us.4
  store i32 %i.eh, ptr %i.g, align 4, !tbaa !31
  %i.ej = add nuw nsw i32 %storemerge67254.us.us316.us.4, 1 ; 2 uses
  %.not68.us.us317.us.not.4 = icmp slt i32 %storemerge67254.us.us316.us.4, %i.b
  br i1 %.not68.us.us317.us.not.4, label %.split207.us.us.us315.us.4, label %.split279.us.split.split.us318.us.4, !llvm.loop !84

.split279.us.split.split.us318.us.4:              ; preds = %.split228.us.split.split.us262.us.us.4
  store i32 %i.ei, ptr %i.f, align 4, !tbaa !31
  %i.ek = add nuw nsw i32 %storemerge65310.us.us379.4, 1 ; 2 uses
  %.not66.us.us380.not.4 = icmp slt i32 %storemerge65310.us.us379.4, %i.b
  br i1 %.not66.us.us380.not.4, label %.split256.us.us.us378.4, label %.split337.us.split.split.us381.4, !llvm.loop !85

.split337.us.split.split.us381.4:                 ; preds = %.split279.us.split.split.us318.us.4
  store i32 %i.ej, ptr %i.e, align 4, !tbaa !31
  store i32 6, ptr %i.c, align 4, !tbaa !31
  %exitcond423.not.4 = icmp eq i32 %i.j, 5
  br i1 %exitcond423.not.4, label %..thread.loopexit92_crit_edge.split.us.split.split, label %.split256.us.us.us378.5

bb.v:                                             ; preds = %bb.u
  %i.el = add nuw nsw i32 %.05694.us.us.us.us.us.us.4, 1 ; 2 uses
  %exitcond.not.4 = icmp eq i32 %i.el, %smax424
  br i1 %exitcond.not.4, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.u, !llvm.loop !79

.split256.us.us.us378.5:                          ; preds = %.split337.us.split.split.us381.4, %.split279.us.split.split.us318.us.5
  %storemerge65310.us.us379.5 = phi i32 [ %i.ez, %.split279.us.split.split.us318.us.5 ], [ 6, %.split337.us.split.split.us381.4 ] ; 4 uses
  br label %.split207.us.us.us315.us.5

.split207.us.us.us315.us.5:                       ; preds = %.split228.us.split.split.us262.us.us.5, %.split256.us.us.us378.5
  %storemerge67254.us.us316.us.5 = phi i32 [ %storemerge65310.us.us379.5, %.split256.us.us.us378.5 ], [ %i.ey, %.split228.us.split.split.us262.us.us.5 ] ; 4 uses
  br label %.split166.us.us.us259.us.us.5

.split166.us.us.us259.us.us.5:                    ; preds = %.split185.us.split.split.us213.us.us.us.5, %.split207.us.us.us315.us.5
  %storemerge69205.us.us260.us.us.5 = phi i32 [ %storemerge67254.us.us316.us.5, %.split207.us.us.us315.us.5 ], [ %i.ex, %.split185.us.split.split.us213.us.us.us.5 ] ; 4 uses
  br label %.split.us.us.us210.us.us.us.5

.split.us.us.us210.us.us.us.5:                    ; preds = %.split150.us.split.split.us172.us.us.us.us.5, %.split166.us.us.us259.us.us.5
  %storemerge71164.us.us211.us.us.us.5 = phi i32 [ %storemerge69205.us.us260.us.us.5, %.split166.us.us.us259.us.us.5 ], [ %i.ew, %.split150.us.split.split.us172.us.us.us.us.5 ] ; 4 uses
  br label %.preheader91.us.us169.us.us.us.us.5

.preheader91.us.us169.us.us.us.us.5:              ; preds = %.split124.split.us138.us.us.us.us.us.5, %.split.us.us.us210.us.us.us.5
  %storemerge73131.us.us170.us.us.us.us.5 = phi i32 [ %storemerge71164.us.us211.us.us.us.5, %.split.us.us.us210.us.us.us.5 ], [ %i.ev, %.split124.split.us138.us.us.us.us.us.5 ] ; 4 uses
  br label %.preheader.us135.us.us.us.us.us.5

.preheader.us135.us.us.us.us.us.5:                ; preds = %.split.split.us.us.us.us.us.us.5, %.preheader91.us.us169.us.us.us.us.5
  %storemerge75121.us136.us.us.us.us.us.5 = phi i32 [ %storemerge73131.us.us170.us.us.us.us.5, %.preheader91.us.us169.us.us.us.us.5 ], [ %i.eu, %.split.split.us.us.us.us.us.us.5 ] ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.preheader.us135.us.us.us.us.us.5
  %.05694.us.us.us.us.us.us.5 = phi i32 [ 0, %.preheader.us135.us.us.us.us.us.5 ], [ %i.fa, %bb.x ] ; 3 uses
  %i.em = lshr i32 %.05694.us.us.us.us.us.us.5, 6
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !34
  %i.eq = and i32 %.05694.us.us.us.us.us.us.5, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er
  %i.et = and i64 %i.ep, %i.es
  %.not77.us.us.us.us.us.us.5 = icmp eq i64 %i.et, 0
  br i1 %.not77.us.us.us.us.us.us.5, label %bb.x, label %.split.split.us.us.us.us.us.us.5

.split.split.us.us.us.us.us.us.5:                 ; preds = %bb.w
  %i.eu = add nuw nsw i32 %storemerge75121.us136.us.us.us.us.us.5, 1 ; 2 uses
  %.not76.us137.us.us.us.us.us.not.5 = icmp slt i32 %storemerge75121.us136.us.us.us.us.us.5, %i.b
  br i1 %.not76.us137.us.us.us.us.us.not.5, label %.preheader.us135.us.us.us.us.us.5, label %.split124.split.us138.us.us.us.us.us.5, !llvm.loop !80

.split124.split.us138.us.us.us.us.us.5:           ; preds = %.split.split.us.us.us.us.us.us.5
  %i.ev = add nuw nsw i32 %storemerge73131.us.us170.us.us.us.us.5, 1 ; 2 uses
  %.not74.us.us171.us.us.us.us.not.5 = icmp slt i32 %storemerge73131.us.us170.us.us.us.us.5, %i.b
  br i1 %.not74.us.us171.us.us.us.us.not.5, label %.preheader91.us.us169.us.us.us.us.5, label %.split150.us.split.split.us172.us.us.us.us.5, !llvm.loop !81

.split150.us.split.split.us172.us.us.us.us.5:     ; preds = %.split124.split.us138.us.us.us.us.us.5
  store i32 %i.eu, ptr %2, align 4, !tbaa !31
  %i.ew = add nuw nsw i32 %storemerge71164.us.us211.us.us.us.5, 1 ; 2 uses
  %.not72.us.us212.us.us.us.not.5 = icmp slt i32 %storemerge71164.us.us211.us.us.us.5, %i.b
  br i1 %.not72.us.us212.us.us.us.not.5, label %.split.us.us.us210.us.us.us.5, label %.split185.us.split.split.us213.us.us.us.5, !llvm.loop !82

.split185.us.split.split.us213.us.us.us.5:        ; preds = %.split150.us.split.split.us172.us.us.us.us.5
  store i32 %i.ev, ptr %i.h, align 4, !tbaa !31
  %i.ex = add nuw nsw i32 %storemerge69205.us.us260.us.us.5, 1 ; 2 uses
  %.not70.us.us261.us.us.not.5 = icmp slt i32 %storemerge69205.us.us260.us.us.5, %i.b
  br i1 %.not70.us.us261.us.us.not.5, label %.split166.us.us.us259.us.us.5, label %.split228.us.split.split.us262.us.us.5, !llvm.loop !83

.split228.us.split.split.us262.us.us.5:           ; preds = %.split185.us.split.split.us213.us.us.us.5
  store i32 %i.ew, ptr %i.g, align 4, !tbaa !31
  %i.ey = add nuw nsw i32 %storemerge67254.us.us316.us.5, 1 ; 2 uses
  %.not68.us.us317.us.not.5 = icmp slt i32 %storemerge67254.us.us316.us.5, %i.b
  br i1 %.not68.us.us317.us.not.5, label %.split207.us.us.us315.us.5, label %.split279.us.split.split.us318.us.5, !llvm.loop !84

.split279.us.split.split.us318.us.5:              ; preds = %.split228.us.split.split.us262.us.us.5
  store i32 %i.ex, ptr %i.f, align 4, !tbaa !31
  %i.ez = add nuw nsw i32 %storemerge65310.us.us379.5, 1 ; 2 uses
  %.not66.us.us380.not.5 = icmp slt i32 %storemerge65310.us.us379.5, %i.b
  br i1 %.not66.us.us380.not.5, label %.split256.us.us.us378.5, label %.split337.us.split.split.us381.5, !llvm.loop !85

.split337.us.split.split.us381.5:                 ; preds = %.split279.us.split.split.us318.us.5
  store i32 %i.ey, ptr %i.e, align 4, !tbaa !31
  store i32 7, ptr %i.c, align 4, !tbaa !31
  br label %..thread.loopexit92_crit_edge.split.us.split.split

bb.x:                                             ; preds = %bb.w
  %i.fa = add nuw nsw i32 %.05694.us.us.us.us.us.us.5, 1 ; 2 uses
  %exitcond.not.5 = icmp eq i32 %i.fa, %smax424
  br i1 %exitcond.not.5, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us, label %bb.w, !llvm.loop !79

..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %storemerge65310.us.us379.lcssa = phi i32 [ %storemerge65310.us.us379.3, %bb.t ], [ %storemerge65310.us.us379.4, %bb.v ], [ %storemerge65310.us.us379, %bb.n ], [ %storemerge65310.us.us379.1, %bb.p ], [ %storemerge65310.us.us379.2, %bb.r ], [ %storemerge65310.us.us379.5, %bb.x ]
  %storemerge67254.us.us316.us.lcssa = phi i32 [ %storemerge67254.us.us316.us.3, %bb.t ], [ %storemerge67254.us.us316.us.4, %bb.v ], [ %storemerge67254.us.us316.us, %bb.n ], [ %storemerge67254.us.us316.us.1, %bb.p ], [ %storemerge67254.us.us316.us.2, %bb.r ], [ %storemerge67254.us.us316.us.5, %bb.x ]
  %storemerge69205.us.us260.us.us.lcssa = phi i32 [ %storemerge69205.us.us260.us.us.3, %bb.t ], [ %storemerge69205.us.us260.us.us.4, %bb.v ], [ %storemerge69205.us.us260.us.us, %bb.n ], [ %storemerge69205.us.us260.us.us.1, %bb.p ], [ %storemerge69205.us.us260.us.us.2, %bb.r ], [ %storemerge69205.us.us260.us.us.5, %bb.x ]
  %storemerge71164.us.us211.us.us.us.lcssa = phi i32 [ %storemerge71164.us.us211.us.us.us.3, %bb.t ], [ %storemerge71164.us.us211.us.us.us.4, %bb.v ], [ %storemerge71164.us.us211.us.us.us, %bb.n ], [ %storemerge71164.us.us211.us.us.us.1, %bb.p ], [ %storemerge71164.us.us211.us.us.us.2, %bb.r ], [ %storemerge71164.us.us211.us.us.us.5, %bb.x ]
  %storemerge73131.us.us170.us.us.us.us.lcssa = phi i32 [ %storemerge73131.us.us170.us.us.us.us.3, %bb.t ], [ %storemerge73131.us.us170.us.us.us.us.4, %bb.v ], [ %storemerge73131.us.us170.us.us.us.us, %bb.n ], [ %storemerge73131.us.us170.us.us.us.us.1, %bb.p ], [ %storemerge73131.us.us170.us.us.us.us.2, %bb.r ], [ %storemerge73131.us.us170.us.us.us.us.5, %bb.x ]
  %storemerge75121.us136.us.us.us.us.us.lcssa = phi i32 [ %storemerge75121.us136.us.us.us.us.us.3, %bb.t ], [ %storemerge75121.us136.us.us.us.us.us.4, %bb.v ], [ %storemerge75121.us136.us.us.us.us.us, %bb.n ], [ %storemerge75121.us136.us.us.us.us.us.1, %bb.p ], [ %storemerge75121.us136.us.us.us.us.us.2, %bb.r ], [ %storemerge75121.us136.us.us.us.us.us.5, %bb.x ]
  store i32 %storemerge65310.us.us379.lcssa, ptr %i.d, align 4, !tbaa !31
  store i32 %storemerge67254.us.us316.us.lcssa, ptr %i.e, align 4, !tbaa !31
  store i32 %storemerge69205.us.us260.us.us.lcssa, ptr %i.f, align 4, !tbaa !31
  store i32 %storemerge71164.us.us211.us.us.us.lcssa, ptr %i.g, align 4, !tbaa !31
  store i32 %storemerge73131.us.us170.us.us.us.us.lcssa, ptr %i.h, align 4, !tbaa !31
  store i32 %storemerge75121.us136.us.us.us.us.us.lcssa, ptr %2, align 4, !tbaa !31
  br label %.thread

..thread.loopexit92_crit_edge.split.us.split.split: ; preds = %.split337.us.split.split.us381.5, %.split337.us.split.split.us381.4, %.split337.us.split.split.us381.3, %.split337.us.split.split.us381.2, %.split337.us.split.split.us381.1, %.split337.us.split.split.us381
  %.lcssa471.lcssa = phi i32 [ %i.cd, %.split337.us.split.split.us381 ], [ %i.cr, %.split337.us.split.split.us381.1 ], [ %i.dg, %.split337.us.split.split.us381.2 ], [ %i.dv, %.split337.us.split.split.us381.3 ], [ %i.ek, %.split337.us.split.split.us381.4 ], [ %i.ez, %.split337.us.split.split.us381.5 ]
  store i32 %.lcssa471.lcssa, ptr %i.d, align 4, !tbaa !31
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 1, ptr %i.e, align 4, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %.split337.us.split.us.split.us.us.us.us, %bb.l, %bb.a, %..thread.loopexit92_crit_edge.split.us.split.split, %.lr.ph.split, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us
  %.057 = phi i32 [ %.155.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ], [ 10000, %.lr.ph.split ], [ 0, %bb.a ], [ 0, %..thread.loopexit92_crit_edge.split.us.split.split ], [ 10000, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us ], [ 0, %.split337.us.split.us.split.us.us.us.us ]
  ret i32 %.057
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 10001) i32 @Extra_ThreshSelectWeights8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((28, 32)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !31
  %.not451 = icmp slt i32 %1, 0
  br i1 %.not451, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 5 uses
  switch i32 %1, label %.split383.us.us.us.us.preheader [
    i32 31, label %.lr.ph.split
    i32 0, label %.preheader.us143.us.us.us.us.us.us
  ]

.split383.us.us.us.us.preheader:                  ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %i.i = add nuw i32 %1, 2                        ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.k = icmp eq i64 %i.j, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod521 = trunc i32 %1 to i1
  %xtraiter522 = and i64 %wide.trip.count.i, 1
  %i.l = icmp eq i64 %i.j, 0
  %unroll_iter526 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  %lcmp.mod525 = trunc i32 %1 to i1
  br label %.split383.us.us.us.us

.split383.us.us.us.us:                            ; preds = %.split383.us.us.us.us.preheader, %.split410.us.split.us.split.us.us.us.us
  %storemerge452.us.us.us = phi i32 [ %i.bo, %.split410.us.split.us.split.us.us.us.us ], [ 1, %.split383.us.us.us.us.preheader ] ; 3 uses
  store i32 %storemerge452.us.us.us, ptr %i.c, align 4, !tbaa !31
  br label %.split320.us.us.us.us.us.us.us

.split320.us.us.us.us.us.us.us:                   ; preds = %.split345.us.split.us.split.us.us.us.us.us.us.us, %.split383.us.us.us.us
  %storemerge71381.us.us.us.us.us.us = phi i32 [ %storemerge452.us.us.us, %.split383.us.us.us.us ], [ %i.bn, %.split345.us.split.us.split.us.us.us.us.us.us.us ] ; 3 uses
  store i32 %storemerge71381.us.us.us.us.us.us, ptr %i.d, align 4, !tbaa !31
  br label %.split264.us.us.us.us.us.us.us.us.us.us

.split264.us.us.us.us.us.us.us.us.us.us:          ; preds = %.split287.us.split.us.split.us.us.us.us.us.us.us.us.us.us, %.split320.us.us.us.us.us.us.us
  %storemerge73318.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge71381.us.us.us.us.us.us, %.split320.us.us.us.us.us.us.us ], [ %i.bm, %.split287.us.split.us.split.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge73318.us.us.us.us.us.us.us.us.us, ptr %i.e, align 4, !tbaa !31
  br label %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us

.split215.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split236.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split264.us.us.us.us.us.us.us.us.us.us
  %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge73318.us.us.us.us.us.us.us.us.us, %.split264.us.us.us.us.us.us.us.us.us.us ], [ %i.bl, %.split236.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.f, align 4, !tbaa !31
  br label %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split193.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bk, %.split193.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.g, align 4, !tbaa !31
  br label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split158.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bj, %.split158.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.h, align 4, !tbaa !31
  br label %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split132.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bi, %.split132.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  store i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %2, align 4, !tbaa !31
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bh, %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ] ; 2 uses
  %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 10000, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ] ; 2 uses
  %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bg, %bb.l ] ; 9 uses
  %i.m = lshr i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = and i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 63
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.p, %i.s
  %.not85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.t, 0
  br i1 %.not85.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.k, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader: ; preds = %bb.b
  br i1 %i.l, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.e
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.e ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.e ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.u = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.w, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %i.z = add nsw i32 %i.y, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.c, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.z, %bb.c ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.af = add nsw i32 %i.ae, %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.af, %bb.d ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !5

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.e
  br i1 %lcmp.mod.not, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod521)
  %i.ag = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = and i32 %i.ah, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.ai, 0
  br i1 %.not.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  %i.al = add nsw i32 %i.ak, %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.f, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.al, %bb.f ], [ %.010.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.am = tail call noundef i32 @llvm.smin.i32(i32 %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.k

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader, %bb.i
  %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 4 uses
  %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ] ; 2 uses
  %niter527 = phi i64 [ %niter527.next.1, %bb.i ], [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ]
  %i.an = trunc nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.ao = shl nuw i32 1, %i.an
  %i.ap = and i32 %i.ao, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %i.as = add nsw i32 %i.ar, %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1: ; preds = %bb.g, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.as, %bb.g ], [ %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = or disjoint i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = and i32 %i.au, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.av, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !31
  %i.ay = add nsw i32 %i.ax, %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi i32 [ %i.ay, %bb.h ], [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ] ; 3 uses
  %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter527.next.1 = add i64 %niter527, 2         ; 2 uses
  %niter527.ncmp.1 = icmp eq i64 %niter527.next.1, %unroll_iter526
  br i1 %niter527.ncmp.1, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !5

Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.i
  br i1 %lcmp.mod523.not, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader

.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader: ; preds = %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i95.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.preheader ], [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod525)
  %i.az = trunc nuw nsw i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init to i32
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.bb, 0
  br i1 %.not.i93.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i91.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !31
  %i.be = add nsw i32 %i.bd, %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  br label %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader, %bb.j, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi i32 [ %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.be, %bb.j ], [ %.010.i92.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.lr.ph.i90.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.preheader ]
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i32 %.1.i94.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa)
  br label %bb.k

bb.k:                                             ; preds = %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %i.am, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.059104.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i32 [ %.0105.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %Extra_ThreshWeightedSum.exit.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.bf, %Extra_ThreshWeightedSum.exit97.loopexit.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.not86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i32 %.1.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %.not86.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.l, label %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.l:                                             ; preds = %bb.k
  %i.bg = add nuw nsw i32 %.061102.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.bg, %smax
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !87

.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.k
  %i.bh = add nuw nsw i32 %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bh, ptr %2, align 4, !tbaa !31
  %.not84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge83129.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not84.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split132.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !88

.split132.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split.us.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bi = add nuw nsw i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !31
  %.not82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge81139.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not82.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split158.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader99.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !89

.split158.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split132.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bj = add nuw nsw i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !31
  %.not80.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge79172.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split193.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !90

.split193.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split158.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bk = add nuw nsw i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bk, ptr %i.f, align 4, !tbaa !31
  %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge77213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split236.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.split174.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !91

.split236.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.split193.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bl = add nuw nsw i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bl, ptr %i.e, align 4, !tbaa !31
  %.not76.us.us.us.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge75262.us.us.us.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not76.us.us.us.us.us.us.us.us.us.us.us.us, label %.split287.us.split.us.split.us.us.us.us.us.us.us.us.us.us, label %.split215.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !92

.split287.us.split.us.split.us.us.us.us.us.us.us.us.us.us: ; preds = %.split236.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.bm = add nuw nsw i32 %storemerge73318.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  store i32 %i.bm, ptr %i.d, align 4, !tbaa !31
  %.not74.us.us.us.us.us.us.us.us.us = icmp sgt i32 %storemerge73318.us.us.us.us.us.us.us.us.us, %1
  br i1 %.not74.us.us.us.us.us.us.us.us.us, label %.split345.us.split.us.split.us.us.us.us.us.us.us, label %.split264.us.us.us.us.us.us.us.us.us.us, !llvm.loop !93

.split345.us.split.us.split.us.us.us.us.us.us.us: ; preds = %.split287.us.split.us.split.us.us.us.us.us.us.us.us.us.us
  %i.bn = add nuw i32 %storemerge71381.us.us.us.us.us.us, 1 ; 3 uses
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !31
  %exitcond506 = icmp eq i32 %i.bn, %i.i
  br i1 %exitcond506, label %.split410.us.split.us.split.us.us.us.us, label %.split320.us.us.us.us.us.us.us, !llvm.loop !94

.split410.us.split.us.split.us.us.us.us:          ; preds = %.split345.us.split.us.split.us.us.us.us.us.us.us
  %i.bo = add nuw i32 %storemerge452.us.us.us, 1  ; 3 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !31
  %exitcond506.a = icmp eq i32 %i.bo, %i.i
  br i1 %exitcond506.a, label %.thread, label %.split383.us.us.us.us, !llvm.loop !95

.preheader.us143.us.us.us.us.us.us:               ; preds = %.lr.ph, %bb.m
  %.061102.us.us.us.us.us.us.us = phi i32 [ %i.bx, %bb.m ], [ %1, %.lr.ph ] ; 3 uses
  %i.bp = lshr i32 %.061102.us.us.us.us.us.us.us, 6
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !34
  %i.bt = and i32 %.061102.us.us.us.us.us.us.us, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bs, %i.bv
  %.not85.us.us.us.us.us.us.us = icmp eq i64 %i.bw, 0
  br i1 %.not85.us.us.us.us.us.us.us, label %bb.m, label %..thread.loopexit100_crit_edge.split.us.split.split

bb.m:                                             ; preds = %.preheader.us143.us.us.us.us.us.us
  %i.bx = add nuw nsw i32 %.061102.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond508.not = icmp eq i32 %i.bx, %i.a
  br i1 %exitcond508.not, label %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us, label %.preheader.us143.us.us.us.us.us.us, !llvm.loop !87

..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us: ; preds = %bb.m
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 1, ptr %i.e, align 4, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !31
  br label %.thread

..thread.loopexit100_crit_edge.split.us.split.split: ; preds = %.preheader.us143.us.us.us.us.us.us
  store <4 x i32> splat (i32 2), ptr %2, align 4, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.e, align 4, !tbaa !31
  br label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 1, ptr %i.c, align 4, !tbaa !31
  store i32 1, ptr %i.d, align 4, !tbaa !31
  store i32 1, ptr %i.e, align 4, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %.split410.us.split.us.split.us.us.us.us, %bb.l, %bb.a, %..thread.loopexit100_crit_edge.split.us.split.split, %.lr.ph.split, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us
  %.062 = phi i32 [ %.160.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ], [ 10000, %.lr.ph.split ], [ 0, %bb.a ], [ 0, %..thread.loopexit100_crit_edge.split.us.split.split ], [ 10000, %..thread.loopexit_crit_edge.split.split.split.us.split.us.split.us.split.us.split.us.split.us.split.us ], [ 0, %.split410.us.split.us.split.us.us.us.us ]
  ret i32 %.062
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, 10001) i32 @Extra_ThreshSelectWeights(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !34
  %i.c = and i64 %i.b, 15                         ; 2 uses
  %.not = icmp ne i64 %i.c, 6
  %i.d = icmp ne i64 %i.c, 9
  %narrow = and i1 %.not, %i.d
  %i.e = zext i1 %narrow to i32
  br label %Extra_ThreshSelectWeights3.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %Extra_ThreshSelectWeights3.exit [
    i32 3, label %bb.d
    i32 4, label %bb.an
    i32 5, label %bb.bc
    i32 6, label %bb.bi
    i32 7, label %bb.bj
    i32 8, label %bb.bk
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.pre.pre.pre = load i64, ptr %0, align 8, !tbaa !34 ; 8 uses
  %i.h = and i64 %.pre.pre.pre, 1
  %.not44.us.us.i = icmp eq i64 %i.h, 0           ; 3 uses
  %i.i = and i64 %.pre.pre.pre, 2
  %.not44.us.us.i.1 = icmp eq i64 %i.i, 0         ; 6 uses
  %i.j = and i64 %.pre.pre.pre, 4
  %.not44.us.us.i.2 = icmp eq i64 %i.j, 0         ; 4 uses
  %i.k = and i64 %.pre.pre.pre, 8
  %.not44.us.us.i.3 = icmp eq i64 %i.k, 0         ; 3 uses
  %i.l = and i64 %.pre.pre.pre, 16
  %.not44.us.us.i.4 = icmp eq i64 %i.l, 0         ; 3 uses
  %i.m = and i64 %.pre.pre.pre, 32
  %.not44.us.us.i.5 = icmp eq i64 %i.m, 0         ; 3 uses
  %i.n = and i64 %.pre.pre.pre, 64
  %.not44.us.us.i.6 = icmp eq i64 %i.n, 0         ; 3 uses
  %i.o = and i64 %.pre.pre.pre, 128
  %.not44.us.us.i.7 = icmp eq i64 %i.o, 0         ; 3 uses
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split68.us.us.i, %bb.d
  %i.p = phi i32 [ %i.ca, %.split68.us.us.i ], [ 1, %bb.d ] ; 22 uses
  br label %.preheader58.us.us.i

.preheader58.us.us.i:                             ; preds = %bb.am, %.split.us.us.i
  %i.q = phi i32 [ %i.p, %.split.us.us.i ], [ %i.bz, %bb.am ] ; 35 uses
  %invariant.op = add nuw nsw i32 %i.q, %i.p      ; 3 uses
  br i1 %.not44.us.us.i, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1: ; preds = %.preheader58.us.us.i
  %i.r = tail call i32 @llvm.smin.i32(i32 %i.q, i32 10000)
  %.134.us.us.i.1 = select i1 %.not44.us.us.i.1, i32 10000, i32 %i.r ; 3 uses
  %.1.us.us.i.1 = select i1 %.not44.us.us.i.1, i32 %i.q, i32 0 ; 2 uses
  %.not45.us.us.i.1 = icmp samesign ult i32 %.1.us.us.i.1, %.134.us.us.i.1
  br i1 %.not45.us.us.i.1, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2: ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.1
  %i.s = tail call i32 @llvm.smin.i32(i32 %.134.us.us.i.1, i32 %i.q)
  %.134.us.us.i.2 = select i1 %.not44.us.us.i.2, i32 %.134.us.us.i.1, i32 %i.s ; 3 uses
  %.1.us.us.i.2 = select i1 %.not44.us.us.i.2, i32 %i.q, i32 %.1.us.us.i.1 ; 3 uses
  %.not45.us.us.i.2 = icmp slt i32 %.1.us.us.i.2, %.134.us.us.i.2
  br i1 %.not45.us.us.i.2, label %bb.e, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.e:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.2
  br i1 %.not44.us.us.i.3, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3:  ; preds = %bb.e
  %i.t = shl nuw nsw i32 %i.q, 1
  %i.u = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.2, i32 %i.t)
  br label %bb.f

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3: ; preds = %bb.e
  %i.v = shl nuw nsw i32 %i.q, 1
  %i.w = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.2, i32 %i.v)
  br label %bb.f

bb.f:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3
  %.134.us.us.i.3 = phi i32 [ %i.u, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3 ], [ %.134.us.us.i.2, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3 ] ; 3 uses
  %.1.us.us.i.3 = phi i32 [ %.1.us.us.i.2, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.3 ], [ %i.w, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.3 ] ; 3 uses
  %.not45.us.us.i.3 = icmp slt i32 %.1.us.us.i.3, %.134.us.us.i.3
  br i1 %.not45.us.us.i.3, label %bb.g, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not44.us.us.i.4, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4:  ; preds = %bb.g
  %i.x = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.3, i32 %i.p)
  br label %bb.h

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4: ; preds = %bb.g
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.3, i32 %i.p)
  br label %bb.h

bb.h:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4
  %.134.us.us.i.4 = phi i32 [ %i.x, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4 ], [ %.134.us.us.i.3, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4 ] ; 3 uses
  %.1.us.us.i.4 = phi i32 [ %.1.us.us.i.3, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.4 ], [ %i.y, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.4 ] ; 3 uses
  %.not45.us.us.i.4 = icmp slt i32 %.1.us.us.i.4, %.134.us.us.i.4
  br i1 %.not45.us.us.i.4, label %bb.i, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i32 %i.p, %i.q               ; 2 uses
  br i1 %.not44.us.us.i.5, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5:  ; preds = %bb.i
  %i.aa = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.4, i32 %i.z)
  br label %bb.j

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5: ; preds = %bb.i
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.4, i32 %i.z)
  br label %bb.j

bb.j:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5
  %.134.us.us.i.5 = phi i32 [ %i.aa, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5 ], [ %.134.us.us.i.4, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5 ] ; 3 uses
  %.1.us.us.i.5 = phi i32 [ %.1.us.us.i.4, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.5 ], [ %i.ab, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.5 ] ; 3 uses
  %.not45.us.us.i.5 = icmp slt i32 %.1.us.us.i.5, %.134.us.us.i.5
  br i1 %.not45.us.us.i.5, label %bb.k, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.k:                                             ; preds = %bb.j
  br i1 %.not44.us.us.i.6, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6:  ; preds = %bb.k
  %i.ac = add nuw nsw i32 %i.p, %i.q
  %i.ad = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.5, i32 %i.ac)
  br label %bb.l

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6: ; preds = %bb.k
  %i.ae = add nuw nsw i32 %i.p, %i.q
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.5, i32 %i.ae)
  br label %bb.l

bb.l:                                             ; preds = %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6
  %.134.us.us.i.6 = phi i32 [ %i.ad, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6 ], [ %.134.us.us.i.5, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6 ] ; 3 uses
  %.1.us.us.i.6 = phi i32 [ %.1.us.us.i.5, %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.6 ], [ %i.af, %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.6 ] ; 3 uses
  %.not45.us.us.i.6 = icmp slt i32 %.1.us.us.i.6, %.134.us.us.i.6
  br i1 %.not45.us.us.i.6, label %bb.m, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i

bb.m:                                             ; preds = %bb.l
  br i1 %.not44.us.us.i.7, label %Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7, label %Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7

Extra_ThreshWeightedSum.exit.loopexit.us.us.i.7:  ; preds = %bb.m
  %i.ag = shl nuw nsw i32 %i.q, 1
  %i.ah = add nuw nsw i32 %i.p, %i.ag
  %i.ai = tail call noundef i32 @llvm.smin.i32(i32 %.134.us.us.i.6, i32 %i.ah)
  br label %bb.n

Extra_ThreshWeightedSum.exit56.loopexit.us.us.i.7: ; preds = %bb.m
  %.reass = add nuw nsw i32 %i.q, %invariant.op
  %i.aj = tail call noundef i32 @llvm.smax.i32(i32 %.1.us.us.i.6, i32 %.reass)
end_hunk_0
