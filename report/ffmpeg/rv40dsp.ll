Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rv40dsp?download=true
inline.NumInlined: 44
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H264QpelContext = type { [3 x [16 x ptr]], [3 x [16 x ptr]] }

@ff_rv40_bias = hidden local_unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 16, i32 32, i32 16], [4 x i32] [i32 32, i32 28, i32 32, i32 28], [4 x i32] [i32 0, i32 32, i32 16, i32 32], [4 x i32] [i32 32, i32 28, i32 32, i32 28]], align 16
@ff_crop_tab = external hidden local_unnamed_addr constant [2304 x i8], align 16
@rv40_dither_l = internal unnamed_addr constant [16 x i8] c"@P `0P@0P@P0` P@", align 16
@rv40_dither_r = internal unnamed_addr constant [16 x i8] c"@0` P00@@@P0 `0@", align 16

; Function Attrs: cold nounwind optsize uwtable
define void @ff_rv40dsp_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.H264QpelContext, align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  tail call void @ff_rv34dsp_init(ptr noundef %0) #8
  call void @ff_h264qpel_init(ptr noundef nonnull %1, i32 noundef 8) #8
  %i.a = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @put_rv40_qpel16_mc10_c, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @put_rv40_qpel16_mc30_c, ptr %i.f, align 8, !tbaa !9
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @put_rv40_qpel16_mc01_c, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @put_rv40_qpel16_mc11_c, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @put_rv40_qpel16_mc21_c, ptr %4, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @put_rv40_qpel16_mc31_c, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.i, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @put_rv40_qpel16_mc12_c, ptr %i.k, align 8, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @put_rv40_qpel16_mc22_c, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr @put_rv40_qpel16_mc32_c, ptr %6, align 8, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @put_rv40_qpel16_mc03_c, ptr %7, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @put_rv40_qpel16_mc13_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @put_rv40_qpel16_mc23_c, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @put_rv40_qpel16_mc33_c, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.p, ptr %i.q, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @avg_rv40_qpel16_mc10_c, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.t, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @avg_rv40_qpel16_mc30_c, ptr %i.v, align 8, !tbaa !9
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @avg_rv40_qpel16_mc01_c, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @avg_rv40_qpel16_mc11_c, ptr %9, align 8, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr @avg_rv40_qpel16_mc21_c, ptr %10, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @avg_rv40_qpel16_mc31_c, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.y, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr @avg_rv40_qpel16_mc12_c, ptr %i.aa, align 8, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @avg_rv40_qpel16_mc22_c, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @avg_rv40_qpel16_mc32_c, ptr %12, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr @avg_rv40_qpel16_mc03_c, ptr %13, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr @avg_rv40_qpel16_mc13_c, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr @avg_rv40_qpel16_mc23_c, ptr %i.ac, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr @avg_rv40_qpel16_mc33_c, ptr %i.ad, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @put_rv40_qpel8_mc10_c, ptr %i.ah, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @put_rv40_qpel8_mc30_c, ptr %i.al, align 8, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @put_rv40_qpel8_mc01_c, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr @put_rv40_qpel8_mc11_c, ptr %15, align 8, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @put_rv40_qpel8_mc21_c, ptr %16, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr @put_rv40_qpel8_mc31_c, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr @put_rv40_qpel8_mc12_c, ptr %i.aq, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr @put_rv40_qpel8_mc22_c, ptr %17, align 8, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @put_rv40_qpel8_mc32_c, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @put_rv40_qpel8_mc03_c, ptr %19, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @put_rv40_qpel8_mc13_c, ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr @put_rv40_qpel8_mc23_c, ptr %i.as, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr @put_rv40_qpel8_mc33_c, ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr @avg_rv40_qpel8_mc10_c, ptr %i.ax, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr @avg_rv40_qpel8_mc30_c, ptr %i.bb, align 8, !tbaa !9
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr @avg_rv40_qpel8_mc01_c, ptr %20, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr @avg_rv40_qpel8_mc11_c, ptr %21, align 8, !tbaa !9
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr @avg_rv40_qpel8_mc21_c, ptr %22, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr @avg_rv40_qpel8_mc31_c, ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr @avg_rv40_qpel8_mc12_c, ptr %i.bg, align 8, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr @avg_rv40_qpel8_mc22_c, ptr %23, align 8, !tbaa !9
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr @avg_rv40_qpel8_mc32_c, ptr %24, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @avg_rv40_qpel8_mc03_c, ptr %25, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @avg_rv40_qpel8_mc13_c, ptr %i.bh, align 8, !tbaa !9
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @avg_rv40_qpel8_mc23_c, ptr %26, align 8, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @avg_rv40_qpel8_mc33_c, ptr %27, align 8, !tbaa !9
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @put_rv40_chroma_mc8_c, ptr %28, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr @put_rv40_chroma_mc4_c, ptr %i.bi, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr @avg_rv40_chroma_mc8_c, ptr %29, align 8, !tbaa !9
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @avg_rv40_chroma_mc4_c, ptr %30, align 8, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @rv40_weight_func_rnd_16, ptr %31, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @rv40_weight_func_rnd_8, ptr %i.bj, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @rv40_weight_func_nornd_16, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @rv40_weight_func_nornd_8, ptr %i.bl, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @rv40_h_weak_loop_filter, ptr %i.bm, align 8, !tbaa !9
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @rv40_v_weak_loop_filter, ptr %32, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @rv40_h_strong_loop_filter, ptr %33, align 8, !tbaa !9
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @rv40_v_strong_loop_filter, ptr %34, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @rv40_h_loop_filter_strength, ptr %i.bn, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr @rv40_v_loop_filter_strength, ptr %i.bo, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ff_rv34dsp_init(ptr noundef) local_unnamed_addr #2

