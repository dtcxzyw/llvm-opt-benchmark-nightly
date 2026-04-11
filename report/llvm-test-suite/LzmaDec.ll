inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@llvm.lifetime.start.p0
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 4) i32 @LzmaDec_TryDummy(ptr noundef readonly captures(none) %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30   ; 3 uses
end_hunk_0
begin_hunk_1_@LzmaDec_TryDummy:bb.a
  br label %bb.ax

bb.ax:                                            ; preds = %bb.an, %bb.aw, %bb.ar, %bb.av, %bb.ac
  %.sink = phi i64 [ 1636, %bb.ac ], [ 2664, %bb.av ], [ 2664, %bb.ar ], [ 2664, %bb.aw ], [ 2664, %bb.an ]
  %.17466.a = phi i32 [ %.10459, %bb.ac ], [ %.15464, %bb.av ], [ %.14463, %bb.ar ], [ %i.ha, %bb.aw ], [ %i.fs, %bb.an ] ; 2 uses
  %.0444 = phi i32 [ 2, %bb.ac ], [ 3, %bb.av ], [ 3, %bb.ar ], [ 3, %bb.aw ], [ 3, %bb.an ] ; 3 uses
  %.17421 = phi i32 [ %i.ej, %bb.ac ], [ %i.gx, %bb.av ], [ %i.gh, %bb.ar ], [ %i.gz, %bb.aw ], [ %i.fr, %bb.an ] ; 3 uses
  %.15 = phi ptr [ %.8380, %bb.ac ], [ %.13385, %bb.av ], [ %.12384, %bb.ar ], [ %.13385, %bb.aw ], [ %.10382, %bb.an ] ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink ; 5 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !34
  %i.hd = zext i16 %i.hc to i32
  %i.he = icmp ult i32 %.17421, 16777216
end_hunk_1
begin_hunk_2_@LzmaDec_TryDummy:bb.a

bb.az:                                            ; preds = %bb.ay
  %i.hf = shl nuw i32 %.17421, 8
  %i.hg = shl i32 %.17466.a, 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.15, i64 1
  %i.hi = load i8, ptr %.15, align 1, !tbaa !25
  %i.hj = zext i8 %i.hi to i32
end_hunk_2
begin_hunk_3_@LzmaDec_TryDummy:bb.a
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.18467 = phi i32 [ %i.hk, %bb.az ], [ %.17466.a, %bb.ax ] ; 3 uses
  %.18422 = phi i32 [ %i.hf, %bb.az ], [ %.17421, %bb.ax ] ; 2 uses
  %.16 = phi ptr [ %i.hh, %bb.az ], [ %.15, %bb.ax ] ; 5 uses
  %i.hl = lshr i32 %.18422, 11
end_hunk_3
begin_hunk_4_@LzmaDec_TryDummy:bb.a
  br i1 %.not547, label %.thread, label %bb.cj, !llvm.loop !50

.thread:                                          ; preds = %bb.cp, %bb.y, %bb.o, %bb.bq, %bb.bz
  %.3447.ph = phi i32 [ %.0444, %bb.bq ], [ %.0444, %bb.bz ], [ 1, %bb.o ], [ 1, %bb.y ], [ %.0444, %bb.cp ]
  %.41.ph = phi i32 [ %.23427, %bb.bq ], [ %.27431, %bb.bz ], [ %.3407, %bb.o ], [ %.8412.ph, %bb.y ], [ %.33437, %bb.cp ]
  %.36.ph = phi ptr [ %.20, %bb.bq ], [ %.23, %bb.bz ], [ %.2374, %bb.o ], [ %.5377, %bb.y ], [ %.28, %bb.cp ]
  %i.mf = icmp ugt i32 %.41.ph, 16777215
end_hunk_4
begin_hunk_5_@LzmaDec_DecodeReal2:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.132 = phi i64 [ %spec.select, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !33  ; 13 uses
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !43
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !4
end_hunk_5
begin_hunk_6_@LzmaDec_DecodeReal2:bb.a
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !30
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !29
  %3 = getelementptr inbounds nuw i8, ptr %i.aa, i64 384
  %4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 408
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 456
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 480
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 2664
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 1636
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 864
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 1604 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 1606 ; 2 uses
end_hunk_6
begin_hunk_7_@LzmaDec_DecodeReal2:bb.a
  %i.fk = sub i16 %i.bi, %i.fj
  store i16 %i.fk, ptr %i.bh, align 2, !tbaa !34
  %i.fl = zext i32 %.0777.i to i64                ; 4 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fl ; 3 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !34 ; 4 uses
  %i.fo = zext i16 %i.fn to i32                   ; 2 uses
  %i.fp = icmp ult i32 %i.fh, 16777216
end_hunk_7
begin_hunk_8_@LzmaDec_DecodeReal2:bb.a
  br i1 %or.cond4.i, label %LzmaDec_WriteRem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.fl ; 3 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !34 ; 4 uses
  %i.gl = zext i16 %i.gk to i32                   ; 2 uses
  %i.gm = icmp ult i32 %i.ge, 16777216
end_hunk_8
begin_hunk_9_@LzmaDec_DecodeReal2:bb.a
  %i.gy = trunc i32 %i.gx to i16
  %i.gz = add i16 %i.gk, %i.gy
  store i16 %i.gz, ptr %i.gj, align 2, !tbaa !34
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.be
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.bg ; 3 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !34 ; 4 uses
  %i.hd = zext i16 %i.hc to i32                   ; 2 uses
end_hunk_9
begin_hunk_10_@LzmaDec_DecodeReal2:bb.a
  %i.ij = lshr i16 %i.gk, 5
  %i.ik = sub i16 %i.gk, %i.ij
  store i16 %i.ik, ptr %i.gj, align 2, !tbaa !34
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.fl ; 3 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !34 ; 4 uses
  %i.in = zext i16 %i.im to i32                   ; 2 uses
  %i.io = icmp ult i32 %i.ih, 16777216
end_hunk_10
begin_hunk_11_@LzmaDec_DecodeReal2:bb.a
  %i.je = lshr i16 %i.im, 5
  %i.jf = sub i16 %i.im, %i.je
  store i16 %i.jf, ptr %i.il, align 2, !tbaa !34
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.fl ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !34 ; 4 uses
  %i.ji = zext i16 %i.jh to i32                   ; 2 uses
  %i.jj = icmp ult i32 %i.jc, 16777216
end_hunk_11
begin_hunk_12_@LzmaDec_DecodeReal2:bb.a
  %.14938.i = phi ptr [ %.7931.i, %bb.z ], [ %.13937.i, %bb.at ] ; 3 uses
  %.17885.i = phi i32 [ %i.fx, %bb.z ], [ %.16884.i, %bb.at ] ; 3 uses
  %.17.i = phi i32 [ %.9861.i, %bb.z ], [ %.16.i, %bb.at ] ; 2 uses
  %.1851.i = phi ptr [ %i.av, %bb.z ], [ %i.au, %bb.at ] ; 7 uses
  %.4832.i = phi i32 [ %.0828.i, %bb.z ], [ %.3831.i, %bb.at ] ; 2 uses
  %.3808.i = phi i32 [ %.0805.i, %bb.z ], [ %.2807.i, %bb.at ] ; 3 uses
  %.2796.i = phi i32 [ %.0794.i, %bb.z ], [ %.1795.i, %bb.at ] ; 3 uses
  %.2787.i = phi i32 [ %.0785.i, %bb.z ], [ %.1786.i, %bb.at ] ; 3 uses
  %.2779.i = phi i32 [ %i.gd, %bb.z ], [ %i.kc, %bb.at ] ; 4 uses
  %i.kd = load i16, ptr %.1851.i, align 2, !tbaa !34 ; 4 uses
  %i.ke = zext i16 %i.kd to i32                   ; 2 uses
  %i.kf = icmp ult i32 %.17885.i, 16777216
end_hunk_12
