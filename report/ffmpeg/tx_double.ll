Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_fft2048_ns_double_c:bb.a
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_2048_double, i32 noundef 256)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft4096_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft2048_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32768 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32768
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36864
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 36864
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 38912
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 38912
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40960
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40960
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 45056
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 45056
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_1024_double, i32 noundef 128)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 49152 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 49152
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 53248
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 53248
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 55296
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 55296
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 57344
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 57344
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 61440
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 61440
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_1024_double, i32 noundef 128)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_4096_double, i32 noundef 512)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft8192_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft4096_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65536
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 65536
  tail call void @ff_tx_fft2048_ns_double_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 98304
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 98304
  tail call void @ff_tx_fft2048_ns_double_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft16384_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65536
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 65536
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 98304
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 98304
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 131072
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 131072
  tail call void @ff_tx_fft4096_ns_double_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 196608
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 196608
  tail call void @ff_tx_fft4096_ns_double_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_16384_double, i32 noundef 2048)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32768_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 65536
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 65536
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 98304
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 98304
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 131072
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 131072
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 196608
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 196608
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_16384_double, i32 noundef 2048)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 262144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 262144
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 327680
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 327680
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 360448
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 360448
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 393216 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 393216
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 458752
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 458752
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 491520
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 491520
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32768_double, i32 noundef 4096)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft65536_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft32768_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 524288 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 524288
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 589824
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 589824
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 622592
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 622592
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 655360
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 655360
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 720896
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 720896
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_16384_double, i32 noundef 2048)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 786432 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 786432
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 851968
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 851968
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 884736
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 884736
  tail call void @ff_tx_fft2048_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_8192_double, i32 noundef 1024)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 917504
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 917504
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 983040
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 983040
  tail call void @ff_tx_fft4096_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_16384_double, i32 noundef 2048)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_65536_double, i32 noundef 8192)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft131072_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft65536_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1048576
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1048576
  tail call void @ff_tx_fft32768_ns_double_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1572864
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1572864
  tail call void @ff_tx_fft32768_ns_double_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_131072_double, i32 noundef 16384)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft3_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.f = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.i = fsub nsz <2 x double> %i.g, %i.h
  %i.j = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fadd nsz <2 x double> %i.g, %i.h         ; 2 uses
  %i.l = fadd nsz <2 x double> %i.f, %i.k
  store <2 x double> %i.l, ptr %1, align 8, !tbaa !24
  %i.m = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24
  %i.n = fmul nsz <2 x double> %i.j, %i.m         ; 2 uses
  %4 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.o = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul nsz <2 x double> %i.k, %i.o
  %i.q = fsub nsz <2 x double> %i.f, %i.p         ; 2 uses
  %i.r = fadd nsz <2 x double> %i.q, %i.n         ; 2 uses
  %i.s = fsub nsz <2 x double> %i.q, %i.n         ; 2 uses
  %i.t = shufflevector <2 x double> %i.r, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.t, ptr %i.d, align 8, !tbaa !24
  %i.u = shufflevector <2 x double> %i.s, <2 x double> %i.r, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.u, ptr %i.e, align 8, !tbaa !24
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_factor_init_double_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  tail call void @ff_tx_init_tabs_double(i32 noundef %4) #17
  %i.a = icmp eq i32 %4, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ff_tx_gen_pfa_input_map(ptr noundef %0, ptr noundef %3, i32 noundef 3, i32 noundef 5) #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %2, 2305843009213693952
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @ff_tx_gen_default_map(ptr noundef %0, ptr noundef %3) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @ff_tx_gen_pfa_input_map(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_tx_gen_default_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft5_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.a, 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = shl nuw nsw i64 %i.a, 6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %i.j = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 5 uses
  %i.k = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.m = fsub nsz <2 x double> %i.k, %i.l         ; 2 uses
  %i.n = fadd nsz <2 x double> %i.k, %i.l         ; 3 uses
  %i.o = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.q = fsub nsz <2 x double> %i.o, %i.p         ; 2 uses
  %i.r = fadd nsz <2 x double> %i.o, %i.p         ; 3 uses
  %i.s = fadd nsz <2 x double> %i.j, %i.n
  %i.t = fadd nsz <2 x double> %i.s, %i.r
  store <2 x double> %i.t, ptr %1, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.u = fneg nsz <2 x double> %i.r
  %i.v = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul nsz <2 x double> %i.v, %i.u
  %i.x = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.n, <2 x double> %i.w) ; 2 uses
  %6 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.z = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul nsz <2 x double> %i.q, %i.z
  %i.ab = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.m, <2 x double> %i.aa)
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = fsub nsz <2 x double> %i.y, %i.ad       ; 2 uses
  %i.af = fadd nsz <2 x double> %i.y, %i.ad       ; 2 uses
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ai = fadd nsz <2 x double> %i.j, %i.ah
  store <2 x double> %i.ai, ptr %i.f, align 8, !tbaa !24
  %i.aj = fneg nsz <2 x double> %i.n
  %i.ak = fmul nsz <2 x double> %i.v, %i.aj
  %i.al = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.r, <2 x double> %i.ak) ; 2 uses
  %i.am = fneg nsz <2 x double> %i.m
  %i.an = fmul nsz <2 x double> %i.z, %i.am
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.q, <2 x double> %i.an)
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = fadd nsz <2 x double> %i.al, %i.ap      ; 2 uses
  %i.ar = fsub nsz <2 x double> %i.al, %i.ap      ; 2 uses
  %i.as = shufflevector <2 x double> %i.aq, <2 x double> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  %i.au = fadd nsz <2 x double> %i.j, %i.at
  store <2 x double> %i.au, ptr %i.g, align 8, !tbaa !24
  %i.av = fadd nsz <2 x double> %i.j, %i.as
  store <2 x double> %i.av, ptr %i.h, align 8, !tbaa !24
  %i.aw = fadd nsz <2 x double> %i.j, %i.ag
  store <2 x double> %i.aw, ptr %i.i, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft7_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx163.i = mul nuw nsw i64 %i.a, 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx163.i
  %.idx164.i = shl nuw nsw i64 %i.a, 6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.i
  %.idx165.i = mul nuw nsw i64 %i.a, 80
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx165.i
  %.idx166.i = mul nuw nsw i64 %i.a, 96
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx166.i
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 7 uses
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %i.q = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 3 uses
  %i.r = fadd nsz <2 x double> %i.p, %i.q         ; 3 uses
  %i.s = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.t = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.u = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.w = fsub nsz <2 x double> %i.s, %i.t         ; 4 uses
  %i.x = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 4 uses
  %i.y = shufflevector <2 x double> %i.p, <2 x double> %i.u, <2 x i32> <i32 1, i32 3>
  %i.z = shufflevector <2 x double> %i.q, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = fsub nsz <2 x double> %i.y, %i.z        ; 4 uses
  %i.ab = shufflevector <2 x double> %i.t, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd nsz <2 x double> %i.u, %i.ab       ; 3 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x double> %i.v, <2 x double> %i.q, <2 x i32> <i32 0, i32 2>
  %i.af = fsub nsz <2 x double> %i.ad, %i.ae      ; 4 uses
  %i.ag = shufflevector <2 x double> %i.x, <2 x double> %i.s, <2 x i32> <i32 2, i32 0>
  %i.ah = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fadd nsz <2 x double> %i.ag, %i.ah      ; 3 uses
  %i.aj = fadd nsz <2 x double> %i.o, %i.r
  %i.ak = shufflevector <2 x double> %i.ai, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.al = fadd nsz <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.an = fadd nsz <2 x double> %i.al, %i.am
  store <2 x double> %i.an, ptr %1, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.ao = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16
  %i.ap = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 4 uses
  %i.aq = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.ar = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.as = fneg nsz <2 x double> %i.ar             ; 3 uses
  %i.at = fneg nsz <2 x double> %i.ac
  %i.au = fmul nsz <2 x double> %i.ar, %i.at
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.r, <2 x double> %i.av)
  %i.ay = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ai, <2 x double> %i.ax) ; 2 uses
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.ba = extractelement <2 x double> %i.ao, i64 0
  %i.bb = fneg nsz double %i.ba
  %i.bc = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = fneg nsz double %i.az
  %i.be = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul nsz <2 x double> %i.w, %i.bf
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = shufflevector <2 x double> %i.ap, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.bj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.af, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.bl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.aa, <2 x double> %i.bj) ; 2 uses
  %i.bm = fsub nsz <2 x double> %i.ay, %i.bl      ; 2 uses
  %i.bn = fadd nsz <2 x double> %i.ay, %i.bl      ; 2 uses
  %i.bo = shufflevector <2 x double> %i.bm, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bq = fadd nsz <2 x double> %i.o, %i.bp
  store <2 x double> %i.bq, ptr %i.i, align 8, !tbaa !24
  %i.br = fneg nsz <2 x double> %i.r              ; 2 uses
  %i.bs = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x double> %i.bs, %i.br
  %i.bu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.am, <2 x double> %i.bt)
  %i.bv = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.ak, <2 x double> %i.bu) ; 2 uses
  %i.bx = shufflevector <2 x double> %i.w, <2 x double> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x double> %i.by, double %i.aq, i64 0
  %i.ca = fmul nsz <2 x double> %i.bx, %i.bz
  %i.cb = insertelement <2 x double> %i.ao, double %i.aq, i64 1
  %i.cc = shufflevector <2 x double> %i.af, <2 x double> %i.w, <2 x i32> <i32 0, i32 2>
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cc, <2 x double> %i.ca)
  %i.ce = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %i.aa, <2 x double> %i.af, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ch = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> %i.cd) ; 2 uses
  %i.ci = fadd nsz <2 x double> %i.bw, %i.ch      ; 2 uses
  %i.cj = fsub nsz <2 x double> %i.bw, %i.ch      ; 2 uses
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.cm = fadd nsz <2 x double> %i.o, %i.cl
  store <2 x double> %i.cm, ptr %i.j, align 8, !tbaa !24
  %i.cn = shufflevector <2 x double> %i.af, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.co = fmul nsz <2 x double> %i.cn, %i.bf
  %i.cp = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cg, <2 x double> %i.co)
  %i.cs = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.bc, <2 x double> %i.cr) ; 2 uses
  %i.cv = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul nsz <2 x double> %i.cv, %i.br
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ak, <2 x double> %i.cw)
  %i.cy = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.am, <2 x double> %i.cx) ; 2 uses
  %i.da = fsub nsz <2 x double> %i.cz, %i.cu      ; 2 uses
  %i.db = fadd nsz <2 x double> %i.cz, %i.cu      ; 2 uses
  %i.dc = shufflevector <2 x double> %i.da, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> %i.da, <2 x i32> <i32 0, i32 3>
  %i.de = fadd nsz <2 x double> %i.o, %i.dd
  store <2 x double> %i.de, ptr %i.k, align 8, !tbaa !24
  %i.df = fadd nsz <2 x double> %i.o, %i.dc
  store <2 x double> %i.df, ptr %i.l, align 8, !tbaa !24
  %i.dg = fadd nsz <2 x double> %i.o, %i.ck
  store <2 x double> %i.dg, ptr %i.m, align 8, !tbaa !24
  %i.dh = fadd nsz <2 x double> %i.o, %i.bo
  store <2 x double> %i.dh, ptr %i.n, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft9_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 4                           ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx196.i = mul nuw nsw i64 %i.a, 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx196.i
  %.idx197.i = shl nuw nsw i64 %i.a, 6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx197.i
  %.idx198.i = mul nuw nsw i64 %i.a, 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx198.i
  %.idx199.i = mul nuw nsw i64 %i.a, 96
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx199.i
  %.idx200.i = mul nuw nsw i64 %i.a, 112
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx200.i
  %.idx201.i = shl nuw nsw i64 %i.a, 7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx201.i
  %i.r = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.s = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.t = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.u = fsub nsz <2 x double> %i.s, %i.t         ; 2 uses
  %i.v = fadd nsz <2 x double> %i.s, %i.t         ; 2 uses
  %i.w = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.x = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.y = fsub nsz <2 x double> %i.w, %i.x         ; 2 uses
  %i.z = fadd nsz <2 x double> %i.w, %i.x         ; 2 uses
  %i.aa = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.ac = fsub nsz <2 x double> %i.aa, %i.ab
  %i.ad = fadd nsz <2 x double> %i.aa, %i.ab      ; 2 uses
  %i.ae = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.af = load <2 x double>, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.ag = fsub nsz <2 x double> %i.ae, %i.af      ; 3 uses
  %i.ah = fadd nsz <2 x double> %i.ae, %i.af      ; 3 uses
  %i.ai = fsub nsz <2 x double> %i.v, %i.ah       ; 2 uses
  %i.aj = fsub nsz <2 x double> %i.z, %i.ah       ; 2 uses
  %i.ak = fsub nsz <2 x double> %i.u, %i.ag       ; 2 uses
  %i.al = fadd nsz <2 x double> %i.y, %i.ag       ; 2 uses
  %i.am = fneg nsz <2 x double> %i.aj
  %i.an = fneg nsz <2 x double> %i.al
  %i.ao = fadd nsz <2 x double> %i.r, %i.ad       ; 2 uses
  %i.ap = fadd nsz <2 x double> %i.v, %i.z
  %i.aq = fadd nsz <2 x double> %i.ap, %i.ah      ; 2 uses
  %i.ar = fadd nsz <2 x double> %i.ao, %i.aq
  store <2 x double> %i.ar, ptr %1, align 8, !tbaa !24
  %i.as = load <6 x double>, ptr @ff_tx_tab_9_double, align 16, !tbaa !24 ; 6 uses
  %i.at = fsub nsz <2 x double> %i.u, %i.y
  %i.au = fadd nsz <2 x double> %i.at, %i.ag
  %i.av = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aw = fmul nsz <2 x double> %i.au, %i.av
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.aq, <2 x double> %i.ao) ; 2 uses
  %i.ba = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ad, <2 x double> %i.r) ; 3 uses
  %i.bb = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.bc = fmul nsz <2 x double> %i.aj, %i.bb
  %i.bd = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.ai, <2 x double> %i.bc) ; 2 uses
  %i.bf = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.bg = fmul nsz <2 x double> %i.al, %i.bf
  %i.bh = shufflevector <6 x double> %i.as, <6 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.bi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.ak, <2 x double> %i.bg) ; 2 uses
  %i.bj = fmul nsz <2 x double> %i.ac, %i.av      ; 3 uses
  %i.bk = fadd nsz <2 x double> %i.ba, %i.be      ; 2 uses
  %i.bl = fadd nsz <2 x double> %i.bj, %i.bi
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bn = fsub nsz <2 x double> %i.az, %i.ax      ; 2 uses
  %i.bo = fadd nsz <2 x double> %i.az, %i.ax      ; 2 uses
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16, !tbaa !24 ; 2 uses
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul nsz <2 x double> %i.br, %i.am
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ai, <2 x double> %i.bs) ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul nsz <2 x double> %i.bu, %i.an
  %i.bw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.ak, <2 x double> %i.bv) ; 2 uses
  %i.bx = fadd nsz <2 x double> %i.ba, %i.bt      ; 2 uses
  %i.by = fsub nsz <2 x double> %i.bw, %i.bj
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ca = fadd nsz <2 x double> %i.bk, %i.bm      ; 2 uses
  %i.cb = fsub nsz <2 x double> %i.bk, %i.bm      ; 2 uses
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cc, ptr %i.j, align 8, !tbaa !24
  %i.cd = fadd nsz <2 x double> %i.bx, %i.bz      ; 2 uses
  %i.ce = fsub nsz <2 x double> %i.bx, %i.bz      ; 2 uses
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> %i.ce, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cf, ptr %i.k, align 8, !tbaa !24
  %i.cg = shufflevector <2 x double> %i.bo, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cg, ptr %i.l, align 8, !tbaa !24
  %i.ch = fadd nsz <2 x double> %i.be, %i.bt
  %i.ci = fsub nsz <2 x double> %i.ba, %i.ch      ; 2 uses
  %i.cj = fsub nsz <2 x double> %i.bw, %i.bi
  %i.ck = fadd nsz <2 x double> %i.bj, %i.cj
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = fadd nsz <2 x double> %i.ci, %i.cl      ; 2 uses
  %i.cn = fsub nsz <2 x double> %i.ci, %i.cl      ; 2 uses
  %i.co = shufflevector <2 x double> %i.cm, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.co, ptr %i.m, align 8, !tbaa !24
  %i.cp = shufflevector <2 x double> %i.cn, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cp, ptr %i.n, align 8, !tbaa !24
  store <2 x double> %i.bp, ptr %i.o, align 8, !tbaa !24
  %i.cq = shufflevector <2 x double> %i.ce, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cq, ptr %i.p, align 8, !tbaa !24
  %i.cr = shufflevector <2 x double> %i.cb, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cr, ptr %i.q, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft15_double_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
