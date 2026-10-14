Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft16384_ns_float_c:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 49152
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 65536
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 65536
  tail call void @ff_tx_fft4096_ns_float_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 98304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 98304
  tail call void @ff_tx_fft4096_ns_float_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_16384_float, i32 noundef 2048)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32768_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32768
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32768
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 49152
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 49152
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 65536
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 65536
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 98304
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 98304
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_16384_float, i32 noundef 2048)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 131072 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 131072
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 163840
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 163840
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 180224
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 180224
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 196608 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 196608
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 229376
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 229376
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 245760
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 245760
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32768_float, i32 noundef 4096)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft65536_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft32768_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 262144 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 262144
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 294912
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 294912
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 311296
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 311296
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 327680
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 327680
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 360448
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 360448
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_16384_float, i32 noundef 2048)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 393216 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 393216
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 425984
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 425984
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 442368
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 442368
  tail call void @ff_tx_fft2048_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_8192_float, i32 noundef 1024)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 458752
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 458752
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 491520
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 491520
  tail call void @ff_tx_fft4096_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_16384_float, i32 noundef 2048)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_65536_float, i32 noundef 8192)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft131072_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft65536_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 524288
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 524288
  tail call void @ff_tx_fft32768_ns_float_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 786432
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 786432
  tail call void @ff_tx_fft32768_ns_float_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_131072_float, i32 noundef 16384)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft3_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.h = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.i = fsub nsz <2 x float> %i.g, %i.h
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = fadd nsz <2 x float> %i.g, %i.h          ; 2 uses
  %i.l = fadd nsz <2 x float> %i.f, %i.k
  store <2 x float> %i.l, ptr %1, align 4, !tbaa !24
  %i.m = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24
  %i.n = fmul nsz <2 x float> %i.j, %i.m          ; 2 uses
  %i.o = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul nsz <2 x float> %i.k, %i.q
  %i.s = fsub nsz <2 x float> %i.f, %i.r          ; 2 uses
  %i.t = fadd nsz <2 x float> %i.s, %i.n          ; 2 uses
  %i.u = fsub nsz <2 x float> %i.s, %i.n          ; 2 uses
  %i.v = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.v, ptr %i.d, align 4, !tbaa !24
  %i.w = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.w, ptr %i.e, align 4, !tbaa !24
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_factor_init_float_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  tail call void @ff_tx_init_tabs_float(i32 noundef %4) #17
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
define internal void @ff_tx_fft5_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.a, 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = shl nuw nsw i64 %i.a, 5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 5 uses
  %i.k = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.m = fsub nsz <2 x float> %i.k, %i.l          ; 2 uses
  %i.n = fadd nsz <2 x float> %i.k, %i.l          ; 3 uses
  %i.o = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.p = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.q = fsub nsz <2 x float> %i.o, %i.p          ; 2 uses
  %i.r = fadd nsz <2 x float> %i.o, %i.p          ; 3 uses
  %i.s = fadd nsz <2 x float> %i.j, %i.n
  %i.t = fadd nsz <2 x float> %i.s, %i.r
  store <2 x float> %i.t, ptr %1, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.u = fneg nsz <2 x float> %i.r
  %i.v = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul nsz <2 x float> %i.v, %i.u
  %i.x = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.n, <2 x float> %i.w) ; 2 uses
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.z = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul nsz <2 x float> %i.q, %i.z
  %i.ab = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.m, <2 x float> %i.aa)
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ae = fsub nsz <2 x float> %i.y, %i.ad        ; 2 uses
  %i.af = fadd nsz <2 x float> %i.y, %i.ad        ; 2 uses
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ai = fadd nsz <2 x float> %i.j, %i.ah
  store <2 x float> %i.ai, ptr %i.f, align 4, !tbaa !24
  %i.aj = fneg nsz <2 x float> %i.n
  %i.ak = fmul nsz <2 x float> %i.v, %i.aj
  %i.al = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.r, <2 x float> %i.ak) ; 2 uses
  %i.am = fneg nsz <2 x float> %i.m
  %i.an = fmul nsz <2 x float> %i.z, %i.am
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.q, <2 x float> %i.an)
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = fadd nsz <2 x float> %i.al, %i.ap       ; 2 uses
  %i.ar = fsub nsz <2 x float> %i.al, %i.ap       ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3>
  %i.au = fadd nsz <2 x float> %i.j, %i.at
  store <2 x float> %i.au, ptr %i.g, align 4, !tbaa !24
  %i.av = fadd nsz <2 x float> %i.j, %i.as
  store <2 x float> %i.av, ptr %i.h, align 4, !tbaa !24
  %i.aw = fadd nsz <2 x float> %i.j, %i.ag
  store <2 x float> %i.aw, ptr %i.i, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft7_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx163.i = mul nuw nsw i64 %i.a, 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx163.i
  %.idx164.i = shl nuw nsw i64 %i.a, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx164.i
  %.idx165.i = mul nuw nsw i64 %i.a, 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx165.i
  %.idx166.i = mul nuw nsw i64 %i.a, 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx166.i
  %i.o = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 7 uses
  %i.p = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 3 uses
  %i.q = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 3 uses
  %i.r = fadd nsz <2 x float> %i.p, %i.q          ; 3 uses
  %i.s = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.u = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.v = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.w = fsub nsz <2 x float> %i.s, %i.t          ; 4 uses
  %i.x = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 4 uses
  %i.y = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 1, i32 3>
  %i.z = shufflevector <2 x float> %i.q, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.aa = fsub nsz <2 x float> %i.y, %i.z         ; 4 uses
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ac = fadd nsz <2 x float> %i.u, %i.ab        ; 3 uses
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ae = shufflevector <2 x float> %i.v, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.af = fsub nsz <2 x float> %i.ad, %i.ae       ; 4 uses
  %i.ag = shufflevector <2 x float> %i.x, <2 x float> %i.s, <2 x i32> <i32 2, i32 0>
  %i.ah = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fadd nsz <2 x float> %i.ag, %i.ah       ; 3 uses
  %i.aj = fadd nsz <2 x float> %i.o, %i.r
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.ac, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.al = fadd nsz <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.ac, <2 x float> %i.ai, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.an = fadd nsz <2 x float> %i.al, %i.am
  store <2 x float> %i.an, ptr %1, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.ao = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !24 ; 5 uses
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 8), align 8
  %i.ap = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !24 ; 3 uses
  %i.aq = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !29 ; 3 uses
  %i.ar = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.as = fneg nsz <2 x float> %i.ar              ; 3 uses
  %i.at = fneg nsz <2 x float> %i.ac
  %i.au = fmul nsz <2 x float> %i.ar, %i.at
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.r, <2 x float> %i.av)
  %i.ay = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ai, <2 x float> %i.ax) ; 2 uses
  %i.az = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !29 ; 2 uses
  %i.ba = extractelement <2 x float> %i.ao, i64 0
  %i.bb = fneg nsz float %i.ba
  %i.bc = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bd = fneg nsz float %i.az
  %i.be = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul nsz <2 x float> %i.w, %i.bf
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = shufflevector <2 x float> %i.ap, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.af, <2 x float> %i.bh)
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.aa, <2 x float> %i.bj) ; 2 uses
  %i.bm = fsub nsz <2 x float> %i.ay, %i.bl       ; 2 uses
  %i.bn = fadd nsz <2 x float> %i.ay, %i.bl       ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bm, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bq = fadd nsz <2 x float> %i.o, %i.bp
  store <2 x float> %i.bq, ptr %i.i, align 4, !tbaa !24
  %i.br = fneg nsz <2 x float> %i.r               ; 2 uses
  %i.bs = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x float> %i.bs, %i.br
  %i.bu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.am, <2 x float> %i.bt)
  %i.bv = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ak, <2 x float> %i.bu) ; 2 uses
  %i.bx = shufflevector <2 x float> %i.w, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %i.by = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x float> %i.by, float %i.aq, i64 0
  %i.ca = fmul nsz <2 x float> %i.bx, %i.bz
  %i.cb = insertelement <2 x float> %i.ao, float %i.aq, i64 1
  %i.cc = shufflevector <2 x float> %i.af, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x float> %i.aa, <2 x float> %i.af, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.cd) ; 2 uses
  %i.ci = fadd nsz <2 x float> %i.bw, %i.ch       ; 2 uses
  %i.cj = fsub nsz <2 x float> %i.bw, %i.ch       ; 2 uses
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.cm = fadd nsz <2 x float> %i.o, %i.cl
  store <2 x float> %i.cm, ptr %i.j, align 4, !tbaa !24
  %i.cn = shufflevector <2 x float> %i.af, <2 x float> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.co = fmul nsz <2 x float> %i.cn, %i.bf
  %i.cp = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cg, <2 x float> %i.co)
  %i.cs = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.bc, <2 x float> %i.cr) ; 2 uses
  %i.cv = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul nsz <2 x float> %i.cv, %i.br
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ak, <2 x float> %i.cw)
  %i.cy = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.am, <2 x float> %i.cx) ; 2 uses
  %i.da = fsub nsz <2 x float> %i.cz, %i.cu       ; 2 uses
  %i.db = fadd nsz <2 x float> %i.cz, %i.cu       ; 2 uses
  %i.dc = shufflevector <2 x float> %i.da, <2 x float> %i.db, <2 x i32> <i32 0, i32 3>
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.de = fadd nsz <2 x float> %i.o, %i.dd
  store <2 x float> %i.de, ptr %i.k, align 4, !tbaa !24
  %i.df = fadd nsz <2 x float> %i.o, %i.dc
  store <2 x float> %i.df, ptr %i.l, align 4, !tbaa !24
  %i.dg = fadd nsz <2 x float> %i.o, %i.ck
  store <2 x float> %i.dg, ptr %i.m, align 4, !tbaa !24
  %i.dh = fadd nsz <2 x float> %i.o, %i.bo
  store <2 x float> %i.dh, ptr %i.n, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft9_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
bb.a:
  %i.a = lshr i64 %3, 3                           ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  %.idx.i = shl nuw nsw i64 %i.a, 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx196.i = mul nuw nsw i64 %i.a, 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx196.i
  %.idx197.i = shl nuw nsw i64 %i.a, 5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx197.i
  %.idx198.i = mul nuw nsw i64 %i.a, 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx198.i
  %.idx199.i = mul nuw nsw i64 %i.a, 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx199.i
  %.idx200.i = mul nuw nsw i64 %i.a, 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx200.i
  %.idx201.i = shl nuw nsw i64 %i.a, 6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx201.i
  %i.r = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.s = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.t = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.u = fsub nsz <2 x float> %i.s, %i.t          ; 2 uses
  %i.v = fadd nsz <2 x float> %i.s, %i.t          ; 2 uses
  %i.w = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.x = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.y = fsub nsz <2 x float> %i.w, %i.x          ; 2 uses
  %i.z = fadd nsz <2 x float> %i.w, %i.x          ; 2 uses
  %i.aa = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.ac = fsub nsz <2 x float> %i.aa, %i.ab
  %i.ad = fadd nsz <2 x float> %i.aa, %i.ab       ; 2 uses
  %i.ae = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.af = load <2 x float>, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.ag = fsub nsz <2 x float> %i.ae, %i.af       ; 3 uses
  %i.ah = fadd nsz <2 x float> %i.ae, %i.af       ; 3 uses
  %i.ai = fsub nsz <2 x float> %i.v, %i.ah        ; 2 uses
  %i.aj = fsub nsz <2 x float> %i.z, %i.ah        ; 2 uses
  %i.ak = fsub nsz <2 x float> %i.u, %i.ag        ; 2 uses
  %i.al = fadd nsz <2 x float> %i.y, %i.ag        ; 2 uses
  %i.am = fneg nsz <2 x float> %i.aj
  %i.an = fneg nsz <2 x float> %i.al
  %i.ao = fadd nsz <2 x float> %i.r, %i.ad        ; 2 uses
  %i.ap = fadd nsz <2 x float> %i.v, %i.z
  %i.aq = fadd nsz <2 x float> %i.ap, %i.ah       ; 2 uses
  %i.ar = fadd nsz <2 x float> %i.ao, %i.aq
  store <2 x float> %i.ar, ptr %1, align 4, !tbaa !24
  %i.as = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !24 ; 6 uses
  %i.at = fsub nsz <2 x float> %i.u, %i.y
  %i.au = fadd nsz <2 x float> %i.at, %i.ag
  %i.av = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aw = fmul nsz <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ay = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.aq, <2 x float> %i.ao) ; 2 uses
  %i.ba = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ad, <2 x float> %i.r) ; 3 uses
  %i.bb = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.bc = fmul nsz <2 x float> %i.aj, %i.bb
  %i.bd = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.be = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ai, <2 x float> %i.bc) ; 2 uses
  %i.bf = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.bg = fmul nsz <2 x float> %i.al, %i.bf
  %i.bh = shufflevector <6 x float> %i.as, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.ak, <2 x float> %i.bg) ; 2 uses
  %i.bj = fmul nsz <2 x float> %i.ac, %i.av       ; 3 uses
  %i.bk = fadd nsz <2 x float> %i.ba, %i.be       ; 2 uses
  %i.bl = fadd nsz <2 x float> %i.bj, %i.bi
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bn = fsub nsz <2 x float> %i.az, %i.ax       ; 2 uses
  %i.bo = fadd nsz <2 x float> %i.az, %i.ax       ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.bq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !24 ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul nsz <2 x float> %i.br, %i.am
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.ai, <2 x float> %i.bs) ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul nsz <2 x float> %i.bu, %i.an
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ak, <2 x float> %i.bv) ; 2 uses
  %i.bx = fadd nsz <2 x float> %i.ba, %i.bt       ; 2 uses
  %i.by = fsub nsz <2 x float> %i.bw, %i.bj
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ca = fadd nsz <2 x float> %i.bk, %i.bm       ; 2 uses
  %i.cb = fsub nsz <2 x float> %i.bk, %i.bm       ; 2 uses
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cc, ptr %i.j, align 4, !tbaa !24
  %i.cd = fadd nsz <2 x float> %i.bx, %i.bz       ; 2 uses
  %i.ce = fsub nsz <2 x float> %i.bx, %i.bz       ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cf, ptr %i.k, align 4, !tbaa !24
  %i.cg = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cg, ptr %i.l, align 4, !tbaa !24
  %i.ch = fadd nsz <2 x float> %i.be, %i.bt
  %i.ci = fsub nsz <2 x float> %i.ba, %i.ch       ; 2 uses
  %i.cj = fsub nsz <2 x float> %i.bw, %i.bi
  %i.ck = fadd nsz <2 x float> %i.bj, %i.cj
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = fadd nsz <2 x float> %i.ci, %i.cl       ; 2 uses
  %i.cn = fsub nsz <2 x float> %i.ci, %i.cl       ; 2 uses
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.co, ptr %i.m, align 4, !tbaa !24
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cp, ptr %i.n, align 4, !tbaa !24
  store <2 x float> %i.bp, ptr %i.o, align 4, !tbaa !24
  %i.cq = shufflevector <2 x float> %i.ce, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cq, ptr %i.p, align 4, !tbaa !24
  %i.cr = shufflevector <2 x float> %i.cb, <2 x float> %i.ca, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cr, ptr %i.q, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft15_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #8 {