declare void @ff_h264qpel_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc10_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 9 uses
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef %0, ptr noundef readonly %1, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.d = shl nsw i32 %i.a, 3
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef %i.g, ptr noundef readonly %i.f, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %i.i, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc30_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 9 uses
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef %0, ptr noundef readonly %1, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.d = shl nsw i32 %i.a, 3
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef %i.g, ptr noundef readonly %i.f, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %i.i, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc01_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 9 uses
  tail call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %0, ptr noundef readonly %1, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.c, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.d = shl nsw i32 %i.a, 3
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  tail call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %i.g, ptr noundef readonly %i.f, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.h, ptr noundef nonnull readonly %i.i, i32 noundef %i.a, i32 noundef %i.a, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc11_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.neg = mul i64 %2, -2
  %i.c = getelementptr inbounds i8, ptr %1, i64 %.neg ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 9 uses
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.a, ptr noundef readonly %i.c, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.g = shl nsw i32 %i.d, 3
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.j, ptr noundef readonly %i.i, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %0, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %i.p, ptr noundef nonnull readonly %i.o, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc21_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.neg = mul i64 %2, -2
  %i.c = getelementptr inbounds i8, ptr %1, i64 %.neg ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 9 uses
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.a, ptr noundef readonly %i.c, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 20, i32 noundef 20, i32 noundef 5)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 20, i32 noundef 20, i32 noundef 5)
  %i.g = shl nsw i32 %i.d, 3
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.j, ptr noundef readonly %i.i, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 20, i32 noundef 20, i32 noundef 5)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 20, i32 noundef 20, i32 noundef 5)
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %0, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %i.p, ptr noundef nonnull readonly %i.o, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc31_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.neg = mul i64 %2, -2
  %i.c = getelementptr inbounds i8, ptr %1, i64 %.neg ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 9 uses
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.a, ptr noundef readonly %i.c, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.g = shl nsw i32 %i.d, 3
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.j, ptr noundef readonly %i.i, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 20, i32 noundef 52, i32 noundef 6)
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %0, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.h ; 2 uses
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %i.p, ptr noundef nonnull readonly %i.o, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i32 noundef %i.d, i32 noundef 16, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_rv40_qpel16_mc12_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = alloca [336 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.neg = mul i64 %2, -2
  %i.c = getelementptr inbounds i8, ptr %1, i64 %.neg ; 3 uses
  %i.d = trunc i64 %2 to i32                      ; 9 uses
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.a, ptr noundef readonly %i.c, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i32 noundef 16, i32 noundef %i.d, i32 noundef 8, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.g = shl nsw i32 %i.d, 3
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.j, ptr noundef readonly %i.i, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call fastcc void @put_rv40_qpel8_h_lowpass(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i32 noundef 16, i32 noundef %i.d, i32 noundef 13, i32 noundef 52, i32 noundef 20, i32 noundef 6)
  call fastcc void @put_rv40_qpel8_v_lowpass(ptr noundef %0, ptr noundef nonnull readonly %i.b, i32 noundef %i.d, i32 noundef 16, i32 noundef 20, i32 noundef 20, i32 noundef 5)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
