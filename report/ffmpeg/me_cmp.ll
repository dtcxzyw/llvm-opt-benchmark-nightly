Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/me_cmp?download=true
inline.NumInlined: 20
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8, i8, i16 }

@ff_set_cmp.cmp_func_list = internal unnamed_addr constant [16 x %struct.anon] [%struct.anon { i8 1, i8 0, i16 8 }, %struct.anon { i8 1, i8 0, i16 56 }, %struct.anon { i8 1, i8 0, i16 104 }, %struct.anon { i8 1, i8 1, i16 152 }, %struct.anon { i8 1, i8 1, i16 200 }, %struct.anon { i8 1, i8 1, i16 248 }, %struct.anon { i8 1, i8 1, i16 296 }, %struct.anon zeroinitializer, %struct.anon { i8 1, i8 0, i16 344 }, %struct.anon { i8 1, i8 0, i16 392 }, %struct.anon { i8 1, i8 0, i16 440 }, %struct.anon { i8 1, i8 0, i16 488 }, %struct.anon { i8 1, i8 0, i16 536 }, %struct.anon { i8 1, i8 1, i16 584 }, %struct.anon zeroinitializer, %struct.anon { i8 1, i8 0, i16 744 }], align 16
@.str = private unnamed_addr constant [32 x i8] c"invalid cmp function selection\0A\00", align 1
@ff_square_tab = external hidden local_unnamed_addr constant [512 x i32], align 16

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -22, 1) i32 @ff_set_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 255                          ; 4 uses
  %i.b = icmp eq i32 %i.a, 7
  br i1 %i.b, label %vector.body, label %bb.b

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  store <2 x ptr> <ptr @zero_cmp, ptr @zero_cmp>, ptr %i.c, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.d = icmp eq i64 %index.next, 6
  br i1 %i.d, label %.loopexit, label %vector.body, !llvm.loop !11

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %i.a, 15
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.a to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @ff_set_cmp.cmp_func_list, i64 %i.f
  %i.h = icmp eq i32 %i.a, 14
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 1, %i.f
  %i.j = and i64 %i.i, 57223
  %.not22.not = icmp eq i64 %i.j, 0
  br i1 %.not22.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str) #11
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !15
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.p, ptr %i.q, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !18