fft15.exit:
  %4 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.o = lshr i64 %3, 4                           ; 14 uses
  %.idx.i = mul nuw nsw i64 %i.o, 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.o, 192
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = mul nuw nsw i64 %i.o, 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %.idx90.i = mul nuw nsw i64 %i.o, 144
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i
  %.idx.i5 = mul nuw nsw i64 %i.o, 160
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i5
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.o
  %.idx88.i6 = mul nuw nsw i64 %i.o, 112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i6
  %.idx89.i7 = mul nuw nsw i64 %i.o, 208
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i7
  %.idx90.i8 = shl nuw nsw i64 %i.o, 6
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i8
  %.idx.i12 = mul nuw nsw i64 %i.o, 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i12
  %.idx88.i13 = mul nuw nsw i64 %i.o, 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i13
  %.idx89.i14 = shl nuw nsw i64 %i.o, 5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i14
  %.idx90.i15 = shl nuw nsw i64 %i.o, 7
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i15
  %.idx91.i = mul nuw nsw i64 %i.o, 224
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx91.i
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24 ; 5 uses
  %i.ae = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.af = load <2 x double>, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %i.ah = fsub nsz <2 x double> %i.af, %i.ag
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fadd nsz <2 x double> %i.af, %i.ag      ; 2 uses
  %i.ak = fmul nsz <2 x double> %i.ai, %i.ad      ; 2 uses
  %i.al = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.am = fmul nsz <2 x double> %i.aj, %i.al
  %i.an = fsub nsz <2 x double> %i.ae, %i.am      ; 2 uses
  %i.ao = fsub nsz <2 x double> %i.an, %i.ak      ; 2 uses
  %i.ap = fadd nsz <2 x double> %i.an, %i.ak      ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ar = load <2 x double>, ptr %i.c, align 8, !tbaa !24 ; 2 uses
  %i.as = load <2 x double>, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.at = load <2 x double>, ptr %i.e, align 8, !tbaa !24 ; 2 uses
  %i.au = fsub nsz <2 x double> %i.as, %i.at
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = fadd nsz <2 x double> %i.as, %i.at      ; 2 uses
  %i.ax = fmul nsz <2 x double> %i.av, %i.ad      ; 2 uses
  %i.ay = fmul nsz <2 x double> %i.aw, %i.al
  %i.az = fsub nsz <2 x double> %i.ar, %i.ay      ; 2 uses
  %i.ba = fsub nsz <2 x double> %i.az, %i.ax      ; 4 uses
  %i.bb = fadd nsz <2 x double> %i.az, %i.ax      ; 4 uses
  %i.bc = shufflevector <2 x double> %i.ba, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bd = load <2 x double>, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.be = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.h, align 8, !tbaa !24 ; 2 uses
  %i.bg = fsub nsz <2 x double> %i.be, %i.bf
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = fadd nsz <2 x double> %i.be, %i.bf      ; 2 uses
  %i.bj = fmul nsz <2 x double> %i.bh, %i.ad      ; 2 uses
  %i.bk = fmul nsz <2 x double> %i.bi, %i.al
  %i.bl = fsub nsz <2 x double> %i.bd, %i.bk      ; 2 uses
  %i.bm = fsub nsz <2 x double> %i.bl, %i.bj      ; 4 uses
  %i.bn = fadd nsz <2 x double> %i.bl, %i.bj      ; 4 uses
  %i.bo = shufflevector <2 x double> %i.bm, <2 x double> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = load <2 x double>, ptr %i.i, align 8, !tbaa !24 ; 2 uses
  %i.bq = load <2 x double>, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %i.br = load <2 x double>, ptr %i.k, align 8, !tbaa !24 ; 2 uses
  %i.bs = fsub nsz <2 x double> %i.bq, %i.br
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = fadd nsz <2 x double> %i.bq, %i.br      ; 2 uses
  %i.bv = fmul nsz <2 x double> %i.bt, %i.ad      ; 2 uses
  %i.bw = fmul nsz <2 x double> %i.bu, %i.al
  %i.bx = fsub nsz <2 x double> %i.bp, %i.bw      ; 2 uses
  %i.by = fsub nsz <2 x double> %i.bx, %i.bv      ; 4 uses
  %i.bz = fadd nsz <2 x double> %i.bx, %i.bv      ; 4 uses
  %i.ca = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cb = load <2 x double>, ptr %i.l, align 8, !tbaa !24 ; 2 uses
  %i.cc = load <2 x double>, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.ce = fsub nsz <2 x double> %i.cc, %i.cd
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fadd nsz <2 x double> %i.cc, %i.cd      ; 2 uses
  %i.ch = fmul nsz <2 x double> %i.cf, %i.ad      ; 2 uses
  %i.ci = fmul nsz <2 x double> %i.cg, %i.al
  %i.cj = fsub nsz <2 x double> %i.cb, %i.ci      ; 2 uses
  %i.ck = fsub nsz <2 x double> %i.cj, %i.ch      ; 4 uses
  %i.cl = fadd nsz <2 x double> %i.cj, %i.ch      ; 4 uses
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cn = fadd nsz <2 x double> %i.ae, %i.aj      ; 5 uses
  %i.co = fadd nsz <2 x double> %i.ar, %i.aw      ; 2 uses
  %i.cp = fadd nsz <2 x double> %i.bd, %i.bi      ; 2 uses
  %i.cq = fadd nsz <2 x double> %i.bp, %i.bu      ; 2 uses
  %i.cr = fadd nsz <2 x double> %i.cb, %i.cg      ; 2 uses
  %i.cs = fsub nsz <2 x double> %i.co, %i.cr      ; 2 uses
  %i.ct = fadd nsz <2 x double> %i.co, %i.cr      ; 3 uses
  %i.cu = fsub nsz <2 x double> %i.cp, %i.cq      ; 2 uses
  %i.cv = fadd nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.cw = fadd nsz <2 x double> %i.cn, %i.ct
  %i.cx = fadd nsz <2 x double> %i.cw, %i.cv
  store <2 x double> %i.cx, ptr %1, align 8, !tbaa !24
  %5 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %6 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.cy = fneg nsz <2 x double> %i.cv
  %i.cz = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = fmul nsz <2 x double> %i.cz, %i.cy
  %i.db = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.ct, <2 x double> %i.da) ; 2 uses
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %8 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.dd = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fmul nsz <2 x double> %i.cu, %i.dd
  %i.df = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cs, <2 x double> %i.de)
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.di = fsub nsz <2 x double> %i.dc, %i.dh      ; 2 uses
  %i.dj = fadd nsz <2 x double> %i.dc, %i.dh      ; 2 uses
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  %i.dl = shufflevector <2 x double> %i.dj, <2 x double> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dm = fadd nsz <2 x double> %i.cn, %i.dl
  store <2 x double> %i.dm, ptr %i.p, align 8, !tbaa !24
  %i.dn = fneg nsz <2 x double> %i.ct
  %i.do = fmul nsz <2 x double> %i.cz, %i.dn
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.cv, <2 x double> %i.do) ; 2 uses
  %i.dq = fneg nsz <2 x double> %i.cs
  %i.dr = fmul nsz <2 x double> %i.dd, %i.dq
  %i.ds = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cu, <2 x double> %i.dr)
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.du = fadd nsz <2 x double> %i.dp, %i.dt      ; 2 uses
  %i.dv = fsub nsz <2 x double> %i.dp, %i.dt      ; 2 uses
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x double> %i.dv, <2 x double> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dy = fadd nsz <2 x double> %i.cn, %i.dx
  store <2 x double> %i.dy, ptr %i.q, align 8, !tbaa !24
  %i.dz = fadd nsz <2 x double> %i.cn, %i.dw
  store <2 x double> %i.dz, ptr %i.r, align 8, !tbaa !24
  %i.ea = fadd nsz <2 x double> %i.cn, %i.dk
  store <2 x double> %i.ea, ptr %i.s, align 8, !tbaa !24
  %i.eb = shufflevector <2 x double> %i.ap, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ec = shufflevector <2 x double> %i.bb, <2 x double> %i.ba, <2 x i32> <i32 0, i32 3>
  %i.ed = shufflevector <2 x double> %i.bn, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.ee = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.ef = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.eg = shufflevector <2 x double> %i.ba, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.eh = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.ei = fsub nsz <2 x double> %i.eg, %i.eh      ; 2 uses
  %i.ej = fadd nsz <2 x double> %i.ec, %i.ef      ; 3 uses
  %i.ek = shufflevector <2 x double> %i.bm, <2 x double> %i.bn, <2 x i32> <i32 1, i32 2>
  %i.el = shufflevector <2 x double> %i.by, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.em = fsub nsz <2 x double> %i.ek, %i.el      ; 2 uses
  %i.en = fadd nsz <2 x double> %i.ed, %i.ee      ; 3 uses
  %i.eo = fadd nsz <2 x double> %i.eb, %i.ej
  %i.ep = fadd nsz <2 x double> %i.eo, %i.en
  store <2 x double> %i.ep, ptr %i.t, align 8, !tbaa !24
  %9 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %10 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.eq = fneg nsz <2 x double> %i.en
  %i.er = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul nsz <2 x double> %i.er, %i.eq
  %i.et = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.ej, <2 x double> %i.es) ; 2 uses
  %11 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %12 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.ev = shufflevector <1 x double> %12, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul nsz <2 x double> %i.em, %i.ev
  %i.ex = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ei, <2 x double> %i.ew) ; 2 uses
  %i.ez = fsub nsz <2 x double> %i.eu, %i.ey      ; 2 uses
  %i.fa = fadd nsz <2 x double> %i.eu, %i.ey      ; 2 uses
  %i.fb = shufflevector <2 x double> %i.ez, <2 x double> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.fc = shufflevector <2 x double> %i.fa, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.fd = fadd nsz <2 x double> %i.eb, %i.fc
  store <2 x double> %i.fd, ptr %i.u, align 8, !tbaa !24
  %i.fe = fneg nsz <2 x double> %i.ej
  %i.ff = fmul nsz <2 x double> %i.er, %i.fe
  %i.fg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.en, <2 x double> %i.ff) ; 2 uses
  %i.fh = fneg nsz <2 x double> %i.ei
  %i.fi = fmul nsz <2 x double> %i.ev, %i.fh
  %i.fj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.em, <2 x double> %i.fi) ; 2 uses
  %i.fk = fadd nsz <2 x double> %i.fg, %i.fj      ; 2 uses
  %i.fl = fsub nsz <2 x double> %i.fg, %i.fj      ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <2 x i32> <i32 0, i32 3>
  %i.fn = shufflevector <2 x double> %i.fl, <2 x double> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.fo = fadd nsz <2 x double> %i.eb, %i.fn
  store <2 x double> %i.fo, ptr %i.v, align 8, !tbaa !24
  %i.fp = fadd nsz <2 x double> %i.eb, %i.fm
  store <2 x double> %i.fp, ptr %i.w, align 8, !tbaa !24
  %i.fq = fadd nsz <2 x double> %i.eb, %i.fb
  store <2 x double> %i.fq, ptr %i.x, align 8, !tbaa !24
  %i.fr = shufflevector <2 x double> %i.bb, <2 x double> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.fs = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.ft = fsub nsz <2 x double> %i.fr, %i.fs      ; 2 uses
  %i.fu = fadd nsz <2 x double> %i.bc, %i.cm      ; 3 uses
  %i.fv = shufflevector <2 x double> %i.bn, <2 x double> %i.bm, <2 x i32> <i32 1, i32 2>
  %i.fw = shufflevector <2 x double> %i.bz, <2 x double> %i.by, <2 x i32> <i32 1, i32 2>
  %i.fx = fsub nsz <2 x double> %i.fv, %i.fw      ; 2 uses
  %i.fy = fadd nsz <2 x double> %i.bo, %i.ca      ; 3 uses
  %i.fz = fadd nsz <2 x double> %i.aq, %i.fu
  %i.ga = fadd nsz <2 x double> %i.fz, %i.fy
  store <2 x double> %i.ga, ptr %i.y, align 8, !tbaa !24
  %13 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %14 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.gb = fneg nsz <2 x double> %i.fy
  %i.gc = shufflevector <1 x double> %14, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = fmul nsz <2 x double> %i.gc, %i.gb
  %i.ge = shufflevector <1 x double> %13, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fu, <2 x double> %i.gd) ; 2 uses
  %15 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %16 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.gg = shufflevector <1 x double> %16, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = fmul nsz <2 x double> %i.fx, %i.gg
  %i.gi = shufflevector <1 x double> %15, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.ft, <2 x double> %i.gh) ; 2 uses
  %i.gk = fsub nsz <2 x double> %i.gf, %i.gj      ; 2 uses
  %i.gl = fadd nsz <2 x double> %i.gf, %i.gj      ; 2 uses
  %i.gm = shufflevector <2 x double> %i.gk, <2 x double> %i.gl, <2 x i32> <i32 0, i32 3>
  %i.gn = shufflevector <2 x double> %i.gl, <2 x double> %i.gk, <2 x i32> <i32 0, i32 3>
  %i.go = fadd nsz <2 x double> %i.aq, %i.gn
  store <2 x double> %i.go, ptr %i.z, align 8, !tbaa !24
  %i.gp = fneg nsz <2 x double> %i.fu
  %i.gq = fmul nsz <2 x double> %i.gc, %i.gp
  %i.gr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.fy, <2 x double> %i.gq) ; 2 uses
  %i.gs = fneg nsz <2 x double> %i.ft
  %i.gt = fmul nsz <2 x double> %i.gg, %i.gs
  %i.gu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.fx, <2 x double> %i.gt) ; 2 uses
  %i.gv = fadd nsz <2 x double> %i.gr, %i.gu      ; 2 uses
  %i.gw = fsub nsz <2 x double> %i.gr, %i.gu      ; 2 uses
  %i.gx = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.gy = shufflevector <2 x double> %i.gw, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3>
  %i.gz = fadd nsz <2 x double> %i.aq, %i.gy
  store <2 x double> %i.gz, ptr %i.aa, align 8, !tbaa !24
  %i.ha = fadd nsz <2 x double> %i.aq, %i.gx
  store <2 x double> %i.ha, ptr %i.ab, align 8, !tbaa !24
  %i.hb = fadd nsz <2 x double> %i.aq, %i.gm
  store <2 x double> %i.hb, ptr %i.ac, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_fft_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %2, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !27
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  tail call void %i.u(ptr noundef %i.s, ptr noundef %1, ptr noundef %i.f, i64 noundef %3) #16
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %2, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !27
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [16 x i8], ptr %2, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !65
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_init_double_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = and i64 %2, 1
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.b = select i1 %.not, i32 1, i32 2
  store i32 %i.b, ptr %7, align 4, !tbaa !36
  %i.c = and i64 %2, 6917529027641081854
  %i.d = or disjoint i64 %i.c, 2305843009213693953
  %i.e = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 2, i64 noundef %i.d, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5, ptr noundef %6) #16 ; 2 uses
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @ff_tx_gen_inplace_map(ptr noundef %0, i32 noundef %4) #16 ; 2 uses
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.e, %bb.a ], [ %i.f, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.0
}

declare i32 @ff_tx_init_subtx(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_tx_gen_inplace_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ff_tx_fft_inplace_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi ptr [ %i.f, %bb.a ], [ %.025, %bb.d ]
  %.024 = phi i32 [ %i.g, %bb.a ], [ %i.p, %bb.d ] ; 2 uses
  %i.h = sext i32 %.024 to i64                    ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %2, i64 %i.h ; 2 uses
  %.sroa.031.0.copyload = load <2 x double>, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.031.0 = phi nsz <2 x double> [ %.sroa.031.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %bb.c ]
  %.0 = phi i32 [ %i.k, %bb.b ], [ %i.o, %bb.c ]
  %i.l = sext i32 %.0 to i64                      ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %2, i64 %i.l ; 2 uses
  %.sroa.0.0.copyload = load <2 x double>, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  store <2 x double> %.sroa.031.0, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.l
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12   ; 2 uses
  %.not = icmp eq i32 %i.o, %.024
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !66

bb.d:                                             ; preds = %bb.c
  %.025 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  store <2 x double> %.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !24
  %i.p = load i32, ptr %.025, align 4, !tbaa !12  ; 2 uses
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.e, label %bb.b, !llvm.loop !67

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void %i.r(ptr noundef %i.s, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #16
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_inplace_small_init_double_c(ptr noundef initializes((24, 32)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = sext i32 %4 to i64
  %i.b = shl nsw i64 %i.a, 4
  %i.c = tail call noalias ptr @av_malloc(i64 noundef %i.b) #16 ; 2 uses
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_3xM_fwd_double_c:bb.a
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx = shl nsw i64 %i.ah, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = icmp sgt i32 %i.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.as = add i32 %i.f, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = fsub nsz double %i.av, %i.ac
  %i.ax = add nsw i32 %i.x, %i.g
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24
  %i.bb = add i32 %i.g, %i.ad
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd nsz double %i.ba, %i.be
  %i.bg = fneg nsz double %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fadd nsz double %i.ac, %i.bk
  %i.bm = fneg nsz double %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = add i32 %i.g, %i.ad
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fsub nsz double %i.bq, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.aw, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bg, %bb.b ], [ %i.bv, %bb.c ]
  %i.bw = ashr i32 %i.x, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fneg nsz <2 x double> %i.ca
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul nsz <2 x double> %i.cc, %i.ce
  %i.cg = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ca, <2 x double> %i.cf) ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 6 uses
  %i.cm = icmp slt i32 %i.cl, %i.f
  %i.cn = add nsw i32 %i.cl, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = xor i32 %i.cl, -1                       ; 4 uses
  br i1 %i.cm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = add i32 %i.r, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !24
  %i.cw = fadd nsz double %i.cq, %i.cv
  %i.cx = fneg nsz double %i.cw
  %i.cy = sub nuw nsw i32 %i.cl, %i.f
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = add i32 %i.g, %i.cr
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = fsub nsz double %i.db, %i.df
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dh = add i32 %i.f, %i.cr
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = fsub nsz double %i.dk, %i.cq
  %i.dm = add nsw i32 %i.cl, %i.g
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !24
  %i.dq = add i32 %i.g, %i.cr
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = fadd nsz double %i.dp, %i.dt
  %i.dv = fneg nsz double %i.du
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dl, %bb.f ], [ %i.cx, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.dv, %bb.f ], [ %i.dg, %bb.e ]
  %i.dw = ashr i32 %i.cl, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fneg nsz <2 x double> %i.ea
  %i.ee = shufflevector <2 x double> %i.dz, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul nsz <2 x double> %i.ec, %i.ee
  %i.eg = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ea, <2 x double> %i.ef) ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12 ; 6 uses
  %i.em = icmp slt i32 %i.el, %i.f
  %i.en = add nsw i32 %i.el, %i.f
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24 ; 2 uses
  %i.er = xor i32 %i.el, -1                       ; 4 uses
  br i1 %i.em, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.es = add i32 %i.r, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = fadd nsz double %i.eq, %i.ev
  %i.ex = fneg nsz double %i.ew
  %i.ey = sub nuw nsw i32 %i.el, %i.f
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !24
  %i.fc = add i32 %i.g, %i.er
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !24
  %i.fg = fsub nsz double %i.fb, %i.ff
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fh = add i32 %i.f, %i.er
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !24
  %i.fl = fsub nsz double %i.fk, %i.eq
  %i.fm = add nsw i32 %i.el, %i.g
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = add i32 %i.g, %i.er
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !24
  %i.fu = fadd nsz double %i.fp, %i.ft
  %i.fv = fneg nsz double %i.fu
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz double [ %i.fl, %bb.i ], [ %i.ex, %bb.h ]
  %.sroa.6.0.2 = phi nsz double [ %i.fv, %bb.i ], [ %i.fg, %bb.h ]
  %i.fw = ashr i32 %i.el, 1
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !12
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.u
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i
  %i.gf = load <2 x double>, ptr %i.fy, align 8, !tbaa !24 ; 2 uses
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %.sroa.6.0.2, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fneg nsz <2 x double> %i.gg
  %i.gk = shufflevector <2 x double> %i.gf, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.gl = fmul nsz <2 x double> %i.gi, %i.gk
  %i.gm = insertelement <2 x double> poison, double %.sroa.077.0.2, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gg, <2 x double> %i.gl) ; 2 uses
  %i.gp = fsub nsz <2 x double> %i.ei, %i.go
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fadd nsz <2 x double> %i.ei, %i.go      ; 2 uses
  %i.gs = fadd nsz <2 x double> %i.ci, %i.gr
  store <2 x double> %i.gs, ptr %i.gc, align 8, !tbaa !24
  %i.gt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24
  %i.gu = fmul nsz <2 x double> %i.gq, %i.gt      ; 2 uses
  %4 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.gv = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fmul nsz <2 x double> %i.gr, %i.gv
  %i.gx = fsub nsz <2 x double> %i.ci, %i.gw      ; 2 uses
  %i.gy = fadd nsz <2 x double> %i.gx, %i.gu      ; 2 uses
  %i.gz = fsub nsz <2 x double> %i.gx, %i.gu      ; 2 uses
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ha, ptr %i.gd, align 8, !tbaa !24
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.gy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hb, ptr %i.ge, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !90