fft15.exit:
  %i.a = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = lshr i64 %3, 3                           ; 14 uses
  %.idx.i = mul nuw nsw i64 %i.p, 48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.idx88.i = mul nuw nsw i64 %i.p, 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i
  %.idx89.i = mul nuw nsw i64 %i.p, 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i
  %.idx90.i = mul nuw nsw i64 %i.p, 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i
  %.idx.i5 = mul nuw nsw i64 %i.p, 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i5
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.p
  %.idx88.i6 = mul nuw nsw i64 %i.p, 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i6
  %.idx89.i7 = mul nuw nsw i64 %i.p, 104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i7
  %.idx90.i8 = shl nuw nsw i64 %i.p, 5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i8
  %.idx.i12 = mul nuw nsw i64 %i.p, 40
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i12
  %.idx88.i13 = mul nuw nsw i64 %i.p, 88
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx88.i13
  %.idx89.i14 = shl nuw nsw i64 %i.p, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.idx89.i14
  %.idx90.i15 = shl nuw nsw i64 %i.p, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.idx90.i15
  %.idx91.i = mul nuw nsw i64 %i.p, 112
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx91.i
  %i.ae = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24 ; 5 uses
  %i.af = load <2 x float>, ptr %2, align 4, !tbaa !24 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.b, align 4, !tbaa !24 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.c, align 4, !tbaa !24 ; 2 uses
  %i.ai = fsub nsz <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fadd nsz <2 x float> %i.ag, %i.ah       ; 2 uses
  %i.al = fmul nsz <2 x float> %i.aj, %i.ae       ; 2 uses
  %i.am = insertelement <2 x float> poison, float %i.a, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ao = fmul nsz <2 x float> %i.ak, %i.an
  %i.ap = fsub nsz <2 x float> %i.af, %i.ao       ; 2 uses
  %i.aq = fsub nsz <2 x float> %i.ap, %i.al       ; 2 uses
  %i.ar = fadd nsz <2 x float> %i.ap, %i.al       ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.at = load <2 x float>, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.au = load <2 x float>, ptr %i.e, align 4, !tbaa !24 ; 2 uses
  %i.av = load <2 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.aw = fsub nsz <2 x float> %i.au, %i.av
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fadd nsz <2 x float> %i.au, %i.av       ; 2 uses
  %i.az = fmul nsz <2 x float> %i.ax, %i.ae       ; 2 uses
  %i.ba = fmul nsz <2 x float> %i.ay, %i.an
  %i.bb = fsub nsz <2 x float> %i.at, %i.ba       ; 2 uses
  %i.bc = fsub nsz <2 x float> %i.bb, %i.az       ; 2 uses
  %i.bd = fadd nsz <2 x float> %i.bb, %i.az       ; 2 uses
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bf = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.bg = load <2 x float>, ptr %i.h, align 4, !tbaa !24 ; 2 uses
  %i.bh = load <2 x float>, ptr %i.i, align 4, !tbaa !24 ; 2 uses
  %i.bi = fsub nsz <2 x float> %i.bg, %i.bh
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fadd nsz <2 x float> %i.bg, %i.bh       ; 2 uses
  %i.bl = fmul nsz <2 x float> %i.bj, %i.ae       ; 2 uses
  %i.bm = fmul nsz <2 x float> %i.bk, %i.an
  %i.bn = fsub nsz <2 x float> %i.bf, %i.bm       ; 2 uses
  %i.bo = fsub nsz <2 x float> %i.bn, %i.bl       ; 2 uses
  %i.bp = fadd nsz <2 x float> %i.bn, %i.bl       ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bo, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.br = load <2 x float>, ptr %i.j, align 4, !tbaa !24 ; 2 uses
  %i.bs = load <2 x float>, ptr %i.k, align 4, !tbaa !24 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.l, align 4, !tbaa !24 ; 2 uses
  %i.bu = fsub nsz <2 x float> %i.bs, %i.bt
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bw = fadd nsz <2 x float> %i.bs, %i.bt       ; 2 uses
  %i.bx = fmul nsz <2 x float> %i.bv, %i.ae       ; 2 uses
  %i.by = fmul nsz <2 x float> %i.bw, %i.an
  %i.bz = fsub nsz <2 x float> %i.br, %i.by       ; 2 uses
  %i.ca = fsub nsz <2 x float> %i.bz, %i.bx       ; 2 uses
  %i.cb = fadd nsz <2 x float> %i.bz, %i.bx       ; 2 uses
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cd = load <2 x float>, ptr %i.m, align 4, !tbaa !24 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.n, align 4, !tbaa !24 ; 2 uses
  %i.cf = load <2 x float>, ptr %i.o, align 4, !tbaa !24 ; 2 uses
  %i.cg = fsub nsz <2 x float> %i.ce, %i.cf
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = fadd nsz <2 x float> %i.ce, %i.cf       ; 2 uses
  %i.cj = fmul nsz <2 x float> %i.ch, %i.ae       ; 2 uses
  %i.ck = fmul nsz <2 x float> %i.ci, %i.an
  %i.cl = fsub nsz <2 x float> %i.cd, %i.ck       ; 2 uses
  %i.cm = fsub nsz <2 x float> %i.cl, %i.cj       ; 2 uses
  %i.cn = fadd nsz <2 x float> %i.cl, %i.cj       ; 2 uses
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> %i.cn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cp = fadd nsz <2 x float> %i.af, %i.ak       ; 5 uses
  %i.cq = fadd nsz <2 x float> %i.at, %i.ay       ; 2 uses
  %i.cr = fadd nsz <2 x float> %i.bf, %i.bk       ; 2 uses
  %i.cs = fadd nsz <2 x float> %i.br, %i.bw       ; 2 uses
  %i.ct = fadd nsz <2 x float> %i.cd, %i.ci       ; 2 uses
  %i.cu = fsub nsz <2 x float> %i.cq, %i.ct       ; 2 uses
  %i.cv = fadd nsz <2 x float> %i.cq, %i.ct       ; 3 uses
  %i.cw = fsub nsz <2 x float> %i.cr, %i.cs       ; 2 uses
  %i.cx = fadd nsz <2 x float> %i.cr, %i.cs       ; 3 uses
  %i.cy = fadd nsz <2 x float> %i.cp, %i.cv
  %i.cz = fadd nsz <2 x float> %i.cy, %i.cx
  store <2 x float> %i.cz, ptr %1, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.da = fneg nsz <2 x float> %i.cx
  %i.db = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = fmul nsz <2 x float> %i.db, %i.da
  %i.dd = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.cv, <2 x float> %i.dc) ; 2 uses
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.df = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = fmul nsz <2 x float> %i.cw, %i.df
  %i.dh = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cu, <2 x float> %i.dg)
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dk = fsub nsz <2 x float> %i.de, %i.dj       ; 2 uses
  %i.dl = fadd nsz <2 x float> %i.de, %i.dj       ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dk, <2 x float> %i.dl, <2 x i32> <i32 0, i32 3>
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dk, <2 x i32> <i32 0, i32 3>
  %i.do = fadd nsz <2 x float> %i.cp, %i.dn
  store <2 x float> %i.do, ptr %i.q, align 4, !tbaa !24
  %i.dp = fneg nsz <2 x float> %i.cv
  %i.dq = fmul nsz <2 x float> %i.db, %i.dp
  %i.dr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.cx, <2 x float> %i.dq) ; 2 uses
  %i.ds = fneg nsz <2 x float> %i.cu
  %i.dt = fmul nsz <2 x float> %i.df, %i.ds
  %i.du = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.cw, <2 x float> %i.dt)
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fadd nsz <2 x float> %i.dr, %i.dv       ; 2 uses
  %i.dx = fsub nsz <2 x float> %i.dr, %i.dv       ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> %i.dw, <2 x i32> <i32 0, i32 3>
  %i.ea = fadd nsz <2 x float> %i.cp, %i.dz
  store <2 x float> %i.ea, ptr %i.r, align 4, !tbaa !24
  %i.eb = fadd nsz <2 x float> %i.cp, %i.dy
  store <2 x float> %i.eb, ptr %i.s, align 4, !tbaa !24
  %i.ec = fadd nsz <2 x float> %i.cp, %i.dm
  store <2 x float> %i.ec, ptr %i.t, align 4, !tbaa !24
  %i.ed = shufflevector <2 x float> %i.ar, <2 x float> %i.aq, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ee = shufflevector <2 x float> %i.bd, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ef = shufflevector <2 x float> %i.bp, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eg = shufflevector <2 x float> %i.cb, <2 x float> %i.ca, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eh = shufflevector <2 x float> %i.cn, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ei = fsub nsz <2 x float> %i.ee, %i.eh
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ek = fadd nsz <2 x float> %i.ee, %i.eh       ; 3 uses
  %i.el = fsub nsz <2 x float> %i.ef, %i.eg
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.en = fadd nsz <2 x float> %i.ef, %i.eg       ; 3 uses
  %i.eo = fadd nsz <2 x float> %i.ed, %i.ek
  %i.ep = fadd nsz <2 x float> %i.eo, %i.en
  store <2 x float> %i.ep, ptr %i.u, align 4, !tbaa !24
  %8 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %9 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.eq = fneg nsz <2 x float> %i.en
  %i.er = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul nsz <2 x float> %i.er, %i.eq
  %i.et = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ek, <2 x float> %i.es) ; 2 uses
  %10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ev = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul nsz <2 x float> %i.em, %i.ev
  %i.ex = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ej, <2 x float> %i.ew) ; 2 uses
  %i.ez = fsub nsz <2 x float> %i.eu, %i.ey       ; 2 uses
  %i.fa = fadd nsz <2 x float> %i.eu, %i.ey       ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.fc = shufflevector <2 x float> %i.fa, <2 x float> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.fd = fadd nsz <2 x float> %i.ed, %i.fc
  store <2 x float> %i.fd, ptr %i.v, align 4, !tbaa !24
  %i.fe = fneg nsz <2 x float> %i.ek
  %i.ff = fmul nsz <2 x float> %i.er, %i.fe
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.en, <2 x float> %i.ff) ; 2 uses
  %i.fh = fneg nsz <2 x float> %i.ej
  %i.fi = fmul nsz <2 x float> %i.ev, %i.fh
  %i.fj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.em, <2 x float> %i.fi) ; 2 uses
  %i.fk = fadd nsz <2 x float> %i.fg, %i.fj       ; 2 uses
  %i.fl = fsub nsz <2 x float> %i.fg, %i.fj       ; 2 uses
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> %i.fl, <2 x i32> <i32 0, i32 3>
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fk, <2 x i32> <i32 0, i32 3>
  %i.fo = fadd nsz <2 x float> %i.ed, %i.fn
  store <2 x float> %i.fo, ptr %i.w, align 4, !tbaa !24
  %i.fp = fadd nsz <2 x float> %i.ed, %i.fm
  store <2 x float> %i.fp, ptr %i.x, align 4, !tbaa !24
  %i.fq = fadd nsz <2 x float> %i.ed, %i.fb
  store <2 x float> %i.fq, ptr %i.y, align 4, !tbaa !24
  %i.fr = fsub nsz <2 x float> %i.be, %i.co
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ft = fadd nsz <2 x float> %i.be, %i.co       ; 3 uses
  %i.fu = fsub nsz <2 x float> %i.bq, %i.cc
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fw = fadd nsz <2 x float> %i.bq, %i.cc       ; 3 uses
  %i.fx = fadd nsz <2 x float> %i.as, %i.ft
  %i.fy = fadd nsz <2 x float> %i.fx, %i.fw
  store <2 x float> %i.fy, ptr %i.z, align 4, !tbaa !24
  %12 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %13 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.fz = fneg nsz <2 x float> %i.fw
  %i.ga = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gb = fmul nsz <2 x float> %i.ga, %i.fz
  %i.gc = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ft, <2 x float> %i.gb) ; 2 uses
  %14 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %15 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ge = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = fmul nsz <2 x float> %i.fv, %i.ge
  %i.gg = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fs, <2 x float> %i.gf) ; 2 uses
  %i.gi = fsub nsz <2 x float> %i.gd, %i.gh       ; 2 uses
  %i.gj = fadd nsz <2 x float> %i.gd, %i.gh       ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gi, <2 x float> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gm = fadd nsz <2 x float> %i.as, %i.gl
  store <2 x float> %i.gm, ptr %i.aa, align 4, !tbaa !24
  %i.gn = fneg nsz <2 x float> %i.ft
  %i.go = fmul nsz <2 x float> %i.ga, %i.gn
  %i.gp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.fw, <2 x float> %i.go) ; 2 uses
  %i.gq = fneg nsz <2 x float> %i.fs
  %i.gr = fmul nsz <2 x float> %i.ge, %i.gq
  %i.gs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.fv, <2 x float> %i.gr) ; 2 uses
  %i.gt = fadd nsz <2 x float> %i.gp, %i.gs       ; 2 uses
  %i.gu = fsub nsz <2 x float> %i.gp, %i.gs       ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.gx = fadd nsz <2 x float> %i.as, %i.gw
  store <2 x float> %i.gx, ptr %i.ab, align 4, !tbaa !24
  %i.gy = fadd nsz <2 x float> %i.as, %i.gv
  store <2 x float> %i.gy, ptr %i.ac, align 4, !tbaa !24
  %i.gz = fadd nsz <2 x float> %i.as, %i.gk
  store <2 x float> %i.gz, ptr %i.ad, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_fft_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 5 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %i.k, 4
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = load i64, ptr %i.r, align 4, !tbaa !24
  store i64 %i.s, ptr %i.n, align 4, !tbaa !24
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  tail call void %i.u(ptr noundef nonnull %i.h, ptr noundef %1, ptr noundef %i.f, i64 noundef %3) #16
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 4, !tbaa !24
  store i64 %i.aa, ptr %i.v, align 4, !tbaa !24
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 4, !tbaa !24
  store i64 %i.ag, ptr %i.ab, align 4, !tbaa !24
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 4, !tbaa !24
  store i64 %i.am, ptr %i.ah, align 4, !tbaa !24
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 4, !tbaa !24
  store i64 %i.as, ptr %i.an, align 4, !tbaa !24
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !64
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_fft_init_float_c(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2, ptr nofree readnone captures(none) %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = and i64 %2, 1
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.b = select i1 %.not, i32 1, i32 2
  store i32 %i.b, ptr %7, align 4, !tbaa !36
  %i.c = and i64 %2, 6917529027641081854
  %i.d = or disjoint i64 %i.c, 2305843009213693953
  %i.e = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.d, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5, ptr noundef %6) #16 ; 2 uses
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
define internal void @ff_tx_fft_inplace_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi ptr [ %i.f, %bb.a ], [ %.025, %bb.d ]
  %.024 = phi i32 [ %i.g, %bb.a ], [ %i.r, %bb.d ] ; 2 uses
  %i.h = sext i32 %.024 to i64                    ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 4, !tbaa !24
  %i.k = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.0 = phi i32 [ %i.l, %bb.b ], [ %i.q, %bb.c ]
  %i.m = sext i32 %.0 to i64                      ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i64, ptr %i.n, align 4, !tbaa !24   ; 2 uses
  store i64 %.sroa.0.0, ptr %i.n, align 4, !tbaa !24
  %i.p = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12   ; 2 uses
  %.not = icmp eq i32 %i.q, %.024
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !65
end_hunk_0
begin_hunk_1_@ff_tx_mdct_pfa_5xM_fwd_float_c:bb.a
  %i.ev = add nsw i32 %i.et, %i.f
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !24 ; 2 uses
  %i.ez = xor i32 %i.et, -1                       ; 4 uses
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fa = add i32 %i.r, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !24
  %i.fe = fadd nsz float %i.ey, %i.fd
  %i.ff = fneg nsz float %i.fe
  %i.fg = sub nuw nsw i32 %i.et, %i.f
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !24
  %i.fk = add i32 %i.g, %i.ez
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !24
  %i.fo = fsub nsz float %i.fj, %i.fn
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.fp = add i32 %i.f, %i.ez
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24
  %i.ft = fsub nsz float %i.fs, %i.ey
  %i.fu = add nsw i32 %i.et, %i.g
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !24
  %i.fy = add i32 %i.g, %i.ez
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !24
  %i.gc = fadd nsz float %i.fx, %i.gb
  %i.gd = fneg nsz float %i.gc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.077.0.2 = phi nsz float [ %i.ft, %bb.i ], [ %i.ff, %bb.h ]
  %.sroa.6.0.2 = phi nsz float [ %i.gd, %bb.i ], [ %i.fo, %bb.h ]
  %i.ge = ashr i32 %i.et, 1
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gf
  %i.gh = load <2 x float>, ptr %i.gg, align 4, !tbaa !24 ; 2 uses
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %.sroa.6.0.2, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fneg nsz <2 x float> %i.gi
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> %i.gl, <2 x i32> <i32 0, i32 2>
  %i.gn = fmul nsz <2 x float> %i.gk, %i.gm
  %i.go = insertelement <2 x float> poison, float %.sroa.077.0.2, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gi, <2 x float> %i.gn) ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12 ; 6 uses
  %i.gu = icmp slt i32 %i.gt, %i.f
  %i.gv = add nsw i32 %i.gt, %i.f
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !24 ; 2 uses
  %i.gz = xor i32 %i.gt, -1                       ; 4 uses
  br i1 %i.gu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ha = add i32 %i.r, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !24
  %i.he = fadd nsz float %i.gy, %i.hd
  %i.hf = fneg nsz float %i.he
  %i.hg = sub nuw nsw i32 %i.gt, %i.f
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !24
  %i.hk = add i32 %i.g, %i.gz
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !24
  %i.ho = fsub nsz float %i.hj, %i.hn
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hp = add i32 %i.f, %i.gz
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !24
  %i.ht = fsub nsz float %i.hs, %i.gy
  %i.hu = add nsw i32 %i.gt, %i.g
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !24
  %i.hy = add i32 %i.g, %i.gz
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %2, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !24
  %i.ic = fadd nsz float %i.hx, %i.ib
  %i.id = fneg nsz float %i.ic
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.077.0.3 = phi nsz float [ %i.ht, %bb.l ], [ %i.hf, %bb.k ]
  %.sroa.6.0.3 = phi nsz float [ %i.id, %bb.l ], [ %i.ho, %bb.k ]
  %i.ie = ashr i32 %i.gt, 1
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.if
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !24 ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ij = insertelement <2 x float> poison, float %.sroa.6.0.3, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = fneg nsz <2 x float> %i.ii
  %i.im = shufflevector <2 x float> %i.ih, <2 x float> %i.il, <2 x i32> <i32 0, i32 2>
  %i.in = fmul nsz <2 x float> %i.ik, %i.im
  %i.io = insertelement <2 x float> poison, float %.sroa.077.0.3, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ii, <2 x float> %i.in) ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12 ; 6 uses
  %i.iu = icmp slt i32 %i.it, %i.f
  %i.iv = add nsw i32 %i.it, %i.f
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %2, i64 %i.iw
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !24 ; 2 uses
  %i.iz = xor i32 %i.it, -1                       ; 4 uses
  br i1 %i.iu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ja = add i32 %i.r, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !24
  %i.je = fadd nsz float %i.iy, %i.jd
  %i.jf = fneg nsz float %i.je
  %i.jg = sub nuw nsw i32 %i.it, %i.f
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !24
  %i.jk = add i32 %i.g, %i.iz
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jl
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !24
  %i.jo = fsub nsz float %i.jj, %i.jn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jp = add i32 %i.f, %i.iz
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !24
  %i.jt = fsub nsz float %i.js, %i.iy
  %i.ju = add nsw i32 %i.it, %i.g
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !24
  %i.jy = add i32 %i.g, %i.iz
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !24
  %i.kc = fadd nsz float %i.jx, %i.kb
  %i.kd = fneg nsz float %i.kc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz float [ %i.jt, %bb.o ], [ %i.jf, %bb.n ]
  %.sroa.6.0.4 = phi nsz float [ %i.kd, %bb.o ], [ %i.jo, %bb.n ]
  %i.ke = ashr i32 %i.it, 1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kj ; 5 uses
  %i.kl = fsub nsz <2 x float> %i.gq, %i.iq       ; 2 uses
  %i.km = fadd nsz <2 x float> %i.gq, %i.iq       ; 3 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.u
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx88.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx89.i
  %i.kr = load <2 x float>, ptr %i.kg, align 4, !tbaa !24 ; 2 uses
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %.sroa.6.0.4, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fneg nsz <2 x float> %i.ks
  %i.kw = shufflevector <2 x float> %i.kr, <2 x float> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul nsz <2 x float> %i.ku, %i.kw
  %i.ky = insertelement <2 x float> poison, float %.sroa.077.0.4, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.ks, <2 x float> %i.kx) ; 2 uses
  %i.lb = fsub nsz <2 x float> %i.eq, %i.la       ; 2 uses
  %i.lc = fadd nsz <2 x float> %i.eq, %i.la       ; 3 uses
  %i.ld = fadd nsz <2 x float> %i.cq, %i.lc
  %i.le = fadd nsz <2 x float> %i.ld, %i.km
  store <2 x float> %i.le, ptr %i.kk, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.lf = fneg nsz <2 x float> %i.km
  %i.lg = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lh = fmul nsz <2 x float> %i.lg, %i.lf
  %i.li = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.lc, <2 x float> %i.lh) ; 2 uses
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.lk = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ll = fmul nsz <2 x float> %i.kl, %i.lk
  %i.lm = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ln = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.lb, <2 x float> %i.ll)
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lp = fsub nsz <2 x float> %i.lj, %i.lo       ; 2 uses
  %i.lq = fadd nsz <2 x float> %i.lj, %i.lo       ; 2 uses
  %i.lr = shufflevector <2 x float> %i.lp, <2 x float> %i.lq, <2 x i32> <i32 0, i32 3>
  %i.ls = shufflevector <2 x float> %i.lq, <2 x float> %i.lp, <2 x i32> <i32 0, i32 3>
  %i.lt = fadd nsz <2 x float> %i.cq, %i.ls
  store <2 x float> %i.lt, ptr %i.kn, align 4, !tbaa !24
  %i.lu = fneg nsz <2 x float> %i.lc
  %i.lv = fmul nsz <2 x float> %i.lg, %i.lu
  %i.lw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.li, <2 x float> %i.km, <2 x float> %i.lv) ; 2 uses
  %i.lx = fneg nsz <2 x float> %i.lb
  %i.ly = fmul nsz <2 x float> %i.lk, %i.lx
  %i.lz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.kl, <2 x float> %i.ly)
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mb = fadd nsz <2 x float> %i.lw, %i.ma       ; 2 uses
  %i.mc = fsub nsz <2 x float> %i.lw, %i.ma       ; 2 uses
  %i.md = shufflevector <2 x float> %i.mb, <2 x float> %i.mc, <2 x i32> <i32 0, i32 3>
  %i.me = shufflevector <2 x float> %i.mc, <2 x float> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.mf = fadd nsz <2 x float> %i.cq, %i.me
  store <2 x float> %i.mf, ptr %i.ko, align 4, !tbaa !24
  %i.mg = fadd nsz <2 x float> %i.cq, %i.md
  store <2 x float> %i.mg, ptr %i.kp, align 4, !tbaa !24
  %i.mh = fadd nsz <2 x float> %i.cq, %i.lr
  store <2 x float> %i.mh, ptr %i.kq, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.mi = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
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
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mr ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !28 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !29 ; 2 uses
  %i.mw = sext i32 %i.mo to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mw ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !28 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !29 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mk ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !29
  %i.ne = load float, ptr %i.nb, align 4, !tbaa !28
  %i.nf = fneg nsz float %i.ne
  %i.ng = fmul nsz float %i.na, %i.nf
  %i.nh = tail call nsz float @llvm.fmuladd.f32(float %i.my, float %i.nd, float %i.ng)
  %i.ni = shl nsw i64 %i.mm, 1
  %i.nj = mul nsw i64 %i.p, %i.ni
  %i.nk = getelementptr [4 x i8], ptr %1, i64 %i.nj ; 2 uses
  %i.nl = getelementptr [4 x i8], ptr %i.nk, i64 %i.p
  store float %i.nh, ptr %i.nl, align 4, !tbaa !24
  %i.nm = load float, ptr %i.nb, align 4, !tbaa !28
  %i.nn = load float, ptr %i.nc, align 4, !tbaa !29
  %i.no = fmul nsz float %i.na, %i.nn
  %i.np = tail call nsz float @llvm.fmuladd.f32(float %i.my, float %i.nm, float %i.no)
  %i.nq = shl nuw nsw i64 %i.mk, 1
  %i.nr = mul nuw nsw i64 %i.p, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nr ; 2 uses
  store float %i.np, ptr %i.ns, align 4, !tbaa !24
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mm ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !29
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !28
  %i.nx = fneg nsz float %i.nw
  %i.ny = fmul nsz float %i.mv, %i.nx
  %i.nz = tail call nsz float @llvm.fmuladd.f32(float %i.mt, float %i.nv, float %i.ny)
  %i.oa = getelementptr [4 x i8], ptr %i.ns, i64 %i.p
  store float %i.nz, ptr %i.oa, align 4, !tbaa !24
  %i.ob = load float, ptr %i.nt, align 4, !tbaa !28
  %i.oc = load float, ptr %i.nu, align 4, !tbaa !29
  %i.od = fmul nsz float %i.mv, %i.oc
  %i.oe = tail call nsz float @llvm.fmuladd.f32(float %i.mt, float %i.ob, float %i.od)
  store float %i.oe, ptr %i.nk, align 4, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [7 x %struct.AVComplexFloat], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 21                 ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx163.i = mul nuw nsw i64 %i.u, 24
  %.idx164.i = shl nuw nsw i64 %i.u, 5
  %.idx165.i = mul nuw nsw i64 %i.u, 40
  %.idx166.i = mul nuw nsw i64 %i.u, 48
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 8) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 8) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx160 = shl nsw i64 %i.af, 4
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 8) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx161 = mul nsw i64 %i.af, 24
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 8) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx162 = shl nsw i64 %i.af, 5
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 8) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx163 = mul nsw i64 %i.af, 40
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 8) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !31
  %.idx164 = mul nsw i64 %i.af, 48
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 8) #16
  %i.bg = icmp sgt i32 %i.i, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bj ; 7 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx163.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx164.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx165.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx166.i
  %i.br = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 7 uses
  %i.bs = load <2 x float>, ptr %i.v, align 8, !tbaa !24 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.w, align 16, !tbaa !24 ; 3 uses
  %i.bu = fadd nsz <2 x float> %i.bs, %i.bt       ; 3 uses
  %i.bv = load <2 x float>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.by = load <2 x float>, ptr %i.ab, align 4, !tbaa !24 ; 2 uses
  %i.bz = fsub nsz <2 x float> %i.bv, %i.bw       ; 4 uses
  %i.ca = load <2 x float>, ptr %i.aa, align 4, !tbaa !24 ; 4 uses
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.bt, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cd = fsub nsz <2 x float> %i.cb, %i.cc       ; 4 uses
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = fadd nsz <2 x float> %i.bx, %i.ce       ; 3 uses
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.by, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.ci = fsub nsz <2 x float> %i.cg, %i.ch       ; 4 uses
  %i.cj = shufflevector <2 x float> %i.ca, <2 x float> %i.bv, <2 x i32> <i32 2, i32 0>
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = fadd nsz <2 x float> %i.cj, %i.ck       ; 3 uses
  %i.cm = fadd nsz <2 x float> %i.br, %i.bu
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.cf, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.co = fadd nsz <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %i.cf, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cq = fadd nsz <2 x float> %i.co, %i.cp
  store <2 x float> %i.cq, ptr %i.bk, align 4, !tbaa !24
  %5 = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.cr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !24 ; 5 uses
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 8), align 8
  %i.cs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !24 ; 3 uses
  %i.ct = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !29 ; 3 uses
  %i.cu = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cv = fneg nsz <2 x float> %i.cu              ; 3 uses
  %i.cw = fneg nsz <2 x float> %i.cf
  %i.cx = fmul nsz <2 x float> %i.cu, %i.cw
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.bu, <2 x float> %i.cy)
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cl, <2 x float> %i.da) ; 2 uses
  %i.dc = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !29 ; 2 uses
  %i.dd = extractelement <2 x float> %i.cr, i64 0
  %i.de = fneg nsz float %i.dd
  %i.df = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = fneg nsz float %i.dc
  %i.dh = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fmul nsz <2 x float> %i.bz, %i.di
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = shufflevector <2 x float> %i.cs, <2 x float> %i.cr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.ci, <2 x float> %i.dk)
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.cd, <2 x float> %i.dm) ; 2 uses
  %i.dp = fsub nsz <2 x float> %i.db, %i.do       ; 2 uses
  %i.dq = fadd nsz <2 x float> %i.db, %i.do       ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.dt = fadd nsz <2 x float> %i.br, %i.ds
  store <2 x float> %i.dt, ptr %i.bl, align 4, !tbaa !24
  %i.du = fneg nsz <2 x float> %i.bu              ; 2 uses
  %i.dv = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul nsz <2 x float> %i.dv, %i.du
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.cp, <2 x float> %i.dw)
  %i.dy = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.cn, <2 x float> %i.dx) ; 2 uses
  %i.ea = shufflevector <2 x float> %i.bz, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.eb = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ec = insertelement <2 x float> %i.eb, float %i.ct, i64 0
  %i.ed = fmul nsz <2 x float> %i.ea, %i.ec
  %i.ee = insertelement <2 x float> %i.cr, float %i.ct, i64 1
  %i.ef = shufflevector <2 x float> %i.ci, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ef, <2 x float> %i.ed)
  %i.eh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x float> %i.cd, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ek = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eg) ; 2 uses
  %i.el = fadd nsz <2 x float> %i.dz, %i.ek       ; 2 uses
  %i.em = fsub nsz <2 x float> %i.dz, %i.ek       ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  %i.eo = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.ep = fadd nsz <2 x float> %i.br, %i.eo
  store <2 x float> %i.ep, ptr %i.bm, align 4, !tbaa !24
  %i.eq = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.er = fmul nsz <2 x float> %i.eq, %i.di
  %i.es = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ej, <2 x float> %i.er)
  %i.ev = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.df, <2 x float> %i.eu) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul nsz <2 x float> %i.ey, %i.du
  %i.fa = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.cn, <2 x float> %i.ez)
  %i.fb = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.cp, <2 x float> %i.fa) ; 2 uses
  %i.fd = fsub nsz <2 x float> %i.fc, %i.ex       ; 2 uses
  %i.fe = fadd nsz <2 x float> %i.fc, %i.ex       ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fd, <2 x float> %i.fe, <2 x i32> <i32 0, i32 3>
  %i.fg = shufflevector <2 x float> %i.fe, <2 x float> %i.fd, <2 x i32> <i32 0, i32 3>
  %i.fh = fadd nsz <2 x float> %i.br, %i.fg
  store <2 x float> %i.fh, ptr %i.bn, align 4, !tbaa !24
  %i.fi = fadd nsz <2 x float> %i.br, %i.ff
  store <2 x float> %i.fi, ptr %i.bo, align 4, !tbaa !24
  %i.fj = fadd nsz <2 x float> %i.br, %i.en
  store <2 x float> %i.fj, ptr %i.bp, align 4, !tbaa !24
  %i.fk = fadd nsz <2 x float> %i.br, %i.dr
  store <2 x float> %i.fk, ptr %i.bq, align 4, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fl = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.fm = icmp slt i32 %i.fl, %i.f
  %i.fn = add nsw i32 %i.fl, %i.f
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !24 ; 2 uses
  %i.fr = xor i32 %i.fl, -1                       ; 4 uses
  br i1 %i.fm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fs = add i32 %i.f, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !24
  %i.fw = fsub nsz float %i.fv, %i.fq
  %i.fx = add nsw i32 %i.fl, %i.g
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !24
  %i.gb = add i32 %i.g, %i.fr
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !24
  %i.gf = fadd nsz float %i.ga, %i.ge
  %i.gg = fneg nsz float %i.gf
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.gh = add i32 %i.r, %i.fr
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gi
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !24
  %i.gl = fadd nsz float %i.fq, %i.gk
  %i.gm = fneg nsz float %i.gl
  %i.gn = sub nuw nsw i32 %i.fl, %i.f
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !24
  %i.gr = add i32 %i.g, %i.fr
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !24
  %i.gv = fsub nsz float %i.gq, %i.gu
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.fw, %bb.d ], [ %i.gm, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.gg, %bb.d ], [ %i.gv, %bb.e ]
  %i.gw = ashr i32 %i.fl, 1
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ha = load <2 x float>, ptr %i.gy, align 4, !tbaa !24 ; 2 uses
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hc = insertelement <2 x float> poison, float %.sroa.6.0, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fneg nsz <2 x float> %i.hb
  %i.hf = shufflevector <2 x float> %i.ha, <2 x float> %i.he, <2 x i32> <i32 0, i32 2>
  %i.hg = fmul nsz <2 x float> %i.hd, %i.hf
  %i.hh = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hb, <2 x float> %i.hg)
  store <2 x float> %i.hj, ptr %i.gz, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.hk = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %i.hl = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.hm = add nuw nsw i64 %indvars.iv151, %i.hl   ; 3 uses
  %i.hn = xor i64 %indvars.iv151, -1
  %i.ho = add nsw i64 %i.hl, %i.hn                ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hm
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ho
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !12
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !28 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !29 ; 2 uses
  %i.hy = sext i32 %i.hq to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !28 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !29 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hm ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !29
  %i.ig = load float, ptr %i.id, align 4, !tbaa !28
  %i.ih = fneg nsz float %i.ig
  %i.ii = fmul nsz float %i.ic, %i.ih
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.if, float %i.ii)
  %i.ik = shl nsw i64 %i.ho, 1
  %i.il = mul nsw i64 %i.p, %i.ik
  %i.im = getelementptr [4 x i8], ptr %1, i64 %i.il ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.p
  store float %i.ij, ptr %i.in, align 4, !tbaa !24
  %i.io = load float, ptr %i.id, align 4, !tbaa !28
  %i.ip = load float, ptr %i.ie, align 4, !tbaa !29
  %i.iq = fmul nsz float %i.ic, %i.ip
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.io, float %i.iq)
  %i.is = shl nuw nsw i64 %i.hm, 1
  %i.it = mul nuw nsw i64 %i.p, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.it ; 2 uses
  store float %i.ir, ptr %i.iu, align 4, !tbaa !24
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ho ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !29
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !28
  %i.iz = fneg nsz float %i.iy
  %i.ja = fmul nsz float %i.hx, %i.iz
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.ix, float %i.ja)
  %i.jc = getelementptr [4 x i8], ptr %i.iu, i64 %i.p
  store float %i.jb, ptr %i.jc, align 4, !tbaa !24
  %i.jd = load float, ptr %i.iv, align 4, !tbaa !28
  %i.je = load float, ptr %i.iw, align 4, !tbaa !29
  %i.jf = fmul nsz float %i.hx, %i.je
  %i.jg = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.jd, float %i.jf)
  store float %i.jg, ptr %i.im, align 4, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexFloat], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 3 uses
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_15xM_fwd_float_c:bb.a

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !32
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 8) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 8) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx179 = shl nsw i64 %i.am, 4
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 8) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx180 = mul nsw i64 %i.am, 24
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 8) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx181 = shl nsw i64 %i.am, 5
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 8) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx182 = mul nsw i64 %i.am, 40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 8) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx183 = mul nsw i64 %i.am, 48
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 8) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx184 = mul nsw i64 %i.am, 56
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 8) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx185 = shl nsw i64 %i.am, 6
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 8) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx186 = mul nsw i64 %i.am, 72
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 8) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx187 = mul nsw i64 %i.am, 80
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 8) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx188 = mul nsw i64 %i.am, 88
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 8) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx189 = mul nsw i64 %i.am, 96
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 8) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx190 = mul nsw i64 %i.am, 104
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 8) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !31
  %.idx191 = mul nsw i64 %i.am, 112
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 8) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i139
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i140
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i141
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i142
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i146
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i147
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i149
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx91.i
  %i.dn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24 ; 5 uses
  %i.do = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.dr = fsub nsz <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = fadd nsz <2 x float> %i.dp, %i.dq       ; 2 uses
  %i.du = fmul nsz <2 x float> %i.ds, %i.dn       ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dx = fmul nsz <2 x float> %i.dt, %i.dw
  %i.dy = fsub nsz <2 x float> %i.do, %i.dx       ; 2 uses
  %i.dz = fsub nsz <2 x float> %i.dy, %i.du       ; 2 uses
  %i.ea = fadd nsz <2 x float> %i.dy, %i.du       ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ec = load <2 x float>, ptr %i.x, align 8, !tbaa !24 ; 2 uses
  %i.ed = load <2 x float>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.ef = fsub nsz <2 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = fadd nsz <2 x float> %i.ed, %i.ee       ; 2 uses
  %i.ei = fmul nsz <2 x float> %i.eg, %i.dn       ; 2 uses
  %i.ej = fmul nsz <2 x float> %i.eh, %i.dw
  %i.ek = fsub nsz <2 x float> %i.ec, %i.ej       ; 2 uses
  %i.el = fsub nsz <2 x float> %i.ek, %i.ei       ; 2 uses
  %i.em = fadd nsz <2 x float> %i.ek, %i.ei       ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eo = load <2 x float>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.er = fsub nsz <2 x float> %i.ep, %i.eq
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.et = fadd nsz <2 x float> %i.ep, %i.eq       ; 2 uses
  %i.eu = fmul nsz <2 x float> %i.es, %i.dn       ; 2 uses
  %i.ev = fmul nsz <2 x float> %i.et, %i.dw
  %i.ew = fsub nsz <2 x float> %i.eo, %i.ev       ; 2 uses
  %i.ex = fsub nsz <2 x float> %i.ew, %i.eu       ; 2 uses
  %i.ey = fadd nsz <2 x float> %i.ew, %i.eu       ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fa = load <2 x float>, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.fb = load <2 x float>, ptr %i.ae, align 16, !tbaa !24 ; 2 uses
  %i.fc = load <2 x float>, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.fd = fsub nsz <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fadd nsz <2 x float> %i.fb, %i.fc       ; 2 uses
  %i.fg = fmul nsz <2 x float> %i.fe, %i.dn       ; 2 uses
  %i.fh = fmul nsz <2 x float> %i.ff, %i.dw
  %i.fi = fsub nsz <2 x float> %i.fa, %i.fh       ; 2 uses
  %i.fj = fsub nsz <2 x float> %i.fi, %i.fg       ; 2 uses
  %i.fk = fadd nsz <2 x float> %i.fi, %i.fg       ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fj, <2 x float> %i.fk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fm = load <2 x float>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.fo = load <2 x float>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.fp = fsub nsz <2 x float> %i.fn, %i.fo
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fr = fadd nsz <2 x float> %i.fn, %i.fo       ; 2 uses
  %i.fs = fmul nsz <2 x float> %i.fq, %i.dn       ; 2 uses
  %i.ft = fmul nsz <2 x float> %i.fr, %i.dw
  %i.fu = fsub nsz <2 x float> %i.fm, %i.ft       ; 2 uses
  %i.fv = fsub nsz <2 x float> %i.fu, %i.fs       ; 2 uses
  %i.fw = fadd nsz <2 x float> %i.fu, %i.fs       ; 2 uses
  %i.fx = shufflevector <2 x float> %i.fv, <2 x float> %i.fw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fy = fadd nsz <2 x float> %i.do, %i.dt       ; 5 uses
  %i.fz = fadd nsz <2 x float> %i.ec, %i.eh       ; 2 uses
  %i.ga = fadd nsz <2 x float> %i.eo, %i.et       ; 2 uses
  %i.gb = fadd nsz <2 x float> %i.fa, %i.ff       ; 2 uses
  %i.gc = fadd nsz <2 x float> %i.fm, %i.fr       ; 2 uses
  %i.gd = fsub nsz <2 x float> %i.fz, %i.gc       ; 2 uses
  %i.ge = fadd nsz <2 x float> %i.fz, %i.gc       ; 3 uses
  %i.gf = fsub nsz <2 x float> %i.ga, %i.gb       ; 2 uses
  %i.gg = fadd nsz <2 x float> %i.ga, %i.gb       ; 3 uses
  %i.gh = fadd nsz <2 x float> %i.fy, %i.ge
  %i.gi = fadd nsz <2 x float> %i.gh, %i.gg
  store <2 x float> %i.gi, ptr %i.cy, align 4, !tbaa !24
  %5 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.gj = fneg nsz <2 x float> %i.gg
  %i.gk = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = fmul nsz <2 x float> %i.gk, %i.gj
  %i.gm = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.ge, <2 x float> %i.gl) ; 2 uses
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.go = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = fmul nsz <2 x float> %i.gf, %i.go
  %i.gq = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gd, <2 x float> %i.gp)
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gt = fsub nsz <2 x float> %i.gn, %i.gs       ; 2 uses
  %i.gu = fadd nsz <2 x float> %i.gn, %i.gs       ; 2 uses
  %i.gv = shufflevector <2 x float> %i.gt, <2 x float> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.gw = shufflevector <2 x float> %i.gu, <2 x float> %i.gt, <2 x i32> <i32 0, i32 3>
  %i.gx = fadd nsz <2 x float> %i.fy, %i.gw
  store <2 x float> %i.gx, ptr %i.cz, align 4, !tbaa !24
  %i.gy = fneg nsz <2 x float> %i.ge
  %i.gz = fmul nsz <2 x float> %i.gk, %i.gy
  %i.ha = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gg, <2 x float> %i.gz) ; 2 uses
  %i.hb = fneg nsz <2 x float> %i.gd
  %i.hc = fmul nsz <2 x float> %i.go, %i.hb
  %i.hd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gf, <2 x float> %i.hc)
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hf = fadd nsz <2 x float> %i.ha, %i.he       ; 2 uses
  %i.hg = fsub nsz <2 x float> %i.ha, %i.he       ; 2 uses
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> %i.hg, <2 x i32> <i32 0, i32 3>
  %i.hi = shufflevector <2 x float> %i.hg, <2 x float> %i.hf, <2 x i32> <i32 0, i32 3>
  %i.hj = fadd nsz <2 x float> %i.fy, %i.hi
  store <2 x float> %i.hj, ptr %i.da, align 4, !tbaa !24
  %i.hk = fadd nsz <2 x float> %i.fy, %i.hh
  store <2 x float> %i.hk, ptr %i.db, align 4, !tbaa !24
  %i.hl = fadd nsz <2 x float> %i.fy, %i.gv
  store <2 x float> %i.hl, ptr %i.dc, align 4, !tbaa !24
  %i.hm = shufflevector <2 x float> %i.ea, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hn = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ho = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hp = shufflevector <2 x float> %i.fk, <2 x float> %i.fj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hq = shufflevector <2 x float> %i.fw, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hr = fsub nsz <2 x float> %i.hn, %i.hq
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ht = fadd nsz <2 x float> %i.hn, %i.hq       ; 3 uses
  %i.hu = fsub nsz <2 x float> %i.ho, %i.hp
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hw = fadd nsz <2 x float> %i.ho, %i.hp       ; 3 uses
  %i.hx = fadd nsz <2 x float> %i.hm, %i.ht
  %i.hy = fadd nsz <2 x float> %i.hx, %i.hw
  store <2 x float> %i.hy, ptr %i.dd, align 4, !tbaa !24
  %9 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.hz = fneg nsz <2 x float> %i.hw
  %i.ia = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ib = fmul nsz <2 x float> %i.ia, %i.hz
  %i.ic = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.id = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.ht, <2 x float> %i.ib) ; 2 uses
  %11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %12 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ie = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.if = fmul nsz <2 x float> %i.hv, %i.ie
  %i.ig = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ih = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.hs, <2 x float> %i.if) ; 2 uses
  %i.ii = fsub nsz <2 x float> %i.id, %i.ih       ; 2 uses
  %i.ij = fadd nsz <2 x float> %i.id, %i.ih       ; 2 uses
  %i.ik = shufflevector <2 x float> %i.ii, <2 x float> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.il = shufflevector <2 x float> %i.ij, <2 x float> %i.ii, <2 x i32> <i32 0, i32 3>
  %i.im = fadd nsz <2 x float> %i.hm, %i.il
  store <2 x float> %i.im, ptr %i.de, align 4, !tbaa !24
  %i.in = fneg nsz <2 x float> %i.ht
  %i.io = fmul nsz <2 x float> %i.ia, %i.in
  %i.ip = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ic, <2 x float> %i.hw, <2 x float> %i.io) ; 2 uses
  %i.iq = fneg nsz <2 x float> %i.hs
  %i.ir = fmul nsz <2 x float> %i.ie, %i.iq
  %i.is = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ig, <2 x float> %i.hv, <2 x float> %i.ir) ; 2 uses
  %i.it = fadd nsz <2 x float> %i.ip, %i.is       ; 2 uses
  %i.iu = fsub nsz <2 x float> %i.ip, %i.is       ; 2 uses
  %i.iv = shufflevector <2 x float> %i.it, <2 x float> %i.iu, <2 x i32> <i32 0, i32 3>
  %i.iw = shufflevector <2 x float> %i.iu, <2 x float> %i.it, <2 x i32> <i32 0, i32 3>
  %i.ix = fadd nsz <2 x float> %i.hm, %i.iw
  store <2 x float> %i.ix, ptr %i.df, align 4, !tbaa !24
  %i.iy = fadd nsz <2 x float> %i.hm, %i.iv
  store <2 x float> %i.iy, ptr %i.dg, align 4, !tbaa !24
  %i.iz = fadd nsz <2 x float> %i.hm, %i.ik
  store <2 x float> %i.iz, ptr %i.dh, align 4, !tbaa !24
  %i.ja = fsub nsz <2 x float> %i.en, %i.fx
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = fadd nsz <2 x float> %i.en, %i.fx       ; 3 uses
  %i.jd = fsub nsz <2 x float> %i.ez, %i.fl
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jf = fadd nsz <2 x float> %i.ez, %i.fl       ; 3 uses
  %i.jg = fadd nsz <2 x float> %i.eb, %i.jc
  %i.jh = fadd nsz <2 x float> %i.jg, %i.jf
  store <2 x float> %i.jh, ptr %i.di, align 4, !tbaa !24
  %13 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %14 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.ji = fneg nsz <2 x float> %i.jf
  %i.jj = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fmul nsz <2 x float> %i.jj, %i.ji
  %i.jl = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jc, <2 x float> %i.jk) ; 2 uses
  %15 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %16 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.jn = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = fmul nsz <2 x float> %i.je, %i.jn
  %i.jp = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.jb, <2 x float> %i.jo) ; 2 uses
  %i.jr = fsub nsz <2 x float> %i.jm, %i.jq       ; 2 uses
  %i.js = fadd nsz <2 x float> %i.jm, %i.jq       ; 2 uses
  %i.jt = shufflevector <2 x float> %i.jr, <2 x float> %i.js, <2 x i32> <i32 0, i32 3>
  %i.ju = shufflevector <2 x float> %i.js, <2 x float> %i.jr, <2 x i32> <i32 0, i32 3>
  %i.jv = fadd nsz <2 x float> %i.eb, %i.ju
  store <2 x float> %i.jv, ptr %i.dj, align 4, !tbaa !24
  %i.jw = fneg nsz <2 x float> %i.jc
  %i.jx = fmul nsz <2 x float> %i.jj, %i.jw
  %i.jy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jf, <2 x float> %i.jx) ; 2 uses
  %i.jz = fneg nsz <2 x float> %i.jb
  %i.ka = fmul nsz <2 x float> %i.jn, %i.jz
  %i.kb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.je, <2 x float> %i.ka) ; 2 uses
  %i.kc = fadd nsz <2 x float> %i.jy, %i.kb       ; 2 uses
  %i.kd = fsub nsz <2 x float> %i.jy, %i.kb       ; 2 uses
  %i.ke = shufflevector <2 x float> %i.kc, <2 x float> %i.kd, <2 x i32> <i32 0, i32 3>
  %i.kf = shufflevector <2 x float> %i.kd, <2 x float> %i.kc, <2 x i32> <i32 0, i32 3>
  %i.kg = fadd nsz <2 x float> %i.eb, %i.kf
  store <2 x float> %i.kg, ptr %i.dk, align 4, !tbaa !24
  %i.kh = fadd nsz <2 x float> %i.eb, %i.ke
  store <2 x float> %i.kh, ptr %i.dl, align 4, !tbaa !24
  %i.ki = fadd nsz <2 x float> %i.eb, %i.jt
  store <2 x float> %i.ki, ptr %i.dm, align 4, !tbaa !24
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next163, %i.u
  br i1 %exitcond165.not, label %.preheader150.loopexit, label %.preheader151, !llvm.loop !106

