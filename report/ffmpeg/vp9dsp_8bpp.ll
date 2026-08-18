inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@avg_8tap_regular_16h_c:bb.a
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 256), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_sharp_16h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 512), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_bilin_16h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  tail call fastcc void @avg_bilin_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 16, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_smooth_8h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @ff_vp9_subpel_filters, i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_regular_8h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 256), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_sharp_8h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 512), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_bilin_8h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  tail call fastcc void @avg_bilin_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 8, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_smooth_4h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr @ff_vp9_subpel_filters, i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 4, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_regular_4h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 256), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 4, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_8tap_sharp_4h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  %i.a = sext i32 %5 to i64
  %i.b = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_subpel_filters, i64 512), i64 %i.a
  tail call fastcc void @avg_8tap_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 4, i32 noundef %4, ptr noundef nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_bilin_4h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 %6) #3 {
bb.a:
  tail call fastcc void @avg_bilin_1d_h_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 4, i32 noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @put_8tap_2d_hv_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 4, 65) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #9 {
bb.a:
  %i.a = alloca [4544 x i8], align 16             ; 4 uses
  %i.b = add nsw i32 %5, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.neg.i = mul i64 %3, -3
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.d = load <8 x i16>, ptr %6, align 2, !tbaa !19
  %i.e = sext <8 x i16> %i.d to <8 x i32>         ; 9 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 7 uses
  %min.iters.check = icmp samesign ult i32 %4, 16
  %n.vec = and i64 %wide.trip.count, 112          ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat17 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat19 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat21 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat23 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat25 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat27 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat29 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