.lr.ph:                                           ; preds = %.preheader136
  %i.hc = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.hd = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader136
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.k ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv148, %i.hd   ; 3 uses
  %i.hf = xor i64 %indvars.iv148, -1
  %i.hg = add nsw i64 %i.hd, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.he
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !12
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hl ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !29 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %i.hq = sext i32 %i.hi to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.he ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !30
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !29
  %i.hz = fneg nsz double %i.hy
  %i.ia = fmul nsz double %i.hu, %i.hz
  %i.ib = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.hx, double %i.ia)
  %i.ic = shl nsw i64 %i.hg, 1
  %i.id = mul nsw i64 %i.p, %i.ic
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.p
  store double %i.ib, ptr %i.if, align 8, !tbaa !24
  %i.ig = load double, ptr %i.hv, align 8, !tbaa !29
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !30
  %i.ii = fmul nsz double %i.hu, %i.ih
  %i.ij = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.ig, double %i.ii)
  %i.ik = shl nuw nsw i64 %i.he, 1
  %i.il = mul nuw nsw i64 %i.p, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.il ; 2 uses
  store double %i.ij, ptr %i.im, align 8, !tbaa !24
  %i.in = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !30
  %i.iq = load double, ptr %i.in, align 8, !tbaa !29
  %i.ir = fneg nsz double %i.iq
  %i.is = fmul nsz double %i.hp, %i.ir
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.ip, double %i.is)
  %i.iu = getelementptr [8 x i8], ptr %i.im, i64 %i.p
  store double %i.it, ptr %i.iu, align 8, !tbaa !24
  %i.iv = load double, ptr %i.in, align 8, !tbaa !29
  %i.iw = load double, ptr %i.io, align 8, !tbaa !30
  %i.ix = fmul nsz double %i.hp, %i.iw
  %i.iy = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.iv, double %i.ix)
  store double %i.iy, ptr %i.ie, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.k, !llvm.loop !91
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_double_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = fptrunc nsz double %i.f to float
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.h, ptr %i.i, align 4, !tbaa !39
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 2, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !12
  %i.p = call i32 @ff_tx_gen_compound_mapping(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.e) #16 ; 2 uses
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 8, !tbaa !12
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.v = zext nneg i32 %i.b to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, ptr noundef nonnull align 4 dereferenceable(60) %i.w, i64 60, i1 false)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  br label %.preheader63

.preheader63:                                     ; preds = %bb.e, %bb.g
  %indvars.iv71 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next72, %bb.g ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv71, 3         ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 15 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next76, %i.v
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !92

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !93

bb.h:                                             ; preds = %.preheader63, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader63 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = urem i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !94

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_double(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 4
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !32
  %.not62 = icmp eq ptr %i.aq, null
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_5xM_fwd_double_c:bb.a
  %i.ev = add nsw i32 %i.et, %i.f
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 2 uses
  %i.ez = xor i32 %i.et, -1                       ; 4 uses
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = add i32 %i.r, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !24
  %i.fe = fadd nsz double %i.ey, %i.fd
  %i.ff = fneg nsz double %i.fe
  %i.fg = sub nuw nsw i32 %i.et, %i.f
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !24
  %i.fk = add i32 %i.g, %i.ez
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = fsub nsz double %i.fj, %i.fn
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fp = add i32 %i.f, %i.ez
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = fsub nsz double %i.fs, %i.ey
  %i.fu = add nsw i32 %i.et, %i.g
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !24
  %i.fy = add i32 %i.g, %i.ez
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !24
  %i.gc = fadd nsz double %i.fx, %i.gb
  %i.gd = fneg nsz double %i.gc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz double [ %i.ft, %bb.i ], [ %i.ff, %bb.h ]
  %.sroa.6.0.2 = phi nsz double [ %i.gd, %bb.i ], [ %i.fo, %bb.h ]
  %i.ge = ashr i32 %i.et, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load <2 x double>, ptr %i.gg, align 8, !tbaa !24 ; 2 uses
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gj = insertelement <2 x double> poison, double %.sroa.6.0.2, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = fneg nsz <2 x double> %i.gi
  %i.gm = shufflevector <2 x double> %i.gh, <2 x double> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul nsz <2 x double> %i.gk, %i.gm
  %i.go = insertelement <2 x double> poison, double %.sroa.077.0.2, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.gi, <2 x double> %i.gn) ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12 ; 6 uses
  %i.gu = icmp slt i32 %i.gt, %i.f
  %i.gv = add nsw i32 %i.gt, %i.f
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !24 ; 2 uses
  %i.gz = xor i32 %i.gt, -1                       ; 4 uses
  br i1 %i.gu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = add i32 %i.r, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !24
  %i.he = fadd nsz double %i.gy, %i.hd
  %i.hf = fneg nsz double %i.he
  %i.hg = sub nuw nsw i32 %i.gt, %i.f
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hh
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !24
  %i.hk = add i32 %i.g, %i.gz
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hl
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !24
  %i.ho = fsub nsz double %i.hj, %i.hn
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hp = add i32 %i.f, %i.gz
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !24
  %i.ht = fsub nsz double %i.hs, %i.gy
  %i.hu = add nsw i32 %i.gt, %i.g
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hv
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !24
  %i.hy = add i32 %i.g, %i.gz
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !24
  %i.ic = fadd nsz double %i.hx, %i.ib
  %i.id = fneg nsz double %i.ic
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.077.0.3 = phi nsz double [ %i.ht, %bb.l ], [ %i.hf, %bb.k ]
  %.sroa.6.0.3 = phi nsz double [ %i.id, %bb.l ], [ %i.ho, %bb.k ]
  %i.ie = ashr i32 %i.gt, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.if
  %i.ih = load <2 x double>, ptr %i.ig, align 8, !tbaa !24 ; 2 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ij = insertelement <2 x double> poison, double %.sroa.6.0.3, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fneg nsz <2 x double> %i.ii
  %i.im = shufflevector <2 x double> %i.ih, <2 x double> %i.il, <2 x i32> <i32 0, i32 2>
  %i.in = fmul nsz <2 x double> %i.ik, %i.im
  %i.io = insertelement <2 x double> poison, double %.sroa.077.0.3, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ii, <2 x double> %i.in) ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12 ; 6 uses
  %i.iu = icmp slt i32 %i.it, %i.f
  %i.iv = add nsw i32 %i.it, %i.f
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !24 ; 2 uses
  %i.iz = xor i32 %i.it, -1                       ; 4 uses
  br i1 %i.iu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ja = add i32 %i.r, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !24
  %i.je = fadd nsz double %i.iy, %i.jd
  %i.jf = fneg nsz double %i.je
  %i.jg = sub nuw nsw i32 %i.it, %i.f
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !24
  %i.jk = add i32 %i.g, %i.iz
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jo = fsub nsz double %i.jj, %i.jn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jp = add i32 %i.f, %i.iz
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jt = fsub nsz double %i.js, %i.iy
  %i.ju = add nsw i32 %i.it, %i.g
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !24
  %i.jy = add i32 %i.g, %i.iz
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !24
  %i.kc = fadd nsz double %i.jx, %i.kb
  %i.kd = fneg nsz double %i.kc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz double [ %i.jt, %bb.o ], [ %i.jf, %bb.n ]
  %.sroa.6.0.4 = phi nsz double [ %i.kd, %bb.o ], [ %i.jo, %bb.n ]
  %i.ke = ashr i32 %i.it, 1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.kj ; 5 uses
  %i.kl = fsub nsz <2 x double> %i.gq, %i.iq      ; 2 uses
  %i.km = fadd nsz <2 x double> %i.gq, %i.iq      ; 3 uses
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.u
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx88.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx89.i
  %i.kr = load <2 x double>, ptr %i.kg, align 8, !tbaa !24 ; 2 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kt = insertelement <2 x double> poison, double %.sroa.6.0.4, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fneg nsz <2 x double> %i.ks
  %i.kw = shufflevector <2 x double> %i.kr, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul nsz <2 x double> %i.ku, %i.kw
  %i.ky = insertelement <2 x double> poison, double %.sroa.077.0.4, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.ks, <2 x double> %i.kx) ; 2 uses
  %i.lb = fsub nsz <2 x double> %i.eq, %i.la      ; 2 uses
  %i.lc = fadd nsz <2 x double> %i.eq, %i.la      ; 3 uses
  %i.ld = fadd nsz <2 x double> %i.cq, %i.lc
  %i.le = fadd nsz <2 x double> %i.ld, %i.km
  store <2 x double> %i.le, ptr %i.kk, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.lf = fneg nsz <2 x double> %i.km
  %i.lg = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lh = fmul nsz <2 x double> %i.lg, %i.lf
  %i.li = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.lc, <2 x double> %i.lh) ; 2 uses
  %6 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.lk = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ll = fmul nsz <2 x double> %i.kl, %i.lk
  %i.lm = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.lb, <2 x double> %i.ll)
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lp = fsub nsz <2 x double> %i.lj, %i.lo      ; 2 uses
  %i.lq = fadd nsz <2 x double> %i.lj, %i.lo      ; 2 uses
  %i.lr = shufflevector <2 x double> %i.lp, <2 x double> %i.lq, <2 x i32> <i32 0, i32 3>
  %i.ls = shufflevector <2 x double> %i.lq, <2 x double> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.lt = fadd nsz <2 x double> %i.cq, %i.ls
  store <2 x double> %i.lt, ptr %i.kn, align 8, !tbaa !24
  %i.lu = fneg nsz <2 x double> %i.lc
  %i.lv = fmul nsz <2 x double> %i.lg, %i.lu
  %i.lw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.km, <2 x double> %i.lv) ; 2 uses
  %i.lx = fneg nsz <2 x double> %i.lb
  %i.ly = fmul nsz <2 x double> %i.lk, %i.lx
  %i.lz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.kl, <2 x double> %i.ly)
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mb = fadd nsz <2 x double> %i.lw, %i.ma      ; 2 uses
  %i.mc = fsub nsz <2 x double> %i.lw, %i.ma      ; 2 uses
  %i.md = shufflevector <2 x double> %i.mb, <2 x double> %i.mc, <2 x i32> <i32 0, i32 3>
  %i.me = shufflevector <2 x double> %i.mc, <2 x double> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.mf = fadd nsz <2 x double> %i.cq, %i.me
  store <2 x double> %i.mf, ptr %i.ko, align 8, !tbaa !24
  %i.mg = fadd nsz <2 x double> %i.cq, %i.md
  store <2 x double> %i.mg, ptr %i.kp, align 8, !tbaa !24
  %i.mh = fadd nsz <2 x double> %i.cq, %i.lr
  store <2 x double> %i.mh, ptr %i.kq, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !96

.lr.ph:                                           ; preds = %.preheader136
  %i.mi = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.mj = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader136
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.q ] ; 3 uses
  %i.mk = add nuw nsw i64 %indvars.iv148, %i.mj   ; 3 uses
  %i.ml = xor i64 %indvars.iv148, -1
  %i.mm = add nsw i64 %i.mj, %i.ml                ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mk
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !12
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !12
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [16 x i8], ptr %i.mi, i64 %i.mr ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !29 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !30 ; 2 uses
  %i.mw = sext i32 %i.mo to i64
  %i.mx = getelementptr inbounds [16 x i8], ptr %i.mi, i64 %i.mw ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !29 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !30 ; 2 uses
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.mk ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8 ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !30
  %i.ne = load double, ptr %i.nb, align 8, !tbaa !29
  %i.nf = fneg nsz double %i.ne
  %i.ng = fmul nsz double %i.na, %i.nf
  %i.nh = tail call nsz double @llvm.fmuladd.f64(double %i.my, double %i.nd, double %i.ng)
  %i.ni = shl nsw i64 %i.mm, 1
  %i.nj = mul nsw i64 %i.p, %i.ni
  %i.nk = getelementptr [8 x i8], ptr %1, i64 %i.nj ; 2 uses
  %i.nl = getelementptr [8 x i8], ptr %i.nk, i64 %i.p
  store double %i.nh, ptr %i.nl, align 8, !tbaa !24
  %i.nm = load double, ptr %i.nb, align 8, !tbaa !29
  %i.nn = load double, ptr %i.nc, align 8, !tbaa !30
  %i.no = fmul nsz double %i.na, %i.nn
  %i.np = tail call nsz double @llvm.fmuladd.f64(double %i.my, double %i.nm, double %i.no)
  %i.nq = shl nuw nsw i64 %i.mk, 1
  %i.nr = mul nuw nsw i64 %i.p, %i.nq
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nr ; 2 uses
  store double %i.np, ptr %i.ns, align 8, !tbaa !24
  %i.nt = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mm ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !30
  %i.nw = load double, ptr %i.nt, align 8, !tbaa !29
  %i.nx = fneg nsz double %i.nw
  %i.ny = fmul nsz double %i.mv, %i.nx
  %i.nz = tail call nsz double @llvm.fmuladd.f64(double %i.mt, double %i.nv, double %i.ny)
  %i.oa = getelementptr [8 x i8], ptr %i.ns, i64 %i.p
  store double %i.nz, ptr %i.oa, align 8, !tbaa !24
  %i.ob = load double, ptr %i.nt, align 8, !tbaa !29
  %i.oc = load double, ptr %i.nu, align 8, !tbaa !30
  %i.od = fmul nsz double %i.mv, %i.oc
  %i.oe = tail call nsz double @llvm.fmuladd.f64(double %i.mt, double %i.ob, double %i.od)
  store double %i.oe, ptr %i.nk, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !97
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %.sroa.6 = alloca [4 x %struct.AVComplexDouble], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 29 uses
  %i.g = mul nuw nsw i32 %i.e, 21                 ; 21 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35                 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx163.i = mul nuw nsw i64 %i.u, 48
  %.idx164.i = shl nuw nsw i64 %i.u, 6
  %.idx165.i = mul nuw nsw i64 %i.u, 80
  %.idx166.i = mul nuw nsw i64 %i.u, 96
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 32
  %.sroa.6.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.40..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 40
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.v
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.v ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 7 uses
  %i.v = load i32, ptr %invariant.gep, align 4, !tbaa !12 ; 6 uses
  %i.w = icmp slt i32 %i.v, %i.f
  %i.x = add nsw i32 %i.v, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.ab = xor i32 %i.v, -1                        ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.c

.preheader136.loopexit:                           ; preds = %bb.v
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 16) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 16) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.af, 5
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 16) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.af, 48
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 16) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.af, 6
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 16) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.af, 80
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 16) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.af, 96
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 16) #16
  %i.bg = icmp sgt i32 %i.i, 0