bb.b:                                             ; preds = %.preheader151, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader151 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.kj = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.kk = icmp slt i32 %i.kj, %i.f
  %i.kl = add nsw i32 %i.kj, %i.f
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.km
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !24 ; 2 uses
  %i.kp = xor i32 %i.kj, -1                       ; 4 uses
  br i1 %i.kk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.kq = add i32 %i.f, %i.kp
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kr
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !24
  %i.ku = fsub nsz float %i.kt, %i.ko
  %i.kv = add nsw i32 %i.kj, %i.g
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !24
  %i.kz = add i32 %i.g, %i.kp
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !24
  %i.ld = fadd nsz float %i.ky, %i.lc
  %i.le = fneg nsz float %i.ld
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.lf = add i32 %i.r, %i.kp
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lg
  %i.li = load float, ptr %i.lh, align 4, !tbaa !24
  %i.lj = fadd nsz float %i.ko, %i.li
  %i.lk = fneg nsz float %i.lj
  %i.ll = sub nuw nsw i32 %i.kj, %i.f
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lm
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !24
  %i.lp = add i32 %i.g, %i.kp
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.lq
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !24
  %i.lt = fsub nsz float %i.lo, %i.ls
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.077.0 = phi nsz float [ %i.ku, %bb.c ], [ %i.lk, %bb.d ]
  %.sroa.6.0 = phi nsz float [ %i.le, %bb.c ], [ %i.lt, %bb.d ]
  %i.lu = ashr i32 %i.kj, 1
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ly = load <2 x float>, ptr %i.lw, align 4, !tbaa !24 ; 2 uses
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ma = insertelement <2 x float> poison, float %.sroa.6.0, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = fneg nsz <2 x float> %i.lz
  %i.md = shufflevector <2 x float> %i.ly, <2 x float> %i.mc, <2 x i32> <i32 0, i32 2>
  %i.me = fmul nsz <2 x float> %i.mb, %i.md
  %i.mf = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.lz, <2 x float> %i.me)
  store <2 x float> %i.mh, ptr %i.lx, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !107

