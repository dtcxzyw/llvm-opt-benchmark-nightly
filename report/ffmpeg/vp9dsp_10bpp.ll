Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_10bpp?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 180
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 192
begin_hunk_0_@ff_vp9dsp_intrapred_init_10:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <4 x ptr> <ptr @hor_8x8_c, ptr @dc_8x8_c, ptr @diag_downleft_8x8_c, ptr @diag_downright_8x8_c>, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <4 x ptr> <ptr @vert_right_8x8_c, ptr @hor_down_8x8_c, ptr @vert_left_8x8_c, ptr @hor_up_8x8_c>, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <4 x ptr> <ptr @tm_8x8_c, ptr @dc_left_8x8_c, ptr @dc_top_8x8_c, ptr @dc_128_8x8_c>, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x ptr> <ptr @dc_127_8x8_c, ptr @dc_129_8x8_c, ptr @vert_16x16_c, ptr @hor_16x16_c>, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x ptr> <ptr @dc_16x16_c, ptr @diag_downleft_16x16_c, ptr @diag_downright_16x16_c, ptr @vert_right_16x16_c>, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <4 x ptr> <ptr @hor_down_16x16_c, ptr @vert_left_16x16_c, ptr @hor_up_16x16_c, ptr @tm_16x16_c>, ptr %i.i, align 8, !tbaa !25
  store <4 x ptr> <ptr @dc_left_16x16_c, ptr @dc_top_16x16_c, ptr @dc_128_16x16_c, ptr @dc_127_16x16_c>, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x ptr> <ptr @dc_129_16x16_c, ptr @vert_32x32_c, ptr @hor_32x32_c, ptr @dc_32x32_c>, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <4 x ptr> <ptr @diag_downleft_32x32_c, ptr @diag_downright_32x32_c, ptr @vert_right_32x32_c, ptr @hor_down_32x32_c>, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <4 x ptr> <ptr @vert_left_32x32_c, ptr @hor_up_32x32_c, ptr @tm_32x32_c, ptr @dc_left_32x32_c>, ptr %i.m, align 8, !tbaa !25
  store <4 x ptr> <ptr @dc_top_32x32_c, ptr @dc_128_32x32_c, ptr @dc_127_32x32_c, ptr @dc_129_32x32_c>, ptr %i.n, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_4x4_c(ptr noalias nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !26     ; 4 uses
  %i.b = lshr i64 %1, 1                           ; 2 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b
  store i64 %i.a, ptr %i.c, align 8, !tbaa !26
  %i.d = and i64 %1, -2
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d
  store i64 %i.a, ptr %i.e, align 8, !tbaa !26
  %.idx = mul nuw nsw i64 %i.b, 6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  store i64 %i.a, ptr %i.f, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @hor_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #1 {
bb.a:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.c = load i16, ptr %i.b, align 2, !tbaa !28
  %i.d = zext i16 %i.c to i64
  %i.e = mul nuw i64 %i.d, 281479271743489
  store i64 %i.e, ptr %0, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i64
  %i.i = mul nuw i64 %i.h, 281479271743489
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a
  store i64 %i.i, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i64
  %i.n = mul nuw i64 %i.m, 281479271743489
  %i.o = and i64 %1, -2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o
  store i64 %i.n, ptr %i.p, align 8, !tbaa !26
  %i.q = load i16, ptr %2, align 2, !tbaa !28
  %i.r = zext i16 %i.q to i64
  %i.s = mul nuw i64 %i.r, 281479271743489
  %.idx = mul nuw nsw i64 %i.a, 6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  store i64 %i.s, ptr %i.t, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @dc_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !28
  %i.b = zext i16 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !28
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i64
  %i.l = load i16, ptr %3, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !28
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = load i16, ptr %i.q, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i64
  %i.w = add nuw nsw i64 %i.b, 4
  %i.x = add nuw nsw i64 %i.w, %i.e
  %i.y = add nuw nsw i64 %i.x, %i.h
  %i.z = add nuw nsw i64 %i.y, %i.k
  %i.aa = add nuw nsw i64 %i.z, %i.m
  %i.ab = add nuw nsw i64 %i.aa, %i.p
  %i.ac = add nuw nsw i64 %i.ab, %i.s
  %i.ad = add nuw nsw i64 %i.ac, %i.v
  %i.ae = lshr i64 %i.ad, 3
  %i.af = mul nuw i64 %i.ae, 281479271743489      ; 4 uses
  %i.ag = lshr i64 %1, 1                          ; 2 uses
  store i64 %i.af, ptr %0, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ag
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !26
  %i.ai = and i64 %1, -2
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ai
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !26
  %.idx = mul nuw nsw i64 %i.ag, 6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downleft_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.f = lshr i64 %1, 1                           ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = and i64 %1, -2
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.idx = mul nuw nsw i64 %i.f, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.n = or i64 %1, 1
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.u = load <4 x i16>, ptr %i.b, align 2, !tbaa !28
  %i.v = load <4 x i16>, ptr %i.c, align 2, !tbaa !28
  %i.w = load i16, ptr %i.e, align 2, !tbaa !28
  %i.x = load <4 x i16>, ptr %i.d, align 2, !tbaa !28
  %i.y = zext <4 x i16> %i.u to <4 x i32>
  %i.z = zext <4 x i16> %i.v to <4 x i32>
  %i.aa = zext <4 x i16> %i.x to <4 x i32>
  %i.ab = add nuw nsw <4 x i32> %i.y, splat (i32 2) ; 2 uses
  %i.ac = load <2 x i16>, ptr %3, align 2, !tbaa !28
  %i.ad = load <2 x i16>, ptr %i.a, align 2, !tbaa !28
  %i.ae = zext <2 x i16> %i.ac to <2 x i32>
  %i.af = zext <2 x i16> %i.ad to <2 x i32>
  %i.ag = shl nuw nsw <2 x i32> %i.af, splat (i32 1)
  %i.ah = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = add nuw nsw <2 x i32> %i.ah, %i.ae
  %i.aj = add nuw nsw <2 x i32> %i.ai, %i.ag
  %i.ak = lshr <2 x i32> %i.aj, splat (i32 2)     ; 2 uses
  %i.al = bitcast <2 x i32> %i.ak to <4 x i16>
  %i.am = extractelement <4 x i16> %i.al, i64 0
  store i16 %i.am, ptr %0, align 2, !tbaa !28
  %i.an = bitcast <2 x i32> %i.ak to <4 x i16>
  %i.ao = extractelement <4 x i16> %i.an, i64 2   ; 2 uses
  store i16 %i.ao, ptr %i.g, align 2, !tbaa !28
  store i16 %i.ao, ptr %i.h, align 2, !tbaa !28
  %i.ap = shl nuw nsw <4 x i32> %i.z, splat (i32 1)
  %i.aq = add nuw nsw <4 x i32> %i.ab, %i.ap
  %i.ar = add nuw nsw <4 x i32> %i.aq, %i.aa
  %i.as = lshr <4 x i32> %i.ar, splat (i32 2)
  %i.at = trunc <4 x i32> %i.as to <4 x i16>      ; 4 uses
  %i.au = extractelement <4 x i16> %i.at, i64 0   ; 3 uses
  store i16 %i.au, ptr %i.j, align 2, !tbaa !28
  store i16 %i.au, ptr %i.k, align 2, !tbaa !28
  store i16 %i.au, ptr %i.l, align 2, !tbaa !28
  %i.av = extractelement <4 x i16> %i.at, i64 1   ; 4 uses
  store i16 %i.av, ptr %i.m, align 2, !tbaa !28
  store i16 %i.av, ptr %i.o, align 2, !tbaa !28
  store i16 %i.av, ptr %i.p, align 2, !tbaa !28
  store i16 %i.av, ptr %i.q, align 2, !tbaa !28
  %i.aw = extractelement <4 x i16> %i.at, i64 2   ; 3 uses
  store i16 %i.aw, ptr %i.r, align 2, !tbaa !28
  store i16 %i.aw, ptr %i.s, align 2, !tbaa !28
  store i16 %i.aw, ptr %i.t, align 2, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.ay = extractelement <4 x i16> %i.at, i64 3   ; 2 uses
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  store i16 %i.w, ptr %i.ba, align 2, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @diag_downright_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.c = load i16, ptr %i.b, align 2, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.e = load i16, ptr %i.d, align 2, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i16, ptr %2, align 2, !tbaa !28
  %i.m = zext i16 %i.l to i32
  %i.n = lshr i64 %1, 1                           ; 2 uses
  %i.o = shl nuw nsw i32 %i.k, 1
  %i.p = add nuw nsw i32 %i.h, 2
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = add nuw nsw i32 %i.q, %i.m
  %i.s = lshr i32 %i.r, 2
  %i.t = trunc nuw i32 %i.s to i16
  %.idx = mul nuw nsw i64 %i.n, 6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %4 = shl nuw nsw i32 %i.h, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %6 = and i64 %1, -2
  %7 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %6 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %9 = or i64 %1, 1
  %10 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %9
  %11 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 2
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %17 = load <3 x i16>, ptr %i.a, align 2, !tbaa !28 ; 2 uses
  %18 = shufflevector <3 x i16> %17, <3 x i16> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %19 = load <4 x i16>, ptr %i.a, align 2, !tbaa !28 ; 2 uses
  %20 = zext <4 x i16> %18 to <4 x i32>
  %21 = zext <4 x i16> %19 to <4 x i32>
  %22 = insertelement <4 x i16> poison, i16 %i.e, i64 0
  %23 = shufflevector <3 x i16> %17, <3 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %24 = shufflevector <4 x i16> %22, <4 x i16> %23, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %25 = shufflevector <4 x i16> %24, <4 x i16> %19, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %26 = insertelement <4 x i16> %25, i16 %i.c, i64 3
  %27 = zext <4 x i16> %26 to <4 x i32>
  %28 = zext i16 %i.e to i32                      ; 2 uses
  store i16 %i.t, ptr %i.u, align 2, !tbaa !28
  %i.v = add nuw nsw i32 %28, 2
  %i.w = add nuw nsw i32 %i.v, %4
  %i.x = add nuw nsw i32 %i.w, %i.k
  %i.y = lshr i32 %i.x, 2
  %i.z = trunc nuw i32 %i.y to i16                ; 2 uses
  store i16 %i.z, ptr %5, align 2, !tbaa !28
  store i16 %i.z, ptr %7, align 2, !tbaa !28
  %29 = shl nuw nsw i32 %28, 1
  %30 = add nuw nsw <4 x i32> %20, splat (i32 2)  ; 2 uses
  %31 = extractelement <4 x i32> %30, i64 1
  %i.aa = add nuw nsw i32 %31, %29
  %i.ab = add nuw nsw i32 %i.aa, %i.h
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = trunc nuw i32 %i.ac to i16              ; 3 uses
  store i16 %i.ad, ptr %8, align 2, !tbaa !28
  store i16 %i.ad, ptr %10, align 2, !tbaa !28
  store i16 %i.ad, ptr %11, align 2, !tbaa !28
  %32 = shl nuw nsw <4 x i32> %21, splat (i32 1)
  %33 = add nuw nsw <4 x i32> %30, %32
  %34 = add nuw nsw <4 x i32> %33, %27
  %35 = lshr <4 x i32> %34, splat (i32 2)
  %36 = trunc <4 x i32> %35 to <4 x i16>          ; 4 uses
  %37 = extractelement <4 x i16> %36, i64 0       ; 3 uses
  store i16 %37, ptr %12, align 2, !tbaa !28
  store i16 %37, ptr %13, align 2, !tbaa !28
  store i16 %37, ptr %14, align 2, !tbaa !28
  %38 = extractelement <4 x i16> %36, i64 1
  store i16 %38, ptr %15, align 2, !tbaa !28
  %39 = shufflevector <4 x i16> %36, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  store <2 x i16> %39, ptr %16, align 2, !tbaa !28
  store <4 x i16> %36, ptr %0, align 2, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vert_right_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %3, i64 -2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !28
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = load i16, ptr %3, align 2, !tbaa !28
  %i.e = zext i16 %i.d to i32                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !28
  %i.h = zext i16 %i.g to i32                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i16, ptr %i.i, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !28
  %i.q = zext i16 %i.p to i32                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !28
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !28
  %i.w = zext i16 %i.v to i32
  %i.x = lshr i64 %1, 1                           ; 2 uses
  %i.y = shl nuw nsw i32 %i.t, 1
  %i.z = add nuw nsw i32 %i.q, 2
  %i.aa = add nuw nsw i32 %i.z, %i.y
  %i.ab = add nuw nsw i32 %i.aa, %i.w
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = trunc nuw i32 %i.ac to i16
  %.idx = mul nuw nsw i64 %i.x, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !28
  %i.af = shl nuw nsw i32 %i.q, 1
  %i.ag = add nuw nsw i32 %i.c, 2                 ; 2 uses
  %i.ah = add nuw nsw i32 %i.ag, %i.af
  %i.ai = add nuw nsw i32 %i.ah, %i.t
  %i.aj = lshr i32 %i.ai, 2
  %i.ak = trunc nuw i32 %i.aj to i16
  %i.al = and i64 %1, -2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al ; 3 uses
  store i16 %i.ak, ptr %i.am, align 2, !tbaa !28
  %i.an = add nuw nsw i32 %i.e, 1                 ; 2 uses
  %i.ao = add nuw nsw i32 %i.an, %i.c
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = trunc nuw i32 %i.ap to i16              ; 2 uses
  %i.ar = or i64 %1, 1
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ar
  store i16 %i.aq, ptr %i.as, align 2, !tbaa !28
  store i16 %i.aq, ptr %0, align 2, !tbaa !28
  %i.at = shl nuw nsw i32 %i.c, 1
  %i.au = add nuw nsw i32 %i.e, 2                 ; 2 uses
  %i.av = add nuw nsw i32 %i.au, %i.at
  %i.aw = add nuw nsw i32 %i.av, %i.q
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = trunc nuw i32 %i.ax to i16              ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !28
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.x ; 4 uses
  store i16 %i.ay, ptr %i.ba, align 2, !tbaa !28
  %i.bb = add nuw nsw i32 %i.an, %i.h
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = trunc nuw i32 %i.bc to i16              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 %i.bd, ptr %i.be, align 2, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !28
  %i.bg = shl nuw nsw i32 %i.e, 1
  %i.bh = add nuw nsw i32 %i.ag, %i.bg
  %i.bi = add nuw nsw i32 %i.bh, %i.h
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = trunc nuw i32 %i.bj to i16              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i16 %i.bk, ptr %i.bm, align 2, !tbaa !28
  %i.bn = add nuw nsw i32 %i.h, 1
  %i.bo = add nuw nsw i32 %i.bn, %i.k
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = trunc nuw i32 %i.bp to i16              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.bq, ptr %i.bs, align 2, !tbaa !28
  %i.bt = shl nuw nsw i32 %i.h, 1
  %i.bu = add nuw nsw i32 %i.au, %i.bt
  %i.bv = add nuw nsw i32 %i.bu, %i.k
  %i.bw = lshr i32 %i.bv, 2
  %i.bx = trunc nuw i32 %i.bw to i16              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !28
  %i.ca = add nuw nsw i32 %i.k, 1
  %i.cb = add nuw nsw i32 %i.ca, %i.n
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = trunc nuw i32 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !28
  %i.cf = shl nuw nsw i32 %i.k, 1
  %i.cg = add nuw nsw i32 %i.h, 2
  %i.ch = add nuw nsw i32 %i.cg, %i.cf
  %i.ci = add nuw nsw i32 %i.ch, %i.n
  %i.cj = lshr i32 %i.ci, 2
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @hor_down_4x4_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.b = load i16, ptr %i.a, align 2, !tbaa !28
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i16, ptr %i.d, align 2, !tbaa !28
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !28
  %i.i = zext i16 %i.h to i32                     ; 4 uses
  %i.j = load i16, ptr %2, align 2, !tbaa !28
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %3, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = load i16, ptr %3, align 2, !tbaa !28
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !28
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !28
  %i.v = zext i16 %i.u to i32
  %i.w = lshr i64 %1, 1                           ; 2 uses
  %i.x = shl nuw nsw i32 %i.p, 1
  %i.y = add nuw nsw i32 %i.n, 2
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.s
  %i.ab = lshr i32 %i.aa, 2
  %i.ac = trunc nuw i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !28
  %i.ae = shl nuw nsw i32 %i.s, 1
  %i.af = add nuw nsw i32 %i.p, 2
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  %i.ah = add nuw nsw i32 %i.ag, %i.v
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !28
  %i.al = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.am = add nuw nsw i32 %i.al, %i.n
  %i.an = lshr i32 %i.am, 1
  %i.ao = trunc nuw i32 %i.an to i16              ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !28
  store i16 %i.ao, ptr %0, align 2, !tbaa !28
  %i.ar = shl nuw nsw i32 %i.n, 1
  %i.as = add nuw nsw i32 %i.c, 2                 ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %i.p
  %i.au = add nuw nsw i32 %i.at, %i.ar
  %i.av = lshr i32 %i.au, 2
  %i.aw = trunc nuw i32 %i.av to i16              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !28
  %i.az = add nuw nsw i32 %i.al, %i.f
  %i.ba = lshr i32 %i.az, 1
  %i.bb = trunc nuw i32 %i.ba to i16              ; 2 uses
  %i.bc = and i64 %1, -2
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i16 %i.bb, ptr %i.be, align 2, !tbaa !28
  store i16 %i.bb, ptr %i.ap, align 2, !tbaa !28
  %i.bf = shl nuw nsw i32 %i.c, 1
  %i.bg = add nuw nsw i32 %i.f, 2                 ; 2 uses
  %i.bh = add nuw nsw i32 %i.bg, %i.bf
  %i.bi = add nuw nsw i32 %i.bh, %i.n
  %i.bj = lshr i32 %i.bi, 2
  %i.bk = trunc nuw i32 %i.bj to i16              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 %i.bk, ptr %i.bm, align 2, !tbaa !28
  %i.bn = add nuw nsw i32 %i.f, 1
  %i.bo = add nuw nsw i32 %i.bn, %i.i
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = trunc nuw i32 %i.bp to i16              ; 2 uses
  %.idx = mul nuw nsw i64 %i.w, 6
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
end_hunk_0