end_hunk_2
begin_hunk_3_@ff_tx_mdct_pfa_7xM_fwd_double_c:bb.a
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jk
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !24
  %i.jn = fsub nsz double %i.ji, %i.jm
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jo = add i32 %i.f, %i.iy
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !24
  %i.js = fsub nsz double %i.jr, %i.ix
  %i.jt = add nsw i32 %i.is, %i.g
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ju
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !24
  %i.jx = add i32 %i.g, %i.iy
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !24
  %i.kb = fadd nsz double %i.jw, %i.ka
  %i.kc = fneg nsz double %i.kb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz double [ %i.js, %bb.o ], [ %i.je, %bb.n ]
  %.sroa.6.0.4 = phi nsz double [ %i.kc, %bb.o ], [ %i.jn, %bb.n ]
  %i.kd = ashr i32 %i.is, 1
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ke
  %i.kg = load <2 x double>, ptr %i.kf, align 8, !tbaa !24 ; 2 uses
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ki = insertelement <2 x double> poison, double %.sroa.6.0.4, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fneg nsz <2 x double> %i.kh
  %i.kl = shufflevector <2 x double> %i.kg, <2 x double> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.km = fmul nsz <2 x double> %i.kj, %i.kl
  %i.kn = insertelement <2 x double> poison, double %.sroa.077.0.4, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kh, <2 x double> %i.km)
  store <2 x double> %i.kp, ptr %.sroa.6.32..sroa_idx, align 16, !tbaa !24
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 20
  %i.kq = load i32, ptr %gep.5, align 4, !tbaa !12 ; 6 uses
  %i.kr = icmp slt i32 %i.kq, %i.f
  %i.ks = add nsw i32 %i.kq, %i.f
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %2, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !24 ; 2 uses
  %i.kw = xor i32 %i.kq, -1                       ; 4 uses
  br i1 %i.kr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.kx = add i32 %i.r, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !24
  %i.lb = fadd nsz double %i.kv, %i.la
  %i.lc = fneg nsz double %i.lb
  %i.ld = sub nuw nsw i32 %i.kq, %i.f
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.le
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !24
  %i.lh = add i32 %i.g, %i.kw
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !24
  %i.ll = fsub nsz double %i.lg, %i.lk
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.lm = add i32 %i.f, %i.kw
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !24
  %i.lq = fsub nsz double %i.lp, %i.kv
  %i.lr = add nsw i32 %i.kq, %i.g
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !24
  %i.lv = add i32 %i.g, %i.kw
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lw
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !24
  %i.lz = fadd nsz double %i.lu, %i.ly
  %i.ma = fneg nsz double %i.lz
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.077.0.5 = phi nsz double [ %i.lq, %bb.r ], [ %i.lc, %bb.q ]
  %.sroa.6.0.5 = phi nsz double [ %i.ma, %bb.r ], [ %i.ll, %bb.q ]
  %i.mb = ashr i32 %i.kq, 1
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mc
  %i.me = load <2 x double>, ptr %i.md, align 8, !tbaa !24 ; 2 uses
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mg = insertelement <2 x double> poison, double %.sroa.6.0.5, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = fneg nsz <2 x double> %i.mf
  %i.mj = shufflevector <2 x double> %i.me, <2 x double> %i.mi, <2 x i32> <i32 0, i32 2>
  %i.mk = fmul nsz <2 x double> %i.mh, %i.mj
  %i.ml = insertelement <2 x double> poison, double %.sroa.077.0.5, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mm, <2 x double> %i.mf, <2 x double> %i.mk)
  store <2 x double> %i.mn, ptr %.sroa.6.48..sroa_idx168, align 16, !tbaa !24
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.mo = load i32, ptr %gep.6, align 4, !tbaa !12 ; 6 uses
  %i.mp = icmp slt i32 %i.mo, %i.f
  %i.mq = add nsw i32 %i.mo, %i.f
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !24 ; 2 uses
  %i.mu = xor i32 %i.mo, -1                       ; 4 uses
  br i1 %i.mp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mv = add i32 %i.r, %i.mu
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mw
  %i.my = load double, ptr %i.mx, align 8, !tbaa !24
  %i.mz = fadd nsz double %i.mt, %i.my
  %i.na = fneg nsz double %i.mz
  %i.nb = sub nuw nsw i32 %i.mo, %i.f
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !24
  %i.nf = add i32 %i.g, %i.mu
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ng
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !24
  %i.nj = fsub nsz double %i.ne, %i.ni
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.nk = add i32 %i.f, %i.mu
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !24
  %i.no = fsub nsz double %i.nn, %i.mt
  %i.np = add nsw i32 %i.mo, %i.g
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nq
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !24
  %i.nt = add i32 %i.g, %i.mu
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.nu
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !24
  %i.nx = fadd nsz double %i.ns, %i.nw
  %i.ny = fneg nsz double %i.nx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.077.0.6 = phi nsz double [ %i.no, %bb.u ], [ %i.na, %bb.t ]
  %.sroa.6.0.6 = phi nsz double [ %i.ny, %bb.u ], [ %i.nj, %bb.t ]
  %i.nz = ashr i32 %i.mo, 1
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.oa
  %i.oc = load <2 x double>, ptr %i.ob, align 8, !tbaa !24 ; 2 uses
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oe = insertelement <2 x double> poison, double %.sroa.6.0.6, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = fneg nsz <2 x double> %i.od
  %i.oh = shufflevector <2 x double> %i.oc, <2 x double> %i.og, <2 x i32> <i32 0, i32 2>
  %i.oi = fmul nsz <2 x double> %i.of, %i.oh
  %i.oj = insertelement <2 x double> poison, double %.sroa.077.0.6, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.od, <2 x double> %i.oi) ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.on = load i32, ptr %i.om, align 4, !tbaa !12
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.oo ; 7 uses
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.u
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx163.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx164.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx165.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx166.i
  %i.ow = fadd nsz <2 x double> %i.ev, %i.ol      ; 3 uses
  %.sroa.6.0..sroa.6.32. = load <2 x double>, ptr %.sroa.6, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.48..sroa.6.80. = load <2 x double>, ptr %.sroa.6.48..sroa_idx167, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.8..sroa.6.40. = load <2 x double>, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %.sroa.6.40..sroa.6.72. = load <2 x double>, ptr %.sroa.6.40..sroa_idx166, align 8, !tbaa !24 ; 2 uses
  %i.ox = fsub nsz <2 x double> %.sroa.6.0..sroa.6.32., %.sroa.6.48..sroa.6.80. ; 4 uses
  %.sroa.6.24..sroa.6.56. = load <2 x double>, ptr %.sroa.6.24..sroa_idx, align 8, !tbaa !24 ; 4 uses
  %i.oy = shufflevector <2 x double> %i.ev, <2 x double> %.sroa.6.8..sroa.6.40., <2 x i32> <i32 1, i32 3>
  %i.oz = shufflevector <2 x double> %i.ol, <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pa = fsub nsz <2 x double> %i.oy, %i.oz      ; 4 uses
  %i.pb = shufflevector <2 x double> %.sroa.6.48..sroa.6.80., <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pc = fadd nsz <2 x double> %.sroa.6.8..sroa.6.40., %i.pb ; 3 uses
  %i.pd = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.pe = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> %i.ol, <2 x i32> <i32 0, i32 2>
  %i.pf = fsub nsz <2 x double> %i.pd, %i.pe      ; 4 uses
  %i.pg = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %.sroa.6.0..sroa.6.32., <2 x i32> <i32 2, i32 0>
  %i.ph = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = fadd nsz <2 x double> %i.pg, %i.ph      ; 3 uses
  %i.pj = fadd nsz <2 x double> %i.cx, %i.ow
  %i.pk = shufflevector <2 x double> %i.pi, <2 x double> %i.pc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pl = fadd nsz <2 x double> %i.pj, %i.pk
  %i.pm = shufflevector <2 x double> %i.pc, <2 x double> %i.pi, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.pn = fadd nsz <2 x double> %i.pl, %i.pm
  store <2 x double> %i.pn, ptr %i.op, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.po = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16
  %i.pp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 4 uses
  %i.pq = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.pr = shufflevector <2 x double> %i.po, <2 x double> %i.pp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ps = fneg nsz <2 x double> %i.pr             ; 3 uses
  %i.pt = fneg nsz <2 x double> %i.pc
  %i.pu = fmul nsz <2 x double> %i.pr, %i.pt
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pw = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.px = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pw, <2 x double> %i.ow, <2 x double> %i.pv)
  %i.py = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ps, <2 x double> %i.pi, <2 x double> %i.px) ; 2 uses
  %i.pz = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.qa = extractelement <2 x double> %i.po, i64 0
  %i.qb = fneg nsz double %i.qa
  %i.qc = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qd = fneg nsz double %i.pz
  %i.qe = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qg = fmul nsz <2 x double> %i.ox, %i.qf
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qi = shufflevector <2 x double> %i.pp, <2 x double> %i.po, <2 x i32> <i32 1, i32 2>
  %i.qj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qi, <2 x double> %i.pf, <2 x double> %i.qh)
  %i.qk = shufflevector <2 x double> %i.po, <2 x double> %i.pp, <2 x i32> <i32 0, i32 3>
  %i.ql = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.pa, <2 x double> %i.qj) ; 2 uses
  %i.qm = fsub nsz <2 x double> %i.py, %i.ql      ; 2 uses
  %i.qn = fadd nsz <2 x double> %i.py, %i.ql      ; 2 uses
  %i.qo = shufflevector <2 x double> %i.qm, <2 x double> %i.qn, <2 x i32> <i32 0, i32 3>
  %i.qp = shufflevector <2 x double> %i.qn, <2 x double> %i.qm, <2 x i32> <i32 0, i32 3>
  %i.qq = fadd nsz <2 x double> %i.cx, %i.qp
  store <2 x double> %i.qq, ptr %i.oq, align 8, !tbaa !24
  %i.qr = fneg nsz <2 x double> %i.ow             ; 2 uses
  %i.qs = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer
  %i.qt = fmul nsz <2 x double> %i.qs, %i.qr
  %i.qu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pw, <2 x double> %i.pm, <2 x double> %i.qt)
  %i.qv = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.pk, <2 x double> %i.qu) ; 2 uses
  %i.qx = shufflevector <2 x double> %i.ox, <2 x double> %i.pa, <2 x i32> <i32 1, i32 3>
  %i.qy = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qz = insertelement <2 x double> %i.qy, double %i.pq, i64 0
  %i.ra = fmul nsz <2 x double> %i.qx, %i.qz
  %i.rb = insertelement <2 x double> %i.po, double %i.pq, i64 1
  %i.rc = shufflevector <2 x double> %i.pf, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.rd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.rc, <2 x double> %i.ra)
  %i.re = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rg = shufflevector <2 x double> %i.pa, <2 x double> %i.pf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.rh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rf, <2 x double> %i.rg, <2 x double> %i.rd) ; 2 uses
  %i.ri = fadd nsz <2 x double> %i.qw, %i.rh      ; 2 uses
  %i.rj = fsub nsz <2 x double> %i.qw, %i.rh      ; 2 uses
  %i.rk = shufflevector <2 x double> %i.ri, <2 x double> %i.rj, <2 x i32> <i32 0, i32 3>
  %i.rl = shufflevector <2 x double> %i.rj, <2 x double> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.rm = fadd nsz <2 x double> %i.cx, %i.rl
  store <2 x double> %i.rm, ptr %i.or, align 8, !tbaa !24
  %i.rn = shufflevector <2 x double> %i.pf, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.ro = fmul nsz <2 x double> %i.rn, %i.qf
  %i.rp = insertelement <2 x double> poison, double %i.pq, i64 0
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rq, <2 x double> %i.rg, <2 x double> %i.ro)
  %i.rs = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.rt = shufflevector <2 x double> %i.rs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rt, <2 x double> %i.qc, <2 x double> %i.rr) ; 2 uses
  %i.rv = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = fmul nsz <2 x double> %i.rv, %i.qr
  %i.rx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pw, <2 x double> %i.pk, <2 x double> %i.rw)
  %i.ry = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.pm, <2 x double> %i.rx) ; 2 uses
  %i.sa = fsub nsz <2 x double> %i.rz, %i.ru      ; 2 uses
  %i.sb = fadd nsz <2 x double> %i.rz, %i.ru      ; 2 uses
  %i.sc = shufflevector <2 x double> %i.sa, <2 x double> %i.sb, <2 x i32> <i32 0, i32 3>
  %i.sd = shufflevector <2 x double> %i.sb, <2 x double> %i.sa, <2 x i32> <i32 0, i32 3>
  %i.se = fadd nsz <2 x double> %i.cx, %i.sd
  store <2 x double> %i.se, ptr %i.os, align 8, !tbaa !24
  %i.sf = fadd nsz <2 x double> %i.cx, %i.sc
  store <2 x double> %i.sf, ptr %i.ot, align 8, !tbaa !24
  %i.sg = fadd nsz <2 x double> %i.cx, %i.rk
  store <2 x double> %i.sg, ptr %i.ou, align 8, !tbaa !24
  %i.sh = fadd nsz <2 x double> %i.cx, %i.qo
  store <2 x double> %i.sh, ptr %i.ov, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.si = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.sj = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.w ] ; 3 uses
  %i.sk = add nuw nsw i64 %indvars.iv151, %i.sj   ; 3 uses
  %i.sl = xor i64 %indvars.iv151, -1
  %i.sm = add nsw i64 %i.sj, %i.sl                ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.sk
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !12
  %i.sp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.sm
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !12
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [16 x i8], ptr %i.si, i64 %i.sr ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !29 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sv = load double, ptr %i.su, align 8, !tbaa !30 ; 2 uses
  %i.sw = sext i32 %i.so to i64
  %i.sx = getelementptr inbounds [16 x i8], ptr %i.si, i64 %i.sw ; 2 uses
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !29 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !30 ; 2 uses
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.sk ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 2 uses
  %i.td = load double, ptr %i.tc, align 8, !tbaa !30
  %i.te = load double, ptr %i.tb, align 8, !tbaa !29
  %i.tf = fneg nsz double %i.te
  %i.tg = fmul nsz double %i.ta, %i.tf
  %i.th = tail call nsz double @llvm.fmuladd.f64(double %i.sy, double %i.td, double %i.tg)
  %i.ti = shl nsw i64 %i.sm, 1
  %i.tj = mul nsw i64 %i.p, %i.ti
  %i.tk = getelementptr [8 x i8], ptr %1, i64 %i.tj ; 2 uses
  %i.tl = getelementptr [8 x i8], ptr %i.tk, i64 %i.p
  store double %i.th, ptr %i.tl, align 8, !tbaa !24
  %i.tm = load double, ptr %i.tb, align 8, !tbaa !29
  %i.tn = load double, ptr %i.tc, align 8, !tbaa !30
  %i.to = fmul nsz double %i.ta, %i.tn
  %i.tp = tail call nsz double @llvm.fmuladd.f64(double %i.sy, double %i.tm, double %i.to)
  %i.tq = shl nuw nsw i64 %i.sk, 1
  %i.tr = mul nuw nsw i64 %i.p, %i.tq
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.tr ; 2 uses
  store double %i.tp, ptr %i.ts, align 8, !tbaa !24
  %i.tt = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.sm ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 8 ; 2 uses
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !30
  %i.tw = load double, ptr %i.tt, align 8, !tbaa !29
  %i.tx = fneg nsz double %i.tw
  %i.ty = fmul nsz double %i.sv, %i.tx
  %i.tz = tail call nsz double @llvm.fmuladd.f64(double %i.st, double %i.tv, double %i.ty)
  %i.ua = getelementptr [8 x i8], ptr %i.ts, i64 %i.p
  store double %i.tz, ptr %i.ua, align 8, !tbaa !24
  %i.ub = load double, ptr %i.tt, align 8, !tbaa !29
  %i.uc = load double, ptr %i.tu, align 8, !tbaa !30
  %i.ud = fmul nsz double %i.sv, %i.uc
  %i.ue = tail call nsz double @llvm.fmuladd.f64(double %i.st, double %i.ub, double %i.ud)
  store double %i.ue, ptr %i.tk, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.w, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexDouble], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx196.i = mul nuw nsw i64 %i.u, 48
  %.idx197.i = shl nuw nsw i64 %i.u, 6
  %.idx198.i = mul nuw nsw i64 %i.u, 80
  %.idx199.i = mul nuw nsw i64 %i.u, 96
  %.idx200.i = mul nuw nsw i64 %i.u, 112
  %.idx201.i = shl nuw nsw i64 %i.u, 7
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.ag, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.ag, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
end_hunk_3
begin_hunk_4_@ff_tx_mdct_pfa_9xM_fwd_double_c:bb.a
  %i.hz = fneg nsz double %i.hy
  %i.ia = fmul nsz double %i.hu, %i.hz
  %i.ib = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.hx, double %i.ia)
  %i.ic = shl nsw i64 %i.hg, 1
  %i.id = mul nsw i64 %i.p, %i.ic
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.p
  store double %i.ib, ptr %i.if, align 8, !tbaa !24
  %i.ig = load double, ptr %i.hv, align 8, !tbaa !29
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !30
  %i.ii = fmul nsz double %i.hu, %i.ih
  %i.ij = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.ig, double %i.ii)
  %i.ik = shl nuw nsw i64 %i.he, 1
  %i.il = mul nuw nsw i64 %i.p, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.il ; 2 uses
  store double %i.ij, ptr %i.im, align 8, !tbaa !24
  %i.in = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !30
  %i.iq = load double, ptr %i.in, align 8, !tbaa !29
  %i.ir = fneg nsz double %i.iq
  %i.is = fmul nsz double %i.hp, %i.ir
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.ip, double %i.is)
  %i.iu = getelementptr [8 x i8], ptr %i.im, i64 %i.p
  store double %i.it, ptr %i.iu, align 8, !tbaa !24
  %i.iv = load double, ptr %i.in, align 8, !tbaa !29
  %i.iw = load double, ptr %i.io, align 8, !tbaa !30
  %i.ix = fmul nsz double %i.hp, %i.iw
  %i.iy = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.iv, double %i.ix)
  store double %i.iy, ptr %i.ie, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 96
  %.idx88.i = mul nuw nsw i64 %i.u, 192
  %.idx89.i = mul nuw nsw i64 %i.u, 48
  %.idx90.i = mul nuw nsw i64 %i.u, 144
  %.idx.i139 = mul nuw nsw i64 %i.u, 160
  %.idx88.i140 = mul nuw nsw i64 %i.u, 112
  %.idx89.i141 = mul nuw nsw i64 %i.u, 208
  %.idx90.i142 = shl nuw nsw i64 %i.u, 6
  %.idx.i146 = mul nuw nsw i64 %i.u, 80
  %.idx88.i147 = mul nuw nsw i64 %i.u, 176
  %.idx89.i148 = shl nuw nsw i64 %i.u, 5
  %.idx90.i149 = shl nuw nsw i64 %i.u, 7
  %.idx91.i = mul nuw nsw i64 %i.u, 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 224
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 16) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 16) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx179 = shl nsw i64 %i.am, 5
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 16) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx180 = mul nsw i64 %i.am, 48
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 16) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx181 = shl nsw i64 %i.am, 6
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 16) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx182 = mul nsw i64 %i.am, 80
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 16) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx183 = mul nsw i64 %i.am, 96
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 16) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx184 = mul nsw i64 %i.am, 112
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 16) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx185 = shl nsw i64 %i.am, 7
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 16) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx186 = mul nsw i64 %i.am, 144
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 16) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx187 = mul nsw i64 %i.am, 160
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 16) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx188 = mul nsw i64 %i.am, 176
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 16) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx189 = mul nsw i64 %i.am, 192
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 16) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx190 = mul nsw i64 %i.am, 208
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 16) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx191 = mul nsw i64 %i.am, 224
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 16) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.cw ; 15 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx88.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx89.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx90.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i139
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx88.i140
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx89.i141
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx90.i142
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i146
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx88.i147
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx89.i148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx90.i149
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx91.i
  %i.dm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24 ; 5 uses
  %i.dn = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.do = load <2 x double>, ptr %i.v, align 16, !tbaa !24 ; 2 uses
  %i.dp = load <2 x double>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.dq = fsub nsz <2 x double> %i.do, %i.dp
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fadd nsz <2 x double> %i.do, %i.dp      ; 2 uses
  %i.dt = fmul nsz <2 x double> %i.dr, %i.dm      ; 2 uses
  %i.du = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dv = fmul nsz <2 x double> %i.ds, %i.du
  %i.dw = fsub nsz <2 x double> %i.dn, %i.dv      ; 2 uses
  %i.dx = fsub nsz <2 x double> %i.dw, %i.dt      ; 2 uses
  %i.dy = fadd nsz <2 x double> %i.dw, %i.dt      ; 2 uses
  %i.dz = shufflevector <2 x double> %i.dx, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ea = load <2 x double>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.eb = load <2 x double>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.ec = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.ed = fsub nsz <2 x double> %i.eb, %i.ec
  %i.ee = shufflevector <2 x double> %i.ed, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = fadd nsz <2 x double> %i.eb, %i.ec      ; 2 uses
  %i.eg = fmul nsz <2 x double> %i.ee, %i.dm      ; 2 uses
  %i.eh = fmul nsz <2 x double> %i.ef, %i.du
  %i.ei = fsub nsz <2 x double> %i.ea, %i.eh      ; 2 uses
  %i.ej = fsub nsz <2 x double> %i.ei, %i.eg      ; 4 uses
  %i.ek = fadd nsz <2 x double> %i.ei, %i.eg      ; 4 uses
  %i.el = shufflevector <2 x double> %i.ej, <2 x double> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.em = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.en = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.eo = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.ep = fsub nsz <2 x double> %i.en, %i.eo
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.er = fadd nsz <2 x double> %i.en, %i.eo      ; 2 uses
  %i.es = fmul nsz <2 x double> %i.eq, %i.dm      ; 2 uses
  %i.et = fmul nsz <2 x double> %i.er, %i.du
  %i.eu = fsub nsz <2 x double> %i.em, %i.et      ; 2 uses
  %i.ev = fsub nsz <2 x double> %i.eu, %i.es      ; 4 uses
  %i.ew = fadd nsz <2 x double> %i.eu, %i.es      ; 4 uses
  %i.ex = shufflevector <2 x double> %i.ev, <2 x double> %i.ew, <2 x i32> <i32 0, i32 3>
  %i.ey = load <2 x double>, ptr %i.ad, align 16, !tbaa !24 ; 2 uses
  %i.ez = load <2 x double>, ptr %i.ae, align 16, !tbaa !24 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.af, align 16, !tbaa !24 ; 2 uses
  %i.fb = fsub nsz <2 x double> %i.ez, %i.fa
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = fadd nsz <2 x double> %i.ez, %i.fa      ; 2 uses
  %i.fe = fmul nsz <2 x double> %i.fc, %i.dm      ; 2 uses
  %i.ff = fmul nsz <2 x double> %i.fd, %i.du
  %i.fg = fsub nsz <2 x double> %i.ey, %i.ff      ; 2 uses
  %i.fh = fsub nsz <2 x double> %i.fg, %i.fe      ; 4 uses
  %i.fi = fadd nsz <2 x double> %i.fg, %i.fe      ; 4 uses
  %i.fj = shufflevector <2 x double> %i.fh, <2 x double> %i.fi, <2 x i32> <i32 0, i32 3>
  %i.fk = load <2 x double>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.fl = load <2 x double>, ptr %i.ah, align 16, !tbaa !24 ; 2 uses
  %i.fm = load <2 x double>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.fn = fsub nsz <2 x double> %i.fl, %i.fm
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = fadd nsz <2 x double> %i.fl, %i.fm      ; 2 uses
  %i.fq = fmul nsz <2 x double> %i.fo, %i.dm      ; 2 uses
  %i.fr = fmul nsz <2 x double> %i.fp, %i.du
  %i.fs = fsub nsz <2 x double> %i.fk, %i.fr      ; 2 uses
  %i.ft = fsub nsz <2 x double> %i.fs, %i.fq      ; 4 uses
  %i.fu = fadd nsz <2 x double> %i.fs, %i.fq      ; 4 uses
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 0, i32 3>
  %i.fw = fadd nsz <2 x double> %i.dn, %i.ds      ; 5 uses
  %i.fx = fadd nsz <2 x double> %i.ea, %i.ef      ; 2 uses
  %i.fy = fadd nsz <2 x double> %i.em, %i.er      ; 2 uses
  %i.fz = fadd nsz <2 x double> %i.ey, %i.fd      ; 2 uses
  %i.ga = fadd nsz <2 x double> %i.fk, %i.fp      ; 2 uses
  %i.gb = fsub nsz <2 x double> %i.fx, %i.ga      ; 2 uses
  %i.gc = fadd nsz <2 x double> %i.fx, %i.ga      ; 3 uses
  %i.gd = fsub nsz <2 x double> %i.fy, %i.fz      ; 2 uses
  %i.ge = fadd nsz <2 x double> %i.fy, %i.fz      ; 3 uses
  %i.gf = fadd nsz <2 x double> %i.fw, %i.gc
  %i.gg = fadd nsz <2 x double> %i.gf, %i.ge
  store <2 x double> %i.gg, ptr %i.cx, align 8, !tbaa !24
  %6 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.gh = fneg nsz <2 x double> %i.ge
  %i.gi = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gj = fmul nsz <2 x double> %i.gi, %i.gh
  %i.gk = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gc, <2 x double> %i.gj) ; 2 uses
  %8 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %9 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.gm = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = fmul nsz <2 x double> %i.gd, %i.gm
  %i.go = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gb, <2 x double> %i.gn)
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = fsub nsz <2 x double> %i.gl, %i.gq      ; 2 uses
  %i.gs = fadd nsz <2 x double> %i.gl, %i.gq      ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gr, <2 x double> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.gu = shufflevector <2 x double> %i.gs, <2 x double> %i.gr, <2 x i32> <i32 0, i32 3>
  %i.gv = fadd nsz <2 x double> %i.fw, %i.gu
  store <2 x double> %i.gv, ptr %i.cy, align 8, !tbaa !24
  %i.gw = fneg nsz <2 x double> %i.gc
  %i.gx = fmul nsz <2 x double> %i.gi, %i.gw
  %i.gy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.ge, <2 x double> %i.gx) ; 2 uses
  %i.gz = fneg nsz <2 x double> %i.gb
  %i.ha = fmul nsz <2 x double> %i.gm, %i.gz
  %i.hb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gd, <2 x double> %i.ha)
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hd = fadd nsz <2 x double> %i.gy, %i.hc      ; 2 uses
  %i.he = fsub nsz <2 x double> %i.gy, %i.hc      ; 2 uses
  %i.hf = shufflevector <2 x double> %i.hd, <2 x double> %i.he, <2 x i32> <i32 0, i32 3>
  %i.hg = shufflevector <2 x double> %i.he, <2 x double> %i.hd, <2 x i32> <i32 0, i32 3>
  %i.hh = fadd nsz <2 x double> %i.fw, %i.hg
  store <2 x double> %i.hh, ptr %i.cz, align 8, !tbaa !24
  %i.hi = fadd nsz <2 x double> %i.fw, %i.hf
  store <2 x double> %i.hi, ptr %i.da, align 8, !tbaa !24
  %i.hj = fadd nsz <2 x double> %i.fw, %i.gt
  store <2 x double> %i.hj, ptr %i.db, align 8, !tbaa !24
  %i.hk = shufflevector <2 x double> %i.dy, <2 x double> %i.dx, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hl = shufflevector <2 x double> %i.ek, <2 x double> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.hm = shufflevector <2 x double> %i.ew, <2 x double> %i.ev, <2 x i32> <i32 0, i32 3>
  %i.hn = shufflevector <2 x double> %i.fi, <2 x double> %i.fh, <2 x i32> <i32 0, i32 3>
  %i.ho = shufflevector <2 x double> %i.fu, <2 x double> %i.ft, <2 x i32> <i32 0, i32 3>
  %i.hp = shufflevector <2 x double> %i.ej, <2 x double> %i.ek, <2 x i32> <i32 1, i32 2>
  %i.hq = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.hr = fsub nsz <2 x double> %i.hp, %i.hq      ; 2 uses
  %i.hs = fadd nsz <2 x double> %i.hl, %i.ho      ; 3 uses
  %i.ht = shufflevector <2 x double> %i.ev, <2 x double> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.hu = shufflevector <2 x double> %i.fh, <2 x double> %i.fi, <2 x i32> <i32 1, i32 2>
  %i.hv = fsub nsz <2 x double> %i.ht, %i.hu      ; 2 uses
  %i.hw = fadd nsz <2 x double> %i.hm, %i.hn      ; 3 uses
  %i.hx = fadd nsz <2 x double> %i.hk, %i.hs
  %i.hy = fadd nsz <2 x double> %i.hx, %i.hw
  store <2 x double> %i.hy, ptr %i.dc, align 8, !tbaa !24
  %10 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %11 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.hz = fneg nsz <2 x double> %i.hw
  %i.ia = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ib = fmul nsz <2 x double> %i.ia, %i.hz
  %i.ic = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hs, <2 x double> %i.ib) ; 2 uses
  %12 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %13 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.ie = shufflevector <1 x double> %13, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.if = fmul nsz <2 x double> %i.hv, %i.ie
  %i.ig = shufflevector <1 x double> %12, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.hr, <2 x double> %i.if) ; 2 uses
  %i.ii = fsub nsz <2 x double> %i.id, %i.ih      ; 2 uses
  %i.ij = fadd nsz <2 x double> %i.id, %i.ih      ; 2 uses
  %i.ik = shufflevector <2 x double> %i.ii, <2 x double> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.il = shufflevector <2 x double> %i.ij, <2 x double> %i.ii, <2 x i32> <i32 0, i32 3>
  %i.im = fadd nsz <2 x double> %i.hk, %i.il
  store <2 x double> %i.im, ptr %i.dd, align 8, !tbaa !24
  %i.in = fneg nsz <2 x double> %i.hs
  %i.io = fmul nsz <2 x double> %i.ia, %i.in
  %i.ip = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.hw, <2 x double> %i.io) ; 2 uses
  %i.iq = fneg nsz <2 x double> %i.hr
  %i.ir = fmul nsz <2 x double> %i.ie, %i.iq
  %i.is = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.hv, <2 x double> %i.ir) ; 2 uses
  %i.it = fadd nsz <2 x double> %i.ip, %i.is      ; 2 uses
  %i.iu = fsub nsz <2 x double> %i.ip, %i.is      ; 2 uses
  %i.iv = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 0, i32 3>
  %i.iw = shufflevector <2 x double> %i.iu, <2 x double> %i.it, <2 x i32> <i32 0, i32 3>
  %i.ix = fadd nsz <2 x double> %i.hk, %i.iw
  store <2 x double> %i.ix, ptr %i.de, align 8, !tbaa !24
  %i.iy = fadd nsz <2 x double> %i.hk, %i.iv
  store <2 x double> %i.iy, ptr %i.df, align 8, !tbaa !24
  %i.iz = fadd nsz <2 x double> %i.hk, %i.ik
  store <2 x double> %i.iz, ptr %i.dg, align 8, !tbaa !24
  %i.ja = shufflevector <2 x double> %i.ek, <2 x double> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.jb = shufflevector <2 x double> %i.fu, <2 x double> %i.ft, <2 x i32> <i32 1, i32 2>
  %i.jc = fsub nsz <2 x double> %i.ja, %i.jb      ; 2 uses
  %i.jd = fadd nsz <2 x double> %i.el, %i.fv      ; 3 uses
  %i.je = shufflevector <2 x double> %i.ew, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.jf = shufflevector <2 x double> %i.fi, <2 x double> %i.fh, <2 x i32> <i32 1, i32 2>
  %i.jg = fsub nsz <2 x double> %i.je, %i.jf      ; 2 uses
  %i.jh = fadd nsz <2 x double> %i.ex, %i.fj      ; 3 uses
  %i.ji = fadd nsz <2 x double> %i.dz, %i.jd
  %i.jj = fadd nsz <2 x double> %i.ji, %i.jh
  store <2 x double> %i.jj, ptr %i.dh, align 8, !tbaa !24
  %14 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %15 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.jk = fneg nsz <2 x double> %i.jh
  %i.jl = shufflevector <1 x double> %15, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jm = fmul nsz <2 x double> %i.jl, %i.jk
  %i.jn = shufflevector <1 x double> %14, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jd, <2 x double> %i.jm) ; 2 uses
  %16 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %17 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.jp = shufflevector <1 x double> %17, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jq = fmul nsz <2 x double> %i.jg, %i.jp
  %i.jr = shufflevector <1 x double> %16, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.js = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jc, <2 x double> %i.jq) ; 2 uses
  %i.jt = fsub nsz <2 x double> %i.jo, %i.js      ; 2 uses
  %i.ju = fadd nsz <2 x double> %i.jo, %i.js      ; 2 uses
  %i.jv = shufflevector <2 x double> %i.jt, <2 x double> %i.ju, <2 x i32> <i32 0, i32 3>
  %i.jw = shufflevector <2 x double> %i.ju, <2 x double> %i.jt, <2 x i32> <i32 0, i32 3>
  %i.jx = fadd nsz <2 x double> %i.dz, %i.jw
  store <2 x double> %i.jx, ptr %i.di, align 8, !tbaa !24
  %i.jy = fneg nsz <2 x double> %i.jd
  %i.jz = fmul nsz <2 x double> %i.jl, %i.jy
  %i.ka = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jh, <2 x double> %i.jz) ; 2 uses
  %i.kb = fneg nsz <2 x double> %i.jc
  %i.kc = fmul nsz <2 x double> %i.jp, %i.kb
  %i.kd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jg, <2 x double> %i.kc) ; 2 uses
  %i.ke = fadd nsz <2 x double> %i.ka, %i.kd      ; 2 uses
  %i.kf = fsub nsz <2 x double> %i.ka, %i.kd      ; 2 uses
  %i.kg = shufflevector <2 x double> %i.ke, <2 x double> %i.kf, <2 x i32> <i32 0, i32 3>
  %i.kh = shufflevector <2 x double> %i.kf, <2 x double> %i.ke, <2 x i32> <i32 0, i32 3>
  %i.ki = fadd nsz <2 x double> %i.dz, %i.kh
  store <2 x double> %i.ki, ptr %i.dj, align 8, !tbaa !24
  %i.kj = fadd nsz <2 x double> %i.dz, %i.kg
  store <2 x double> %i.kj, ptr %i.dk, align 8, !tbaa !24
  %i.kk = fadd nsz <2 x double> %i.dz, %i.jv
  store <2 x double> %i.kk, ptr %i.dl, align 8, !tbaa !24
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, %i.u
  br i1 %exitcond165.not, label %.preheader150.loopexit, label %.preheader151, !llvm.loop !103