bb.b:                                             ; preds = %.loopexit71, %bb.a
  %.0105.i = phi i32 [ %i.b, %bb.a ], [ %i.bn, %.loopexit71 ]
  %.0104.i = phi ptr [ %i.a, %bb.a ], [ %i.bl, %.loopexit71 ] ; 3 uses
  %.0102.i = phi ptr [ %i.c, %bb.a ], [ %i.bm, %.loopexit71 ] ; 6 uses
  %.pre = load i8, ptr %.0102.i, align 1, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %vector.recur.init = insertelement <16 x i8> poison, i8 %.pre, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load32, %vector.body ]
  %i.f = getelementptr i8, ptr %.0102.i, i64 %index ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -3
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.h = zext <16 x i8> %wide.load to <16 x i32>
  %i.i = mul nsw <16 x i32> %broadcast.splat, %i.h
  %i.j = getelementptr i8, ptr %i.f, i64 -2
  %wide.load30 = load <16 x i8>, ptr %i.j, align 1, !tbaa !11
  %i.k = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.l = mul nsw <16 x i32> %broadcast.splat17, %i.k
  %i.m = getelementptr i8, ptr %i.f, i64 -1
  %wide.load31 = load <16 x i8>, ptr %i.m, align 1, !tbaa !11
  %i.n = zext <16 x i8> %wide.load31 to <16 x i32>
  %i.o = mul nsw <16 x i32> %broadcast.splat19, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %wide.load32 = load <16 x i8>, ptr %i.q, align 1, !tbaa !11 ; 4 uses
  %i.r = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load32, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.s = zext <16 x i8> %i.r to <16 x i32>
  %i.t = mul nsw <16 x i32> %broadcast.splat21, %i.s
  %i.u = zext <16 x i8> %wide.load32 to <16 x i32>
  %i.v = mul nsw <16 x i32> %broadcast.splat23, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load33 = load <16 x i8>, ptr %i.w, align 1, !tbaa !11
  %i.x = zext <16 x i8> %wide.load33 to <16 x i32>
  %i.y = mul nsw <16 x i32> %broadcast.splat25, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %wide.load34 = load <16 x i8>, ptr %i.z, align 1, !tbaa !11
  %i.aa = zext <16 x i8> %wide.load34 to <16 x i32>
  %i.ab = mul nsw <16 x i32> %broadcast.splat27, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load35 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !11
  %i.ad = zext <16 x i8> %wide.load35 to <16 x i32>
  %i.ae = mul nsw <16 x i32> %broadcast.splat29, %i.ad
  %i.af = add nsw <16 x i32> %i.i, splat (i32 64)
  %i.ag = add nsw <16 x i32> %i.af, %i.l
  %i.ah = add nsw <16 x i32> %i.ag, %i.o
  %i.ai = add nsw <16 x i32> %i.ah, %i.t
  %i.aj = add nsw <16 x i32> %i.ai, %i.v
  %i.ak = add nsw <16 x i32> %i.aj, %i.y
  %i.al = add nsw <16 x i32> %i.ak, %i.ab
  %i.am = add nsw <16 x i32> %i.al, %i.ae
  %i.an = ashr <16 x i32> %i.am, splat (i32 7)    ; 3 uses
  %i.ao = icmp ugt <16 x i32> %i.an, splat (i32 255)
  %i.ap = icmp sgt <16 x i32> %i.an, splat (i32 -1)
  %i.aq = sext <16 x i1> %i.ap to <16 x i8>
  %i.ar = trunc nuw <16 x i32> %i.an to <16 x i8>
  %i.as = select <16 x i1> %i.ao, <16 x i8> %i.aq, <16 x i8> %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %index
  store <16 x i8> %i.as, ptr %i.at, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !288

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load32, i64 15
  br i1 %cmp.n, label %.loopexit71, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i8 [ %.pre, %bb.b ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.av = phi i8 [ %i.bc, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.0102.i, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -3
  %i.ay = getelementptr i8, ptr %i.aw, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %indvars.iv.next ; 2 uses
  %8 = load <2 x i8>, ptr %i.ax, align 1, !tbaa !11
  %i.bb = load <4 x i8>, ptr %i.ba, align 1, !tbaa !11
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !11
  %9 = shufflevector <2 x i8> %8, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i8> %9, <4 x i8> %i.bb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %11 = insertelement <8 x i8> %10, i8 %i.az, i64 2
  %12 = insertelement <8 x i8> %11, i8 %i.av, i64 3
  %i.bd = zext <8 x i8> %12 to <8 x i32>
  %i.be = mul nsw <8 x i32> %i.bd, %i.e
  %i.bf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.be)
  %op.rdx = add i32 %i.bf, 64
  %i.bg = ashr i32 %op.rdx, 7                     ; 3 uses
  %i.bh = icmp ugt i32 %i.bg, 255
  %isnotneg.i114.i = icmp sgt i32 %i.bg, -1
  %i.bi = sext i1 %isnotneg.i114.i to i8
  %i.bj = trunc nuw i32 %i.bg to i8
  %.0.i115.i = select i1 %i.bh, i8 %i.bi, i8 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %indvars.iv
  store i8 %.0.i115.i, ptr %i.bk, align 1, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit71, label %scalar.ph, !llvm.loop !289

.loopexit71:                                      ; preds = %scalar.ph, %middle.block
  %i.bl = getelementptr inbounds nuw i8, ptr %.0104.i, i64 64
  %i.bm = getelementptr inbounds i8, ptr %.0102.i, i64 %3
  %i.bn = add nsw i32 %.0105.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !290

bb.c:                                             ; preds = %.loopexit71
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 14 ; 2 uses
  %i.bw = add i32 %5, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul i64 %1, %i.bx
  %i.bz = getelementptr i8, ptr %0, i64 %i.by
  %scevgep = getelementptr i8, ptr %i.bz, i64 %wide.trip.count
  %scevgep36 = getelementptr i8, ptr %7, i64 16
  %min.iters.check38 = icmp samesign ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep36
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.ca = or i1 %found.conflict, %stride.check
  %n.vec40 = and i64 %wide.trip.count, 120        ; 3 uses
  %cmp.n69 = icmp eq i64 %n.vec40, %wide.trip.count
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.0106.i = phi i32 [ %5, %bb.c ], [ %i.gq, %.loopexit ]
  %.1.i = phi ptr [ %i.bo, %bb.c ], [ %i.go, %.loopexit ] ; 3 uses
  %.0103.i = phi ptr [ %0, %bb.c ], [ %i.gp, %.loopexit ] ; 3 uses
  %brmerge = select i1 %min.iters.check38, i1 true, i1 %i.ca
  br i1 %brmerge, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %bb.d
  %i.cb = load i16, ptr %7, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = sext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.cd = load i16, ptr %i.bp, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ce = sext <8 x i16> %broadcast.splat44 to <8 x i32>
  %i.cf = load i16, ptr %i.bq, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cg = sext <8 x i16> %broadcast.splat46 to <8 x i32>
  %i.ch = load i16, ptr %i.br, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %i.ch, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ci = sext <8 x i16> %broadcast.splat48 to <8 x i32>
  %i.cj = load i16, ptr %i.bs, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert49 = insertelement <8 x i16> poison, i16 %i.cj, i64 0
  %broadcast.splat50 = shufflevector <8 x i16> %broadcast.splatinsert49, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ck = sext <8 x i16> %broadcast.splat50 to <8 x i32>
  %i.cl = load i16, ptr %i.bt, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert51 = insertelement <8 x i16> poison, i16 %i.cl, i64 0
  %broadcast.splat52 = shufflevector <8 x i16> %broadcast.splatinsert51, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cm = sext <8 x i16> %broadcast.splat52 to <8 x i32>
  %i.cn = load i16, ptr %i.bu, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert53 = insertelement <8 x i16> poison, i16 %i.cn, i64 0
  %broadcast.splat54 = shufflevector <8 x i16> %broadcast.splatinsert53, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.co = sext <8 x i16> %broadcast.splat54 to <8 x i32>
  %i.cp = load i16, ptr %i.bv, align 2, !tbaa !19, !alias.scope !291
  %broadcast.splatinsert55 = insertelement <8 x i16> poison, i16 %i.cp, i64 0
  %broadcast.splat56 = shufflevector <8 x i16> %broadcast.splatinsert55, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cq = sext <8 x i16> %broadcast.splat56 to <8 x i32>
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph39
  %index58 = phi i64 [ 0, %vector.ph39 ], [ %index.next67, %vector.body57 ] ; 3 uses
  %i.cr = getelementptr i8, ptr %.1.i, i64 %index58 ; 8 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -192
  %wide.load59 = load <8 x i8>, ptr %i.cs, align 1, !tbaa !11
  %i.ct = zext <8 x i8> %wide.load59 to <8 x i32>
  %i.cu = mul nsw <8 x i32> %i.ct, %i.cc
  %i.cv = getelementptr i8, ptr %i.cr, i64 -128
  %wide.load60 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !11
  %i.cw = zext <8 x i8> %wide.load60 to <8 x i32>
  %i.cx = mul nsw <8 x i32> %i.cw, %i.ce
  %i.cy = getelementptr i8, ptr %i.cr, i64 -64
  %wide.load61 = load <8 x i8>, ptr %i.cy, align 1, !tbaa !11
  %i.cz = zext <8 x i8> %wide.load61 to <8 x i32>
  %i.da = mul nsw <8 x i32> %i.cz, %i.cg
  %wide.load62 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !11
  %i.db = zext <8 x i8> %wide.load62 to <8 x i32>
  %i.dc = mul nsw <8 x i32> %i.db, %i.ci
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %wide.load63 = load <8 x i8>, ptr %i.dd, align 1, !tbaa !11
  %i.de = zext <8 x i8> %wide.load63 to <8 x i32>
  %i.df = mul nsw <8 x i32> %i.de, %i.ck
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %wide.load64 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !11
  %i.dh = zext <8 x i8> %wide.load64 to <8 x i32>
  %i.di = mul nsw <8 x i32> %i.dh, %i.cm
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 192
  %wide.load65 = load <8 x i8>, ptr %i.dj, align 1, !tbaa !11
  %i.dk = zext <8 x i8> %wide.load65 to <8 x i32>
  %i.dl = mul nsw <8 x i32> %i.dk, %i.co
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 256
  %wide.load66 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !11
  %i.dn = zext <8 x i8> %wide.load66 to <8 x i32>
  %i.do = mul nsw <8 x i32> %i.dn, %i.cq
  %i.dp = add nsw <8 x i32> %i.cu, splat (i32 64)
  %i.dq = add nsw <8 x i32> %i.dp, %i.cx
  %i.dr = add nsw <8 x i32> %i.dq, %i.da
  %i.ds = add nsw <8 x i32> %i.dr, %i.dc
  %i.dt = add nsw <8 x i32> %i.ds, %i.df
  %i.du = add nsw <8 x i32> %i.dt, %i.di
  %i.dv = add nsw <8 x i32> %i.du, %i.dl
  %i.dw = add nsw <8 x i32> %i.dv, %i.do
  %i.dx = ashr <8 x i32> %i.dw, splat (i32 7)     ; 3 uses
  %i.dy = icmp ugt <8 x i32> %i.dx, splat (i32 255)
  %i.dz = icmp sgt <8 x i32> %i.dx, splat (i32 -1)
  %i.ea = sext <8 x i1> %i.dz to <8 x i8>
  %i.eb = trunc nuw <8 x i32> %i.dx to <8 x i8>
  %i.ec = select <8 x i1> %i.dy, <8 x i8> %i.ea, <8 x i8> %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %.0103.i, i64 %index58
  store <8 x i8> %i.ec, ptr %i.ed, align 1, !tbaa !11, !alias.scope !294, !noalias !291
  %index.next67 = add nuw i64 %index58, 8         ; 2 uses
  %i.ee = icmp eq i64 %index.next67, %n.vec40
  br i1 %i.ee, label %middle.block68, label %vector.body57, !llvm.loop !296

middle.block68:                                   ; preds = %vector.body57
  br i1 %cmp.n69, label %.loopexit, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %bb.d, %middle.block68
  %indvars.iv10.ph = phi i64 [ %n.vec40, %middle.block68 ], [ 0, %bb.d ]
  br label %scalar.ph37

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %scalar.ph37 ], [ %indvars.iv10.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.ef = load i16, ptr %7, align 2, !tbaa !19
  %i.eg = sext i16 %i.ef to i32
  %i.eh = getelementptr i8, ptr %.1.i, i64 %indvars.iv10 ; 8 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -192
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.ek = zext i8 %i.ej to i32
  %i.el = mul nsw i32 %i.ek, %i.eg
  %i.em = load i16, ptr %i.bp, align 2, !tbaa !19
  %i.en = sext i16 %i.em to i32
  %i.eo = getelementptr i8, ptr %i.eh, i64 -128
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !11
  %i.eq = zext i8 %i.ep to i32
  %i.er = mul nsw i32 %i.eq, %i.en
  %i.es = load i16, ptr %i.bq, align 2, !tbaa !19
  %i.et = sext i16 %i.es to i32
  %i.eu = getelementptr i8, ptr %i.eh, i64 -64
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.ew = zext i8 %i.ev to i32
  %i.ex = mul nsw i32 %i.ew, %i.et
  %i.ey = load i16, ptr %i.br, align 2, !tbaa !19
  %i.ez = sext i16 %i.ey to i32
  %i.fa = load i8, ptr %i.eh, align 1, !tbaa !11
  %i.fb = zext i8 %i.fa to i32
  %i.fc = mul nsw i32 %i.fb, %i.ez
  %i.fd = load i16, ptr %i.bs, align 2, !tbaa !19
  %i.fe = sext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !11
  %i.fh = zext i8 %i.fg to i32
  %i.fi = mul nsw i32 %i.fh, %i.fe
  %i.fj = load i16, ptr %i.bt, align 2, !tbaa !19
  %i.fk = sext i16 %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !11
  %i.fn = zext i8 %i.fm to i32
  %i.fo = mul nsw i32 %i.fn, %i.fk
  %i.fp = load i16, ptr %i.bu, align 2, !tbaa !19
  %i.fq = sext i16 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eh, i64 192
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !11
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.ft, %i.fq
  %i.fv = load i16, ptr %i.bv, align 2, !tbaa !19
  %i.fw = sext i16 %i.fv to i32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 256
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = zext i8 %i.fy to i32
  %i.ga = mul nsw i32 %i.fz, %i.fw
  %i.gb = add nsw i32 %i.el, 64
  %i.gc = add nsw i32 %i.gb, %i.er
end_hunk_0
begin_hunk_1_@put_bilin_1d_h_c:bb.a
  %i.bh = getelementptr i8, ptr %i.p, i64 %index14
  %wide.load16 = load <4 x i8>, ptr %i.bh, align 1, !tbaa !11, !alias.scope !351
  %i.bi = zext <4 x i8> %wide.load16 to <4 x i32>
  %i.bj = sub nsw <4 x i32> %i.bi, %i.bg
  %i.bk = mul nsw <4 x i32> %i.bj, %broadcast.splat13
  %i.bl = add nsw <4 x i32> %i.bk, splat (i32 8)
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 4)
  %i.bn = trunc <4 x i32> %i.bm to <4 x i8>
  %i.bo = add <4 x i8> %wide.load15, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.035.i, i64 %index14
  store <4 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !11, !alias.scope !354, !noalias !351
  %index.next17 = add nuw i64 %index14, 4         ; 2 uses
  %i.bq = icmp eq i64 %index.next17, %n.vec11
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !356

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n18, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.br = getelementptr inbounds nuw i8, ptr %.034.i, i64 %indvars.iv.ph
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr i8, ptr %i.p, i64 %indvars.iv.ph
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = zext i8 %i.bv to i32
  %i.bx = sub nsw i32 %i.bw, %i.bt
  %i.by = mul nsw i32 %i.bx, %6
  %i.bz = add nsw i32 %i.by, 8
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = add i8 %i.bs, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv.ph
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !11
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.o
  br i1 %i.ce, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.034.i, i64 %indvars.iv
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !11  ; 2 uses
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr i8, ptr %i.p, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.ck = zext i8 %i.cj to i32
  %i.cl = sub nsw i32 %i.ck, %i.ch
  %i.cm = mul nsw i32 %i.cl, %6
  %i.cn = add nsw i32 %i.cm, 8
  %i.co = lshr i32 %i.cn, 4
  %i.cp = trunc i32 %i.co to i8
  %i.cq = add i8 %i.cg, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.034.i, i64 %indvars.iv.next
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11  ; 2 uses
  %i.cu = zext i8 %i.ct to i32
  %i.cv = getelementptr i8, ptr %i.p, i64 %indvars.iv.next
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %i.cx, %i.cu
  %i.cz = mul nsw i32 %i.cy, %6
  %i.da = add nsw i32 %i.cz, 8
  %i.db = lshr i32 %i.da, 4
  %i.dc = trunc i32 %i.db to i8
  %i.dd = add i8 %i.ct, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.035.i, i64 %indvars.iv.next
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !357

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.df = getelementptr inbounds i8, ptr %.035.i, i64 %1
  %i.dg = getelementptr inbounds i8, ptr %.034.i, i64 %3
  %i.dh = add nsw i32 %.036.i, -1                 ; 2 uses
  %.not.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i, label %do_bilin_1d_c.exit, label %iter.check, !llvm.loop !340