.loopexit:                                        ; preds = %bb.h, %vector.body, %bb.f
  %.019 = phi i32 [ 0, %vector.body ], [ -22, %bb.f ], [ 0, %bb.h ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
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
  store ptr @sum_abs_dctelem_c, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  store <4 x ptr> <ptr @pix_abs16_c, ptr @pix_abs16_x2_c, ptr @pix_abs16_y2_c, ptr @pix_abs16_xy2_c>, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  store <4 x ptr> <ptr @pix_abs8_c, ptr @pix_abs8_x2_c, ptr @pix_abs8_y2_c, ptr @pix_abs8_xy2_c>, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @hadamard8_diff16_c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @hadamard8_diff8x8_c, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x ptr> <ptr @hadamard8_intra16_c, ptr @hadamard8_intra8x8_c, ptr @dct_sad16_c, ptr @dct_sad8x8_c>, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @dct_max16_c, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @dct_max8x8_c, ptr %i.h, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @pix_abs16_c, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @pix_abs8_c, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @sse16_c, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @sse8_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @sse4_c, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @quant_psnr16_c, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @quant_psnr8x8_c, ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @rd16_c, ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @rd8x8_c, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @bit16_c, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @bit8x8_c, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @vsad16_c, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr @vsad8_c, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <4 x ptr> <ptr @vsad_intra16_c, ptr @vsad_intra8_c, ptr @vsse16_c, ptr @vsse8_c>, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <4 x ptr> <ptr @vsse_intra16_c, ptr @vsse_intra8_c, ptr @nsse16_c, ptr @nsse8_c>, ptr %i.w, align 8, !tbaa !9
  tail call void @ff_dsputil_init_dwt(ptr noundef %0) #11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr @pix_median_abs16_c, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr @pix_median_abs8_c, ptr %i.y, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @sum_abs_dctelem_c(ptr nofree noundef readonly captures(none) %0) #5 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.load = load <4 x i16>, ptr %0, align 2, !tbaa !21
  %wide.load15 = load <4 x i16>, ptr %i.a, align 2, !tbaa !21
  %i.b = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load, i1 false)
  %i.c = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15, i1 false)
  %i.d = zext <4 x i16> %i.b to <4 x i32>
  %i.e = zext <4 x i16> %i.c to <4 x i32>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.f, align 2, !tbaa !21
  %wide.load15.1 = load <4 x i16>, ptr %i.g, align 2, !tbaa !21
  %i.h = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.1, i1 false)
  %i.i = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.1, i1 false)
  %i.j = zext <4 x i16> %i.h to <4 x i32>
  %i.k = zext <4 x i16> %i.i to <4 x i32>
  %i.l = add nuw nsw <4 x i32> %i.d, %i.j
  %i.m = add nuw nsw <4 x i32> %i.e, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.n, align 2, !tbaa !21
  %wide.load15.2 = load <4 x i16>, ptr %i.o, align 2, !tbaa !21
  %i.p = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.2, i1 false)
  %i.q = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.2, i1 false)
  %i.r = zext <4 x i16> %i.p to <4 x i32>
  %i.s = zext <4 x i16> %i.q to <4 x i32>
  %i.t = add nuw nsw <4 x i32> %i.l, %i.r
  %i.u = add nuw nsw <4 x i32> %i.m, %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.v, align 2, !tbaa !21
  %wide.load15.3 = load <4 x i16>, ptr %i.w, align 2, !tbaa !21
  %i.x = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.3, i1 false)
  %i.y = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.3, i1 false)
  %i.z = zext <4 x i16> %i.x to <4 x i32>
  %i.aa = zext <4 x i16> %i.y to <4 x i32>
  %i.ab = add nuw nsw <4 x i32> %i.t, %i.z
  %i.ac = add nuw nsw <4 x i32> %i.u, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.load.4 = load <4 x i16>, ptr %i.ad, align 2, !tbaa !21
  %wide.load15.4 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !21
  %i.af = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.4, i1 false)
  %i.ag = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.4, i1 false)
  %i.ah = zext <4 x i16> %i.af to <4 x i32>
  %i.ai = zext <4 x i16> %i.ag to <4 x i32>
  %i.aj = add nuw nsw <4 x i32> %i.ab, %i.ah
  %i.ak = add nuw nsw <4 x i32> %i.ac, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %wide.load.5 = load <4 x i16>, ptr %i.al, align 2, !tbaa !21
  %wide.load15.5 = load <4 x i16>, ptr %i.am, align 2, !tbaa !21
  %i.an = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.5, i1 false)
  %i.ao = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.5, i1 false)
  %i.ap = zext <4 x i16> %i.an to <4 x i32>
  %i.aq = zext <4 x i16> %i.ao to <4 x i32>
  %i.ar = add nuw nsw <4 x i32> %i.aj, %i.ap
  %i.as = add nuw nsw <4 x i32> %i.ak, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.load.6 = load <4 x i16>, ptr %i.at, align 2, !tbaa !21
  %wide.load15.6 = load <4 x i16>, ptr %i.au, align 2, !tbaa !21
  %i.av = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load.6, i1 false)
  %i.aw = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load15.6, i1 false)
  %i.ax = zext <4 x i16> %i.av to <4 x i32>
  %i.ay = zext <4 x i16> %i.aw to <4 x i32>
  %i.az = add nuw nsw <4 x i32> %i.ar, %i.ax
  %i.ba = add nuw nsw <4 x i32> %i.as, %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %wide.load.7 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !21
  %wide.load15.7 = load <4 x i16>, ptr %i.bc, align 2, !tbaa !21
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
  %.061 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.05560 = phi i32 [ %op.rdx, %.lr.ph ], [ 0, %bb.a ]
  %.05659 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.05758 = phi ptr [ %i.k, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.b = load <16 x i8>, ptr %.05659, align 1, !tbaa !22
  %i.c = zext <16 x i8> %i.b to <16 x i16>
  %i.d = load <16 x i8>, ptr %.05758, align 1, !tbaa !22
  %i.e = zext <16 x i8> %i.d to <16 x i16>
  %i.f = sub nsw <16 x i16> %i.c, %i.e
  %i.g = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.f, i1 false)
  %i.h = zext <16 x i16> %i.g to <16 x i32>
  %i.i = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.h)
  %op.rdx = add i32 %i.i, %.05560                 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05659, i64 %3
  %i.k = getelementptr inbounds i8, ptr %.05758, i64 %3
  %i.l = add nuw nsw i32 %.061, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.055.lcssa = phi i32 [ 0, %bb.a ], [ %op.rdx, %.lr.ph ]
  ret i32 %.055.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_x2_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.077 = phi i32 [ %i.z, %.lr.ph ], [ 0, %bb.a ]
  %.07176 = phi i32 [ %op.rdx, %.lr.ph ], [ 0, %bb.a ]
  %.07275 = phi ptr [ %i.x, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.07374 = phi ptr [ %i.y, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.07374, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.07374, i64 16
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22
  %i.e = load <8 x i8>, ptr %.07374, align 1, !tbaa !22
  %i.f = load i8, ptr %.07374, align 1, !tbaa !22
  %i.g = load <8 x i8>, ptr %i.b, align 1, !tbaa !22
  %i.h = shufflevector <8 x i8> %i.e, <8 x i8> %i.g, <16 x i32> <i32 1, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.i = zext <16 x i8> %i.h to <16 x i16>        ; 2 uses
  %i.j = load <16 x i8>, ptr %.07275, align 1, !tbaa !22
  %i.k = zext <16 x i8> %i.j to <16 x i16>
  %i.l = add nuw nsw <16 x i16> %i.i, splat (i16 1)
  %i.m = shufflevector <16 x i16> %i.i, <16 x i16> poison, <16 x i32> <i32 poison, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison>
  %i.n = zext i8 %i.f to i16
  %i.o = insertelement <16 x i16> %i.m, i16 %i.n, i64 0
  %i.p = zext i8 %i.d to i16
  %i.q = insertelement <16 x i16> %i.o, i16 %i.p, i64 15
  %i.r = add nuw nsw <16 x i16> %i.l, %i.q
  %i.s = lshr <16 x i16> %i.r, splat (i16 1)
  %i.t = sub nsw <16 x i16> %i.k, %i.s
  %i.u = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.t, i1 false)
  %i.v = zext <16 x i16> %i.u to <16 x i32>
  %i.w = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.v)
  %op.rdx = add i32 %i.w, %.07176                 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.07275, i64 %3
  %i.y = getelementptr inbounds i8, ptr %.07374, i64 %3
  %i.z = add nuw nsw i32 %.077, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.071.lcssa = phi i32 [ 0, %bb.a ], [ %op.rdx, %.lr.ph ]
  ret i32 %.071.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_abs16_y2_c(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn83 = phi ptr [ %.0, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.07582 = phi i32 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %.07681 = phi i32 [ %op.rdx, %.lr.ph ], [ 0, %bb.a ]
  %.07780 = phi ptr [ %i.o, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0 = getelementptr i8, ptr %.pn83, i64 %3      ; 2 uses
  %i.b = load <16 x i8>, ptr %.07780, align 1, !tbaa !22
  %i.c = zext <16 x i8> %i.b to <16 x i16>
  %i.d = load <16 x i8>, ptr %.pn83, align 1, !tbaa !22
  %i.e = zext <16 x i8> %i.d to <16 x i16>
  %i.f = load <16 x i8>, ptr %.0, align 1, !tbaa !22
  %i.g = zext <16 x i8> %i.f to <16 x i16>
  %i.h = add nuw nsw <16 x i16> %i.e, splat (i16 1)
  %i.i = add nuw nsw <16 x i16> %i.h, %i.g
  %i.j = lshr <16 x i16> %i.i, splat (i16 1)
  %i.k = sub nsw <16 x i16> %i.c, %i.j
  %i.l = tail call <16 x i16> @llvm.abs.v16i16(<16 x i16> %i.k, i1 false)
  %i.m = zext <16 x i16> %i.l to <16 x i32>
  %i.n = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.m)
  %op.rdx = add i32 %i.n, %.07681                 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.07780, i64 %3
  %i.p = add nuw nsw i32 %.07582, 1               ; 2 uses
end_hunk_0