bb.b:                                             ; preds = %.preheader151, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader151 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.kl = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.km = icmp slt i32 %i.kl, %i.f
  %i.kn = add nsw i32 %i.kl, %i.f
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !24 ; 2 uses
  %i.kr = xor i32 %i.kl, -1                       ; 4 uses
  br i1 %i.km, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ks = add i32 %i.f, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %2, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !24
  %i.kw = fsub nsz double %i.kv, %i.kq
  %i.kx = add nsw i32 %i.kl, %i.g
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !24
  %i.lb = add i32 %i.g, %i.kr
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !24
  %i.lf = fadd nsz double %i.la, %i.le
  %i.lg = fneg nsz double %i.lf
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.lh = add i32 %i.r, %i.kr
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !24
  %i.ll = fadd nsz double %i.kq, %i.lk
  %i.lm = fneg nsz double %i.ll
  %i.ln = sub nuw nsw i32 %i.kl, %i.f
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lo
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !24
  %i.lr = add i32 %i.g, %i.kr
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !24
  %i.lv = fsub nsz double %i.lq, %i.lu
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.077.0 = phi nsz double [ %i.kw, %bb.c ], [ %i.lm, %bb.d ]
  %.sroa.6.0 = phi nsz double [ %i.lg, %bb.c ], [ %i.lv, %bb.d ]
  %i.lw = ashr i32 %i.kl, 1
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.lx
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.ma = load <2 x double>, ptr %i.ly, align 8, !tbaa !24 ; 2 uses
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mc = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fneg nsz <2 x double> %i.mb
  %i.mf = shufflevector <2 x double> %i.ma, <2 x double> %i.me, <2 x i32> <i32 0, i32 2>
  %i.mg = fmul nsz <2 x double> %i.md, %i.mf
  %i.mh = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mb, <2 x double> %i.mg)
  store <2 x double> %i.mj, ptr %i.lz, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader150
  %i.mk = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %i.ml = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count173 = zext nneg i32 %i.i to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv170 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next171, %bb.f ] ; 3 uses
  %i.mm = add nuw nsw i64 %indvars.iv170, %i.ml   ; 3 uses
  %i.mn = xor i64 %indvars.iv170, -1
  %i.mo = add nsw i64 %i.ml, %i.mn                ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !12
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mo
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !12
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [16 x i8], ptr %i.mk, i64 %i.mt ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !29 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !30 ; 2 uses
  %i.my = sext i32 %i.mq to i64
  %i.mz = getelementptr inbounds [16 x i8], ptr %i.mk, i64 %i.my ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !29 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !30 ; 2 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.mm ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !30
  %i.ng = load double, ptr %i.nd, align 8, !tbaa !29
  %i.nh = fneg nsz double %i.ng
  %i.ni = fmul nsz double %i.nc, %i.nh
  %i.nj = tail call nsz double @llvm.fmuladd.f64(double %i.na, double %i.nf, double %i.ni)
  %i.nk = shl nsw i64 %i.mo, 1
  %i.nl = mul nsw i64 %i.p, %i.nk
  %i.nm = getelementptr [8 x i8], ptr %1, i64 %i.nl ; 2 uses
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %i.p
  store double %i.nj, ptr %i.nn, align 8, !tbaa !24
  %i.no = load double, ptr %i.nd, align 8, !tbaa !29
  %i.np = load double, ptr %i.ne, align 8, !tbaa !30
  %i.nq = fmul nsz double %i.nc, %i.np
  %i.nr = tail call nsz double @llvm.fmuladd.f64(double %i.na, double %i.no, double %i.nq)
  %i.ns = shl nuw nsw i64 %i.mm, 1
  %i.nt = mul nuw nsw i64 %i.p, %i.ns
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nt ; 2 uses
  store double %i.nr, ptr %i.nu, align 8, !tbaa !24
  %i.nv = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mo ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !30
  %i.ny = load double, ptr %i.nv, align 8, !tbaa !29
  %i.nz = fneg nsz double %i.ny
  %i.oa = fmul nsz double %i.mx, %i.nz
  %i.ob = tail call nsz double @llvm.fmuladd.f64(double %i.mv, double %i.nx, double %i.oa)
  %i.oc = getelementptr [8 x i8], ptr %i.nu, i64 %i.p
  store double %i.ob, ptr %i.oc, align 8, !tbaa !24
  %i.od = load double, ptr %i.nv, align 8, !tbaa !29
  %i.oe = load double, ptr %i.nw, align 8, !tbaa !30
  %i.of = fmul nsz double %i.mx, %i.oe
  %i.og = tail call nsz double @llvm.fmuladd.f64(double %i.mv, double %i.od, double %i.of)
  store double %i.og, ptr %i.nm, align 8, !tbaa !24
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge, label %bb.f, !llvm.loop !105
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 3
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 7 uses
  %i.o = mul nsw i32 %i.h, 6
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 3 uses
  %.idx.i = shl nsw i64 %i.y, 5
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.dk, %.preheader113 ] ; 7 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.dl, %.preheader113 ] ; 4 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.dm, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.bk, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.n, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = sub nsw i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = sext i32 %i.ay to i64
  %i.bf = mul nsw i64 %i.n, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.bl = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.y
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %.idx.i
  %i.bq = load double, ptr %i.aj, align 8, !tbaa !30
  %i.br = load <2 x double>, ptr %.0118, align 8, !tbaa !24 ; 2 uses
  %i.bs = fneg nsz double %i.bq
  %i.bt = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 0
  %i.bx = fmul nsz <2 x double> %i.bu, %i.bw
  %i.by = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.br, <2 x double> %i.bx) ; 2 uses
  %i.cb = load double, ptr %i.aw, align 8, !tbaa !30
  %i.cc = load <2 x double>, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.cd = fneg nsz double %i.cb
  %i.ce = insertelement <2 x double> poison, double %i.au, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x double> %i.cg, double %i.cd, i64 0
  %i.ci = fmul nsz <2 x double> %i.cf, %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cc, <2 x double> %i.ci) ; 2 uses
  %i.cm = load double, ptr %i.bj, align 8, !tbaa !30
  %i.cn = load <2 x double>, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.co = fneg nsz double %i.cm
  %i.cp = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x double> %i.cr, double %i.co, i64 0
  %i.ct = fmul nsz <2 x double> %i.cq, %i.cs
  %i.cu = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cn, <2 x double> %i.ct) ; 2 uses
  %i.cx = fsub nsz <2 x double> %i.cl, %i.cw
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = fadd nsz <2 x double> %i.cl, %i.cw      ; 2 uses
  %i.da = fadd nsz <2 x double> %i.ca, %i.cz
  store <2 x double> %i.da, ptr %i.bn, align 8, !tbaa !24
  %i.db = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24
  %i.dc = fmul nsz <2 x double> %i.cy, %i.db      ; 2 uses
  %4 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.dd = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul nsz <2 x double> %i.cz, %i.dd
  %i.df = fsub nsz <2 x double> %i.ca, %i.de      ; 2 uses
  %i.dg = fadd nsz <2 x double> %i.df, %i.dc      ; 2 uses
  %i.dh = fsub nsz <2 x double> %i.df, %i.dc      ; 2 uses
  %i.di = shufflevector <2 x double> %i.dg, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.di, ptr %i.bo, align 8, !tbaa !24
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> %i.dg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dj, ptr %i.bp, align 8, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %.0118, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.dm = add nuw nsw i32 %.0109116, 3            ; 2 uses
  %i.dn = icmp slt i32 %i.dm, %i.e
  br i1 %i.dn, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !106

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 2 uses
  %i.do = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.dk, %.preheader112.loopexit ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !10
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  tail call void %i.dr(ptr noundef %i.do, ptr noundef %i.ds, ptr noundef %i.ds, i64 noundef 16) #16
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !10
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !32
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %.pre-phi ; 2 uses
  tail call void %i.dt(ptr noundef %i.du, ptr noundef %i.dw, ptr noundef %i.dw, i64 noundef 16) #16
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %.idx ; 2 uses
  tail call void %i.dx(ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef %i.ea, i64 noundef 16) #16
  %i.eb = icmp sgt i32 %i.d, 0
  br i1 %i.eb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.ec = load ptr, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  %i.ed = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ee = add nuw nsw i64 %indvars.iv, %i.ed      ; 3 uses
  %i.ef = xor i64 %indvars.iv, -1
  %i.eg = add nsw i64 %i.ed, %i.ef                ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ee
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !12
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.eg
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ec, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30 ; 2 uses
  %i.ep = load double, ptr %i.em, align 8, !tbaa !29 ; 2 uses
  %i.eq = sext i32 %i.ei to i64
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ec, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load double, ptr %i.es, align 8, !tbaa !30 ; 2 uses
  %i.eu = load double, ptr %i.er, align 8, !tbaa !29 ; 2 uses
  %i.ev = getelementptr inbounds [16 x i8], ptr %.0.lcssa, i64 %i.eg ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !30 ; 2 uses
  %i.ey = load double, ptr %i.ev, align 8, !tbaa !29
  %i.ez = fneg nsz double %i.ey
  %i.fa = fmul nsz double %i.ep, %i.ez
  %i.fb = tail call nsz double @llvm.fmuladd.f64(double %i.eo, double %i.ex, double %i.fa)
  %i.fc = getelementptr inbounds [16 x i8], ptr %1, i64 %i.eg ; 2 uses
  store double %i.fb, ptr %i.fc, align 8, !tbaa !29
  %i.fd = load double, ptr %i.ev, align 8, !tbaa !29
  %i.fe = fmul nsz double %i.ep, %i.ex
  %i.ff = tail call nsz double @llvm.fmuladd.f64(double %i.eo, double %i.fd, double %i.fe)
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ee ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store double %i.ff, ptr %i.fh, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.ee ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !30 ; 2 uses
  %i.fl = load double, ptr %i.fi, align 8, !tbaa !29
  %i.fm = fneg nsz double %i.fl
  %i.fn = fmul nsz double %i.eu, %i.fm
  %i.fo = tail call nsz double @llvm.fmuladd.f64(double %i.et, double %i.fk, double %i.fn)
  store double %i.fo, ptr %i.fg, align 8, !tbaa !29
  %i.fp = load double, ptr %i.fi, align 8, !tbaa !29
  %i.fq = fmul nsz double %i.eu, %i.fk
  %i.fr = tail call nsz double @llvm.fmuladd.f64(double %i.et, double %i.fp, double %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store double %i.fr, ptr %i.fs, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !107
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 5
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 11 uses
  %i.o = mul nsw i32 %i.h, 10
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r ; 5 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 5 uses
  %.idx.i = shl nsw i64 %i.y, 5
  %.idx88.i = mul nsw i64 %i.y, 48
  %.idx89.i = shl nsw i64 %i.y, 6
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.ge, %.preheader113 ] ; 11 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.gf, %.preheader113 ] ; 6 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.gg, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.ck, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.n, %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = sub nsw i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = sext i32 %i.ay to i64
  %i.bf = mul nsw i64 %i.n, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.n, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = sext i32 %i.bl to i64
  %i.bs = mul nsw i64 %i.n, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.0118, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %.0118, i64 56
  %i.bx = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %i.bz = sub nsw i32 0, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.n, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !24
  %i.ce = sext i32 %i.by to i64
  %i.cf = mul nsw i64 %i.n, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0118, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.0118, i64 72
  %i.ck = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.cl = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds [16 x i8], ptr %i.cn, i64 %i.y
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.idx88.i
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %.idx89.i
  %i.cs = load double, ptr %i.aj, align 8, !tbaa !30
  %i.ct = load <2 x double>, ptr %.0118, align 8, !tbaa !24 ; 2 uses
  %i.cu = fneg nsz double %i.cs
  %i.cv = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = insertelement <2 x double> %i.cx, double %i.cu, i64 0
  %i.cz = fmul nsz <2 x double> %i.cw, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.ct, <2 x double> %i.cz) ; 5 uses
  %i.dd = load double, ptr %i.aw, align 8, !tbaa !30
  %i.de = load <2 x double>, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.df = fneg nsz double %i.dd
  %i.dg = insertelement <2 x double> poison, double %i.au, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = insertelement <2 x double> %i.di, double %i.df, i64 0
  %i.dk = fmul nsz <2 x double> %i.dh, %i.dj
  %i.dl = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.de, <2 x double> %i.dk) ; 2 uses
  %i.do = load double, ptr %i.bj, align 8, !tbaa !30
  %i.dp = load <2 x double>, ptr %i.bi, align 8, !tbaa !24 ; 2 uses
  %i.dq = fneg nsz double %i.do
  %i.dr = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x double> %i.dt, double %i.dq, i64 0
  %i.dv = fmul nsz <2 x double> %i.ds, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dp, <2 x double> %i.dv) ; 2 uses
  %i.dz = load double, ptr %i.bw, align 8, !tbaa !30
  %i.ea = load <2 x double>, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %i.eb = fneg nsz double %i.dz
  %i.ec = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ef = insertelement <2 x double> %i.ee, double %i.eb, i64 0
  %i.eg = fmul nsz <2 x double> %i.ed, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ea, <2 x double> %i.eg) ; 2 uses
  %i.ek = load double, ptr %i.cj, align 8, !tbaa !30
  %i.el = load <2 x double>, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.em = fneg nsz double %i.ek
  %i.en = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x double> %i.ep, double %i.em, i64 0
  %i.er = fmul nsz <2 x double> %i.eo, %i.eq
  %i.es = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.el, <2 x double> %i.er) ; 2 uses
  %i.ev = fsub nsz <2 x double> %i.dn, %i.eu      ; 2 uses
  %i.ew = fadd nsz <2 x double> %i.dn, %i.eu      ; 3 uses
  %i.ex = fsub nsz <2 x double> %i.dy, %i.ej      ; 2 uses
  %i.ey = fadd nsz <2 x double> %i.dy, %i.ej      ; 3 uses
  %i.ez = fadd nsz <2 x double> %i.dc, %i.ew
  %i.fa = fadd nsz <2 x double> %i.ez, %i.ey
  store <2 x double> %i.fa, ptr %i.cn, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.fb = fneg nsz <2 x double> %i.ey
  %i.fc = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul nsz <2 x double> %i.fc, %i.fb
  %i.fe = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.ew, <2 x double> %i.fd) ; 2 uses
  %6 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.fg = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul nsz <2 x double> %i.ex, %i.fg
  %i.fi = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.ev, <2 x double> %i.fh)
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fl = fsub nsz <2 x double> %i.ff, %i.fk      ; 2 uses
  %i.fm = fadd nsz <2 x double> %i.ff, %i.fk      ; 2 uses
  %i.fn = shufflevector <2 x double> %i.fl, <2 x double> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fl, <2 x i32> <i32 0, i32 3>
  %i.fp = fadd nsz <2 x double> %i.dc, %i.fo
  store <2 x double> %i.fp, ptr %i.co, align 8, !tbaa !24
  %i.fq = fneg nsz <2 x double> %i.ew
  %i.fr = fmul nsz <2 x double> %i.fc, %i.fq
  %i.fs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.ey, <2 x double> %i.fr) ; 2 uses
  %i.ft = fneg nsz <2 x double> %i.ev
  %i.fu = fmul nsz <2 x double> %i.fg, %i.ft
  %i.fv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.ex, <2 x double> %i.fu)
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fx = fadd nsz <2 x double> %i.fs, %i.fw      ; 2 uses
  %i.fy = fsub nsz <2 x double> %i.fs, %i.fw      ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 0, i32 3>
  %i.ga = shufflevector <2 x double> %i.fy, <2 x double> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.gb = fadd nsz <2 x double> %i.dc, %i.ga
  store <2 x double> %i.gb, ptr %i.cp, align 8, !tbaa !24
  %i.gc = fadd nsz <2 x double> %i.dc, %i.fz
  store <2 x double> %i.gc, ptr %i.cq, align 8, !tbaa !24
  %i.gd = fadd nsz <2 x double> %i.dc, %i.fn
  store <2 x double> %i.gd, ptr %i.cr, align 8, !tbaa !24
  %i.ge = getelementptr inbounds nuw i8, ptr %.0118, i64 80 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.gg = add nuw nsw i32 %.0109116, 5            ; 2 uses
  %i.gh = icmp slt i32 %i.gg, %i.e
  br i1 %i.gh, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !108

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 4 uses
  %i.gi = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.ge, %.preheader112.loopexit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !32 ; 2 uses
  tail call void %i.gl(ptr noundef %i.gi, ptr noundef %i.gm, ptr noundef %i.gm, i64 noundef 16) #16
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !32
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %.pre-phi ; 2 uses
  tail call void %i.gn(ptr noundef %i.go, ptr noundef %i.gq, ptr noundef %i.gq, i64 noundef 16) #16
  %i.gr = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gs = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %.idx ; 2 uses
  tail call void %i.gr(ptr noundef %i.gs, ptr noundef %i.gu, ptr noundef %i.gu, i64 noundef 16) #16
  %i.gv = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gw = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !32
  %.idx126 = mul nsw i64 %.pre-phi, 48
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %.idx126 ; 2 uses
  tail call void %i.gv(ptr noundef %i.gw, ptr noundef %i.gy, ptr noundef %i.gy, i64 noundef 16) #16
  %i.gz = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.ha = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.hb = load ptr, ptr %i.gk, align 8, !tbaa !32
  %.idx127 = shl nsw i64 %.pre-phi, 6
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %.idx127 ; 2 uses
  tail call void %i.gz(ptr noundef %i.ha, ptr noundef %i.hc, ptr noundef %i.hc, i64 noundef 16) #16
  %i.hd = icmp sgt i32 %i.d, 0
  br i1 %i.hd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.he = load ptr, ptr %i.gk, align 8, !tbaa !32 ; 2 uses
  %i.hf = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.hg = add nuw nsw i64 %indvars.iv, %i.hf      ; 3 uses
  %i.hh = xor i64 %indvars.iv, -1
  %i.hi = add nsw i64 %i.hf, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !12
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.he, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30 ; 2 uses
  %i.hr = load double, ptr %i.ho, align 8, !tbaa !29 ; 2 uses
  %i.hs = sext i32 %i.hk to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30 ; 2 uses
  %i.hw = load double, ptr %i.ht, align 8, !tbaa !29 ; 2 uses
  %i.hx = getelementptr inbounds [16 x i8], ptr %.0.lcssa, i64 %i.hi ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !30 ; 2 uses
  %i.ia = load double, ptr %i.hx, align 8, !tbaa !29
  %i.ib = fneg nsz double %i.ia
  %i.ic = fmul nsz double %i.hr, %i.ib
  %i.id = tail call nsz double @llvm.fmuladd.f64(double %i.hq, double %i.hz, double %i.ic)
  %i.ie = getelementptr inbounds [16 x i8], ptr %1, i64 %i.hi ; 2 uses
  store double %i.id, ptr %i.ie, align 8, !tbaa !29
  %i.if = load double, ptr %i.hx, align 8, !tbaa !29
  %i.ig = fmul nsz double %i.hr, %i.hz
  %i.ih = tail call nsz double @llvm.fmuladd.f64(double %i.hq, double %i.if, double %i.ig)
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.hg ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store double %i.ih, ptr %i.ij, align 8, !tbaa !30
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.hg ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load double, ptr %i.il, align 8, !tbaa !30 ; 2 uses
  %i.in = load double, ptr %i.ik, align 8, !tbaa !29
  %i.io = fneg nsz double %i.in
  %i.ip = fmul nsz double %i.hw, %i.io
  %i.iq = tail call nsz double @llvm.fmuladd.f64(double %i.hv, double %i.im, double %i.ip)
  store double %i.iq, ptr %i.ii, align 8, !tbaa !29
  %i.ir = load double, ptr %i.ik, align 8, !tbaa !29
  %i.is = fmul nsz double %i.hw, %i.im
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.hv, double %i.ir, double %i.is)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store double %i.it, ptr %i.iu, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !109
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 15 uses
  %i.o = mul nsw i32 %i.h, 14
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r ; 7 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 7 uses
  %.idx.i = shl nsw i64 %i.y, 5
  %.idx163.i = mul nsw i64 %i.y, 48
  %.idx164.i = shl nsw i64 %i.y, 6
  %.idx165.i = mul nsw i64 %i.y, 80
  %.idx166.i = mul nsw i64 %i.y, 96
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.jm, %.preheader113 ] ; 11 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.jn, %.preheader113 ] ; 8 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.jo, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.dg, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 2 uses
  %i.al = sub nsw i32 0, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.n, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24
  %i.aq = sext i32 %i.ak to i64
  %i.ar = mul nsw i64 %i.n, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = sub nsw i32 0, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.n, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bd = sext i32 %i.ax to i64
  %i.be = mul nsw i64 %i.n, %i.bd
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.n, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = sext i32 %i.bk to i64
  %i.br = mul nsw i64 %i.n, %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.0118, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.bx = sub nsw i32 0, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.n, %i.by
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !24
  %i.cc = sext i32 %i.bw to i64
  %i.cd = mul nsw i64 %i.n, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0118, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12 ; 2 uses
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.n, %i.ck
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = sext i32 %i.ci to i64
  %i.cp = mul nsw i64 %i.n, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %.0118, i64 88
  %i.ct = getelementptr inbounds nuw i8, ptr %.0107117, i64 24
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12 ; 2 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.n, %i.cw
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !24
  %i.da = sext i32 %i.cu to i64
  %i.db = mul nsw i64 %i.n, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.0118, i64 96
  %i.df = getelementptr inbounds nuw i8, ptr %.0118, i64 104
  %i.dg = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.dh = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.di ; 7 uses
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.dj, i64 %i.y
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %.idx.i
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %.idx163.i
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %.idx164.i
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.idx165.i
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %.idx166.i
  %i.dq = load <2 x double>, ptr %.0118, align 8, !tbaa !24 ; 3 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1
  %i.ds = fneg nsz double %i.dr
  %i.dt = fmul nsz double %i.ai, %i.ds
  %i.du = extractelement <2 x double> %i.dq, i64 0
  %i.dv = fmul nsz double %i.ai, %i.du
  %i.dw = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dv, i64 1
  %i.ea = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dq, <2 x double> %i.dz) ; 7 uses
  %i.eb = load double, ptr %i.av, align 8, !tbaa !30
  %i.ec = load <2 x double>, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %i.ed = fneg nsz double %i.eb
  %i.ee = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eh = insertelement <2 x double> %i.eg, double %i.ed, i64 0
  %i.ei = fmul nsz <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.ec, <2 x double> %i.ei) ; 2 uses
  %i.em = load double, ptr %i.bh, align 8, !tbaa !29
  %i.en = load <2 x double>, ptr %i.bi, align 8, !tbaa !24 ; 3 uses
  %i.eo = load <2 x double>, ptr %i.bu, align 8, !tbaa !24 ; 3 uses
  %i.ep = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.bt, i64 1 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.em, i64 0 ; 2 uses
  %i.es = fneg nsz <2 x double> %i.eo
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 2>
  %i.eu = fmul nsz <2 x double> %i.eq, %i.et
  %i.ev = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.bp, i64 1 ; 2 uses
  %i.ex = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.en, <2 x double> %i.eu) ; 2 uses
  %i.ey = fneg nsz <2 x double> %i.en
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> %i.en, <2 x i32> <i32 0, i32 3>
  %i.fa = fmul nsz <2 x double> %i.eq, %i.ez
  %i.fb = shufflevector <2 x double> %i.er, <2 x double> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.fc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.fb, <2 x double> %i.fa) ; 2 uses
  %i.fd = load double, ptr %i.cg, align 8, !tbaa !30
  %i.fe = load <2 x double>, ptr %i.cg, align 8, !tbaa !24
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fg = fneg nsz double %i.fd
  %i.fh = load double, ptr %i.cs, align 8, !tbaa !30 ; 2 uses
  %i.fi = fneg nsz double %i.fh
  %i.fj = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.cf, i64 1 ; 2 uses
  %i.fl = insertelement <2 x double> %i.eo, double %i.fi, i64 0 ; 2 uses
  %i.fm = fmul nsz <2 x double> %i.fk, %i.fl
  %i.fn = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.cb, i64 1 ; 2 uses
  %i.fp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.ff, <2 x double> %i.fm) ; 2 uses
  %i.fq = insertelement <2 x double> %i.ff, double %i.fg, i64 1
  %i.fr = fmul nsz <2 x double> %i.fk, %i.fq
  %i.fs = insertelement <2 x double> %i.fl, double %i.fh, i64 0
  %i.ft = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fs, <2 x double> %i.fr) ; 2 uses
  %i.fu = load double, ptr %i.df, align 8, !tbaa !30
  %i.fv = load <2 x double>, ptr %i.de, align 8, !tbaa !24 ; 2 uses
  %i.fw = fneg nsz double %i.fu
  %i.fx = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ga = insertelement <2 x double> %i.fz, double %i.fw, i64 0
  %i.gb = fmul nsz <2 x double> %i.fy, %i.ga
  %i.gc = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.fv, <2 x double> %i.gb) ; 2 uses
  %i.gf = fadd nsz <2 x double> %i.el, %i.ge      ; 3 uses
  %i.gg = fadd nsz <2 x double> %i.ex, %i.ft      ; 3 uses
  %i.gh = fadd nsz <2 x double> %i.fc, %i.fp      ; 3 uses
  %i.gi = fadd nsz <2 x double> %i.ea, %i.gf
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gg, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.gk = fadd nsz <2 x double> %i.gi, %i.gj
  %i.gl = shufflevector <2 x double> %i.gg, <2 x double> %i.gh, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.gm = fadd nsz <2 x double> %i.gk, %i.gl
  store <2 x double> %i.gm, ptr %i.dj, align 8, !tbaa !24
  %4 = load <1 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.gn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 3 uses
  %i.go = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.gp = extractelement <2 x double> %i.gn, i64 0
  %i.gq = fneg nsz <2 x double> %i.gg
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = shufflevector <1 x double> %4, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gt = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.gu = fsub nsz <2 x double> %i.el, %i.ge      ; 4 uses
  %i.gv = fsub nsz <2 x double> %i.ex, %i.ft      ; 4 uses
  %i.gw = fsub nsz <2 x double> %i.fc, %i.fp      ; 4 uses
  %i.gx = fneg nsz double %i.gp                   ; 2 uses
  %i.gy = fneg nsz <2 x double> %i.gf             ; 2 uses
  %i.gz = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = fneg nsz double %i.gt
  %i.hd = insertelement <2 x double> poison, double %i.go, i64 0 ; 2 uses
  %i.he = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %i.hh = shufflevector <2 x double> %i.gn, <2 x double> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.hi = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = fmul nsz <2 x double> %i.hh, %i.hi
  %i.hk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gf, <2 x double> %i.hj)
  %i.hl = fneg nsz <2 x double> %i.hg             ; 3 uses
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hn = insertelement <2 x double> %i.hm, double %i.gx, i64 1
  %i.ho = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.gh, <2 x double> %i.hk) ; 2 uses
  %i.hp = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hq = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hr = fmul nsz <2 x double> %i.hq, %i.gy
  %i.hs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gl, <2 x double> %i.hr)
  %i.ht = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gj, <2 x double> %i.hs) ; 2 uses
  %i.hu = fmul nsz <2 x double> %i.gr, %i.gy
  %i.hv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gj, <2 x double> %i.hu)
  %i.hw = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.gl, <2 x double> %i.hv) ; 2 uses
  %i.hy = shufflevector <2 x double> %i.hd, <2 x double> %i.hg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.hz = fmul nsz <2 x double> %i.gv, %i.hy
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ib = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.gw, <2 x double> %i.ia)
  %i.ic = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.gu, <2 x double> %i.ib)
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ie = shufflevector <2 x double> %i.gw, <2 x double> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.if = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = fmul nsz <2 x double> %i.ie, %i.ig
  %i.ii = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.hb, <2 x double> %i.ih)
  %i.ik = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.im = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.il, <2 x double> %i.ij) ; 2 uses
  %i.in = fadd nsz <2 x double> %i.ht, %i.id      ; 2 uses
  %i.io = fsub nsz <2 x double> %i.ht, %i.id      ; 2 uses
  %i.ip = shufflevector <2 x double> %i.in, <2 x double> %i.io, <2 x i32> <i32 0, i32 3>
  %i.iq = fsub nsz <2 x double> %i.hx, %i.im      ; 2 uses
  %i.ir = fadd nsz <2 x double> %i.hx, %i.im      ; 2 uses
  %i.is = shufflevector <2 x double> %i.iq, <2 x double> %i.ir, <2 x i32> <i32 0, i32 3>
  %i.it = fmul nsz <2 x double> %i.il, %i.ig
  %i.iu = insertelement <2 x double> %i.hp, double %i.go, i64 0
  %i.iv = shufflevector <2 x double> %i.gw, <2 x double> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.iw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.iv, <2 x double> %i.it)
  %i.ix = insertelement <2 x double> %i.hg, double %i.go, i64 1
  %i.iy = shufflevector <2 x double> %i.gu, <2 x double> %i.gv, <2 x i32> <i32 1, i32 3>
  %i.iz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %i.iy, <2 x double> %i.iw) ; 2 uses
  %i.ja = fadd nsz <2 x double> %i.ho, %i.iz      ; 2 uses
  %i.jb = fsub nsz <2 x double> %i.ho, %i.iz      ; 2 uses
  %i.jc = shufflevector <2 x double> %i.ja, <2 x double> %i.jb, <2 x i32> <i32 0, i32 3>
  %i.jd = shufflevector <2 x double> %i.jb, <2 x double> %i.ja, <2 x i32> <i32 0, i32 3>
  %i.je = fadd nsz <2 x double> %i.ea, %i.jc
  store <2 x double> %i.je, ptr %i.dk, align 8, !tbaa !24
  %i.jf = shufflevector <2 x double> %i.io, <2 x double> %i.in, <2 x i32> <i32 0, i32 3>
  %i.jg = fadd nsz <2 x double> %i.ea, %i.jf
  store <2 x double> %i.jg, ptr %i.dl, align 8, !tbaa !24
  %i.jh = shufflevector <2 x double> %i.ir, <2 x double> %i.iq, <2 x i32> <i32 0, i32 3>
  %i.ji = fadd nsz <2 x double> %i.ea, %i.jh
  store <2 x double> %i.ji, ptr %i.dm, align 8, !tbaa !24
  %i.jj = fadd nsz <2 x double> %i.ea, %i.is
  store <2 x double> %i.jj, ptr %i.dn, align 8, !tbaa !24
  %i.jk = fadd nsz <2 x double> %i.ea, %i.ip
  store <2 x double> %i.jk, ptr %i.do, align 8, !tbaa !24
  %i.jl = fadd nsz <2 x double> %i.ea, %i.jd
  store <2 x double> %i.jl, ptr %i.dp, align 8, !tbaa !24
  %i.jm = getelementptr inbounds nuw i8, ptr %.0118, i64 112 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0107117, i64 28
  %i.jo = add nuw nsw i32 %.0109116, 7            ; 2 uses
  %i.jp = icmp slt i32 %i.jo, %i.e
  br i1 %i.jp, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !110

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 6 uses
  %i.jq = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.jm, %.preheader112.loopexit ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !32 ; 2 uses
  tail call void %i.jt(ptr noundef %i.jq, ptr noundef %i.ju, ptr noundef %i.ju, i64 noundef 16) #16
  %i.jv = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.jx = load ptr, ptr %i.js, align 8, !tbaa !32
  %i.jy = getelementptr inbounds [16 x i8], ptr %i.jx, i64 %.pre-phi ; 2 uses
  tail call void %i.jv(ptr noundef %i.jw, ptr noundef %i.jy, ptr noundef %i.jy, i64 noundef 16) #16
  %i.jz = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.ka = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.kb = load ptr, ptr %i.js, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 %.idx ; 2 uses
  tail call void %i.jz(ptr noundef %i.ka, ptr noundef %i.kc, ptr noundef %i.kc, i64 noundef 16) #16
  %i.kd = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.ke = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.kf = load ptr, ptr %i.js, align 8, !tbaa !32
  %.idx126 = mul nsw i64 %.pre-phi, 48
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %.idx126 ; 2 uses
  tail call void %i.kd(ptr noundef %i.ke, ptr noundef %i.kg, ptr noundef %i.kg, i64 noundef 16) #16
  %i.kh = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.ki = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.kj = load ptr, ptr %i.js, align 8, !tbaa !32
  %.idx127 = shl nsw i64 %.pre-phi, 6
  %i.kk = getelementptr inbounds i8, ptr %i.kj, i64 %.idx127 ; 2 uses
  tail call void %i.kh(ptr noundef %i.ki, ptr noundef %i.kk, ptr noundef %i.kk, i64 noundef 16) #16
  %i.kl = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.km = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.kn = load ptr, ptr %i.js, align 8, !tbaa !32
  %.idx128 = mul nsw i64 %.pre-phi, 80
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %.idx128 ; 2 uses
  tail call void %i.kl(ptr noundef %i.km, ptr noundef %i.ko, ptr noundef %i.ko, i64 noundef 16) #16
  %i.kp = load ptr, ptr %i.jr, align 8, !tbaa !10
  %i.kq = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.kr = load ptr, ptr %i.js, align 8, !tbaa !32
  %.idx129 = mul nsw i64 %.pre-phi, 96
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %.idx129 ; 2 uses
  tail call void %i.kp(ptr noundef %i.kq, ptr noundef %i.ks, ptr noundef %i.ks, i64 noundef 16) #16
  %i.kt = icmp sgt i32 %i.d, 0
  br i1 %i.kt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.ku = load ptr, ptr %i.js, align 8, !tbaa !32 ; 2 uses
  %i.kv = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.kw = add nuw nsw i64 %indvars.iv, %i.kv      ; 3 uses
  %i.kx = xor i64 %indvars.iv, -1
  %i.ky = add nsw i64 %i.kv, %i.kx                ; 3 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.kw
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !12
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ky
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !12
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [16 x i8], ptr %i.ku, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !30 ; 2 uses
  %i.lh = load double, ptr %i.le, align 8, !tbaa !29 ; 2 uses
  %i.li = sext i32 %i.la to i64
  %i.lj = getelementptr inbounds [16 x i8], ptr %i.ku, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !30 ; 2 uses
  %i.lm = load double, ptr %i.lj, align 8, !tbaa !29 ; 2 uses
  %i.ln = getelementptr inbounds [16 x i8], ptr %.0.lcssa, i64 %i.ky ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !30 ; 2 uses
  %i.lq = load double, ptr %i.ln, align 8, !tbaa !29
  %i.lr = fneg nsz double %i.lq
  %i.ls = fmul nsz double %i.lh, %i.lr
  %i.lt = tail call nsz double @llvm.fmuladd.f64(double %i.lg, double %i.lp, double %i.ls)
  %i.lu = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ky ; 2 uses
  store double %i.lt, ptr %i.lu, align 8, !tbaa !29
  %i.lv = load double, ptr %i.ln, align 8, !tbaa !29
  %i.lw = fmul nsz double %i.lh, %i.lp
  %i.lx = tail call nsz double @llvm.fmuladd.f64(double %i.lg, double %i.lv, double %i.lw)
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.kw ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store double %i.lx, ptr %i.lz, align 8, !tbaa !30
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.kw ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !30 ; 2 uses
  %i.md = load double, ptr %i.ma, align 8, !tbaa !29
  %i.me = fneg nsz double %i.md
  %i.mf = fmul nsz double %i.lm, %i.me
  %i.mg = tail call nsz double @llvm.fmuladd.f64(double %i.ll, double %i.mc, double %i.mf)
  store double %i.mg, ptr %i.ly, align 8, !tbaa !29
  %i.mh = load double, ptr %i.ma, align 8, !tbaa !29
  %i.mi = fmul nsz double %i.lm, %i.mc
  %i.mj = tail call nsz double @llvm.fmuladd.f64(double %i.ll, double %i.mh, double %i.mi)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store double %i.mj, ptr %i.mk, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !111
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
end_hunk_4
begin_hunk_5_@ff_tx_mdct_pfa_9xM_inv_double_c:bb.a
  %i.nz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.nd ; 2 uses
  store double %i.ny, ptr %i.nz, align 8, !tbaa !29
  %i.oa = load double, ptr %i.ns, align 8, !tbaa !29
  %i.ob = fmul nsz double %i.nm, %i.nu
  %i.oc = tail call nsz double @llvm.fmuladd.f64(double %i.nl, double %i.oa, double %i.ob)
  %i.od = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.nb ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store double %i.oc, ptr %i.oe, align 8, !tbaa !30
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.nb ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load double, ptr %i.og, align 8, !tbaa !30 ; 2 uses
  %i.oi = load double, ptr %i.of, align 8, !tbaa !29
  %i.oj = fneg nsz double %i.oi
  %i.ok = fmul nsz double %i.nr, %i.oj
  %i.ol = tail call nsz double @llvm.fmuladd.f64(double %i.nq, double %i.oh, double %i.ok)
  store double %i.ol, ptr %i.od, align 8, !tbaa !29
  %i.om = load double, ptr %i.of, align 8, !tbaa !29
  %i.on = fmul nsz double %i.nr, %i.oh
  %i.oo = tail call nsz double @llvm.fmuladd.f64(double %i.nq, double %i.om, double %i.on)
  %i.op = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store double %i.oo, ptr %i.op, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = mul nsw i32 %i.h, 15
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 3                           ; 3 uses
  %i.o = mul nsw i32 %i.h, 30
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader127.lr.ph, label %..preheader126_crit_edge

