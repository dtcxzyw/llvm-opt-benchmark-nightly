Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_12bpp?download=true
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_vp9_subpel_filters = external hidden constant [3 x [16 x [8 x i16]]], align 16

; Function Attrs: cold nounwind optsize uwtable
define void @ff_vp9dsp_init_12(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @ff_vp9dsp_intrapred_init_12(ptr noundef %0) #12
  tail call fastcc void @vp9dsp_itxfm_init(ptr noundef %0) #12
  tail call fastcc void @vp9dsp_loopfilter_init(ptr noundef %0) #12
  tail call fastcc void @ff_vp9dsp_mc_init_12(ptr noundef %0) #12
  tail call fastcc void @ff_vp9dsp_scaled_mc_init_12(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @ff_vp9dsp_intrapred_init_12(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @ff_vp9dsp_intrapred_init_10(ptr noundef %0) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @tm_4x4_c, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @dc_128_4x4_c, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @dc_127_4x4_c, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @dc_129_4x4_c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @tm_8x8_c, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr @dc_128_8x8_c, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr @dc_127_8x8_c, ptr %i.g, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr @dc_129_8x8_c, ptr %i.h, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr @tm_16x16_c, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr @dc_128_16x16_c, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr @dc_127_16x16_c, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr @dc_129_16x16_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr @tm_32x32_c, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr @dc_128_32x32_c, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr @dc_127_32x32_c, ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr @dc_129_32x32_c, ptr %i.p, align 8, !tbaa !9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @vp9dsp_itxfm_init(ptr nofree noundef writeonly captures(none) initializes((480, 640)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr @idct_idct_4x4_add_c, ptr %i.a, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr @iadst_idct_4x4_add_c, ptr %1, align 8, !tbaa !9
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr @idct_iadst_4x4_add_c, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr @iadst_iadst_4x4_add_c, ptr %3, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr @idct_idct_8x8_add_c, ptr %i.b, align 8, !tbaa !9
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr @iadst_idct_8x8_add_c, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr @idct_iadst_8x8_add_c, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr @iadst_iadst_8x8_add_c, ptr %6, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @idct_idct_16x16_add_c, ptr %i.c, align 8, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @iadst_idct_16x16_add_c, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @idct_iadst_16x16_add_c, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr @iadst_iadst_16x16_add_c, ptr %9, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 576
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr @idct_idct_32x32_add_c, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr @idct_idct_32x32_add_c, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr @idct_idct_32x32_add_c, ptr %12, align 8, !tbaa !9
  store ptr @idct_idct_32x32_add_c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 632
  store ptr @iwht_iwht_4x4_add_c, ptr %13, align 8, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr @iwht_iwht_4x4_add_c, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr @iwht_iwht_4x4_add_c, ptr %15, align 8, !tbaa !9
  store ptr @iwht_iwht_4x4_add_c, ptr %i.e, align 8, !tbaa !9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @vp9dsp_loopfilter_init(ptr nofree noundef writeonly captures(none) initializes((640, 768)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr @loop_filter_h_4_8_c, ptr %i.a, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr @loop_filter_v_4_8_c, ptr %1, align 8, !tbaa !9
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr @loop_filter_h_8_8_c, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr @loop_filter_v_8_8_c, ptr %3, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr @loop_filter_h_16_8_c, ptr %i.b, align 8, !tbaa !9
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr @loop_filter_v_16_8_c, ptr %4, align 8, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr @loop_filter_h_16_16_c, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr @loop_filter_v_16_16_c, ptr %6, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr @loop_filter_h_44_16_c, ptr %i.c, align 8, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr @loop_filter_v_44_16_c, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr @loop_filter_h_48_16_c, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr @loop_filter_v_48_16_c, ptr %9, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr @loop_filter_h_84_16_c, ptr %i.d, align 8, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr @loop_filter_v_84_16_c, ptr %10, align 8, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr @loop_filter_h_88_16_c, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr @loop_filter_v_88_16_c, ptr %12, align 8, !tbaa !9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @ff_vp9dsp_mc_init_12(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @ff_vp9dsp_mc_init_10(ptr noundef %0) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 792
  store ptr @put_8tap_smooth_64hv_c, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr @put_8tap_regular_64hv_c, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr @put_8tap_sharp_64hv_c, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @put_8tap_smooth_32hv_c, ptr %i.h, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store ptr @put_8tap_regular_32hv_c, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr @put_8tap_sharp_32hv_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1304
  store ptr @put_8tap_smooth_16hv_c, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1368
  store ptr @put_8tap_regular_16hv_c, ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1432
  store ptr @put_8tap_sharp_16hv_c, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1560
  store ptr @put_8tap_smooth_8hv_c, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr @put_8tap_regular_8hv_c, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store ptr @put_8tap_sharp_8hv_c, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store ptr @put_8tap_smooth_4hv_c, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store ptr @put_8tap_regular_4hv_c, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1944
  store ptr @put_8tap_sharp_4hv_c, ptr %i.ad, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr @put_8tap_smooth_64v_c, ptr %i.ae, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr @put_8tap_regular_64v_c, ptr %i.af, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr @put_8tap_sharp_64v_c, ptr %i.ag, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr @put_8tap_smooth_32v_c, ptr %i.ah, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr @put_8tap_regular_32v_c, ptr %i.ai, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr @put_8tap_sharp_32v_c, ptr %i.aj, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr @put_8tap_smooth_16v_c, ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr @put_8tap_regular_16v_c, ptr %i.al, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store ptr @put_8tap_sharp_16v_c, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store ptr @put_8tap_smooth_8v_c, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr @put_8tap_regular_8v_c, ptr %i.ao, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store ptr @put_8tap_sharp_8v_c, ptr %i.ap, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store ptr @put_8tap_smooth_4v_c, ptr %i.aq, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store ptr @put_8tap_regular_4v_c, ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store ptr @put_8tap_sharp_4v_c, ptr %i.as, align 8, !tbaa !9
  store ptr @put_8tap_smooth_64h_c, ptr %i.a, align 8, !tbaa !9
  store ptr @put_8tap_regular_64h_c, ptr %i.c, align 8, !tbaa !9
  store ptr @put_8tap_sharp_64h_c, ptr %i.e, align 8, !tbaa !9
  store ptr @put_8tap_smooth_32h_c, ptr %i.g, align 8, !tbaa !9
  store ptr @put_8tap_regular_32h_c, ptr %i.i, align 8, !tbaa !9
  store ptr @put_8tap_sharp_32h_c, ptr %i.k, align 8, !tbaa !9
  store ptr @put_8tap_smooth_16h_c, ptr %i.m, align 8, !tbaa !9
  store ptr @put_8tap_regular_16h_c, ptr %i.o, align 8, !tbaa !9
  store ptr @put_8tap_sharp_16h_c, ptr %i.q, align 8, !tbaa !9
  store ptr @put_8tap_smooth_8h_c, ptr %i.s, align 8, !tbaa !9
  store ptr @put_8tap_regular_8h_c, ptr %i.u, align 8, !tbaa !9
  store ptr @put_8tap_sharp_8h_c, ptr %i.w, align 8, !tbaa !9
  store ptr @put_8tap_smooth_4h_c, ptr %i.y, align 8, !tbaa !9
  store ptr @put_8tap_regular_4h_c, ptr %i.aa, align 8, !tbaa !9
  store ptr @put_8tap_sharp_4h_c, ptr %i.ac, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr @avg_8tap_smooth_64hv_c, ptr %i.au, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr @avg_8tap_regular_64hv_c, ptr %i.aw, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr @avg_8tap_sharp_64hv_c, ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr @avg_8tap_smooth_32hv_c, ptr %i.ba, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr @avg_8tap_regular_32hv_c, ptr %i.bc, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store ptr @avg_8tap_sharp_32hv_c, ptr %i.be, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store ptr @avg_8tap_smooth_16hv_c, ptr %i.bg, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store ptr @avg_8tap_regular_16hv_c, ptr %i.bi, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1464
  store ptr @avg_8tap_sharp_16hv_c, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1592
  store ptr @avg_8tap_smooth_8hv_c, ptr %i.bm, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store ptr @avg_8tap_regular_8hv_c, ptr %i.bo, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1720
  store ptr @avg_8tap_sharp_8hv_c, ptr %i.bq, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1848
  store ptr @avg_8tap_smooth_4hv_c, ptr %i.bs, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1912
  store ptr @avg_8tap_regular_4hv_c, ptr %i.bu, align 8, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1968
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1976
  store ptr @avg_8tap_sharp_4hv_c, ptr %i.bw, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 808
  store ptr @avg_8tap_smooth_64v_c, ptr %i.bx, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr @avg_8tap_regular_64v_c, ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr @avg_8tap_sharp_64v_c, ptr %i.bz, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr @avg_8tap_smooth_32v_c, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store ptr @avg_8tap_regular_32v_c, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store ptr @avg_8tap_sharp_32v_c, ptr %i.cc, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1320
  store ptr @avg_8tap_smooth_16v_c, ptr %i.cd, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store ptr @avg_8tap_regular_16v_c, ptr %i.ce, align 8, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1448
  store ptr @avg_8tap_sharp_16v_c, ptr %i.cf, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1576
  store ptr @avg_8tap_smooth_8v_c, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1640
  store ptr @avg_8tap_regular_8v_c, ptr %i.ch, align 8, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1704
  store ptr @avg_8tap_sharp_8v_c, ptr %i.ci, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store ptr @avg_8tap_smooth_4v_c, ptr %i.cj, align 8, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store ptr @avg_8tap_regular_4v_c, ptr %i.ck, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1960
  store ptr @avg_8tap_sharp_4v_c, ptr %i.cl, align 8, !tbaa !9
  store ptr @avg_8tap_smooth_64h_c, ptr %i.at, align 8, !tbaa !9
  store ptr @avg_8tap_regular_64h_c, ptr %i.av, align 8, !tbaa !9
  store ptr @avg_8tap_sharp_64h_c, ptr %i.ax, align 8, !tbaa !9
  store ptr @avg_8tap_smooth_32h_c, ptr %i.az, align 8, !tbaa !9
  store ptr @avg_8tap_regular_32h_c, ptr %i.bb, align 8, !tbaa !9
  store ptr @avg_8tap_sharp_32h_c, ptr %i.bd, align 8, !tbaa !9
  store ptr @avg_8tap_smooth_16h_c, ptr %i.bf, align 8, !tbaa !9
  store ptr @avg_8tap_regular_16h_c, ptr %i.bh, align 8, !tbaa !9
  store ptr @avg_8tap_sharp_16h_c, ptr %i.bj, align 8, !tbaa !9
  store ptr @avg_8tap_smooth_8h_c, ptr %i.bl, align 8, !tbaa !9
  store ptr @avg_8tap_regular_8h_c, ptr %i.bn, align 8, !tbaa !9
  store ptr @avg_8tap_sharp_8h_c, ptr %i.bp, align 8, !tbaa !9
  store ptr @avg_8tap_smooth_4h_c, ptr %i.br, align 8, !tbaa !9
  store ptr @avg_8tap_regular_4h_c, ptr %i.bt, align 8, !tbaa !9
  store ptr @avg_8tap_sharp_4h_c, ptr %i.bv, align 8, !tbaa !9
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc void @ff_vp9dsp_scaled_mc_init_12(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @ff_vp9dsp_scaled_mc_init_10(ptr noundef %0) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2048
  store ptr @put_scaled_smooth_64_c, ptr %i.a, align 8, !tbaa !9
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store ptr @put_scaled_regular_64_c, ptr %1, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2080
  store ptr @put_scaled_sharp_64_c, ptr %i.b, align 8, !tbaa !9
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store ptr @avg_scaled_smooth_64_c, ptr %2, align 8, !tbaa !9
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2072
  store ptr @avg_scaled_regular_64_c, ptr %3, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2088
  store ptr @avg_scaled_sharp_64_c, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2112
  store ptr @put_scaled_smooth_32_c, ptr %i.d, align 8, !tbaa !9
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2128
  store ptr @put_scaled_regular_32_c, ptr %4, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr @put_scaled_sharp_32_c, ptr %i.e, align 8, !tbaa !9
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store ptr @avg_scaled_smooth_32_c, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2136
  store ptr @avg_scaled_regular_32_c, ptr %6, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2152
  store ptr @avg_scaled_sharp_32_c, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store ptr @put_scaled_smooth_16_c, ptr %i.g, align 8, !tbaa !9
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 2192
  store ptr @put_scaled_regular_16_c, ptr %7, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2208
  store ptr @put_scaled_sharp_16_c, ptr %i.h, align 8, !tbaa !9
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store ptr @avg_scaled_smooth_16_c, ptr %8, align 8, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr @avg_scaled_regular_16_c, ptr %9, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2216
  store ptr @avg_scaled_sharp_16_c, ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store ptr @put_scaled_smooth_8_c, ptr %i.j, align 8, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store ptr @put_scaled_regular_8_c, ptr %10, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2272
  store ptr @put_scaled_sharp_8_c, ptr %i.k, align 8, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store ptr @avg_scaled_smooth_8_c, ptr %11, align 8, !tbaa !9
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 2264
  store ptr @avg_scaled_regular_8_c, ptr %12, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2280
  store ptr @avg_scaled_sharp_8_c, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2304
  store ptr @put_scaled_smooth_4_c, ptr %i.m, align 8, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store ptr @put_scaled_regular_4_c, ptr %13, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2336
  store ptr @put_scaled_sharp_4_c, ptr %i.n, align 8, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 2312
  store ptr @avg_scaled_smooth_4_c, ptr %14, align 8, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 2328
  store ptr @avg_scaled_regular_4_c, ptr %15, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2344
  store ptr @avg_scaled_sharp_4_c, ptr %i.o, align 8, !tbaa !9
  ret void
}

declare void @ff_vp9dsp_intrapred_init_10(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tm_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !11
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = lshr i64 %1, 1                           ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !11
  %i.j = zext i16 %i.i to i32
  %i.k = sub nsw i32 %i.j, %i.c                   ; 4 uses
  %i.l = load i16, ptr %3, align 2, !tbaa !11
  %i.m = zext i16 %i.l to i32
  %i.n = add nsw i32 %i.k, %i.m
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.o, i32 4095)
  %i.q = trunc nuw nsw i32 %i.p to i16
  store i16 %i.q, ptr %0, align 2, !tbaa !11
  %i.r = load i16, ptr %i.e, align 2, !tbaa !11
  %i.s = zext i16 %i.r to i32
  %i.t = add nsw i32 %i.k, %i.s
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 4095)
  %i.w = trunc nuw nsw i32 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !11
  %i.y = load i16, ptr %i.f, align 2, !tbaa !11
  %i.z = zext i16 %i.y to i32
  %i.aa = add nsw i32 %i.k, %i.z
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 4095)
  %i.ad = trunc nuw nsw i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !11
  %i.af = load i16, ptr %i.g, align 2, !tbaa !11
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nsw i32 %i.k, %i.ag
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.ai, i32 4095)
  %i.ak = trunc nuw nsw i32 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !11
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !11
  %i.ap = zext i16 %i.ao to i32
  %i.aq = sub nsw i32 %i.ap, %i.c                 ; 4 uses
  %i.ar = load i16, ptr %3, align 2, !tbaa !11
  %i.as = zext i16 %i.ar to i32
  %i.at = add nsw i32 %i.aq, %i.as
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 4095)
  %i.aw = trunc nuw nsw i32 %i.av to i16
  store i16 %i.aw, ptr %i.am, align 2, !tbaa !11
  %i.ax = load i16, ptr %i.e, align 2, !tbaa !11
  %i.ay = zext i16 %i.ax to i32
  %i.az = add nsw i32 %i.aq, %i.ay
  %i.ba = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bb = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 4095)
  %i.bc = trunc nuw nsw i32 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !11
  %i.be = load i16, ptr %i.f, align 2, !tbaa !11
  %i.bf = zext i16 %i.be to i32
  %i.bg = add nsw i32 %i.aq, %i.bf
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 4095)
  %i.bj = trunc nuw nsw i32 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !11
  %i.bl = load i16, ptr %i.g, align 2, !tbaa !11
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.aq, %i.bm
  %i.bo = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %i.bp = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 4095)
  %i.bq = trunc nuw nsw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !11
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.d ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !11
  %i.bv = zext i16 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.c                 ; 4 uses
  %i.bx = load i16, ptr %3, align 2, !tbaa !11
  %i.by = zext i16 %i.bx to i32
  %i.bz = add nsw i32 %i.bw, %i.by
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 4095)
  %i.cc = trunc nuw nsw i32 %i.cb to i16
  store i16 %i.cc, ptr %i.bs, align 2, !tbaa !11
  %i.cd = load i16, ptr %i.e, align 2, !tbaa !11
  %i.ce = zext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.bw, %i.ce
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 0)
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 4095)
  %i.ci = trunc nuw nsw i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !11
  %i.ck = load i16, ptr %i.f, align 2, !tbaa !11
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.bw, %i.cl
  %i.cn = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 4095)
  %i.cp = trunc nuw nsw i32 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !11
  %i.cr = load i16, ptr %i.g, align 2, !tbaa !11
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nsw i32 %i.bw, %i.cs
  %i.cu = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 0)
  %i.cv = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 4095)
  %i.cw = trunc nuw nsw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !11
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.d ; 4 uses
  %i.cz = load i16, ptr %2, align 2, !tbaa !11
  %i.da = zext i16 %i.cz to i32
  %i.db = sub nsw i32 %i.da, %i.c                 ; 4 uses
  %i.dc = load i16, ptr %3, align 2, !tbaa !11
  %i.dd = zext i16 %i.dc to i32
  %i.de = add nsw i32 %i.db, %i.dd
  %i.df = tail call i32 @llvm.smax.i32(i32 %i.de, i32 0)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %i.df, i32 4095)
  %i.dh = trunc nuw nsw i32 %i.dg to i16
  store i16 %i.dh, ptr %i.cy, align 2, !tbaa !11
  %i.di = load i16, ptr %i.e, align 2, !tbaa !11
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nsw i32 %i.db, %i.dj
  %i.dl = tail call i32 @llvm.smax.i32(i32 %i.dk, i32 0)
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 4095)
  %i.dn = trunc nuw nsw i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !11
  %i.dp = load i16, ptr %i.f, align 2, !tbaa !11
  %i.dq = zext i16 %i.dp to i32
  %i.dr = add nsw i32 %i.db, %i.dq
  %i.ds = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0)
  %i.dt = tail call i32 @llvm.umin.i32(i32 %i.ds, i32 4095)
  %i.du = trunc nuw nsw i32 %i.dt to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !11
  %i.dw = load i16, ptr %i.g, align 2, !tbaa !11
  %i.dx = zext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.db, %i.dx
  %i.dz = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 0)
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 4095)
  %i.eb = trunc nuw nsw i32 %i.ea to i16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 6
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @dc_128_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  store i64 576469548530665472, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a
  store i64 576469548530665472, ptr %i.b, align 8, !tbaa !13
  %i.c = and i64 %1, -2
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  store i64 576469548530665472, ptr %i.d, align 8, !tbaa !13
  %.idx = mul nuw nsw i64 %i.a, 6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  store i64 576469548530665472, ptr %i.e, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @dc_127_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  store i64 576188069258921983, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a
  store i64 576188069258921983, ptr %i.b, align 8, !tbaa !13
  %i.c = and i64 %1, -2
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.c
  store i64 576188069258921983, ptr %i.d, align 8, !tbaa !13
  %.idx = mul nuw nsw i64 %i.a, 6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  store i64 576188069258921983, ptr %i.e, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @dc_129_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  store i64 576751027802408961, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a
end_hunk_0