.lr.ph:                                           ; preds = %.preheader150
  %i.mi = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.mj = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count173 = zext nneg i32 %i.i to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %.preheader150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv170 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next171, %bb.f ] ; 3 uses
  %i.mk = add nuw nsw i64 %indvars.iv170, %i.mj   ; 3 uses
  %i.ml = xor i64 %indvars.iv170, -1
  %i.mm = add nsw i64 %i.mj, %i.ml                ; 3 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mk
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !12
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mm
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !12
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mr ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !28 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !29 ; 2 uses
  %i.mw = sext i32 %i.mo to i64
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %i.mw ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !28 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.na = load float, ptr %i.mz, align 4, !tbaa !29 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mk ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4 ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !29
  %i.ne = load float, ptr %i.nb, align 4, !tbaa !28
  %i.nf = fneg nsz float %i.ne
  %i.ng = fmul nsz float %i.na, %i.nf
  %i.nh = tail call nsz float @llvm.fmuladd.f32(float %i.my, float %i.nd, float %i.ng)
  %i.ni = shl nsw i64 %i.mm, 1
  %i.nj = mul nsw i64 %i.p, %i.ni
  %i.nk = getelementptr [4 x i8], ptr %1, i64 %i.nj ; 2 uses
  %i.nl = getelementptr [4 x i8], ptr %i.nk, i64 %i.p
  store float %i.nh, ptr %i.nl, align 4, !tbaa !24
  %i.nm = load float, ptr %i.nb, align 4, !tbaa !28
  %i.nn = load float, ptr %i.nc, align 4, !tbaa !29
  %i.no = fmul nsz float %i.na, %i.nn
  %i.np = tail call nsz float @llvm.fmuladd.f32(float %i.my, float %i.nm, float %i.no)
  %i.nq = shl nuw nsw i64 %i.mk, 1
  %i.nr = mul nuw nsw i64 %i.p, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nr ; 2 uses
  store float %i.np, ptr %i.ns, align 4, !tbaa !24
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mm ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !29
  %i.nw = load float, ptr %i.nt, align 4, !tbaa !28
  %i.nx = fneg nsz float %i.nw
  %i.ny = fmul nsz float %i.mv, %i.nx
  %i.nz = tail call nsz float @llvm.fmuladd.f32(float %i.mt, float %i.nv, float %i.ny)
  %i.oa = getelementptr [4 x i8], ptr %i.ns, i64 %i.p
  store float %i.nz, ptr %i.oa, align 4, !tbaa !24
  %i.ob = load float, ptr %i.nt, align 4, !tbaa !28
  %i.oc = load float, ptr %i.nu, align 4, !tbaa !29
  %i.od = fmul nsz float %i.mv, %i.oc
  %i.oe = tail call nsz float @llvm.fmuladd.f32(float %i.mt, float %i.ob, float %i.od)
  store float %i.oe, ptr %i.nk, align 4, !tbaa !24
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %wide.trip.count173
  br i1 %exitcond174.not, label %._crit_edge, label %bb.f, !llvm.loop !108
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = mul nsw i32 %i.h, 3
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 2                           ; 7 uses
  %i.o = mul nsw i32 %i.h, 6
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.h to i64                     ; 3 uses
end_hunk_2
begin_hunk_3_@ff_tx_mdct_pfa_3xM_inv_float_c:bb.a
  %i.fh = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %i.ff, float %i.fg)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eg ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store float %i.fh, ptr %i.fj, align 4, !tbaa !29
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.eg ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !29 ; 2 uses
  %i.fn = load float, ptr %i.fk, align 4, !tbaa !28
  %i.fo = fneg nsz float %i.fn
  %i.fp = fmul nsz float %i.ew, %i.fo
  %i.fq = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.fm, float %i.fp)
  store float %i.fq, ptr %i.fi, align 4, !tbaa !28
  %i.fr = load float, ptr %i.fk, align 4, !tbaa !28
  %i.fs = fmul nsz float %i.ew, %i.fm
  %i.ft = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.fr, float %i.fs)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store float %i.ft, ptr %i.fu, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !110
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = mul nsw i32 %i.h, 5
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 2                           ; 11 uses
  %i.o = mul nsw i32 %i.h, 10
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 5 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.h to i64                     ; 5 uses
  %.idx.i = shl nsw i64 %i.y, 4
  %.idx88.i = mul nsw i64 %i.y, 24
  %.idx89.i = shl nsw i64 %i.y, 5
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
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0118, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = mul nsw i64 %i.n, %i.ar
  %i.at = getelementptr inbounds [4 x i8], ptr %2, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !12 ; 2 uses
  %i.az = sub nsw i32 0, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24
  %i.be = sext i32 %i.ay to i64
  %i.bf = mul nsw i64 %i.n, %i.be
  %i.bg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0118, i64 20
  %i.bk = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %i.bm = sub nsw i32 0, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.n, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !24
  %i.br = sext i32 %i.bl to i64
  %i.bs = mul nsw i64 %i.n, %i.br
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %.0118, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.0118, i64 28
  %i.bx = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12 ; 2 uses
  %i.bz = sub nsw i32 0, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.n, %i.ca
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !24
  %i.ce = sext i32 %i.by to i64
  %i.cf = mul nsw i64 %i.n, %i.ce
  %i.cg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0118, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0118, i64 36
  %i.ck = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.cl = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.y
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %.idx88.i
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %.idx89.i
  %i.cs = load float, ptr %i.aj, align 4, !tbaa !29
  %i.ct = load <2 x float>, ptr %.0118, align 4, !tbaa !24 ; 2 uses
  %i.cu = fneg nsz float %i.cs
  %i.cv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cu, i64 0
  %i.cz = fmul nsz <2 x float> %i.cw, %i.cy
  %i.da = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.ct, <2 x float> %i.cz) ; 5 uses
  %i.dd = load float, ptr %i.aw, align 4, !tbaa !29
  %i.de = load <2 x float>, ptr %i.av, align 4, !tbaa !24 ; 2 uses
  %i.df = fneg nsz float %i.dd
  %i.dg = insertelement <2 x float> poison, float %i.au, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dj = insertelement <2 x float> %i.di, float %i.df, i64 0
  %i.dk = fmul nsz <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.de, <2 x float> %i.dk) ; 2 uses
  %i.do = load float, ptr %i.bj, align 4, !tbaa !29
  %i.dp = load <2 x float>, ptr %i.bi, align 4, !tbaa !24 ; 2 uses
  %i.dq = fneg nsz float %i.do
  %i.dr = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %i.dt, float %i.dq, i64 0
  %i.dv = fmul nsz <2 x float> %i.ds, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dp, <2 x float> %i.dv) ; 2 uses
  %i.dz = load float, ptr %i.bw, align 4, !tbaa !29
  %i.ea = load <2 x float>, ptr %i.bv, align 4, !tbaa !24 ; 2 uses
  %i.eb = fneg nsz float %i.dz
  %i.ec = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ef = insertelement <2 x float> %i.ee, float %i.eb, i64 0
  %i.eg = fmul nsz <2 x float> %i.ed, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ea, <2 x float> %i.eg) ; 2 uses
  %i.ek = load float, ptr %i.cj, align 4, !tbaa !29
  %i.el = load <2 x float>, ptr %i.ci, align 4, !tbaa !24 ; 2 uses
  %i.em = fneg nsz float %i.ek
  %i.en = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eq = insertelement <2 x float> %i.ep, float %i.em, i64 0
  %i.er = fmul nsz <2 x float> %i.eo, %i.eq
  %i.es = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.el, <2 x float> %i.er) ; 2 uses
  %i.ev = fsub nsz <2 x float> %i.dn, %i.eu       ; 2 uses
  %i.ew = fadd nsz <2 x float> %i.dn, %i.eu       ; 3 uses
  %i.ex = fsub nsz <2 x float> %i.dy, %i.ej       ; 2 uses
  %i.ey = fadd nsz <2 x float> %i.dy, %i.ej       ; 3 uses
  %i.ez = fadd nsz <2 x float> %i.dc, %i.ew
  %i.fa = fadd nsz <2 x float> %i.ez, %i.ey
  store <2 x float> %i.fa, ptr %i.cn, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.fb = fneg nsz <2 x float> %i.ey
  %i.fc = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fmul nsz <2 x float> %i.fc, %i.fb
  %i.fe = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ew, <2 x float> %i.fd) ; 2 uses
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.fg = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fh = fmul nsz <2 x float> %i.ex, %i.fg
  %i.fi = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ev, <2 x float> %i.fh)
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fl = fsub nsz <2 x float> %i.ff, %i.fk       ; 2 uses
  %i.fm = fadd nsz <2 x float> %i.ff, %i.fk       ; 2 uses
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.fo = shufflevector <2 x float> %i.fm, <2 x float> %i.fl, <2 x i32> <i32 0, i32 3>
  %i.fp = fadd nsz <2 x float> %i.dc, %i.fo
  store <2 x float> %i.fp, ptr %i.co, align 4, !tbaa !24
  %i.fq = fneg nsz <2 x float> %i.ew
  %i.fr = fmul nsz <2 x float> %i.fc, %i.fq
  %i.fs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.ey, <2 x float> %i.fr) ; 2 uses
  %i.ft = fneg nsz <2 x float> %i.ev
  %i.fu = fmul nsz <2 x float> %i.fg, %i.ft
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ex, <2 x float> %i.fu)
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fx = fadd nsz <2 x float> %i.fs, %i.fw       ; 2 uses
  %i.fy = fsub nsz <2 x float> %i.fs, %i.fw       ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fx, <2 x float> %i.fy, <2 x i32> <i32 0, i32 3>
  %i.ga = shufflevector <2 x float> %i.fy, <2 x float> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.gb = fadd nsz <2 x float> %i.dc, %i.ga
  store <2 x float> %i.gb, ptr %i.cp, align 4, !tbaa !24
  %i.gc = fadd nsz <2 x float> %i.dc, %i.fz
  store <2 x float> %i.gc, ptr %i.cq, align 4, !tbaa !24
  %i.gd = fadd nsz <2 x float> %i.dc, %i.fn
  store <2 x float> %i.gd, ptr %i.cr, align 4, !tbaa !24
  %i.ge = getelementptr inbounds nuw i8, ptr %.0118, i64 40 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.gg = add nuw nsw i32 %.0109116, 5            ; 2 uses
  %i.gh = icmp slt i32 %i.gg, %i.e
  br i1 %i.gh, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !111

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 4 uses
  %i.gi = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.ge, %.preheader112.loopexit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !31 ; 2 uses
  tail call void %i.gl(ptr noundef %i.gi, ptr noundef %i.gm, ptr noundef %i.gm, i64 noundef 8) #16
  %i.gn = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !31
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %.pre-phi ; 2 uses
  tail call void %i.gn(ptr noundef %i.go, ptr noundef %i.gq, ptr noundef %i.gq, i64 noundef 8) #16
  %i.gr = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gs = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !31
  %.idx = shl nsw i64 %.pre-phi, 4
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %.idx ; 2 uses
  tail call void %i.gr(ptr noundef %i.gs, ptr noundef %i.gu, ptr noundef %i.gu, i64 noundef 8) #16
  %i.gv = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.gw = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !31
  %.idx126 = mul nsw i64 %.pre-phi, 24
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %.idx126 ; 2 uses
  tail call void %i.gv(ptr noundef %i.gw, ptr noundef %i.gy, ptr noundef %i.gy, i64 noundef 8) #16
  %i.gz = load ptr, ptr %i.gj, align 8, !tbaa !10
  %i.ha = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.hb = load ptr, ptr %i.gk, align 8, !tbaa !31
  %.idx127 = shl nsw i64 %.pre-phi, 5
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %.idx127 ; 2 uses
  tail call void %i.gz(ptr noundef %i.ha, ptr noundef %i.hc, ptr noundef %i.hc, i64 noundef 8) #16
  %i.hd = icmp sgt i32 %i.d, 0
  br i1 %i.hd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.he = load ptr, ptr %i.gk, align 8, !tbaa !31 ; 2 uses
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
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !29 ; 2 uses
  %i.hr = load float, ptr %i.ho, align 4, !tbaa !28 ; 2 uses
  %i.hs = sext i32 %i.hk to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !29 ; 2 uses
  %i.hw = load float, ptr %i.ht, align 4, !tbaa !28 ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.hi ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !29 ; 2 uses
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !28
  %i.ib = fneg nsz float %i.ia
  %i.ic = fmul nsz float %i.hr, %i.ib
  %i.id = tail call nsz float @llvm.fmuladd.f32(float %i.hq, float %i.hz, float %i.ic)
  %i.ie = getelementptr inbounds [8 x i8], ptr %1, i64 %i.hi ; 2 uses
  store float %i.id, ptr %i.ie, align 4, !tbaa !28
  %i.if = load float, ptr %i.hx, align 4, !tbaa !28
  %i.ig = fmul nsz float %i.hr, %i.hz
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.hq, float %i.if, float %i.ig)
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hg ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store float %i.ih, ptr %i.ij, align 4, !tbaa !29
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.hg ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load float, ptr %i.il, align 4, !tbaa !29 ; 2 uses
  %i.in = load float, ptr %i.ik, align 4, !tbaa !28
  %i.io = fneg nsz float %i.in
  %i.ip = fmul nsz float %i.hw, %i.io
  %i.iq = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.im, float %i.ip)
  store float %i.iq, ptr %i.ii, align 4, !tbaa !28
  %i.ir = load float, ptr %i.ik, align 4, !tbaa !28
  %i.is = fmul nsz float %i.hw, %i.im
  %i.it = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.ir, float %i.is)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store float %i.it, ptr %i.iu, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !112
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.d = ashr i32 %i.c, 2                         ; 3 uses
  %i.e = ashr i32 %i.c, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = mul nsw i32 %i.h, 7
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.l ; 2 uses
  %i.n = lshr i64 %3, 2                           ; 15 uses
  %i.o = mul nsw i32 %i.h, 14
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.n, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.r ; 7 uses
  %i.t = icmp sgt i32 %i.e, 0
  br i1 %i.t, label %.preheader113.lr.ph, label %..preheader112_crit_edge

