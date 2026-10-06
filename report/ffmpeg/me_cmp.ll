Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/me_cmp?download=true
inline.NumInlined: 20
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 28
begin_hunk_0_@zero_cmp
define internal noundef i32 @zero_cmp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 %4) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define void @ff_me_cmp_init(ptr noundef initializes((0, 792)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.a, i8 0, i64 768, i1 false)
  store ptr @sum_abs_dctelem_c, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store <4 x ptr> <ptr @pix_abs16_c, ptr @pix_abs16_x2_c, ptr @pix_abs16_y2_c, ptr @pix_abs16_xy2_c>, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x ptr> <ptr @pix_abs8_c, ptr @pix_abs8_x2_c, ptr @pix_abs8_y2_c, ptr @pix_abs8_xy2_c>, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @hadamard8_diff16_c, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @hadamard8_diff8x8_c, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x ptr> <ptr @hadamard8_intra16_c, ptr @hadamard8_intra8x8_c, ptr @dct_sad16_c, ptr @dct_sad8x8_c>, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @dct_max16_c, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @dct_max8x8_c, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @pix_abs16_c, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @pix_abs8_c, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @sse16_c, ptr %i.k, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @sse8_c, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @sse4_c, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @quant_psnr16_c, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @quant_psnr8x8_c, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @rd16_c, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @rd8x8_c, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @bit16_c, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @bit8x8_c, ptr %i.s, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @vsad16_c, ptr %i.t, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr @vsad8_c, ptr %i.u, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <4 x ptr> <ptr @vsad_intra16_c, ptr @vsad_intra8_c, ptr @vsse16_c, ptr @vsse8_c>, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <4 x ptr> <ptr @vsse_intra16_c, ptr @vsse_intra8_c, ptr @nsse16_c, ptr @nsse8_c>, ptr %i.w, align 8, !tbaa !11
  tail call void @ff_dsputil_init_dwt(ptr noundef %0) #12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr @pix_median_abs16_c, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr @pix_median_abs8_c, ptr %i.y, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @sum_abs_dctelem_c(ptr nofree noundef readonly captures(none) %0) #5 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.load = load <4 x i16>, ptr %0, align 2, !tbaa !14
  %wide.load15 = load <4 x i16>, ptr %i.a, align 2, !tbaa !14
  %i.b = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.c = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15, i1 false)
  %i.d = zext <4 x i16> %i.b to <4 x i32>
  %i.e = zext <4 x i16> %i.c to <4 x i32>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.f, align 2, !tbaa !14
  %wide.load15.1 = load <4 x i16>, ptr %i.g, align 2, !tbaa !14
  %i.h = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.1, i1 false)
  %i.i = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.1, i1 false)
  %i.j = zext <4 x i16> %i.h to <4 x i32>
  %i.k = zext <4 x i16> %i.i to <4 x i32>
  %i.l = add nuw nsw <4 x i32> %i.d, %i.j
  %i.m = add nuw nsw <4 x i32> %i.e, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.n, align 2, !tbaa !14
  %wide.load15.2 = load <4 x i16>, ptr %i.o, align 2, !tbaa !14
  %i.p = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.2, i1 false)
  %i.q = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.2, i1 false)
  %i.r = zext <4 x i16> %i.p to <4 x i32>
  %i.s = zext <4 x i16> %i.q to <4 x i32>
  %i.t = add nuw nsw <4 x i32> %i.l, %i.r
  %i.u = add nuw nsw <4 x i32> %i.m, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.v, align 2, !tbaa !14
  %wide.load15.3 = load <4 x i16>, ptr %i.w, align 2, !tbaa !14
  %i.x = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.3, i1 false)
  %i.y = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.3, i1 false)
  %i.z = zext <4 x i16> %i.x to <4 x i32>
  %i.aa = zext <4 x i16> %i.y to <4 x i32>
  %i.ab = add nuw nsw <4 x i32> %i.t, %i.z
  %i.ac = add nuw nsw <4 x i32> %i.u, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !14
  %wide.load15.4 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !14
  %i.af = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.4, i1 false)
  %i.ag = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.4, i1 false)
  %i.ah = zext <4 x i16> %i.af to <4 x i32>
  %i.ai = zext <4 x i16> %i.ag to <4 x i32>
  %i.aj = add nuw nsw <4 x i32> %i.ab, %i.ah
  %i.ak = add nuw nsw <4 x i32> %i.ac, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.al, align 2, !tbaa !14
  %wide.load15.5 = load <4 x i16>, ptr %i.am, align 2, !tbaa !14
  %i.an = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.5, i1 false)
  %i.ao = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.5, i1 false)
  %i.ap = zext <4 x i16> %i.an to <4 x i32>
  %i.aq = zext <4 x i16> %i.ao to <4 x i32>
  %i.ar = add nuw nsw <4 x i32> %i.aj, %i.ap
  %i.as = add nuw nsw <4 x i32> %i.ak, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.at, align 2, !tbaa !14
  %wide.load15.6 = load <4 x i16>, ptr %i.au, align 2, !tbaa !14
  %i.av = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.6, i1 false)
  %i.aw = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.6, i1 false)
  %i.ax = zext <4 x i16> %i.av to <4 x i32>
  %i.ay = zext <4 x i16> %i.aw to <4 x i32>
  %i.az = add nuw nsw <4 x i32> %i.ar, %i.ax
  %i.ba = add nuw nsw <4 x i32> %i.as, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !14
  %wide.load15.7 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !14
  %i.bd = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.7, i1 false)
  %i.be = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.7, i1 false)
  %i.bf = zext <4 x i16> %i.bd to <4 x i32>
  %i.bg = zext <4 x i16> %i.be to <4 x i32>
  %i.bh = add <4 x i32> %i.az, %i.bf
  %i.bi = add <4 x i32> %i.ba, %i.bg
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  ret i32 %i.bj
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.061 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %slprdx.acc = phi <16 x i32> [ %slprdx.acc62, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.05659 = phi ptr [ %i.i, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.05758 = phi ptr [ %i.j, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = load <16 x i8>, ptr %.05659, align 1, !tbaa !15
  %i.c = zext <16 x i8> %i.b to <16 x i16>
  %i.d = load <16 x i8>, ptr %.05758, align 1, !tbaa !15
  %i.e = zext <16 x i8> %i.d to <16 x i16>
  %i.f = sub nsw <16 x i16> %i.c, %i.e
  %i.g = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.f, i1 false)
  %i.h = zext <16 x i16> %i.g to <16 x i32>
  %slprdx.acc62 = add <16 x i32> %slprdx.acc, %i.h ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05659, i64 %3
  %i.j = getelementptr inbounds i8, ptr %.05758, i64 %3
  %i.k = add nuw nsw i32 %.061, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.l = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %slprdx.acc62)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel = phi i32 [ 0, %bb.a ], [ %i.l, %._crit_edge.loopexit ]
  ret i32 %slprdx.sel
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_x2_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.077 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.a ]
  %slprdx.acc = phi <16 x i32> [ %slprdx.acc78, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.07275 = phi ptr [ %i.t, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.07374 = phi ptr [ %i.u, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %.07374, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.07374, i64 16
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %6 = load <8 x i8>, ptr %.07374, align 1, !tbaa !15
  %i.d = load i8, ptr %.07374, align 1, !tbaa !15
  %7 = load <8 x i8>, ptr %5, align 1, !tbaa !15
  %i.e = shufflevector <8 x i8> %6, <8 x i8> %7, <16 x i32> <i32 1, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.f = zext <16 x i8> %i.e to <16 x i16>        ; 2 uses
  %i.g = load <16 x i8>, ptr %.07275, align 1, !tbaa !15
  %i.h = zext <16 x i8> %i.g to <16 x i16>
  %i.i = add nuw nsw <16 x i16> %i.f, splat (i16 1)
  %i.j = shufflevector <16 x i16> %i.f, <16 x i16> poison, <16 x i32> <i32 poison, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison>
  %i.k = zext i8 %i.d to i16
  %i.l = insertelement <16 x i16> %i.j, i16 %i.k, i64 0
  %i.m = zext i8 %i.c to i16
  %i.n = insertelement <16 x i16> %i.l, i16 %i.m, i64 15
  %i.o = add nuw nsw <16 x i16> %i.i, %i.n
  %i.p = lshr <16 x i16> %i.o, splat (i16 1)
  %i.q = sub nsw <16 x i16> %i.h, %i.p
  %i.r = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.q, i1 false)
  %i.s = zext <16 x i16> %i.r to <16 x i32>
  %slprdx.acc78 = add <16 x i32> %slprdx.acc, %i.s ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.07275, i64 %3
  %i.u = getelementptr inbounds i8, ptr %.07374, i64 %3
  %i.v = add nuw nsw i32 %.077, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !84

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.w = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %slprdx.acc78)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel = phi i32 [ 0, %bb.a ], [ %i.w, %._crit_edge.loopexit ]
  ret i32 %slprdx.sel
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_y2_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn83 = phi ptr [ %.0, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.07582 = phi i32 [ %i.o, %.lr.ph ], [ 0, %bb.a ]
  %slprdx.acc = phi <16 x i32> [ %slprdx.acc85, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.07780 = phi ptr [ %i.n, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn83, i64 %3      ; 2 uses
  %i.b = load <16 x i8>, ptr %.07780, align 1, !tbaa !15
  %i.c = zext <16 x i8> %i.b to <16 x i16>
  %i.d = load <16 x i8>, ptr %.pn83, align 1, !tbaa !15
  %i.e = zext <16 x i8> %i.d to <16 x i16>
  %i.f = load <16 x i8>, ptr %.0, align 1, !tbaa !15
  %i.g = zext <16 x i8> %i.f to <16 x i16>
  %i.h = add nuw nsw <16 x i16> %i.e, splat (i16 1)
  %i.i = add nuw nsw <16 x i16> %i.h, %i.g
  %i.j = lshr <16 x i16> %i.i, splat (i16 1)
  %i.k = sub nsw <16 x i16> %i.c, %i.j
  %i.l = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.k, i1 false)
  %i.m = zext <16 x i16> %i.l to <16 x i32>
  %slprdx.acc85 = add <16 x i32> %slprdx.acc, %i.m ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07780, i64 %3
  %i.o = add nuw nsw i32 %.07582, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %slprdx.acc85)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel = phi i32 [ 0, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  ret i32 %slprdx.sel
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_xy2_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn115 = phi ptr [ %.0, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %.0107114 = phi i32 [ %i.am, %.lr.ph ], [ 0, %bb.a ]
  %.0108113 = phi i32 [ %op.rdx, %.lr.ph ], [ 0, %bb.a ]
  %.0109112 = phi ptr [ %i.al, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn115, i64 %3     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %.pn115, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.pn115, i64 16
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %i.f = load <16 x i8>, ptr %i.b, align 1, !tbaa !15
  %i.g = zext <16 x i8> %i.f to <16 x i32>        ; 3 uses
  %i.h = load <16 x i8>, ptr %.0109112, align 1, !tbaa !15
  %i.i = zext <16 x i8> %i.h to <16 x i32>
  %i.j = load <8 x i8>, ptr %.0, align 1, !tbaa !15 ; 2 uses
  %i.k = load <8 x i8>, ptr %.pn115, align 1, !tbaa !15 ; 2 uses
  %i.l = shufflevector <8 x i8> %i.k, <8 x i8> %i.j, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.m = load <8 x i8>, ptr %i.c, align 1, !tbaa !15
  %i.n = shufflevector <8 x i8> %i.k, <8 x i8> %i.m, <16 x i32> <i32 1, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.o = zext <16 x i8> %i.n to <16 x i16>
  %i.p = shufflevector <8 x i8> %i.j, <8 x i8> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> %i.n, <16 x i32> <i32 0, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 poison>
  %i.r = insertelement <16 x i8> %i.q, i8 %i.e, i64 15
  %i.s = zext <16 x i8> %i.r to <16 x i16>
  %i.t = add nuw nsw <16 x i16> %i.o, splat (i16 2)
  %i.u = shufflevector <16 x i32> %i.g, <16 x i32> poison, <4 x i32> <i32 11, i32 12, i32 13, i32 14>
  %i.v = shufflevector <16 x i32> %i.g, <16 x i32> poison, <4 x i32> <i32 7, i32 8, i32 9, i32 10>
  %i.w = trunc nuw nsw <4 x i32> %i.u to <4 x i16>
  %i.x = zext <8 x i8> %i.l to <8 x i16>
  %i.y = shufflevector <4 x i16> %i.w, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <8 x i16> %i.y, <8 x i16> %i.x, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.aa = trunc nuw nsw <4 x i32> %i.v to <4 x i16>
  %i.ab = shufflevector <4 x i16> %i.aa, <4 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <16 x i16> %i.z, <16 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15>
  %i.ad = add nuw nsw <16 x i16> %i.t, %i.ac
  %i.ae = add <16 x i16> %i.ad, %i.s
  %i.af = zext <16 x i16> %i.ae to <16 x i32>
  %i.ag = add nuw nsw <16 x i32> %i.af, %i.g
  %i.ah = lshr <16 x i32> %i.ag, splat (i32 2)
  %i.ai = sub nsw <16 x i32> %i.i, %i.ah
  %i.aj = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ai, i1 true)
  %i.ak = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.aj)
  %op.rdx = add i32 %i.ak, %.0108113              ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.0109112, i64 %3
  %i.am = add nuw nsw i32 %.0107114, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0108.lcssa = phi i32 [ 0, %bb.a ], [ %op.rdx, %.lr.ph ]
  ret i32 %.0108.lcssa
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs8_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #6 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %4, 1
  %i.b = icmp eq i32 %4, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %4, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %slprdx.acc = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader.new ], [ %slprdx.acc38.1, %.lr.ph ]
  %.03235 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 2 uses
  %.03334 = phi ptr [ %2, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = load <8 x i8>, ptr %.03235, align 1, !tbaa !15
  %i.d = zext <8 x i8> %i.c to <8 x i16>
  %i.e = load <8 x i8>, ptr %.03334, align 1, !tbaa !15
  %i.f = zext <8 x i8> %i.e to <8 x i16>
  %i.g = sub nsw <8 x i16> %i.d, %i.f
  %i.h = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.g, i1 false)
  %i.i = zext <8 x i16> %i.h to <8 x i32>
  %slprdx.acc38 = add <8 x i32> %slprdx.acc, %i.i
  %i.j = getelementptr inbounds i8, ptr %.03235, i64 %3 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.03334, i64 %3 ; 2 uses
  %i.l = load <8 x i8>, ptr %i.j, align 1, !tbaa !15
  %i.m = zext <8 x i8> %i.l to <8 x i16>
  %i.n = load <8 x i8>, ptr %i.k, align 1, !tbaa !15
  %i.o = zext <8 x i8> %i.n to <8 x i16>
  %i.p = sub nsw <8 x i16> %i.m, %i.o
  %i.q = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.p, i1 false)
  %i.r = zext <8 x i16> %i.q to <8 x i32>
  %slprdx.acc38.1 = add <8 x i32> %slprdx.acc38, %i.r ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %3 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %3 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !87

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %slprdx.acc.epil.init = phi <8 x i32> [ zeroinitializer, %.lr.ph.preheader ], [ %slprdx.acc38.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03235.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.s, %._crit_edge.loopexit.unr-lcssa ]
  %.03334.epil.init = phi ptr [ %2, %.lr.ph.preheader ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.u = load <8 x i8>, ptr %.03235.epil.init, align 1, !tbaa !15
  %i.v = zext <8 x i8> %i.u to <8 x i16>
  %i.w = load <8 x i8>, ptr %.03334.epil.init, align 1, !tbaa !15
  %i.x = zext <8 x i8> %i.w to <8 x i16>
  %i.y = sub nsw <8 x i16> %i.v, %i.x
  %i.z = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.y, i1 false)
  %i.aa = zext <8 x i16> %i.z to <8 x i32>
  %slprdx.acc38.epil = add <8 x i32> %slprdx.acc.epil.init, %i.aa
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %slprdx.acc38.lcssa = phi <8 x i32> [ %slprdx.acc38.1, %._crit_edge.loopexit.unr-lcssa ], [ %slprdx.acc38.epil, %.lr.ph.epil.preheader ]
  %i.ab = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %slprdx.acc38.lcssa)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %slprdx.sel = phi i32 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  ret i32 %slprdx.sel
end_hunk_0