..preheader126_crit_edge:                         ; preds = %bb.a
  %.pre149 = sext i32 %i.h to i64
  br label %.preheader126

.preheader127.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = sext i32 %i.h to i64                     ; 15 uses
  %.idx.i = mul nsw i64 %i.y, 96
  %.idx88.i = mul nsw i64 %i.y, 192
  %.idx89.i = mul nsw i64 %i.y, 48
  %.idx90.i = mul nsw i64 %i.y, 144
  %.idx.i115 = mul nsw i64 %i.y, 160
  %.idx88.i116 = mul nsw i64 %i.y, 112
  %.idx89.i117 = mul nsw i64 %i.y, 208
  %.idx90.i118 = shl nsw i64 %i.y, 6
  %.idx.i122 = mul nsw i64 %i.y, 80
  %.idx88.i123 = mul nsw i64 %i.y, 176
  %.idx89.i124 = shl nsw i64 %i.y, 5
  %.idx90.i125 = shl nsw i64 %i.y, 7
  %.idx91.i = mul nsw i64 %i.y, 224
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 224
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.lr.ph, %fft15.exit
  %.0133 = phi ptr [ %i.b, %.preheader127.lr.ph ], [ %i.ko, %fft15.exit ] ; 2 uses
  %.0107132 = phi ptr [ %i.j, %.preheader127.lr.ph ], [ %i.kp, %fft15.exit ] ; 2 uses
  %.0109131 = phi i32 [ 0, %.preheader127.lr.ph ], [ %i.kq, %fft15.exit ]
  %.0110130 = phi ptr [ %i.v, %.preheader127.lr.ph ], [ %i.cy, %fft15.exit ] ; 2 uses
  br label %bb.b