..preheader112_crit_edge:                         ; preds = %bb.a
  %.pre124 = sext i32 %i.h to i64
  br label %.preheader112

.preheader113.lr.ph:                              ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.h to i64                     ; 7 uses
  %.idx.i = shl nsw i64 %i.y, 4
  %.idx163.i = mul nsw i64 %i.y, 24
  %.idx164.i = shl nsw i64 %i.y, 5
  %.idx165.i = mul nsw i64 %i.y, 40
  %.idx166.i = mul nsw i64 %i.y, 48
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.lr.ph, %.preheader113
  %.0118 = phi ptr [ %i.b, %.preheader113.lr.ph ], [ %i.jn, %.preheader113 ] ; 11 uses
  %.0107117 = phi ptr [ %i.j, %.preheader113.lr.ph ], [ %i.jo, %.preheader113 ] ; 8 uses
  %.0109116 = phi i32 [ 0, %.preheader113.lr.ph ], [ %i.jp, %.preheader113 ]
  %.0110115 = phi ptr [ %i.v, %.preheader113.lr.ph ], [ %i.dg, %.preheader113 ] ; 2 uses
  %i.z = load i32, ptr %.0107117, align 4, !tbaa !12 ; 2 uses
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.n, %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !24
  %i.af = sext i32 %i.z to i64
  %i.ag = mul nsw i64 %i.n, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0107117, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12 ; 2 uses
  %i.al = sub nsw i32 0, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.n, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !24
  %i.aq = sext i32 %i.ak to i64
  %i.ar = mul nsw i64 %i.n, %i.aq
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.0118, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0118, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.0107117, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = sub nsw i32 0, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.n, %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !24
  %i.bd = sext i32 %i.ax to i64
  %i.be = mul nsw i64 %i.n, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0118, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.0118, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %.0107117, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.n, %i.bm
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !24
  %i.bq = sext i32 %i.bk to i64
  %i.br = mul nsw i64 %i.n, %i.bq
  %i.bs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %.0118, i64 28
  %i.bv = getelementptr inbounds nuw i8, ptr %.0107117, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12 ; 2 uses
  %i.bx = sub nsw i32 0, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.n, %i.by
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !24
  %i.cc = sext i32 %i.bw to i64
  %i.cd = mul nsw i64 %i.n, %i.cc
  %i.ce = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0118, i64 36 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0107117, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !12 ; 2 uses
  %i.cj = sub nsw i32 0, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.n, %i.ck
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cl
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !24
  %i.co = sext i32 %i.ci to i64
  %i.cp = mul nsw i64 %i.n, %i.co
  %i.cq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %.0118, i64 44
  %i.ct = getelementptr inbounds nuw i8, ptr %.0107117, i64 24
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12 ; 2 uses
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.n, %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !24
  %i.da = sext i32 %i.cu to i64
  %i.db = mul nsw i64 %i.n, %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !24
  %i.de = getelementptr inbounds nuw i8, ptr %.0118, i64 48
  %i.df = getelementptr inbounds nuw i8, ptr %.0118, i64 52
  %i.dg = getelementptr inbounds nuw i8, ptr %.0110115, i64 4
  %i.dh = load i32, ptr %.0110115, align 4, !tbaa !12
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.di ; 7 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.y
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %.idx.i
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %.idx163.i
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %.idx164.i
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.idx165.i
  %i.dp = getelementptr inbounds i8, ptr %i.dj, i64 %.idx166.i
  %i.dq = load <2 x float>, ptr %.0118, align 4, !tbaa !24 ; 3 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 1
  %i.ds = fneg nsz float %i.dr
  %i.dt = fmul nsz float %i.ai, %i.ds
  %i.du = extractelement <2 x float> %i.dq, i64 0
  %i.dv = fmul nsz float %i.ai, %i.du
  %i.dw = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dv, i64 1
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dq, <2 x float> %i.dz) ; 7 uses
  %i.eb = load float, ptr %i.av, align 4, !tbaa !29
  %i.ec = load <2 x float>, ptr %i.au, align 4, !tbaa !24 ; 2 uses
  %i.ed = fneg nsz float %i.eb
  %i.ee = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eh = insertelement <2 x float> %i.eg, float %i.ed, i64 0
  %i.ei = fmul nsz <2 x float> %i.ef, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.ec, <2 x float> %i.ei) ; 2 uses
  %i.em = load float, ptr %i.bh, align 4, !tbaa !28
  %i.en = load <2 x float>, ptr %i.bi, align 4, !tbaa !24 ; 3 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = fneg nsz float %i.eo
  %i.eq = load <2 x float>, ptr %i.bu, align 4, !tbaa !24 ; 3 uses
  %i.er = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.bt, i64 1 ; 2 uses
  %i.et = insertelement <2 x float> poison, float %i.em, i64 0 ; 2 uses
  %i.eu = fneg nsz <2 x float> %i.eq
  %i.ev = shufflevector <2 x float> %i.et, <2 x float> %i.eu, <2 x i32> <i32 0, i32 2>
  %i.ew = fmul nsz <2 x float> %i.es, %i.ev
  %i.ex = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.bp, i64 1 ; 2 uses
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.en, <2 x float> %i.ew) ; 2 uses
  %i.fa = insertelement <2 x float> %i.en, float %i.ep, i64 0
  %i.fb = fmul nsz <2 x float> %i.es, %i.fa
  %i.fc = shufflevector <2 x float> %i.et, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.fd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.fc, <2 x float> %i.fb) ; 2 uses
  %i.fe = load float, ptr %i.cg, align 4, !tbaa !29
  %i.ff = load <2 x float>, ptr %i.cg, align 4, !tbaa !24
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fh = fneg nsz float %i.fe
  %i.fi = load float, ptr %i.cs, align 4, !tbaa !29 ; 2 uses
  %i.fj = fneg nsz float %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.cf, i64 1 ; 2 uses
  %i.fm = insertelement <2 x float> %i.eq, float %i.fj, i64 0 ; 2 uses
  %i.fn = fmul nsz <2 x float> %i.fl, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.cb, i64 1 ; 2 uses
  %i.fq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fg, <2 x float> %i.fn) ; 2 uses
  %i.fr = insertelement <2 x float> %i.fg, float %i.fh, i64 1
  %i.fs = fmul nsz <2 x float> %i.fl, %i.fr
  %i.ft = insertelement <2 x float> %i.fm, float %i.fi, i64 0
  %i.fu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.ft, <2 x float> %i.fs) ; 2 uses
  %i.fv = load float, ptr %i.df, align 4, !tbaa !29
  %i.fw = load <2 x float>, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.fx = fneg nsz float %i.fv
  %i.fy = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gb = insertelement <2 x float> %i.ga, float %i.fx, i64 0
  %i.gc = fmul nsz <2 x float> %i.fz, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.fw, <2 x float> %i.gc) ; 2 uses
  %i.gg = fadd nsz <2 x float> %i.el, %i.gf       ; 3 uses
  %i.gh = fadd nsz <2 x float> %i.ez, %i.fu       ; 3 uses
  %i.gi = fadd nsz <2 x float> %i.fd, %i.fq       ; 3 uses
  %i.gj = fadd nsz <2 x float> %i.ea, %i.gg
  %i.gk = shufflevector <2 x float> %i.gi, <2 x float> %i.gh, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.gl = fadd nsz <2 x float> %i.gj, %i.gk
  %i.gm = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.gn = fadd nsz <2 x float> %i.gl, %i.gm
  store <2 x float> %i.gn, ptr %i.dj, align 4, !tbaa !24
  %4 = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.go = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !24 ; 3 uses
  %i.gp = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !29 ; 3 uses
  %i.gq = extractelement <2 x float> %i.go, i64 0
  %i.gr = fneg nsz <2 x float> %i.gh
  %i.gs = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.gu = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !29 ; 2 uses
  %i.gv = fsub nsz <2 x float> %i.el, %i.gf       ; 4 uses
  %i.gw = fsub nsz <2 x float> %i.ez, %i.fu       ; 4 uses
  %i.gx = fsub nsz <2 x float> %i.fd, %i.fq       ; 4 uses
  %i.gy = fneg nsz float %i.gq                    ; 2 uses
  %i.gz = fneg nsz <2 x float> %i.gg              ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hd = fneg nsz float %i.gu
  %i.he = insertelement <2 x float> poison, float %i.gp, i64 0 ; 2 uses
  %i.hf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !24 ; 6 uses
  %i.hi = shufflevector <2 x float> %i.go, <2 x float> %i.hh, <2 x i32> <i32 0, i32 3>
  %i.hj = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = fmul nsz <2 x float> %i.hi, %i.hj
  %i.hl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gg, <2 x float> %i.hk)
  %i.hm = fneg nsz <2 x float> %i.hh              ; 3 uses
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ho = insertelement <2 x float> %i.hn, float %i.gy, i64 1
  %i.hp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.gi, <2 x float> %i.hl) ; 2 uses
  %i.hq = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hs = fmul nsz <2 x float> %i.hr, %i.gz
  %i.ht = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gm, <2 x float> %i.hs)
  %i.hu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.gk, <2 x float> %i.ht) ; 2 uses
  %i.hv = fmul nsz <2 x float> %i.gs, %i.gz
  %i.hw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gk, <2 x float> %i.hv)
  %i.hx = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.gm, <2 x float> %i.hw) ; 2 uses
  %i.hz = shufflevector <2 x float> %i.he, <2 x float> %i.hh, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ia = fmul nsz <2 x float> %i.gw, %i.hz
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ic = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.gx, <2 x float> %i.ib)
  %i.id = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.gv, <2 x float> %i.ic)
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.if = shufflevector <2 x float> %i.gx, <2 x float> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.ig = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul nsz <2 x float> %i.if, %i.ih
  %i.ij = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.hc, <2 x float> %i.ii)
  %i.il = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = shufflevector <2 x float> %i.gw, <2 x float> %i.gx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.im, <2 x float> %i.ik) ; 2 uses
  %i.io = fadd nsz <2 x float> %i.hu, %i.ie       ; 2 uses
  %i.ip = fsub nsz <2 x float> %i.hu, %i.ie       ; 2 uses
  %i.iq = shufflevector <2 x float> %i.io, <2 x float> %i.ip, <2 x i32> <i32 0, i32 3>
  %i.ir = fsub nsz <2 x float> %i.hy, %i.in       ; 2 uses
  %i.is = fadd nsz <2 x float> %i.hy, %i.in       ; 2 uses
  %i.it = shufflevector <2 x float> %i.ir, <2 x float> %i.is, <2 x i32> <i32 0, i32 3>
  %i.iu = fmul nsz <2 x float> %i.im, %i.ih
  %i.iv = insertelement <2 x float> %i.hq, float %i.gp, i64 0
  %i.iw = shufflevector <2 x float> %i.gx, <2 x float> %i.gv, <2 x i32> <i32 1, i32 2>
  %i.ix = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.iw, <2 x float> %i.iu)
  %i.iy = insertelement <2 x float> %i.hh, float %i.gp, i64 1
  %i.iz = shufflevector <2 x float> %i.gv, <2 x float> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.ja = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.iz, <2 x float> %i.ix) ; 2 uses
  %i.jb = fadd nsz <2 x float> %i.hp, %i.ja       ; 2 uses
  %i.jc = fsub nsz <2 x float> %i.hp, %i.ja       ; 2 uses
  %i.jd = shufflevector <2 x float> %i.jb, <2 x float> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.je = shufflevector <2 x float> %i.jc, <2 x float> %i.jb, <2 x i32> <i32 0, i32 3>
  %i.jf = fadd nsz <2 x float> %i.ea, %i.jd
  store <2 x float> %i.jf, ptr %i.dk, align 4, !tbaa !24
  %i.jg = shufflevector <2 x float> %i.ip, <2 x float> %i.io, <2 x i32> <i32 0, i32 3>
  %i.jh = fadd nsz <2 x float> %i.ea, %i.jg
  store <2 x float> %i.jh, ptr %i.dl, align 4, !tbaa !24
  %i.ji = shufflevector <2 x float> %i.is, <2 x float> %i.ir, <2 x i32> <i32 0, i32 3>
  %i.jj = fadd nsz <2 x float> %i.ea, %i.ji
  store <2 x float> %i.jj, ptr %i.dm, align 4, !tbaa !24
  %i.jk = fadd nsz <2 x float> %i.ea, %i.it
  store <2 x float> %i.jk, ptr %i.dn, align 4, !tbaa !24
  %i.jl = fadd nsz <2 x float> %i.ea, %i.iq
  store <2 x float> %i.jl, ptr %i.do, align 4, !tbaa !24
  %i.jm = fadd nsz <2 x float> %i.ea, %i.je
  store <2 x float> %i.jm, ptr %i.dp, align 4, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %.0118, i64 56 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0107117, i64 28
  %i.jp = add nuw nsw i32 %.0109116, 7            ; 2 uses
  %i.jq = icmp slt i32 %i.jp, %i.e
  br i1 %i.jq, label %.preheader113, label %.preheader112.loopexit, !llvm.loop !113