do_bilin_1d_c.exit:                               ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @avg_8tap_2d_hv_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 4, 65) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #9 {
bb.a:
  %i.a = alloca [4544 x i8], align 16             ; 4 uses
  %i.b = add nsw i32 %5, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %.neg.i = mul i64 %3, -3
  %i.c = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.d = load <8 x i16>, ptr %6, align 2, !tbaa !19
  %i.e = sext <8 x i16> %i.d to <8 x i32>         ; 9 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 7 uses
  %min.iters.check = icmp samesign ult i32 %4, 16
  %n.vec = and i64 %wide.trip.count, 112          ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splat17 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat19 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat21 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat23 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat25 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat27 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat29 = shufflevector <8 x i32> %i.e, <8 x i32> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.b

bb.b:                                             ; preds = %.loopexit72, %bb.a
  %.0105.i = phi i32 [ %i.b, %bb.a ], [ %i.bn, %.loopexit72 ]
  %.0104.i = phi ptr [ %i.a, %bb.a ], [ %i.bl, %.loopexit72 ] ; 3 uses
  %.0102.i = phi ptr [ %i.c, %bb.a ], [ %i.bm, %.loopexit72 ] ; 6 uses
  %.pre = load i8, ptr %.0102.i, align 1, !tbaa !11 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %vector.recur.init = insertelement <16 x i8> poison, i8 %.pre, i64 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph ], [ %wide.load32, %vector.body ]
  %i.f = getelementptr i8, ptr %.0102.i, i64 %index ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -3
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.h = zext <16 x i8> %wide.load to <16 x i32>
  %i.i = mul nsw <16 x i32> %broadcast.splat, %i.h
  %i.j = getelementptr i8, ptr %i.f, i64 -2
  %wide.load30 = load <16 x i8>, ptr %i.j, align 1, !tbaa !11
  %i.k = zext <16 x i8> %wide.load30 to <16 x i32>
  %i.l = mul nsw <16 x i32> %broadcast.splat17, %i.k
  %i.m = getelementptr i8, ptr %i.f, i64 -1
  %wide.load31 = load <16 x i8>, ptr %i.m, align 1, !tbaa !11
  %i.n = zext <16 x i8> %wide.load31 to <16 x i32>
  %i.o = mul nsw <16 x i32> %broadcast.splat19, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %index
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %wide.load32 = load <16 x i8>, ptr %i.q, align 1, !tbaa !11 ; 4 uses
  %i.r = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load32, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.s = zext <16 x i8> %i.r to <16 x i32>
  %i.t = mul nsw <16 x i32> %broadcast.splat21, %i.s
  %i.u = zext <16 x i8> %wide.load32 to <16 x i32>
  %i.v = mul nsw <16 x i32> %broadcast.splat23, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %wide.load33 = load <16 x i8>, ptr %i.w, align 1, !tbaa !11
  %i.x = zext <16 x i8> %wide.load33 to <16 x i32>
  %i.y = mul nsw <16 x i32> %broadcast.splat25, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %wide.load34 = load <16 x i8>, ptr %i.z, align 1, !tbaa !11
  %i.aa = zext <16 x i8> %wide.load34 to <16 x i32>
  %i.ab = mul nsw <16 x i32> %broadcast.splat27, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load35 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !11
  %i.ad = zext <16 x i8> %wide.load35 to <16 x i32>
  %i.ae = mul nsw <16 x i32> %broadcast.splat29, %i.ad
  %i.af = add nsw <16 x i32> %i.i, splat (i32 64)
  %i.ag = add nsw <16 x i32> %i.af, %i.l
  %i.ah = add nsw <16 x i32> %i.ag, %i.o
  %i.ai = add nsw <16 x i32> %i.ah, %i.t
  %i.aj = add nsw <16 x i32> %i.ai, %i.v
  %i.ak = add nsw <16 x i32> %i.aj, %i.y
  %i.al = add nsw <16 x i32> %i.ak, %i.ab
  %i.am = add nsw <16 x i32> %i.al, %i.ae
  %i.an = ashr <16 x i32> %i.am, splat (i32 7)    ; 3 uses
  %i.ao = icmp ugt <16 x i32> %i.an, splat (i32 255)
  %i.ap = icmp sgt <16 x i32> %i.an, splat (i32 -1)
  %i.aq = sext <16 x i1> %i.ap to <16 x i8>
  %i.ar = trunc nuw <16 x i32> %i.an to <16 x i8>
  %i.as = select <16 x i1> %i.ao, <16 x i8> %i.aq, <16 x i8> %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %index
  store <16 x i8> %i.as, ptr %i.at, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !358

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load32, i64 15
  br i1 %cmp.n, label %.loopexit72, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i8 [ %.pre, %bb.b ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.av = phi i8 [ %i.bc, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.0102.i, i64 %indvars.iv ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -3
  %i.ay = getelementptr i8, ptr %i.aw, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %indvars.iv.next ; 2 uses
  %8 = load <2 x i8>, ptr %i.ax, align 1, !tbaa !11
  %i.bb = load <4 x i8>, ptr %i.ba, align 1, !tbaa !11
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !11
  %9 = shufflevector <2 x i8> %8, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x i8> %9, <4 x i8> %i.bb, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %11 = insertelement <8 x i8> %10, i8 %i.az, i64 2
  %12 = insertelement <8 x i8> %11, i8 %i.av, i64 3
  %i.bd = zext <8 x i8> %12 to <8 x i32>
  %i.be = mul nsw <8 x i32> %i.bd, %i.e
  %i.bf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.be)
  %op.rdx = add i32 %i.bf, 64
  %i.bg = ashr i32 %op.rdx, 7                     ; 3 uses
  %i.bh = icmp ugt i32 %i.bg, 255
  %isnotneg.i114.i = icmp sgt i32 %i.bg, -1
  %i.bi = sext i1 %isnotneg.i114.i to i8
  %i.bj = trunc nuw i32 %i.bg to i8
  %.0.i115.i = select i1 %i.bh, i8 %i.bi, i8 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %.0104.i, i64 %indvars.iv
  store i8 %.0.i115.i, ptr %i.bk, align 1, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit72, label %scalar.ph, !llvm.loop !359

.loopexit72:                                      ; preds = %scalar.ph, %middle.block
  %i.bl = getelementptr inbounds nuw i8, ptr %.0104.i, i64 64
  %i.bm = getelementptr inbounds i8, ptr %.0102.i, i64 %3
  %i.bn = add nsw i32 %.0105.i, -1                ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !290

bb.c:                                             ; preds = %.loopexit72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 14 ; 2 uses
  %i.bw = add i32 %5, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul i64 %1, %i.bx
  %i.bz = getelementptr i8, ptr %0, i64 %i.by
  %scevgep = getelementptr i8, ptr %i.bz, i64 %wide.trip.count
  %scevgep36 = getelementptr i8, ptr %7, i64 16
  %min.iters.check38 = icmp samesign ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep36
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.ca = or i1 %found.conflict, %stride.check
  %n.vec40 = and i64 %wide.trip.count, 120        ; 3 uses
  %cmp.n70 = icmp eq i64 %n.vec40, %wide.trip.count
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.0106.i = phi i32 [ %5, %bb.c ], [ %i.hd, %.loopexit ]
  %.1.i = phi ptr [ %i.bo, %bb.c ], [ %i.hb, %.loopexit ] ; 3 uses
  %.0103.i = phi ptr [ %0, %bb.c ], [ %i.hc, %.loopexit ] ; 3 uses
  %brmerge = select i1 %min.iters.check38, i1 true, i1 %i.ca
  br i1 %brmerge, label %scalar.ph37.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %bb.d
  %i.cb = load i16, ptr %7, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert41 = insertelement <8 x i16> poison, i16 %i.cb, i64 0
  %broadcast.splat42 = shufflevector <8 x i16> %broadcast.splatinsert41, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cc = sext <8 x i16> %broadcast.splat42 to <8 x i32>
  %i.cd = load i16, ptr %i.bp, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert43 = insertelement <8 x i16> poison, i16 %i.cd, i64 0
  %broadcast.splat44 = shufflevector <8 x i16> %broadcast.splatinsert43, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ce = sext <8 x i16> %broadcast.splat44 to <8 x i32>
  %i.cf = load i16, ptr %i.bq, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert45 = insertelement <8 x i16> poison, i16 %i.cf, i64 0
  %broadcast.splat46 = shufflevector <8 x i16> %broadcast.splatinsert45, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cg = sext <8 x i16> %broadcast.splat46 to <8 x i32>
  %i.ch = load i16, ptr %i.br, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert47 = insertelement <8 x i16> poison, i16 %i.ch, i64 0
  %broadcast.splat48 = shufflevector <8 x i16> %broadcast.splatinsert47, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ci = sext <8 x i16> %broadcast.splat48 to <8 x i32>
  %i.cj = load i16, ptr %i.bs, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert49 = insertelement <8 x i16> poison, i16 %i.cj, i64 0
  %broadcast.splat50 = shufflevector <8 x i16> %broadcast.splatinsert49, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ck = sext <8 x i16> %broadcast.splat50 to <8 x i32>
  %i.cl = load i16, ptr %i.bt, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert51 = insertelement <8 x i16> poison, i16 %i.cl, i64 0
  %broadcast.splat52 = shufflevector <8 x i16> %broadcast.splatinsert51, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cm = sext <8 x i16> %broadcast.splat52 to <8 x i32>
  %i.cn = load i16, ptr %i.bu, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert53 = insertelement <8 x i16> poison, i16 %i.cn, i64 0
  %broadcast.splat54 = shufflevector <8 x i16> %broadcast.splatinsert53, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.co = sext <8 x i16> %broadcast.splat54 to <8 x i32>
  %i.cp = load i16, ptr %i.bv, align 2, !tbaa !19, !alias.scope !360
  %broadcast.splatinsert55 = insertelement <8 x i16> poison, i16 %i.cp, i64 0
  %broadcast.splat56 = shufflevector <8 x i16> %broadcast.splatinsert55, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.cq = sext <8 x i16> %broadcast.splat56 to <8 x i32>
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph39
  %index58 = phi i64 [ 0, %vector.ph39 ], [ %index.next68, %vector.body57 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0103.i, i64 %index58 ; 2 uses
  %wide.load59 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !11, !alias.scope !363, !noalias !360
  %i.cs = zext <8 x i8> %wide.load59 to <8 x i16>
  %i.ct = getelementptr i8, ptr %.1.i, i64 %index58 ; 8 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -192
  %wide.load60 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !11
  %i.cv = zext <8 x i8> %wide.load60 to <8 x i32>
  %i.cw = mul nsw <8 x i32> %i.cv, %i.cc
  %i.cx = getelementptr i8, ptr %i.ct, i64 -128
  %wide.load61 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !11
  %i.cy = zext <8 x i8> %wide.load61 to <8 x i32>
  %i.cz = mul nsw <8 x i32> %i.cy, %i.ce
  %i.da = getelementptr i8, ptr %i.ct, i64 -64
  %wide.load62 = load <8 x i8>, ptr %i.da, align 1, !tbaa !11
  %i.db = zext <8 x i8> %wide.load62 to <8 x i32>
  %i.dc = mul nsw <8 x i32> %i.db, %i.cg
  %wide.load63 = load <8 x i8>, ptr %i.ct, align 1, !tbaa !11
  %i.dd = zext <8 x i8> %wide.load63 to <8 x i32>
  %i.de = mul nsw <8 x i32> %i.dd, %i.ci
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %wide.load64 = load <8 x i8>, ptr %i.df, align 1, !tbaa !11
  %i.dg = zext <8 x i8> %wide.load64 to <8 x i32>
  %i.dh = mul nsw <8 x i32> %i.dg, %i.ck
  %i.di = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %wide.load65 = load <8 x i8>, ptr %i.di, align 1, !tbaa !11
  %i.dj = zext <8 x i8> %wide.load65 to <8 x i32>
  %i.dk = mul nsw <8 x i32> %i.dj, %i.cm
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 192
  %wide.load66 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !11
  %i.dm = zext <8 x i8> %wide.load66 to <8 x i32>
  %i.dn = mul nsw <8 x i32> %i.dm, %i.co
  %i.do = getelementptr inbounds nuw i8, ptr %i.ct, i64 256
  %wide.load67 = load <8 x i8>, ptr %i.do, align 1, !tbaa !11
  %i.dp = zext <8 x i8> %wide.load67 to <8 x i32>
  %i.dq = mul nsw <8 x i32> %i.dp, %i.cq
  %i.dr = add nsw <8 x i32> %i.cw, splat (i32 64)
  %i.ds = add nsw <8 x i32> %i.dr, %i.cz
  %i.dt = add nsw <8 x i32> %i.ds, %i.dc
  %i.du = add nsw <8 x i32> %i.dt, %i.de
  %i.dv = add nsw <8 x i32> %i.du, %i.dh
  %i.dw = add nsw <8 x i32> %i.dv, %i.dk
  %i.dx = add nsw <8 x i32> %i.dw, %i.dn
  %i.dy = add nsw <8 x i32> %i.dx, %i.dq
  %i.dz = ashr <8 x i32> %i.dy, splat (i32 7)     ; 3 uses
  %i.ea = icmp ugt <8 x i32> %i.dz, splat (i32 255)
  %i.eb = icmp sgt <8 x i32> %i.dz, splat (i32 -1)
  %i.ec = sext <8 x i1> %i.eb to <8 x i16>
  %i.ed = trunc nuw <8 x i32> %i.dz to <8 x i16>
  %i.ee = select <8 x i1> %i.ea, <8 x i16> %i.ec, <8 x i16> %i.ed
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = add nuw nsw <8 x i16> %i.cs, splat (i16 1)
  %i.eh = add nuw nsw <8 x i16> %i.eg, %i.ef
  %i.ei = lshr <8 x i16> %i.eh, splat (i16 1)
  %i.ej = trunc nuw <8 x i16> %i.ei to <8 x i8>
  store <8 x i8> %i.ej, ptr %i.cr, align 1, !tbaa !11, !alias.scope !363, !noalias !360
  %index.next68 = add nuw i64 %index58, 8         ; 2 uses
  %i.ek = icmp eq i64 %index.next68, %n.vec40
  br i1 %i.ek, label %middle.block69, label %vector.body57, !llvm.loop !365

middle.block69:                                   ; preds = %vector.body57
  br i1 %cmp.n70, label %.loopexit, label %scalar.ph37.preheader

scalar.ph37.preheader:                            ; preds = %bb.d, %middle.block69
  %indvars.iv10.ph = phi i64 [ %n.vec40, %middle.block69 ], [ 0, %bb.d ]
  br label %scalar.ph37

scalar.ph37:                                      ; preds = %scalar.ph37.preheader, %scalar.ph37
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %scalar.ph37 ], [ %indvars.iv10.ph, %scalar.ph37.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0103.i, i64 %indvars.iv10 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = zext i8 %i.em to i16
  %i.eo = load i16, ptr %7, align 2, !tbaa !19
  %i.ep = sext i16 %i.eo to i32
  %i.eq = getelementptr i8, ptr %.1.i, i64 %indvars.iv10 ; 8 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -192
  %i.es = load i8, ptr %i.er, align 1, !tbaa !11
  %i.et = zext i8 %i.es to i32
  %i.eu = mul nsw i32 %i.et, %i.ep
  %i.ev = load i16, ptr %i.bp, align 2, !tbaa !19
  %i.ew = sext i16 %i.ev to i32
  %i.ex = getelementptr i8, ptr %i.eq, i64 -128
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !11
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nsw i32 %i.ez, %i.ew
  %i.fb = load i16, ptr %i.bq, align 2, !tbaa !19
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr i8, ptr %i.eq, i64 -64
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !11
  %i.ff = zext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.ff, %i.fc
  %i.fh = load i16, ptr %i.br, align 2, !tbaa !19
  %i.fi = sext i16 %i.fh to i32
  %i.fj = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fi
  %i.fm = load i16, ptr %i.bs, align 2, !tbaa !19
  %i.fn = sext i16 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !11
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = load i16, ptr %i.bt, align 2, !tbaa !19
  %i.ft = sext i16 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !11
  %i.fw = zext i8 %i.fv to i32
  %i.fx = mul nsw i32 %i.fw, %i.ft
  %i.fy = load i16, ptr %i.bu, align 2, !tbaa !19
  %i.fz = sext i16 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eq, i64 192
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !11
end_hunk_1