.preheader126.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %.preheader126

.preheader126:                                    ; preds = %..preheader126_crit_edge, %.preheader126.loopexit
  %.pre-phi = phi i64 [ %.pre149, %..preheader126_crit_edge ], [ %i.y, %.preheader126.loopexit ] ; 14 uses
  %i.an = phi ptr [ %i.g, %..preheader126_crit_edge ], [ %.pre, %.preheader126.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader126_crit_edge ], [ %i.ko, %.preheader126.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  tail call void %i.aq(ptr noundef %i.an, ptr noundef %i.ar, ptr noundef %i.ar, i64 noundef 16) #16
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !32
  %i.av = getelementptr inbounds [16 x i8], ptr %i.au, i64 %.pre-phi ; 2 uses
  tail call void %i.as(ptr noundef %i.at, ptr noundef %i.av, ptr noundef %i.av, i64 noundef 16) #16
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx = shl nsw i64 %.pre-phi, 5
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx ; 2 uses
  tail call void %i.aw(ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.az, i64 noundef 16) #16
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx152 = mul nsw i64 %.pre-phi, 48
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx152 ; 2 uses
  tail call void %i.ba(ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef %i.bd, i64 noundef 16) #16
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx153 = shl nsw i64 %.pre-phi, 6
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %.idx153 ; 2 uses
  tail call void %i.be(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bh, i64 noundef 16) #16
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx154 = mul nsw i64 %.pre-phi, 80
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %.idx154 ; 2 uses
  tail call void %i.bi(ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef %i.bl, i64 noundef 16) #16
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx155 = mul nsw i64 %.pre-phi, 96
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.idx155 ; 2 uses
  tail call void %i.bm(ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.bp, i64 noundef 16) #16
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx156 = mul nsw i64 %.pre-phi, 112
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.idx156 ; 2 uses
  tail call void %i.bq(ptr noundef %i.br, ptr noundef %i.bt, ptr noundef %i.bt, i64 noundef 16) #16
  %i.bu = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx157 = shl nsw i64 %.pre-phi, 7
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.idx157 ; 2 uses
  tail call void %i.bu(ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.bx, i64 noundef 16) #16
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ca = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx158 = mul nsw i64 %.pre-phi, 144
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx158 ; 2 uses
  tail call void %i.by(ptr noundef %i.bz, ptr noundef %i.cb, ptr noundef %i.cb, i64 noundef 16) #16
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx159 = mul nsw i64 %.pre-phi, 160
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %.idx159 ; 2 uses
  tail call void %i.cc(ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef %i.cf, i64 noundef 16) #16
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.ci = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx160 = mul nsw i64 %.pre-phi, 176
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.idx160 ; 2 uses
  tail call void %i.cg(ptr noundef %i.ch, ptr noundef %i.cj, ptr noundef %i.cj, i64 noundef 16) #16
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.cm = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %.pre-phi, 192
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.idx161 ; 2 uses
  tail call void %i.ck(ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef %i.cn, i64 noundef 16) #16
  %i.co = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.cq = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx162 = mul nsw i64 %.pre-phi, 208
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.idx162 ; 2 uses
  tail call void %i.co(ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef %i.cr, i64 noundef 16) #16
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %.pre-phi, 224
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx163 ; 2 uses
  tail call void %i.cs(ptr noundef %i.ct, ptr noundef %i.cv, ptr noundef %i.cv, i64 noundef 16) #16
  %i.cw = icmp sgt i32 %i.d, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.b
  %i.cx = load i32, ptr %.0110130, align 4, !tbaa !12
  %5 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.0110130, i64 4
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.cz ; 15 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.idx.i
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %.idx88.i
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %.idx89.i
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %.idx90.i
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %.idx.i115
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.y
  %i.dh = getelementptr inbounds i8, ptr %i.da, i64 %.idx88.i116
  %i.di = getelementptr inbounds i8, ptr %i.da, i64 %.idx89.i117
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 %.idx90.i118
  %i.dk = getelementptr inbounds i8, ptr %i.da, i64 %.idx.i122
  %i.dl = getelementptr inbounds i8, ptr %i.da, i64 %.idx88.i123
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 %.idx89.i124
  %i.dn = getelementptr inbounds i8, ptr %i.da, i64 %.idx90.i125
  %i.do = getelementptr inbounds i8, ptr %i.da, i64 %.idx91.i
  %i.dp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24 ; 5 uses
  %i.dq = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.dr = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.ds = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.dt = fsub nsz <2 x double> %i.dr, %i.ds
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = fadd nsz <2 x double> %i.dr, %i.ds      ; 2 uses
  %i.dw = fmul nsz <2 x double> %i.du, %i.dp      ; 2 uses
  %i.dx = shufflevector <1 x double> %5, <1 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dy = fmul nsz <2 x double> %i.dv, %i.dx
  %i.dz = fsub nsz <2 x double> %i.dq, %i.dy      ; 2 uses
  %i.ea = fsub nsz <2 x double> %i.dz, %i.dw      ; 2 uses
  %i.eb = fadd nsz <2 x double> %i.dz, %i.dw      ; 2 uses
  %i.ec = shufflevector <2 x double> %i.ea, <2 x double> %i.eb, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ed = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.ee = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.ef = load <2 x double>, ptr %i.ad, align 16, !tbaa !24 ; 2 uses
  %i.eg = fsub nsz <2 x double> %i.ee, %i.ef
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ei = fadd nsz <2 x double> %i.ee, %i.ef      ; 2 uses
  %i.ej = fmul nsz <2 x double> %i.eh, %i.dp      ; 2 uses
  %i.ek = fmul nsz <2 x double> %i.ei, %i.dx
  %i.el = fsub nsz <2 x double> %i.ed, %i.ek      ; 2 uses
  %i.em = fsub nsz <2 x double> %i.el, %i.ej      ; 4 uses
  %i.en = fadd nsz <2 x double> %i.el, %i.ej      ; 4 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 0, i32 3>
  %i.ep = load <2 x double>, ptr %i.ae, align 16, !tbaa !24 ; 2 uses
  %i.eq = load <2 x double>, ptr %i.af, align 16, !tbaa !24 ; 2 uses
  %i.er = load <2 x double>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.es = fsub nsz <2 x double> %i.eq, %i.er
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = fadd nsz <2 x double> %i.eq, %i.er      ; 2 uses
  %i.ev = fmul nsz <2 x double> %i.et, %i.dp      ; 2 uses
  %i.ew = fmul nsz <2 x double> %i.eu, %i.dx
  %i.ex = fsub nsz <2 x double> %i.ep, %i.ew      ; 2 uses
  %i.ey = fsub nsz <2 x double> %i.ex, %i.ev      ; 4 uses
  %i.ez = fadd nsz <2 x double> %i.ex, %i.ev      ; 4 uses
  %i.fa = shufflevector <2 x double> %i.ey, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.fb = load <2 x double>, ptr %i.ah, align 16, !tbaa !24 ; 2 uses
  %i.fc = load <2 x double>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.fd = load <2 x double>, ptr %i.aj, align 16, !tbaa !24 ; 2 uses
  %i.fe = fsub nsz <2 x double> %i.fc, %i.fd
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fg = fadd nsz <2 x double> %i.fc, %i.fd      ; 2 uses
  %i.fh = fmul nsz <2 x double> %i.ff, %i.dp      ; 2 uses
  %i.fi = fmul nsz <2 x double> %i.fg, %i.dx
  %i.fj = fsub nsz <2 x double> %i.fb, %i.fi      ; 2 uses
  %i.fk = fsub nsz <2 x double> %i.fj, %i.fh      ; 4 uses
  %i.fl = fadd nsz <2 x double> %i.fj, %i.fh      ; 4 uses
  %i.fm = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <2 x i32> <i32 0, i32 3>
  %i.fn = load <2 x double>, ptr %i.ak, align 16, !tbaa !24 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.al, align 16, !tbaa !24 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.am, align 16, !tbaa !24 ; 2 uses
  %i.fq = fsub nsz <2 x double> %i.fo, %i.fp
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = fadd nsz <2 x double> %i.fo, %i.fp      ; 2 uses
  %i.ft = fmul nsz <2 x double> %i.fr, %i.dp      ; 2 uses
  %i.fu = fmul nsz <2 x double> %i.fs, %i.dx
  %i.fv = fsub nsz <2 x double> %i.fn, %i.fu      ; 2 uses
  %i.fw = fsub nsz <2 x double> %i.fv, %i.ft      ; 4 uses
  %i.fx = fadd nsz <2 x double> %i.fv, %i.ft      ; 4 uses
  %i.fy = shufflevector <2 x double> %i.fw, <2 x double> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.fz = fadd nsz <2 x double> %i.dq, %i.dv      ; 5 uses
  %i.ga = fadd nsz <2 x double> %i.ed, %i.ei      ; 2 uses
  %i.gb = fadd nsz <2 x double> %i.ep, %i.eu      ; 2 uses
  %i.gc = fadd nsz <2 x double> %i.fb, %i.fg      ; 2 uses
  %i.gd = fadd nsz <2 x double> %i.fn, %i.fs      ; 2 uses
  %i.ge = fsub nsz <2 x double> %i.ga, %i.gd      ; 2 uses
  %i.gf = fadd nsz <2 x double> %i.ga, %i.gd      ; 3 uses
  %i.gg = fsub nsz <2 x double> %i.gb, %i.gc      ; 2 uses
  %i.gh = fadd nsz <2 x double> %i.gb, %i.gc      ; 3 uses
  %i.gi = fadd nsz <2 x double> %i.fz, %i.gf
  %i.gj = fadd nsz <2 x double> %i.gi, %i.gh
  store <2 x double> %i.gj, ptr %i.da, align 8, !tbaa !24
  %6 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %7 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.gk = fneg nsz <2 x double> %i.gh
  %i.gl = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = fmul nsz <2 x double> %i.gl, %i.gk
  %i.gn = shufflevector <1 x double> %6, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.go = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gf, <2 x double> %i.gm) ; 2 uses
  %8 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %9 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.gp = shufflevector <1 x double> %9, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = fmul nsz <2 x double> %i.gg, %i.gp
  %i.gr = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.ge, <2 x double> %i.gq)
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gu = fsub nsz <2 x double> %i.go, %i.gt      ; 2 uses
  %i.gv = fadd nsz <2 x double> %i.go, %i.gt      ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gu, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3>
  %i.gx = shufflevector <2 x double> %i.gv, <2 x double> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.gy = fadd nsz <2 x double> %i.fz, %i.gx
  store <2 x double> %i.gy, ptr %i.db, align 8, !tbaa !24
  %i.gz = fneg nsz <2 x double> %i.gf
  %i.ha = fmul nsz <2 x double> %i.gl, %i.gz
  %i.hb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.gh, <2 x double> %i.ha) ; 2 uses
  %i.hc = fneg nsz <2 x double> %i.ge
  %i.hd = fmul nsz <2 x double> %i.gp, %i.hc
  %i.he = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gg, <2 x double> %i.hd)
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hg = fadd nsz <2 x double> %i.hb, %i.hf      ; 2 uses
  %i.hh = fsub nsz <2 x double> %i.hb, %i.hf      ; 2 uses
  %i.hi = shufflevector <2 x double> %i.hg, <2 x double> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hj = shufflevector <2 x double> %i.hh, <2 x double> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.hk = fadd nsz <2 x double> %i.fz, %i.hj
  store <2 x double> %i.hk, ptr %i.dc, align 8, !tbaa !24
  %i.hl = fadd nsz <2 x double> %i.fz, %i.hi
  store <2 x double> %i.hl, ptr %i.dd, align 8, !tbaa !24
  %i.hm = fadd nsz <2 x double> %i.fz, %i.gw
  store <2 x double> %i.hm, ptr %i.de, align 8, !tbaa !24
  %i.hn = shufflevector <2 x double> %i.eb, <2 x double> %i.ea, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ho = shufflevector <2 x double> %i.en, <2 x double> %i.em, <2 x i32> <i32 0, i32 3>
  %i.hp = shufflevector <2 x double> %i.ez, <2 x double> %i.ey, <2 x i32> <i32 0, i32 3>
  %i.hq = shufflevector <2 x double> %i.fl, <2 x double> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.hr = shufflevector <2 x double> %i.fx, <2 x double> %i.fw, <2 x i32> <i32 0, i32 3>
  %i.hs = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ht = shufflevector <2 x double> %i.fw, <2 x double> %i.fx, <2 x i32> <i32 1, i32 2>
  %i.hu = fsub nsz <2 x double> %i.hs, %i.ht      ; 2 uses
  %i.hv = fadd nsz <2 x double> %i.ho, %i.hr      ; 3 uses
  %i.hw = shufflevector <2 x double> %i.ey, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.hx = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.hy = fsub nsz <2 x double> %i.hw, %i.hx      ; 2 uses
  %i.hz = fadd nsz <2 x double> %i.hp, %i.hq      ; 3 uses
  %i.ia = fadd nsz <2 x double> %i.hn, %i.hv
  %i.ib = fadd nsz <2 x double> %i.ia, %i.hz
  store <2 x double> %i.ib, ptr %i.df, align 8, !tbaa !24
  %10 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %11 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.ic = fneg nsz <2 x double> %i.hz
  %i.id = shufflevector <1 x double> %11, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ie = fmul nsz <2 x double> %i.id, %i.ic
  %i.if = shufflevector <1 x double> %10, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.hv, <2 x double> %i.ie) ; 2 uses
  %12 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %13 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.ih = shufflevector <1 x double> %13, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul nsz <2 x double> %i.hy, %i.ih
  %i.ij = shufflevector <1 x double> %12, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.hu, <2 x double> %i.ii) ; 2 uses
  %i.il = fsub nsz <2 x double> %i.ig, %i.ik      ; 2 uses
  %i.im = fadd nsz <2 x double> %i.ig, %i.ik      ; 2 uses
  %i.in = shufflevector <2 x double> %i.il, <2 x double> %i.im, <2 x i32> <i32 0, i32 3>
  %i.io = shufflevector <2 x double> %i.im, <2 x double> %i.il, <2 x i32> <i32 0, i32 3>
  %i.ip = fadd nsz <2 x double> %i.hn, %i.io
  store <2 x double> %i.ip, ptr %i.dg, align 8, !tbaa !24
  %i.iq = fneg nsz <2 x double> %i.hv
  %i.ir = fmul nsz <2 x double> %i.id, %i.iq
  %i.is = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.hz, <2 x double> %i.ir) ; 2 uses
  %i.it = fneg nsz <2 x double> %i.hu
  %i.iu = fmul nsz <2 x double> %i.ih, %i.it
  %i.iv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.hy, <2 x double> %i.iu) ; 2 uses
  %i.iw = fadd nsz <2 x double> %i.is, %i.iv      ; 2 uses
  %i.ix = fsub nsz <2 x double> %i.is, %i.iv      ; 2 uses
  %i.iy = shufflevector <2 x double> %i.iw, <2 x double> %i.ix, <2 x i32> <i32 0, i32 3>
  %i.iz = shufflevector <2 x double> %i.ix, <2 x double> %i.iw, <2 x i32> <i32 0, i32 3>
  %i.ja = fadd nsz <2 x double> %i.hn, %i.iz
  store <2 x double> %i.ja, ptr %i.dh, align 8, !tbaa !24
  %i.jb = fadd nsz <2 x double> %i.hn, %i.iy
  store <2 x double> %i.jb, ptr %i.di, align 8, !tbaa !24
  %i.jc = fadd nsz <2 x double> %i.hn, %i.in
  store <2 x double> %i.jc, ptr %i.dj, align 8, !tbaa !24
  %i.jd = shufflevector <2 x double> %i.en, <2 x double> %i.em, <2 x i32> <i32 1, i32 2>
  %i.je = shufflevector <2 x double> %i.fx, <2 x double> %i.fw, <2 x i32> <i32 1, i32 2>
  %i.jf = fsub nsz <2 x double> %i.jd, %i.je      ; 2 uses
  %i.jg = fadd nsz <2 x double> %i.eo, %i.fy      ; 3 uses
  %i.jh = shufflevector <2 x double> %i.ez, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.ji = shufflevector <2 x double> %i.fl, <2 x double> %i.fk, <2 x i32> <i32 1, i32 2>
  %i.jj = fsub nsz <2 x double> %i.jh, %i.ji      ; 2 uses
  %i.jk = fadd nsz <2 x double> %i.fa, %i.fm      ; 3 uses
  %i.jl = fadd nsz <2 x double> %i.ec, %i.jg
  %i.jm = fadd nsz <2 x double> %i.jl, %i.jk
  store <2 x double> %i.jm, ptr %i.dk, align 8, !tbaa !24
  %14 = load <1 x double>, ptr @ff_tx_tab_53_double, align 16
  %15 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.jn = fneg nsz <2 x double> %i.jk
  %i.jo = shufflevector <1 x double> %15, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jp = fmul nsz <2 x double> %i.jo, %i.jn
  %i.jq = shufflevector <1 x double> %14, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.jg, <2 x double> %i.jp) ; 2 uses
  %16 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %17 = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.js = shufflevector <1 x double> %17, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = fmul nsz <2 x double> %i.jj, %i.js
  %i.ju = shufflevector <1 x double> %16, <1 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jf, <2 x double> %i.jt) ; 2 uses
  %i.jw = fsub nsz <2 x double> %i.jr, %i.jv      ; 2 uses
  %i.jx = fadd nsz <2 x double> %i.jr, %i.jv      ; 2 uses
  %i.jy = shufflevector <2 x double> %i.jw, <2 x double> %i.jx, <2 x i32> <i32 0, i32 3>
  %i.jz = shufflevector <2 x double> %i.jx, <2 x double> %i.jw, <2 x i32> <i32 0, i32 3>
  %i.ka = fadd nsz <2 x double> %i.ec, %i.jz
  store <2 x double> %i.ka, ptr %i.dl, align 8, !tbaa !24
  %i.kb = fneg nsz <2 x double> %i.jg
  %i.kc = fmul nsz <2 x double> %i.jo, %i.kb
  %i.kd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.jk, <2 x double> %i.kc) ; 2 uses
  %i.ke = fneg nsz <2 x double> %i.jf
  %i.kf = fmul nsz <2 x double> %i.js, %i.ke
  %i.kg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jj, <2 x double> %i.kf) ; 2 uses
  %i.kh = fadd nsz <2 x double> %i.kd, %i.kg      ; 2 uses
  %i.ki = fsub nsz <2 x double> %i.kd, %i.kg      ; 2 uses
  %i.kj = shufflevector <2 x double> %i.kh, <2 x double> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.kk = shufflevector <2 x double> %i.ki, <2 x double> %i.kh, <2 x i32> <i32 0, i32 3>
  %i.kl = fadd nsz <2 x double> %i.ec, %i.kk
  store <2 x double> %i.kl, ptr %i.dm, align 8, !tbaa !24
  %i.km = fadd nsz <2 x double> %i.ec, %i.kj
  store <2 x double> %i.km, ptr %i.dn, align 8, !tbaa !24
  %i.kn = fadd nsz <2 x double> %i.ec, %i.jy
  store <2 x double> %i.kn, ptr %i.do, align 8, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %.0133, i64 240 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.0107132, i64 60
  %i.kq = add nuw nsw i32 %.0109131, 15           ; 2 uses
  %i.kr = icmp slt i32 %i.kq, %i.e
  br i1 %i.kr, label %.preheader127, label %.preheader126.loopexit, !llvm.loop !114