.preheader112.loopexit:                           ; preds = %.preheader113
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.preheader112

.preheader112:                                    ; preds = %..preheader112_crit_edge, %.preheader112.loopexit
  %.pre-phi = phi i64 [ %.pre124, %..preheader112_crit_edge ], [ %i.y, %.preheader112.loopexit ] ; 6 uses
  %i.jr = phi ptr [ %i.g, %..preheader112_crit_edge ], [ %.pre, %.preheader112.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader112_crit_edge ], [ %i.jn, %.preheader112.loopexit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ju = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.jv = load ptr, ptr %i.jt, align 8, !tbaa !31 ; 2 uses
  tail call void %i.ju(ptr noundef %i.jr, ptr noundef %i.jv, ptr noundef %i.jv, i64 noundef 8) #16
  %i.jw = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.jx = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.jy = load ptr, ptr %i.jt, align 8, !tbaa !31
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jy, i64 %.pre-phi ; 2 uses
  tail call void %i.jw(ptr noundef %i.jx, ptr noundef %i.jz, ptr noundef %i.jz, i64 noundef 8) #16
  %i.ka = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !31
  %.idx = shl nsw i64 %.pre-phi, 4
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 %.idx ; 2 uses
  tail call void %i.ka(ptr noundef %i.kb, ptr noundef %i.kd, ptr noundef %i.kd, i64 noundef 8) #16
  %i.ke = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.kf = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.kg = load ptr, ptr %i.jt, align 8, !tbaa !31
  %.idx126 = mul nsw i64 %.pre-phi, 24
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %.idx126 ; 2 uses
  tail call void %i.ke(ptr noundef %i.kf, ptr noundef %i.kh, ptr noundef %i.kh, i64 noundef 8) #16
  %i.ki = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.kj = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.kk = load ptr, ptr %i.jt, align 8, !tbaa !31
  %.idx127 = shl nsw i64 %.pre-phi, 5
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %.idx127 ; 2 uses
  tail call void %i.ki(ptr noundef %i.kj, ptr noundef %i.kl, ptr noundef %i.kl, i64 noundef 8) #16
  %i.km = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.kn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ko = load ptr, ptr %i.jt, align 8, !tbaa !31
  %.idx128 = mul nsw i64 %.pre-phi, 40
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %.idx128 ; 2 uses
  tail call void %i.km(ptr noundef %i.kn, ptr noundef %i.kp, ptr noundef %i.kp, i64 noundef 8) #16
  %i.kq = load ptr, ptr %i.js, align 8, !tbaa !10
  %i.kr = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ks = load ptr, ptr %i.jt, align 8, !tbaa !31
  %.idx129 = mul nsw i64 %.pre-phi, 48
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %.idx129 ; 2 uses
  tail call void %i.kq(ptr noundef %i.kr, ptr noundef %i.kt, ptr noundef %i.kt, i64 noundef 8) #16
  %i.ku = icmp sgt i32 %i.d, 0
  br i1 %i.ku, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112
  %i.kv = load ptr, ptr %i.jt, align 8, !tbaa !31 ; 2 uses
  %i.kw = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader112
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.kx = add nuw nsw i64 %indvars.iv, %i.kw      ; 3 uses
  %i.ky = xor i64 %indvars.iv, -1
  %i.kz = add nsw i64 %i.kw, %i.ky                ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.kx
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !12
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.kz
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !12
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.le ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !29 ; 2 uses
  %i.li = load float, ptr %i.lf, align 4, !tbaa !28 ; 2 uses
  %i.lj = sext i32 %i.lb to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !29 ; 2 uses
  %i.ln = load float, ptr %i.lk, align 4, !tbaa !28 ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.kz ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !29 ; 2 uses
  %i.lr = load float, ptr %i.lo, align 4, !tbaa !28
  %i.ls = fneg nsz float %i.lr
  %i.lt = fmul nsz float %i.li, %i.ls
  %i.lu = tail call nsz float @llvm.fmuladd.f32(float %i.lh, float %i.lq, float %i.lt)
  %i.lv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kz ; 2 uses
  store float %i.lu, ptr %i.lv, align 4, !tbaa !28
  %i.lw = load float, ptr %i.lo, align 4, !tbaa !28
  %i.lx = fmul nsz float %i.li, %i.lq
  %i.ly = tail call nsz float @llvm.fmuladd.f32(float %i.lh, float %i.lw, float %i.lx)
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.kx ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store float %i.ly, ptr %i.ma, align 4, !tbaa !29
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.kx ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !29 ; 2 uses
  %i.me = load float, ptr %i.mb, align 4, !tbaa !28
  %i.mf = fneg nsz float %i.me
  %i.mg = fmul nsz float %i.ln, %i.mf
  %i.mh = tail call nsz float @llvm.fmuladd.f32(float %i.lm, float %i.md, float %i.mg)
  store float %i.mh, ptr %i.lz, align 4, !tbaa !28
  %i.mi = load float, ptr %i.mb, align 4, !tbaa !28
  %i.mj = fmul nsz float %i.ln, %i.md
  %i.mk = tail call nsz float @llvm.fmuladd.f32(float %i.lm, float %i.mi, float %i.mj)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  store float %i.mk, ptr %i.ml, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !114
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
end_hunk_3
begin_hunk_4_@ff_tx_mdct_pfa_15xM_inv_float_c:bb.a
  %.0133 = phi ptr [ %i.b, %.preheader127.lr.ph ], [ %i.km, %fft15.exit ] ; 2 uses
  %.0107132 = phi ptr [ %i.j, %.preheader127.lr.ph ], [ %i.kn, %fft15.exit ] ; 2 uses
  %.0109131 = phi i32 [ 0, %.preheader127.lr.ph ], [ %i.ko, %fft15.exit ]
  %.0110130 = phi ptr [ %i.v, %.preheader127.lr.ph ], [ %i.cz, %fft15.exit ] ; 2 uses
  br label %bb.b

.preheader126.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !32
  br label %.preheader126

.preheader126:                                    ; preds = %..preheader126_crit_edge, %.preheader126.loopexit
  %.pre-phi = phi i64 [ %.pre149, %..preheader126_crit_edge ], [ %i.y, %.preheader126.loopexit ] ; 14 uses
  %i.an = phi ptr [ %i.g, %..preheader126_crit_edge ], [ %.pre, %.preheader126.loopexit ]
  %.0.lcssa = phi ptr [ %i.b, %..preheader126_crit_edge ], [ %i.km, %.preheader126.loopexit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  tail call void %i.aq(ptr noundef %i.an, ptr noundef %i.ar, ptr noundef %i.ar, i64 noundef 8) #16
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.pre-phi ; 2 uses
  tail call void %i.as(ptr noundef %i.at, ptr noundef %i.av, ptr noundef %i.av, i64 noundef 8) #16
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx = shl nsw i64 %.pre-phi, 4
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.idx ; 2 uses
  tail call void %i.aw(ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.az, i64 noundef 8) #16
  %i.ba = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx152 = mul nsw i64 %.pre-phi, 24
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx152 ; 2 uses
  tail call void %i.ba(ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef %i.bd, i64 noundef 8) #16
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx153 = shl nsw i64 %.pre-phi, 5
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %.idx153 ; 2 uses
  tail call void %i.be(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef %i.bh, i64 noundef 8) #16
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx154 = mul nsw i64 %.pre-phi, 40
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %.idx154 ; 2 uses
  tail call void %i.bi(ptr noundef %i.bj, ptr noundef %i.bl, ptr noundef %i.bl, i64 noundef 8) #16
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx155 = mul nsw i64 %.pre-phi, 48
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.idx155 ; 2 uses
  tail call void %i.bm(ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef %i.bp, i64 noundef 8) #16
  %i.bq = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx156 = mul nsw i64 %.pre-phi, 56
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %.idx156 ; 2 uses
  tail call void %i.bq(ptr noundef %i.br, ptr noundef %i.bt, ptr noundef %i.bt, i64 noundef 8) #16
  %i.bu = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx157 = shl nsw i64 %.pre-phi, 6
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %.idx157 ; 2 uses
  tail call void %i.bu(ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.bx, i64 noundef 8) #16
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ca = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx158 = mul nsw i64 %.pre-phi, 72
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %.idx158 ; 2 uses
  tail call void %i.by(ptr noundef %i.bz, ptr noundef %i.cb, ptr noundef %i.cb, i64 noundef 8) #16
  %i.cc = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx159 = mul nsw i64 %.pre-phi, 80
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %.idx159 ; 2 uses
  tail call void %i.cc(ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef %i.cf, i64 noundef 8) #16
  %i.cg = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.ci = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx160 = mul nsw i64 %.pre-phi, 88
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %.idx160 ; 2 uses
  tail call void %i.cg(ptr noundef %i.ch, ptr noundef %i.cj, ptr noundef %i.cj, i64 noundef 8) #16
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.cm = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx161 = mul nsw i64 %.pre-phi, 96
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.idx161 ; 2 uses
  tail call void %i.ck(ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef %i.cn, i64 noundef 8) #16
  %i.co = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.cq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx162 = mul nsw i64 %.pre-phi, 104
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.idx162 ; 2 uses
  tail call void %i.co(ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef %i.cr, i64 noundef 8) #16
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !10
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !31
  %.idx163 = mul nsw i64 %.pre-phi, 112
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %.idx163 ; 2 uses
  tail call void %i.cs(ptr noundef %i.ct, ptr noundef %i.cv, ptr noundef %i.cv, i64 noundef 8) #16
  %i.cw = icmp sgt i32 %i.d, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.b
  %i.cx = load i32, ptr %.0110130, align 4, !tbaa !12
  %i.cy = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %.0110130, i64 4
  %i.da = sext i32 %i.cx to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.da ; 15 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.idx.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %.idx88.i
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 %.idx89.i
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 %.idx90.i
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 %.idx.i115
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.y
  %i.di = getelementptr inbounds i8, ptr %i.db, i64 %.idx88.i116
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 %.idx89.i117
  %i.dk = getelementptr inbounds i8, ptr %i.db, i64 %.idx90.i118
  %i.dl = getelementptr inbounds i8, ptr %i.db, i64 %.idx.i122
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %.idx88.i123
  %i.dn = getelementptr inbounds i8, ptr %i.db, i64 %.idx89.i124
  %i.do = getelementptr inbounds i8, ptr %i.db, i64 %.idx90.i125
  %i.dp = getelementptr inbounds i8, ptr %i.db, i64 %.idx91.i
  %i.dq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !24 ; 5 uses
  %i.dr = load <2 x float>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.ds = load <2 x float>, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.du = fsub nsz <2 x float> %i.ds, %i.dt
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fadd nsz <2 x float> %i.ds, %i.dt       ; 2 uses
  %i.dx = fmul nsz <2 x float> %i.dv, %i.dq       ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ea = fmul nsz <2 x float> %i.dw, %i.dz
  %i.eb = fsub nsz <2 x float> %i.dr, %i.ea       ; 2 uses
  %i.ec = fsub nsz <2 x float> %i.eb, %i.dx       ; 2 uses
  %i.ed = fadd nsz <2 x float> %i.eb, %i.dx       ; 2 uses
  %i.ee = shufflevector <2 x float> %i.ec, <2 x float> %i.ed, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ef = load <2 x float>, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.eh = load <2 x float>, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.ei = fsub nsz <2 x float> %i.eg, %i.eh
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = fadd nsz <2 x float> %i.eg, %i.eh       ; 2 uses
  %i.el = fmul nsz <2 x float> %i.ej, %i.dq       ; 2 uses
  %i.em = fmul nsz <2 x float> %i.ek, %i.dz
  %i.en = fsub nsz <2 x float> %i.ef, %i.em       ; 2 uses
  %i.eo = fsub nsz <2 x float> %i.en, %i.el       ; 2 uses
  %i.ep = fadd nsz <2 x float> %i.en, %i.el       ; 2 uses
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.er = load <2 x float>, ptr %i.ae, align 16, !tbaa !24 ; 2 uses
  %i.es = load <2 x float>, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.et = load <2 x float>, ptr %i.ag, align 16, !tbaa !24 ; 2 uses
  %i.eu = fsub nsz <2 x float> %i.es, %i.et
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = fadd nsz <2 x float> %i.es, %i.et       ; 2 uses
  %i.ex = fmul nsz <2 x float> %i.ev, %i.dq       ; 2 uses
  %i.ey = fmul nsz <2 x float> %i.ew, %i.dz
  %i.ez = fsub nsz <2 x float> %i.er, %i.ey       ; 2 uses
  %i.fa = fsub nsz <2 x float> %i.ez, %i.ex       ; 2 uses
  %i.fb = fadd nsz <2 x float> %i.ez, %i.ex       ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fa, <2 x float> %i.fb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fd = load <2 x float>, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.fe = load <2 x float>, ptr %i.ai, align 16, !tbaa !24 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.aj, align 8, !tbaa !24 ; 2 uses
  %i.fg = fsub nsz <2 x float> %i.fe, %i.ff
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = fadd nsz <2 x float> %i.fe, %i.ff       ; 2 uses
  %i.fj = fmul nsz <2 x float> %i.fh, %i.dq       ; 2 uses
  %i.fk = fmul nsz <2 x float> %i.fi, %i.dz
  %i.fl = fsub nsz <2 x float> %i.fd, %i.fk       ; 2 uses
  %i.fm = fsub nsz <2 x float> %i.fl, %i.fj       ; 2 uses
  %i.fn = fadd nsz <2 x float> %i.fl, %i.fj       ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fm, <2 x float> %i.fn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fp = load <2 x float>, ptr %i.ak, align 16, !tbaa !24 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.am, align 16, !tbaa !24 ; 2 uses
  %i.fs = fsub nsz <2 x float> %i.fq, %i.fr
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = fadd nsz <2 x float> %i.fq, %i.fr       ; 2 uses
  %i.fv = fmul nsz <2 x float> %i.ft, %i.dq       ; 2 uses
  %i.fw = fmul nsz <2 x float> %i.fu, %i.dz
  %i.fx = fsub nsz <2 x float> %i.fp, %i.fw       ; 2 uses
  %i.fy = fsub nsz <2 x float> %i.fx, %i.fv       ; 2 uses
  %i.fz = fadd nsz <2 x float> %i.fx, %i.fv       ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fy, <2 x float> %i.fz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gb = fadd nsz <2 x float> %i.dr, %i.dw       ; 5 uses
  %i.gc = fadd nsz <2 x float> %i.ef, %i.ek       ; 2 uses
  %i.gd = fadd nsz <2 x float> %i.er, %i.ew       ; 2 uses
  %i.ge = fadd nsz <2 x float> %i.fd, %i.fi       ; 2 uses
  %i.gf = fadd nsz <2 x float> %i.fp, %i.fu       ; 2 uses
  %i.gg = fsub nsz <2 x float> %i.gc, %i.gf       ; 2 uses
  %i.gh = fadd nsz <2 x float> %i.gc, %i.gf       ; 3 uses
  %i.gi = fsub nsz <2 x float> %i.gd, %i.ge       ; 2 uses
  %i.gj = fadd nsz <2 x float> %i.gd, %i.ge       ; 3 uses
  %i.gk = fadd nsz <2 x float> %i.gb, %i.gh
  %i.gl = fadd nsz <2 x float> %i.gk, %i.gj
  store <2 x float> %i.gl, ptr %i.db, align 4, !tbaa !24
  %5 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.gm = fneg nsz <2 x float> %i.gj
  %i.gn = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.go = fmul nsz <2 x float> %i.gn, %i.gm
  %i.gp = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gh, <2 x float> %i.go) ; 2 uses
  %7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.gr = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul nsz <2 x float> %i.gi, %i.gr
  %i.gt = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gg, <2 x float> %i.gs)
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gw = fsub nsz <2 x float> %i.gq, %i.gv       ; 2 uses
  %i.gx = fadd nsz <2 x float> %i.gq, %i.gv       ; 2 uses
  %i.gy = shufflevector <2 x float> %i.gw, <2 x float> %i.gx, <2 x i32> <i32 0, i32 3>
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.ha = fadd nsz <2 x float> %i.gb, %i.gz
  store <2 x float> %i.ha, ptr %i.dc, align 4, !tbaa !24
  %i.hb = fneg nsz <2 x float> %i.gh
  %i.hc = fmul nsz <2 x float> %i.gn, %i.hb
  %i.hd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.gj, <2 x float> %i.hc) ; 2 uses
  %i.he = fneg nsz <2 x float> %i.gg
  %i.hf = fmul nsz <2 x float> %i.gr, %i.he
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gi, <2 x float> %i.hf)
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hi = fadd nsz <2 x float> %i.hd, %i.hh       ; 2 uses
  %i.hj = fsub nsz <2 x float> %i.hd, %i.hh       ; 2 uses
  %i.hk = shufflevector <2 x float> %i.hi, <2 x float> %i.hj, <2 x i32> <i32 0, i32 3>
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> %i.hi, <2 x i32> <i32 0, i32 3>
  %i.hm = fadd nsz <2 x float> %i.gb, %i.hl
  store <2 x float> %i.hm, ptr %i.dd, align 4, !tbaa !24
  %i.hn = fadd nsz <2 x float> %i.gb, %i.hk
  store <2 x float> %i.hn, ptr %i.de, align 4, !tbaa !24
  %i.ho = fadd nsz <2 x float> %i.gb, %i.gy
  store <2 x float> %i.ho, ptr %i.df, align 4, !tbaa !24
  %i.hp = shufflevector <2 x float> %i.ed, <2 x float> %i.ec, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.hq = shufflevector <2 x float> %i.ep, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hr = shufflevector <2 x float> %i.fb, <2 x float> %i.fa, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hs = shufflevector <2 x float> %i.fn, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ht = shufflevector <2 x float> %i.fz, <2 x float> %i.fy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hu = fsub nsz <2 x float> %i.hq, %i.ht
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hw = fadd nsz <2 x float> %i.hq, %i.ht       ; 3 uses
  %i.hx = fsub nsz <2 x float> %i.hr, %i.hs
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hz = fadd nsz <2 x float> %i.hr, %i.hs       ; 3 uses
  %i.ia = fadd nsz <2 x float> %i.hp, %i.hw
  %i.ib = fadd nsz <2 x float> %i.ia, %i.hz
  store <2 x float> %i.ib, ptr %i.dg, align 4, !tbaa !24
  %9 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.ic = fneg nsz <2 x float> %i.hz
  %i.id = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ie = fmul nsz <2 x float> %i.id, %i.ic
  %i.if = shufflevector <4 x float> %9, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.hw, <2 x float> %i.ie) ; 2 uses
  %11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %12 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ih = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul nsz <2 x float> %i.hy, %i.ih
  %i.ij = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ik = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.hv, <2 x float> %i.ii) ; 2 uses
  %i.il = fsub nsz <2 x float> %i.ig, %i.ik       ; 2 uses
  %i.im = fadd nsz <2 x float> %i.ig, %i.ik       ; 2 uses
  %i.in = shufflevector <2 x float> %i.il, <2 x float> %i.im, <2 x i32> <i32 0, i32 3>
  %i.io = shufflevector <2 x float> %i.im, <2 x float> %i.il, <2 x i32> <i32 0, i32 3>
  %i.ip = fadd nsz <2 x float> %i.hp, %i.io
  store <2 x float> %i.ip, ptr %i.dh, align 4, !tbaa !24
  %i.iq = fneg nsz <2 x float> %i.hw
  %i.ir = fmul nsz <2 x float> %i.id, %i.iq
  %i.is = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.hz, <2 x float> %i.ir) ; 2 uses
  %i.it = fneg nsz <2 x float> %i.hv
  %i.iu = fmul nsz <2 x float> %i.ih, %i.it
  %i.iv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.hy, <2 x float> %i.iu) ; 2 uses
  %i.iw = fadd nsz <2 x float> %i.is, %i.iv       ; 2 uses
  %i.ix = fsub nsz <2 x float> %i.is, %i.iv       ; 2 uses
  %i.iy = shufflevector <2 x float> %i.iw, <2 x float> %i.ix, <2 x i32> <i32 0, i32 3>
  %i.iz = shufflevector <2 x float> %i.ix, <2 x float> %i.iw, <2 x i32> <i32 0, i32 3>
  %i.ja = fadd nsz <2 x float> %i.hp, %i.iz
  store <2 x float> %i.ja, ptr %i.di, align 4, !tbaa !24
  %i.jb = fadd nsz <2 x float> %i.hp, %i.iy
  store <2 x float> %i.jb, ptr %i.dj, align 4, !tbaa !24
  %i.jc = fadd nsz <2 x float> %i.hp, %i.in
  store <2 x float> %i.jc, ptr %i.dk, align 4, !tbaa !24
  %i.jd = fsub nsz <2 x float> %i.eq, %i.ga
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jf = fadd nsz <2 x float> %i.eq, %i.ga       ; 3 uses
  %i.jg = fsub nsz <2 x float> %i.fc, %i.fo
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ji = fadd nsz <2 x float> %i.fc, %i.fo       ; 3 uses
  %i.jj = fadd nsz <2 x float> %i.ee, %i.jf
  %i.jk = fadd nsz <2 x float> %i.jj, %i.ji
  store <2 x float> %i.jk, ptr %i.dl, align 4, !tbaa !24
  %13 = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %14 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.jl = fneg nsz <2 x float> %i.ji
  %i.jm = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fmul nsz <2 x float> %i.jm, %i.jl
  %i.jo = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jf, <2 x float> %i.jn) ; 2 uses
  %15 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %16 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.jq = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = fmul nsz <2 x float> %i.jh, %i.jq
  %i.js = shufflevector <4 x float> %15, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.je, <2 x float> %i.jr) ; 2 uses
  %i.ju = fsub nsz <2 x float> %i.jp, %i.jt       ; 2 uses
  %i.jv = fadd nsz <2 x float> %i.jp, %i.jt       ; 2 uses
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> %i.jv, <2 x i32> <i32 0, i32 3>
  %i.jx = shufflevector <2 x float> %i.jv, <2 x float> %i.ju, <2 x i32> <i32 0, i32 3>
  %i.jy = fadd nsz <2 x float> %i.ee, %i.jx
  store <2 x float> %i.jy, ptr %i.dm, align 4, !tbaa !24
  %i.jz = fneg nsz <2 x float> %i.jf
  %i.ka = fmul nsz <2 x float> %i.jm, %i.jz
  %i.kb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.ji, <2 x float> %i.ka) ; 2 uses
  %i.kc = fneg nsz <2 x float> %i.je
  %i.kd = fmul nsz <2 x float> %i.jq, %i.kc
  %i.ke = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jh, <2 x float> %i.kd) ; 2 uses
  %i.kf = fadd nsz <2 x float> %i.kb, %i.ke       ; 2 uses
  %i.kg = fsub nsz <2 x float> %i.kb, %i.ke       ; 2 uses
  %i.kh = shufflevector <2 x float> %i.kf, <2 x float> %i.kg, <2 x i32> <i32 0, i32 3>
  %i.ki = shufflevector <2 x float> %i.kg, <2 x float> %i.kf, <2 x i32> <i32 0, i32 3>
  %i.kj = fadd nsz <2 x float> %i.ee, %i.ki
  store <2 x float> %i.kj, ptr %i.dn, align 4, !tbaa !24
  %i.kk = fadd nsz <2 x float> %i.ee, %i.kh
  store <2 x float> %i.kk, ptr %i.do, align 4, !tbaa !24
  %i.kl = fadd nsz <2 x float> %i.ee, %i.jw
  store <2 x float> %i.kl, ptr %i.dp, align 4, !tbaa !24
  %i.km = getelementptr inbounds nuw i8, ptr %.0133, i64 120 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0107132, i64 60
  %i.ko = add nuw nsw i32 %.0109131, 15           ; 2 uses
  %i.kp = icmp slt i32 %i.ko, %i.e
  br i1 %i.kp, label %.preheader127, label %.preheader126.loopexit, !llvm.loop !117

bb.b:                                             ; preds = %.preheader127, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0107132, i64 %indvars.iv
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !12 ; 2 uses
  %i.ks = sub nsw i32 0, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = mul nsw i64 %i.n, %i.kt
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ku
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !24
  %i.kx = sext i32 %i.kr to i64
  %i.ky = mul nsw i64 %i.n, %i.kx
  %i.kz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !24
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.0133, i64 %indvars.iv ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.le = load float, ptr %i.lc, align 4, !tbaa !29
  %i.lf = load <2 x float>, ptr %i.lb, align 4, !tbaa !24 ; 2 uses
  %i.lg = fneg nsz float %i.le
  %i.lh = insertelement <2 x float> poison, float %i.la, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lk = insertelement <2 x float> %i.lj, float %i.lg, i64 0
  %i.ll = fmul nsz <2 x float> %i.li, %i.lk
  %i.lm = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.lf, <2 x float> %i.ll)
  store <2 x float> %i.lo, ptr %i.ld, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %fft15.exit, label %bb.b, !llvm.loop !118

.lr.ph:                                           ; preds = %.preheader126
  %i.lp = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.lq = zext nneg i32 %i.d to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.preheader126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv145 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next146, %bb.c ] ; 3 uses
  %i.lr = add nuw nsw i64 %indvars.iv145, %i.lq   ; 3 uses
  %i.ls = xor i64 %indvars.iv145, -1
  %i.lt = add nsw i64 %i.lq, %i.ls                ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.lr
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !12
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.lt
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !12
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !29 ; 2 uses
  %i.mc = load float, ptr %i.lz, align 4, !tbaa !28 ; 2 uses
  %i.md = sext i32 %i.lv to i64
  %i.me = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !29 ; 2 uses
  %i.mh = load float, ptr %i.me, align 4, !tbaa !28 ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %.0.lcssa, i64 %i.lt ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !29 ; 2 uses
  %i.ml = load float, ptr %i.mi, align 4, !tbaa !28
  %i.mm = fneg nsz float %i.ml
  %i.mn = fmul nsz float %i.mc, %i.mm
  %i.mo = tail call nsz float @llvm.fmuladd.f32(float %i.mb, float %i.mk, float %i.mn)
  %i.mp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lt ; 2 uses
  store float %i.mo, ptr %i.mp, align 4, !tbaa !28
  %i.mq = load float, ptr %i.mi, align 4, !tbaa !28
  %i.mr = fmul nsz float %i.mc, %i.mk
  %i.ms = tail call nsz float @llvm.fmuladd.f32(float %i.mb, float %i.mq, float %i.mr)
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.lr ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store float %i.ms, ptr %i.mu, align 4, !tbaa !29
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.0.lcssa, i64 %i.lr ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !29 ; 2 uses
  %i.my = load float, ptr %i.mv, align 4, !tbaa !28
  %i.mz = fneg nsz float %i.my
  %i.na = fmul nsz float %i.mh, %i.mz
  %i.nb = tail call nsz float @llvm.fmuladd.f32(float %i.mg, float %i.mx, float %i.na)
  store float %i.nb, ptr %i.mt, align 4, !tbaa !28
  %i.nc = load float, ptr %i.mv, align 4, !tbaa !28
  %i.nd = fmul nsz float %i.mh, %i.mx
  %i.ne = tail call nsz float @llvm.fmuladd.f32(float %i.mg, float %i.nc, float %i.nd)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store float %i.ne, ptr %i.nf, align 4, !tbaa !29
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %._crit_edge, label %bb.c, !llvm.loop !119
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ff_tx_mdct_naive_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load double, ptr %i.a, align 8, !tbaa !22
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = sitofp nsz i32 %i.c to double
  %i.e = fmul nnan nsz double %i.d, 4.000000e+00
  %i.f = fdiv nnan nsz double f0x400921FB54442D18, %i.e ; 2 uses
  %i.g = lshr i64 %3, 2
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
  %.02427.us = phi double [ 0.000000e+00, %.preheader.us ], [ %i.af, %bb.b ]
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.m = shl nuw i32 %indvars.iv.tr, 1
  %i.n = add i32 %i.j, %i.m
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !24
  %i.r = fpext nsz float %i.q to double
  %i.s = sitofp nsz i32 %i.o to double
  %i.t = fmul nsz double %i.f, %i.s
  %i.u = tail call nsz double @llvm.cos.f64(double %i.t)
  %i.v = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.u, double %.02427.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.w = shl nuw i32 %indvars.iv.tr.1, 1
  %i.x = add i32 %i.j, %i.w
  %i.y = mul nsw i32 %i.x, %i.l
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = sitofp nsz i32 %i.y to double
  %i.ad = fmul nsz double %i.f, %i.ac
  %i.ae = tail call nsz double @llvm.cos.f64(double %i.ad)
  %i.af = tail call nsz double @llvm.fmuladd.f64(double %i.ab, double %i.ae, double %i.v) ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.b, !llvm.loop !120

._crit_edge.us:                                   ; preds = %bb.b
  %i.ag = fmul nsz double %i.b, %i.af
  %i.ah = fptrunc nsz double %i.ag to float
  %i.ai = mul nuw nsw i64 %i.g, %indvars.iv33
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  store float %i.ah, ptr %i.aj, align 4, !tbaa !24
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge30, label %.preheader.us, !llvm.loop !121

._crit_edge30:                                    ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ff_tx_mdct_naive_init_float_c(ptr nofree noundef writeonly captures(none) initializes((140, 152)) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #13 {
bb.a:
  %i.a = load float, ptr %6, align 4, !tbaa !24   ; 2 uses
  %i.b = fpext nsz float %i.a to double
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
end_hunk_4