bb.b:                                             ; preds = %.preheader127, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.0107132, i64 %indvars.iv
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !12 ; 2 uses
  %i.ku = sub nsw i32 0, %i.kt
  %i.kv = sext i32 %i.ku to i64
  %i.kw = mul nsw i64 %i.n, %i.kv
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kw
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !24
  %i.kz = sext i32 %i.kt to i64
  %i.la = mul nsw i64 %i.n, %i.kz
  %i.lb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !24
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %.0133, i64 %indvars.iv ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.lg = load double, ptr %i.le, align 8, !tbaa !30
  %i.lh = load <2 x double>, ptr %i.ld, align 8, !tbaa !24 ; 2 uses
  %i.li = fneg nsz double %i.lg
  %i.lj = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ll = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lm = insertelement <2 x double> %i.ll, double %i.li, i64 0
  %i.ln = fmul nsz <2 x double> %i.lk, %i.lm
  %i.lo = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lp = shufflevector <2 x double> %i.lo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.lh, <2 x double> %i.ln)
  store <2 x double> %i.lq, ptr %i.lf, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !115

.lr.ph:                                           ; preds = %.preheader126
  %i.lr = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.ls = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %bb.c ] ; 3 uses
  %i.lt = add nuw nsw i64 %indvars.iv145, %i.ls   ; 3 uses
  %i.lu = xor i64 %indvars.iv145, -1
  %i.lv = add nsw i64 %i.ls, %i.lu                ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.lt
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.lv
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !12
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [16 x i8], ptr %i.lr, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load double, ptr %i.mc, align 8, !tbaa !30 ; 2 uses
  %i.me = load double, ptr %i.mb, align 8, !tbaa !29 ; 2 uses
  %i.mf = sext i32 %i.lx to i64
  %i.mg = getelementptr inbounds [16 x i8], ptr %i.lr, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !30 ; 2 uses
  %i.mj = load double, ptr %i.mg, align 8, !tbaa !29 ; 2 uses
  %i.mk = getelementptr inbounds [16 x i8], ptr %.0.lcssa, i64 %i.lv ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !30 ; 2 uses
  %i.mn = load double, ptr %i.mk, align 8, !tbaa !29
  %i.mo = fneg nsz double %i.mn
  %i.mp = fmul nsz double %i.me, %i.mo
  %i.mq = tail call nsz double @llvm.fmuladd.f64(double %i.md, double %i.mm, double %i.mp)
  %i.mr = getelementptr inbounds [16 x i8], ptr %1, i64 %i.lv ; 2 uses
  store double %i.mq, ptr %i.mr, align 8, !tbaa !29
  %i.ms = load double, ptr %i.mk, align 8, !tbaa !29
  %i.mt = fmul nsz double %i.me, %i.mm
  %i.mu = tail call nsz double @llvm.fmuladd.f64(double %i.md, double %i.ms, double %i.mt)
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.lt ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store double %i.mu, ptr %i.mw, align 8, !tbaa !30
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %.0.lcssa, i64 %i.lt ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !30 ; 2 uses
  %i.na = load double, ptr %i.mx, align 8, !tbaa !29
  %i.nb = fneg nsz double %i.na
  %i.nc = fmul nsz double %i.mj, %i.nb
  %i.nd = tail call nsz double @llvm.fmuladd.f64(double %i.mi, double %i.mz, double %i.nc)
  store double %i.nd, ptr %i.mv, align 8, !tbaa !29
  %i.ne = load double, ptr %i.mx, align 8, !tbaa !29
  %i.nf = fmul nsz double %i.mj, %i.mz
  %i.ng = tail call nsz double @llvm.fmuladd.f64(double %i.mi, double %i.ne, double %i.nf)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store double %i.ng, ptr %i.nh, align 8, !tbaa !30
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %._crit_edge, label %bb.c, !llvm.loop !116
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = sitofp nsz i32 %i.c to double
  %i.e = fmul nnan nsz double %i.d, 4.000000e+00
  %i.f = fdiv nnan nsz double f0x400921FB54442D18, %i.e ; 2 uses
  %i.g = lshr i64 %3, 3
  %i.h = icmp sgt i32 %i.c, 0
  br i1 %i.h, label %.preheader.us.preheader, label %._crit_edge30

.preheader.us.preheader:                          ; preds = %bb.a
  %i.i = shl nuw i32 %i.c, 1
  %i.j = add nuw i32 %i.c, 1                      ; 2 uses
  %wide.trip.count36 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv33 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next34, %._crit_edge.us ] ; 3 uses
  %indvars.iv33.tr = trunc i64 %indvars.iv33 to i32
  %i.k = shl i32 %indvars.iv33.tr, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.02427.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.ad, %bb.b ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.m = shl nuw i32 %indvars.iv.tr, 1
  %i.n = add i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !24
  %i.r = sitofp nsz i32 %i.o to double
  %i.s = fmul nsz double %i.f, %i.r
  %i.t = tail call nsz double @llvm.cos.f64(double %i.s)
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.q, double %i.t, double %.02427.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.v = shl nuw i32 %indvars.iv.tr.1, 1
  %i.w = add i32 %i.j, %i.v
  %i.x = mul nsw i32 %i.w, %i.l
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !24
  %i.aa = sitofp nsz i32 %i.x to double
  %i.ab = fmul nsz double %i.f, %i.aa
  %i.ac = tail call nsz double @llvm.cos.f64(double %i.ab)
  %i.ad = tail call nsz double @llvm.fmuladd.f64(double %i.z, double %i.ac, double %i.u) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !117

._crit_edge.us:                                   ; preds = %bb.b
  %i.ae = fmul nsz double %i.b, %i.ad
  %i.af = mul nuw nsw i64 %i.g, %indvars.iv33
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  store double %i.ae, ptr %i.ag, align 8, !tbaa !24
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !118

._crit_edge30:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ff_tx_mdct_naive_init_double_c(ptr nofree noundef writeonly captures(none) initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #13 {
bb.a:
  %i.a = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.a, ptr %i.b, align 8, !tbaa !22
  %i.c = fptrunc nsz double %i.a to float
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.c, ptr %i.d, align 4, !tbaa !39
end_hunk_5
