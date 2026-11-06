Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__decode_scanline:bb.a
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @stbir__edge_wrap_slow, i64 16), align 16, !tbaa !52
  %i.fy = tail call i32 %i.fx(i32 noundef %i.dm, i32 noundef %i.dm) #24, !inline_history !5
  %i.fz = mul nsw i32 %i.fy, %i.d
  %i.ga = sext i32 %i.fz to i64
  %.idx.1 = shl nsw i64 %i.ga, 2                  ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ak, i64 %.idx.1 ; 5 uses
  %i.gc = mul nsw i32 %i.ft, %i.d
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = shl nsw i64 %i.gd, 2                    ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ge ; 5 uses
  %i.gg = ptrtoint ptr %i.fw to i64               ; 2 uses
  %gepdiff.1 = sub nsw i64 %.idx.1, %.idx111.1    ; 3 uses
  %i.gh = icmp ult i64 %i.ge, 64
  br i1 %i.gh, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %stbir__edge_wrap.exit103.1
  %i.gi = load <4 x float>, ptr %i.gb, align 1, !tbaa !24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gk = load <4 x float>, ptr %i.gj, align 1, !tbaa !24
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gm = load <4 x float>, ptr %i.gl, align 1, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.go = load <4 x float>, ptr %i.gn, align 1, !tbaa !24
  store <4 x float> %i.gi, ptr %i.fw, align 1, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x float> %i.gk, ptr %i.gp, align 1, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store <4 x float> %i.gm, ptr %i.gq, align 1, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store <4 x float> %i.go, ptr %i.gr, align 1, !tbaa !24
  %i.gs = and i64 %i.gg, -64
  %i.gt = add i64 %i.gs, 64
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = getelementptr inbounds i8, ptr %i.gf, i64 -64 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %.3.i.1 = phi ptr [ %i.gu, %bb.z ], [ %i.hj, %bb.ac ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i.1) #24, !srcloc !29
  %i.gw = icmp ugt ptr %.3.i.1, %i.gv
  br i1 %i.gw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = icmp eq ptr %.3.i.1, %i.gf
  br i1 %i.gx, label %stbir_simd_memcpy.exit.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.4.i.1 = phi ptr [ %.3.i.1, %bb.aa ], [ %i.gv, %bb.ab ] ; 6 uses
  %i.gy = getelementptr inbounds i8, ptr %.4.i.1, i64 %gepdiff.1 ; 4 uses
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hb = load <4 x float>, ptr %i.ha, align 1, !tbaa !24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hd = load <4 x float>, ptr %i.hc, align 1, !tbaa !24
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hf = load <4 x float>, ptr %i.he, align 1, !tbaa !24
  store <4 x float> %i.gz, ptr %.4.i.1, align 1, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %.4.i.1, i64 16
  store <4 x float> %i.hb, ptr %i.hg, align 1, !tbaa !24
  %i.hh = getelementptr inbounds nuw i8, ptr %.4.i.1, i64 32
  store <4 x float> %i.hd, ptr %i.hh, align 1, !tbaa !24
  %i.hi = getelementptr inbounds nuw i8, ptr %.4.i.1, i64 48
  store <4 x float> %i.hf, ptr %i.hi, align 1, !tbaa !24
  %i.hj = getelementptr inbounds nuw i8, ptr %.4.i.1, i64 64
  br label %bb.aa, !llvm.loop !2

bb.ad:                                            ; preds = %stbir__edge_wrap.exit103.1
  %i.hk = icmp samesign ult i64 %i.ge, 16
  br i1 %i.hk, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = load <4 x float>, ptr %i.gb, align 1, !tbaa !24
  store <4 x float> %i.hl, ptr %i.fw, align 1, !tbaa !24
  %i.hm = and i64 %i.gg, -16
  %i.hn = add i64 %i.hm, 16
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = getelementptr inbounds i8, ptr %i.gf, i64 -16 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %.1.i.1 = phi ptr [ %i.ho, %bb.ae ], [ %i.hu, %bb.ah ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i.1) #24, !srcloc !28
  %i.hq = icmp ugt ptr %.1.i.1, %i.hp
  br i1 %i.hq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hr = icmp eq ptr %.1.i.1, %i.gf
  br i1 %i.hr, label %stbir_simd_memcpy.exit.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.2.i.1 = phi ptr [ %.1.i.1, %bb.af ], [ %i.hp, %bb.ag ] ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.2.i.1, i64 %gepdiff.1
  %i.ht = load <4 x float>, ptr %i.hs, align 1, !tbaa !24
  store <4 x float> %i.ht, ptr %.2.i.1, align 1, !tbaa !24
  %i.hu = getelementptr inbounds nuw i8, ptr %.2.i.1, i64 16
  br label %bb.af, !llvm.loop !1

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not.i, label %stbir_simd_memcpy.exit.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.ai, %.preheader.i.1
  %.0.i104.1 = phi ptr [ %i.hx, %.preheader.i.1 ], [ %i.fw, %bb.ai ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i104.1) #24, !srcloc !23
  %i.hv = getelementptr inbounds i8, ptr %.0.i104.1, i64 %gepdiff.1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  store i8 %i.hw, ptr %.0.i104.1, align 1, !tbaa !24
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i104.1, i64 1 ; 2 uses
  %i.hy = icmp ult ptr %i.hx, %i.gf
  br i1 %i.hy, label %.preheader.i.1, label %stbir_simd_memcpy.exit.1, !llvm.loop !0

stbir_simd_memcpy.exit.1:                         ; preds = %bb.ab, %bb.ag, %.preheader.i.1, %bb.ai
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.gd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %stbir_simd_memcpy.exit.1, %bb.k, %.thread
  %.5 = phi ptr [ %.1110, %.thread ], [ %.1110, %bb.k ], [ %i.hz, %stbir_simd_memcpy.exit.1 ], [ %.1110, %bb.y ]
  store <2 x float> zeroinitializer, ptr %.5, align 4, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_1_coeff(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.018 = phi ptr [ %0, %bb.a ], [ %i.l, %bb.b ]  ; 2 uses
  %.017 = phi ptr [ %4, %bb.a ], [ %i.j, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.k, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !588
  %i.g = load float, ptr %.017, align 1, !tbaa !24
  %i.h = load float, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul float %i.g, %i.h
  store float %i.i, ptr %.018, align 1, !tbaa !24
  %i.j = getelementptr inbounds [4 x i8], ptr %.017, i64 %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.b
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !587

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_2_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.022 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.b ]  ; 2 uses
  %.021 = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !590
  %i.g = load <2 x float>, ptr %.021, align 1, !tbaa !24
  %i.h = load <2 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <2 x float> %i.g, %i.h
  %i.j = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.i)
  store float %i.j, ptr %.022, align 1, !tbaa !24
  %i.k = getelementptr inbounds [4 x i8], ptr %.021, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 4 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !589

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_3_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.b ]  ; 2 uses
  %.023 = phi ptr [ %4, %bb.a ], [ %i.k, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.l, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !592
  %i.g = load <4 x float>, ptr %.023, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h              ; 3 uses
  %6 = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %shift = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.i, %shift
  %foldExtExtBinop27 = fadd <4 x float> %foldExtExtBinop, %6
  %i.j = extractelement <4 x float> %foldExtExtBinop27, i64 0
  store float %i.j, ptr %.024, align 1, !tbaa !24
  %i.k = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.b
  br i1 %i.n, label %bb.b, label %bb.c, !llvm.loop !591

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_4_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.024 = phi ptr [ %0, %bb.a ], [ %i.p, %bb.b ]  ; 2 uses
  %.023 = phi ptr [ %4, %bb.a ], [ %i.n, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.o, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !594
  %i.g = load <4 x float>, ptr %.023, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h              ; 2 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.l = fadd <2 x float> %i.j, %i.k
  %i.m = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.l)
  store float %i.m, ptr %.024, align 1, !tbaa !24
  %i.n = getelementptr inbounds [4 x i8], ptr %.023, i64 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.024, i64 4 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.b
  br i1 %i.q, label %bb.b, label %bb.c, !llvm.loop !593

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_5_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.t, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.u, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !596
  %i.g = load <4 x float>, ptr %.028, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load float, ptr %i.j, align 1, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load float, ptr %i.l, align 1, !tbaa !24
  %.scalar = fmul float %i.k, %i.m
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0
  %i.o = fadd <4 x float> %i.i, %i.n              ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.r = fadd <2 x float> %i.p, %i.q
  %i.s = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.r)
  store float %i.s, ptr %.029, align 1, !tbaa !24
  %i.t = getelementptr inbounds [4 x i8], ptr %.028, i64 %i.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.b
  br i1 %i.w, label %bb.b, label %bb.c, !llvm.loop !595

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_6_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.z, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.x, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.y, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !598
  %i.g = load <4 x float>, ptr %.028, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load i64, ptr %i.j, align 1, !tbaa !24
  %i.l = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.l to <4 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 1, !tbaa !24
  %i.p = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.o, i64 0
  %i.q = bitcast <2 x i64> %i.p to <4 x float>
  %i.r = fmul <4 x float> %i.m, %i.q
  %i.s = fadd <4 x float> %i.i, %i.r              ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.v = fadd <2 x float> %i.t, %i.u
  %i.w = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  store float %i.w, ptr %.029, align 1, !tbaa !24
  %i.x = getelementptr inbounds [4 x i8], ptr %.028, i64 %i.c
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.029, i64 4 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.b
  br i1 %i.aa, label %bb.b, label %bb.c, !llvm.loop !597

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_7_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.030 = phi ptr [ %0, %bb.a ], [ %i.x, %bb.b ]  ; 2 uses
  %.029 = phi ptr [ %4, %bb.a ], [ %i.v, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.w, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !600
  %i.g = load <4 x float>, ptr %.029, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.k = load <4 x i32>, ptr %i.j, align 1, !tbaa !24
  %i.l = and <4 x i32> %i.k, <i32 -1, i32 -1, i32 -1, i32 0>
  %i.m = bitcast <4 x i32> %i.l to <4 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.o, %i.m
  %i.q = fadd <4 x float> %i.i, %i.p              ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.s = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.t = fadd <2 x float> %i.r, %i.s
  %i.u = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.t)
  store float %i.u, ptr %.030, align 1, !tbaa !24
  %i.v = getelementptr inbounds [4 x i8], ptr %.029, i64 %i.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.b
  br i1 %i.y, label %bb.b, label %bb.c, !llvm.loop !599

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_1_channels_with_8_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.c = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.028 = phi ptr [ %4, %bb.a ], [ %i.t, %bb.b ]  ; 3 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.u, %bb.b ]    ; 2 uses
  %i.d = load i32, ptr %.0, align 4, !tbaa !47
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.e ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.f) #24, !srcloc !602
  %i.g = load <4 x float>, ptr %.028, align 1, !tbaa !24
  %i.h = load <4 x float>, ptr %i.f, align 1, !tbaa !24
  %i.i = fmul <4 x float> %i.g, %i.h
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.f) #24, !srcloc !603
  %i.j = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.k = load <4 x float>, ptr %i.j, align 1, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load <4 x float>, ptr %i.l, align 1, !tbaa !24
  %i.n = fmul <4 x float> %i.k, %i.m
  %i.o = fadd <4 x float> %i.i, %i.n              ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 1>
end_hunk_0
begin_hunk_1_@stbir__horizontal_gather_3_channels_with_1_coeff:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 12 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.c
  br i1 %i.u, label %bb.b, label %bb.c, !llvm.loop !679

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_2_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.028 = phi ptr [ %0, %bb.a ], [ %i.z, %bb.b ]  ; 3 uses
  %.027 = phi ptr [ %4, %bb.a ], [ %i.x, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.y, %bb.b ]    ; 2 uses
  %i.e = load i32, ptr %.0, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !682
  %i.i = load i64, ptr %.027, align 1, !tbaa !24
  %i.j = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.i, i64 0
  %i.k = bitcast <2 x i64> %i.j to <4 x float>    ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.n = fmul <4 x float> %i.m, %i.l
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load <4 x float>, ptr %i.p, align 1, !tbaa !24
  %i.r = fmul <4 x float> %i.q, %i.o
  %i.s = fadd <4 x float> %i.n, %i.r              ; 2 uses
  %i.t = bitcast <4 x float> %i.s to <2 x i64>
  %i.u = extractelement <2 x i64> %i.t, i64 0
  store i64 %i.u, ptr %.028, align 1, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.w = extractelement <4 x float> %i.s, i64 2
  store float %i.w, ptr %i.v, align 1, !tbaa !24
  %i.x = getelementptr inbounds [4 x i8], ptr %.027, i64 %i.d
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 12 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.c
  br i1 %i.aa, label %bb.b, label %bb.c, !llvm.loop !681

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_3_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %0, %bb.a ], [ %i.ac, %bb.b ] ; 3 uses
  %.032 = phi ptr [ %4, %bb.a ], [ %i.aa, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.ab, %bb.b ]   ; 2 uses
  %i.e = load i32, ptr %.0, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !684
  %i.i = load <4 x float>, ptr %.032, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.o, %i.m
  %i.q = fadd <4 x float> %i.l, %i.p
  %i.r = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !24
  %i.u = fmul <4 x float> %i.r, %i.t
  %i.v = fadd <4 x float> %i.q, %i.u              ; 2 uses
  %i.w = bitcast <4 x float> %i.v to <2 x i64>
  %i.x = extractelement <2 x i64> %i.w, i64 0
  store i64 %i.x, ptr %.033, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.z = extractelement <4 x float> %i.v, i64 2
  store float %i.z, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr inbounds [4 x i8], ptr %.032, i64 %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 12 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.c
  br i1 %i.ad, label %bb.b, label %bb.c, !llvm.loop !683

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_4_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.045 = phi ptr [ %4, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  %.044 = phi ptr [ %3, %bb.a ], [ %i.ag, %bb.c ] ; 2 uses
  %.043 = phi ptr [ %0, %bb.a ], [ %i.aa, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.044, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !685
  %i.i = load <4 x float>, ptr %.045, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j              ; 2 uses
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  %i.u = shufflevector <4 x float> %i.l, <4 x float> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.v = shufflevector <4 x float> %i.p, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.w = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.x = fadd <4 x float> %i.l, %i.v
  %i.y = fadd <4 x float> %i.u, %i.w
  %i.z = fadd <4 x float> %i.y, %i.x              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.043, i64 12 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.c
  br i1 %i.ab, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.ac = bitcast <4 x float> %i.z to <2 x i64>
  %i.ad = extractelement <2 x i64> %i.ac, i64 0
  store i64 %i.ad, ptr %.043, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.043, i64 8
  %i.af = extractelement <4 x float> %i.z, i64 2
  store float %i.af, ptr %i.ae, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.ah = getelementptr inbounds [4 x i8], ptr %.045, i64 %i.d
  store <4 x float> %i.z, ptr %.043, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_5_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.051 = phi ptr [ %4, %bb.a ], [ %i.ap, %bb.c ] ; 3 uses
  %.050 = phi ptr [ %3, %bb.a ], [ %i.ao, %bb.c ] ; 2 uses
  %.049 = phi ptr [ %0, %bb.a ], [ %i.ai, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.050, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !686
  %i.i = load <4 x float>, ptr %.051, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !687
  %i.u = getelementptr inbounds nuw i8, ptr %.051, i64 16
  %i.v = load float, ptr %i.u, align 1, !tbaa !24
  %i.w = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !24
  %i.aa = fmul <4 x float> %i.z, %i.x
  %i.ab = fadd <4 x float> %i.l, %i.aa            ; 2 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.p, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.ad = shufflevector <4 x float> %i.p, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ae = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.af = fadd <4 x float> %i.ab, %i.ad
  %i.ag = fadd <4 x float> %i.ae, %i.ac
  %i.ah = fadd <4 x float> %i.af, %i.ag           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.049, i64 12 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.c
  br i1 %i.aj, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.ak = bitcast <4 x float> %i.ah to <2 x i64>
  %i.al = extractelement <2 x i64> %i.ak, i64 0
  store i64 %i.al, ptr %.049, align 1, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.an = extractelement <4 x float> %i.ah, i64 2
  store float %i.an, ptr %i.am, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.050, i64 8
  %i.ap = getelementptr inbounds [4 x i8], ptr %.051, i64 %i.d
  store <4 x float> %i.ah, ptr %.049, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_6_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.056 = phi ptr [ %4, %bb.a ], [ %i.ax, %bb.c ] ; 3 uses
  %.055 = phi ptr [ %0, %bb.a ], [ %i.aq, %bb.c ] ; 4 uses
  %.054 = phi ptr [ %3, %bb.a ], [ %i.aw, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.054, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !688
  %i.i = load <4 x float>, ptr %.056, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s              ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !689
  %i.u = getelementptr inbounds nuw i8, ptr %.056, i64 16
  %i.v = load i64, ptr %i.u, align 1, !tbaa !24
  %i.w = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <4 x float>    ; 2 uses
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !24
  %i.ab = fmul <4 x float> %i.aa, %i.y
  %i.ac = fadd <4 x float> %i.l, %i.ab            ; 2 uses
  %i.ad = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.af = load i64, ptr %i.ae, align 1, !tbaa !24
  %i.ag = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.af, i64 0
  %i.ah = bitcast <2 x i64> %i.ag to <4 x float>
  %i.ai = fmul <4 x float> %i.ad, %i.ah
  %i.aj = fadd <4 x float> %i.p, %i.ai            ; 2 uses
  %i.ak = shufflevector <4 x float> %i.ac, <4 x float> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.al = shufflevector <4 x float> %i.aj, <4 x float> %i.t, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.am = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.an = fadd <4 x float> %i.ac, %i.al
  %i.ao = fadd <4 x float> %i.am, %i.ak
  %i.ap = fadd <4 x float> %i.ao, %i.an           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.055, i64 12 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.c
  br i1 %i.ar, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.as = bitcast <4 x float> %i.ap to <2 x i64>
  %i.at = extractelement <2 x i64> %i.as, i64 0
  store i64 %i.at, ptr %.055, align 1, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.av = extractelement <4 x float> %i.ap, i64 2
  store float %i.av, ptr %i.au, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.ax = getelementptr inbounds [4 x i8], ptr %.056, i64 %i.d
  store <4 x float> %i.ap, ptr %.055, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_7_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.060 = phi ptr [ %4, %bb.a ], [ %i.az, %bb.c ] ; 3 uses
  %.059 = phi ptr [ %0, %bb.a ], [ %i.as, %bb.c ] ; 4 uses
  %.058 = phi ptr [ %3, %bb.a ], [ %i.ay, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.058, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !690
  %i.i = load <4 x float>, ptr %.060, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !691
  %i.u = getelementptr inbounds nuw i8, ptr %.060, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load float, ptr %i.ah, align 1, !tbaa !24
  %i.aj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ai, i64 0
  %i.ak = fmul <4 x float> %i.ag, %i.aj
  %i.al = fadd <4 x float> %i.t, %i.ak            ; 2 uses
  %i.am = shufflevector <4 x float> %i.aa, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.an = shufflevector <4 x float> %i.af, <4 x float> %i.al, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ao = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ap = fadd <4 x float> %i.aa, %i.an
  %i.aq = fadd <4 x float> %i.am, %i.ao
  %i.ar = fadd <4 x float> %i.aq, %i.ap           ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.059, i64 12 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.c
  br i1 %i.at, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.au = bitcast <4 x float> %i.ar to <2 x i64>
  %i.av = extractelement <2 x i64> %i.au, i64 0
  store i64 %i.av, ptr %.059, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.059, i64 8
  %i.ax = extractelement <4 x float> %i.ar, i64 2
  store float %i.ax, ptr %i.aw, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.az = getelementptr inbounds [4 x i8], ptr %.060, i64 %i.d
  store <4 x float> %i.ar, ptr %.059, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_8_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.059 = phi ptr [ %4, %bb.a ], [ %i.ay, %bb.c ] ; 3 uses
  %.058 = phi ptr [ %3, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  %.057 = phi ptr [ %0, %bb.a ], [ %i.ar, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.058, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !692
  %i.i = load <4 x float>, ptr %.059, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !693
  %i.u = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z             ; 2 uses
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  %i.al = shufflevector <4 x float> %i.aa, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.am = shufflevector <4 x float> %i.af, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.an = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.ao = fadd <4 x float> %i.aa, %i.am
  %i.ap = fadd <4 x float> %i.al, %i.an
  %i.aq = fadd <4 x float> %i.ap, %i.ao           ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 12 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.c
  br i1 %i.as, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.at = bitcast <4 x float> %i.aq to <2 x i64>
  %i.au = extractelement <2 x i64> %i.at, i64 0
  store i64 %i.au, ptr %.057, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.aw = extractelement <4 x float> %i.aq, i64 2
  store float %i.aw, ptr %i.av, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.ay = getelementptr inbounds [4 x i8], ptr %.059, i64 %i.d
  store <4 x float> %i.aq, ptr %.057, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_9_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.065 = phi ptr [ %4, %bb.a ], [ %i.bg, %bb.c ] ; 4 uses
  %.064 = phi ptr [ %3, %bb.a ], [ %i.bf, %bb.c ] ; 2 uses
  %.063 = phi ptr [ %0, %bb.a ], [ %i.az, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.064, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 10 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !694
  %i.i = load <4 x float>, ptr %.065, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !695
  %i.u = getelementptr inbounds nuw i8, ptr %.065, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae            ; 2 uses
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !696
  %i.al = getelementptr inbounds nuw i8, ptr %.065, i64 32
  %i.am = load float, ptr %i.al, align 1, !tbaa !24
  %i.an = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.am, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !tbaa !24
  %i.ar = fmul <4 x float> %i.aq, %i.ao
  %i.as = fadd <4 x float> %i.aa, %i.ar           ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.af, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.au = shufflevector <4 x float> %i.af, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.av = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.aw = fadd <4 x float> %i.as, %i.au
  %i.ax = fadd <4 x float> %i.av, %i.at
  %i.ay = fadd <4 x float> %i.aw, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.063, i64 12 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.c
  br i1 %i.ba, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bb = bitcast <4 x float> %i.ay to <2 x i64>
  %i.bc = extractelement <2 x i64> %i.bb, i64 0
  store i64 %i.bc, ptr %.063, align 1, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %.063, i64 8
  %i.be = extractelement <4 x float> %i.ay, i64 2
  store float %i.be, ptr %i.bd, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.bg = getelementptr inbounds [4 x i8], ptr %.065, i64 %i.d
  store <4 x float> %i.ay, ptr %.063, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_10_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.070 = phi ptr [ %4, %bb.a ], [ %i.bo, %bb.c ] ; 4 uses
  %.069 = phi ptr [ %0, %bb.a ], [ %i.bh, %bb.c ] ; 4 uses
  %.068 = phi ptr [ %3, %bb.a ], [ %i.bn, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.068, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 11 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !697
  %i.i = load <4 x float>, ptr %.070, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !698
  %i.u = getelementptr inbounds nuw i8, ptr %.070, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj            ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !699
  %i.al = getelementptr inbounds nuw i8, ptr %.070, i64 32
  %i.am = load i64, ptr %i.al, align 1, !tbaa !24
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.am, i64 0
  %i.ao = bitcast <2 x i64> %i.an to <4 x float>  ; 2 uses
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ar = load <4 x float>, ptr %i.aq, align 1, !tbaa !24
  %i.as = fmul <4 x float> %i.ar, %i.ap
  %i.at = fadd <4 x float> %i.aa, %i.as           ; 2 uses
  %i.au = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.aw = load i64, ptr %i.av, align 1, !tbaa !24
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aw, i64 0
  %i.ay = bitcast <2 x i64> %i.ax to <4 x float>
  %i.az = fmul <4 x float> %i.au, %i.ay
  %i.ba = fadd <4 x float> %i.af, %i.az           ; 2 uses
  %i.bb = shufflevector <4 x float> %i.at, <4 x float> %i.ba, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bc = shufflevector <4 x float> %i.ba, <4 x float> %i.ak, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bd = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.be = fadd <4 x float> %i.at, %i.bc
  %i.bf = fadd <4 x float> %i.bd, %i.bb
  %i.bg = fadd <4 x float> %i.bf, %i.be           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.069, i64 12 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.c
  br i1 %i.bi, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bj = bitcast <4 x float> %i.bg to <2 x i64>
  %i.bk = extractelement <2 x i64> %i.bj, i64 0
  store i64 %i.bk, ptr %.069, align 1, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.bm = extractelement <4 x float> %i.bg, i64 2
  store float %i.bm, ptr %i.bl, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.bo = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.d
  store <4 x float> %i.bg, ptr %.069, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_11_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.074 = phi ptr [ %4, %bb.a ], [ %i.bq, %bb.c ] ; 4 uses
  %.073 = phi ptr [ %0, %bb.a ], [ %i.bj, %bb.c ] ; 4 uses
  %.072 = phi ptr [ %3, %bb.a ], [ %i.bp, %bb.c ] ; 2 uses
  %i.e = load i32, ptr %.072, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !700
  %i.i = load <4 x float>, ptr %.074, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !701
  %i.u = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !702
  %i.al = getelementptr inbounds nuw i8, ptr %.074, i64 32
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !24 ; 3 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !24
  %i.aq = fmul <4 x float> %i.ap, %i.an
  %i.ar = fadd <4 x float> %i.aa, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !24
  %i.av = fmul <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.af, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.az = load float, ptr %i.ay, align 1, !tbaa !24
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.az, i64 0
  %i.bb = fmul <4 x float> %i.ax, %i.ba
  %i.bc = fadd <4 x float> %i.ak, %i.bb           ; 2 uses
  %i.bd = shufflevector <4 x float> %i.ar, <4 x float> %i.aw, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.be = shufflevector <4 x float> %i.aw, <4 x float> %i.bc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bf = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bg = fadd <4 x float> %i.ar, %i.be
  %i.bh = fadd <4 x float> %i.bd, %i.bf
  %i.bi = fadd <4 x float> %i.bh, %i.bg           ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.073, i64 12 ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.c
  br i1 %i.bk, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bl = bitcast <4 x float> %i.bi to <2 x i64>
  %i.bm = extractelement <2 x i64> %i.bl, i64 0
  store i64 %i.bm, ptr %.073, align 1, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %.073, i64 8
  %i.bo = extractelement <4 x float> %i.bi, i64 2
  store float %i.bo, ptr %i.bn, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.bq = getelementptr inbounds [4 x i8], ptr %.074, i64 %i.d
  store <4 x float> %i.bi, ptr %.073, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_12_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.073 = phi ptr [ %4, %bb.a ], [ %i.bp, %bb.c ] ; 4 uses
  %.072 = phi ptr [ %3, %bb.a ], [ %i.bo, %bb.c ] ; 2 uses
  %.071 = phi ptr [ %0, %bb.a ], [ %i.bi, %bb.c ] ; 4 uses
  %i.e = load i32, ptr %.072, align 4, !tbaa !47
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !703
  %i.i = load <4 x float>, ptr %.073, align 1, !tbaa !24 ; 3 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.l = fmul <4 x float> %i.k, %i.j
  %i.m = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.m, %i.o
  %i.q = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !704
  %i.u = getelementptr inbounds nuw i8, ptr %.073, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24 ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = fmul <4 x float> %i.y, %i.w
  %i.aa = fadd <4 x float> %i.l, %i.z
  %i.ab = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ab, %i.ad
  %i.af = fadd <4 x float> %i.p, %i.ae
  %i.ag = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %i.t, %i.aj
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.h) #24, !srcloc !705
  %i.al = getelementptr inbounds nuw i8, ptr %.073, i64 32
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !24 ; 3 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !24
  %i.aq = fmul <4 x float> %i.ap, %i.an
  %i.ar = fadd <4 x float> %i.aa, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !24
  %i.av = fmul <4 x float> %i.as, %i.au
  %i.aw = fadd <4 x float> %i.af, %i.av           ; 2 uses
  %i.ax = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.az = load <4 x float>, ptr %i.ay, align 1, !tbaa !24
  %i.ba = fmul <4 x float> %i.ax, %i.az
  %i.bb = fadd <4 x float> %i.ak, %i.ba           ; 2 uses
  %i.bc = shufflevector <4 x float> %i.ar, <4 x float> %i.aw, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bd = shufflevector <4 x float> %i.aw, <4 x float> %i.bb, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.be = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bf = fadd <4 x float> %i.ar, %i.bd
  %i.bg = fadd <4 x float> %i.bc, %i.be
  %i.bh = fadd <4 x float> %i.bg, %i.bf           ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.071, i64 12 ; 2 uses
  %i.bj = icmp ult ptr %i.bi, %i.c
  br i1 %i.bj, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.bk = bitcast <4 x float> %i.bh to <2 x i64>
  %i.bl = extractelement <2 x i64> %i.bk, i64 0
  store i64 %i.bl, ptr %.071, align 1, !tbaa !24
  %i.bm = getelementptr inbounds nuw i8, ptr %.071, i64 8
  %i.bn = extractelement <4 x float> %i.bh, i64 2
  store float %i.bn, ptr %i.bm, align 1, !tbaa !24
  ret void

bb.c:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.072, i64 8
  %i.bp = getelementptr inbounds [4 x i8], ptr %.073, i64 %i.d
  store <4 x float> %i.bh, ptr %.071, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod0(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.071 = phi ptr [ %4, %bb.a ], [ %i.be, %bb.e ] ; 3 uses
  %.070 = phi ptr [ %3, %bb.a ], [ %i.bd, %bb.e ] ; 3 uses
  %.069 = phi ptr [ %0, %bb.a ], [ %i.ax, %bb.e ] ; 4 uses
  %i.e = load i32, ptr %.070, align 4, !tbaa !47  ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.070, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = sub nsw i32 %i.j, %i.e
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !707
  %i.m = load <4 x float>, ptr %.071, align 1, !tbaa !24 ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !24
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.068 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 3 uses
  %.067 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.066 = phi ptr [ %.071, %bb.b ], [ %i.y, %bb.c ]
  %.065 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.064 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.063 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.066, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.068, i64 48 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #24, !srcloc !708
  %i.aa = load <4 x float>, ptr %i.y, align 1, !tbaa !24 ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1, !tbaa !24
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.065, %i.ad           ; 3 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.068, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !24
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.064, %i.ai           ; 3 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.068, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !24
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.063, %i.an           ; 3 uses
  %i.ap = add nsw i32 %.067, -1
  %i.aq = icmp sgt i32 %.067, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !706

bb.d:                                             ; preds = %bb.c
  %i.ar = shufflevector <4 x float> %i.ae, <4 x float> %i.aj, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> %i.ao, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.au = fadd <4 x float> %i.ae, %i.as
  %i.av = fadd <4 x float> %i.ar, %i.at
  %i.aw = fadd <4 x float> %i.av, %i.au           ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.069, i64 12 ; 2 uses
  %i.ay = icmp ult ptr %i.ax, %i.c
  br i1 %i.ay, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.az = bitcast <4 x float> %i.aw to <2 x i64>
  %i.ba = extractelement <2 x i64> %i.az, i64 0
  store i64 %i.ba, ptr %.069, align 1, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.bc = extractelement <4 x float> %i.aw, i64 2
  store float %i.bc, ptr %i.bb, align 1, !tbaa !24
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %i.be = getelementptr inbounds [4 x i8], ptr %.071, i64 %i.d
  store <4 x float> %i.aw, ptr %.069, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod1(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.077 = phi ptr [ %4, %bb.a ], [ %i.bn, %bb.e ] ; 3 uses
  %.076 = phi ptr [ %3, %bb.a ], [ %i.bm, %bb.e ] ; 3 uses
  %.075 = phi ptr [ %0, %bb.a ], [ %i.bg, %bb.e ] ; 4 uses
  %i.e = load i32, ptr %.076, align 4, !tbaa !47  ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = xor i32 %i.e, -1
  %i.l = add i32 %i.j, %i.k
  %i.m = ashr i32 %i.l, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !710
  %i.n = load <4 x float>, ptr %.077, align 1, !tbaa !24 ; 3 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.p = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.q = fmul <4 x float> %i.p, %i.o
  %i.r = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !24
  %i.u = fmul <4 x float> %i.r, %i.t
  %i.v = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !24
  %i.y = fmul <4 x float> %i.v, %i.x
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.074 = phi ptr [ %i.h, %bb.b ], [ %i.aa, %bb.c ] ; 4 uses
  %.073 = phi i32 [ %i.m, %bb.b ], [ %i.aq, %bb.c ] ; 2 uses
  %.072 = phi ptr [ %.077, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.071 = phi <4 x float> [ %i.q, %bb.b ], [ %i.af, %bb.c ]
  %.070 = phi <4 x float> [ %i.u, %bb.b ], [ %i.ak, %bb.c ]
  %.069 = phi <4 x float> [ %i.y, %bb.b ], [ %i.ap, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.072, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.074, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aa) #24, !srcloc !711
  %i.ab = load <4 x float>, ptr %i.z, align 1, !tbaa !24 ; 3 uses
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ad = load <4 x float>, ptr %i.aa, align 1, !tbaa !24
  %i.ae = fmul <4 x float> %i.ad, %i.ac
  %i.af = fadd <4 x float> %.071, %i.ae           ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ah = getelementptr inbounds nuw i8, ptr %.074, i64 64
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !24
  %i.aj = fmul <4 x float> %i.ag, %i.ai
  %i.ak = fadd <4 x float> %.070, %i.aj           ; 3 uses
  %i.al = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.am = getelementptr inbounds nuw i8, ptr %.074, i64 80
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !24
  %i.ao = fmul <4 x float> %i.al, %i.an
  %i.ap = fadd <4 x float> %.069, %i.ao           ; 3 uses
  %i.aq = add nsw i32 %.073, -1
  %i.ar = icmp sgt i32 %.073, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !709

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.aa) #24, !srcloc !712
  %i.as = getelementptr inbounds nuw i8, ptr %.072, i64 32
  %i.at = load float, ptr %i.as, align 1, !tbaa !24
  %i.au = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = getelementptr inbounds nuw i8, ptr %.074, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !tbaa !24
  %i.ay = fmul <4 x float> %i.ax, %i.av
  %i.az = fadd <4 x float> %i.af, %i.ay           ; 2 uses
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.ak, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bb = shufflevector <4 x float> %i.ak, <4 x float> %i.ap, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bc = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bd = fadd <4 x float> %i.az, %i.bb
  %i.be = fadd <4 x float> %i.bc, %i.ba
  %i.bf = fadd <4 x float> %i.bd, %i.be           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.075, i64 12 ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.c
  br i1 %i.bh, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bi = bitcast <4 x float> %i.bf to <2 x i64>
  %i.bj = extractelement <2 x i64> %i.bi, i64 0
  store i64 %i.bj, ptr %.075, align 1, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %.075, i64 8
  %i.bl = extractelement <4 x float> %i.bf, i64 2
  store float %i.bl, ptr %i.bk, align 1, !tbaa !24
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %.077, i64 %i.d
  store <4 x float> %i.bf, ptr %.075, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod2(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.082 = phi ptr [ %4, %bb.a ], [ %i.bu, %bb.e ] ; 3 uses
  %.081 = phi ptr [ %0, %bb.a ], [ %i.bn, %bb.e ] ; 4 uses
  %.074 = phi ptr [ %3, %bb.a ], [ %i.bt, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %.074, align 4, !tbaa !47  ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %reass.sub = sub i32 %i.j, %i.e
  %i.k = add i32 %reass.sub, -2
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !714
  %i.m = load <4 x float>, ptr %.082, align 1, !tbaa !24 ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !24
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.080 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 5 uses
  %.079 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.078 = phi ptr [ %.082, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.077 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.076 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.075 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.078, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.080, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #24, !srcloc !715
  %i.aa = load <4 x float>, ptr %i.y, align 1, !tbaa !24 ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1, !tbaa !24
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.077, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.080, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !24
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.076, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.080, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !24
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.075, %i.an           ; 3 uses
  %i.ap = add nsw i32 %.079, -1
  %i.aq = icmp sgt i32 %.079, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !713

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #24, !srcloc !716
  %i.ar = getelementptr inbounds nuw i8, ptr %.078, i64 32
  %i.as = load i64, ptr %i.ar, align 1, !tbaa !24
  %i.at = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.as, i64 0
  %i.au = bitcast <2 x i64> %i.at to <4 x float>  ; 2 uses
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aw = getelementptr inbounds nuw i8, ptr %.080, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !tbaa !24
  %i.ay = fmul <4 x float> %i.ax, %i.av
  %i.az = fadd <4 x float> %i.ae, %i.ay           ; 2 uses
  %i.ba = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.bb = getelementptr inbounds nuw i8, ptr %.080, i64 112
  %i.bc = load i64, ptr %i.bb, align 1, !tbaa !24
  %i.bd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bc, i64 0
  %i.be = bitcast <2 x i64> %i.bd to <4 x float>
  %i.bf = fmul <4 x float> %i.ba, %i.be
  %i.bg = fadd <4 x float> %i.aj, %i.bf           ; 2 uses
  %i.bh = shufflevector <4 x float> %i.az, <4 x float> %i.bg, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> %i.ao, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bj = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bk = fadd <4 x float> %i.az, %i.bi
  %i.bl = fadd <4 x float> %i.bj, %i.bh
  %i.bm = fadd <4 x float> %i.bl, %i.bk           ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.081, i64 12 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %i.c
  br i1 %i.bo, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.bp = bitcast <4 x float> %i.bm to <2 x i64>
  %i.bq = extractelement <2 x i64> %i.bp, i64 0
  store i64 %i.bq, ptr %.081, align 1, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %.081, i64 8
  %i.bs = extractelement <4 x float> %i.bm, i64 2
  store float %i.bs, ptr %i.br, align 1, !tbaa !24
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.bu = getelementptr inbounds [4 x i8], ptr %.082, i64 %i.d
  store <4 x float> %i.bm, ptr %.081, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_3_channels_with_n_coeffs_mod3(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = mul i32 %1, 3
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.086 = phi ptr [ %4, %bb.a ], [ %i.bw, %bb.e ] ; 3 uses
  %.085 = phi ptr [ %0, %bb.a ], [ %i.bp, %bb.e ] ; 4 uses
  %.078 = phi ptr [ %3, %bb.a ], [ %i.bv, %bb.e ] ; 3 uses
  %i.e = load i32, ptr %.078, align 4, !tbaa !47  ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.078, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %reass.sub = sub i32 %i.j, %i.e
  %i.k = add i32 %reass.sub, -3
  %i.l = ashr i32 %i.k, 2
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !718
  %i.m = load <4 x float>, ptr %.086, align 1, !tbaa !24 ; 3 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.o = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.p = fmul <4 x float> %i.o, %i.n
  %i.q = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !24
  %i.t = fmul <4 x float> %i.q, %i.s
  %i.u = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !24
  %i.x = fmul <4 x float> %i.u, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.084 = phi ptr [ %i.h, %bb.b ], [ %i.z, %bb.c ] ; 6 uses
  %.083 = phi i32 [ %i.l, %bb.b ], [ %i.ap, %bb.c ] ; 2 uses
  %.082 = phi ptr [ %.086, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %.081 = phi <4 x float> [ %i.p, %bb.b ], [ %i.ae, %bb.c ]
  %.080 = phi <4 x float> [ %i.t, %bb.b ], [ %i.aj, %bb.c ]
  %.079 = phi <4 x float> [ %i.x, %bb.b ], [ %i.ao, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.082, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.084, i64 48 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #24, !srcloc !719
  %i.aa = load <4 x float>, ptr %i.y, align 1, !tbaa !24 ; 3 uses
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ac = load <4 x float>, ptr %i.z, align 1, !tbaa !24
  %i.ad = fmul <4 x float> %i.ac, %i.ab
  %i.ae = fadd <4 x float> %.081, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.ag = getelementptr inbounds nuw i8, ptr %.084, i64 64
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !24
  %i.ai = fmul <4 x float> %i.af, %i.ah
  %i.aj = fadd <4 x float> %.080, %i.ai           ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 3, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %.084, i64 80
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !24
  %i.an = fmul <4 x float> %i.ak, %i.am
  %i.ao = fadd <4 x float> %.079, %i.an           ; 2 uses
  %i.ap = add nsw i32 %.083, -1
  %i.aq = icmp sgt i32 %.083, 1
  br i1 %i.aq, label %bb.c, label %bb.d, !llvm.loop !717

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.z) #24, !srcloc !720
  %i.ar = getelementptr inbounds nuw i8, ptr %.082, i64 32
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !24 ; 3 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %.084, i64 96
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !24
  %i.aw = fmul <4 x float> %i.av, %i.at
  %i.ax = fadd <4 x float> %i.ae, %i.aw           ; 2 uses
  %i.ay = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.az = getelementptr inbounds nuw i8, ptr %.084, i64 112
  %i.ba = load <4 x float>, ptr %i.az, align 1, !tbaa !24
  %i.bb = fmul <4 x float> %i.ay, %i.ba
  %i.bc = fadd <4 x float> %i.aj, %i.bb           ; 2 uses
  %i.bd = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.be = getelementptr inbounds nuw i8, ptr %.084, i64 128
  %i.bf = load float, ptr %i.be, align 1, !tbaa !24
  %i.bg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.bf, i64 0
  %i.bh = fmul <4 x float> %i.bd, %i.bg
  %i.bi = fadd <4 x float> %i.ao, %i.bh           ; 2 uses
  %i.bj = shufflevector <4 x float> %i.ax, <4 x float> %i.bc, <4 x i32> <i32 3, i32 4, i32 5, i32 2>
  %i.bk = shufflevector <4 x float> %i.bc, <4 x float> %i.bi, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bm = fadd <4 x float> %i.ax, %i.bk
  %i.bn = fadd <4 x float> %i.bj, %i.bl
  %i.bo = fadd <4 x float> %i.bn, %i.bm           ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.085, i64 12 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.c
  br i1 %i.bq, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.br = bitcast <4 x float> %i.bo to <2 x i64>
  %i.bs = extractelement <2 x i64> %i.br, i64 0
  store i64 %i.bs, ptr %.085, align 1, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %.085, i64 8
  %i.bu = extractelement <4 x float> %i.bo, i64 2
  store float %i.bu, ptr %i.bt, align 1, !tbaa !24
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %.078, i64 8
  %i.bw = getelementptr inbounds [4 x i8], ptr %.086, i64 %i.d
  store <4 x float> %i.bo, ptr %.085, align 1, !tbaa !24
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_4_channels_with_1_coeff(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = shl i32 %1, 2
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %i.p, %bb.b ]  ; 2 uses
  %.018 = phi ptr [ %4, %bb.a ], [ %i.n, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.o, %bb.b ]    ; 2 uses
  %i.e = load i32, ptr %.0, align 4, !tbaa !47
  %i.f = shl nsw i32 %i.e, 2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !722
  %i.i = load float, ptr %.018, align 1, !tbaa !24
  %i.j = insertelement <4 x float> poison, float %i.i, i64 0
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer
  %i.l = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.m = fmul <4 x float> %i.l, %i.k
  store <4 x float> %i.m, ptr %.019, align 1, !tbaa !24
  %i.n = getelementptr inbounds [4 x i8], ptr %.018, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.c
  br i1 %i.q, label %bb.b, label %bb.c, !llvm.loop !721

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbir__horizontal_gather_4_channels_with_2_coeffs(ptr nofree noundef writeonly captures(address) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = shl i32 %1, 2
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = sext i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %0, %bb.a ], [ %i.v, %bb.b ]  ; 2 uses
  %.022 = phi ptr [ %4, %bb.a ], [ %i.t, %bb.b ]  ; 2 uses
  %.0 = phi ptr [ %3, %bb.a ], [ %i.u, %bb.b ]    ; 2 uses
  %i.e = load i32, ptr %.0, align 4, !tbaa !47
  %i.f = shl nsw i32 %i.e, 2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #24, !srcloc !724
  %i.i = load i64, ptr %.022, align 1, !tbaa !24
  %i.j = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.i, i64 0
  %i.k = bitcast <2 x i64> %i.j to <4 x float>    ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = load <4 x float>, ptr %i.h, align 1, !tbaa !24
  %i.n = fmul <4 x float> %i.m, %i.l
  %i.o = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load <4 x float>, ptr %i.p, align 1, !tbaa !24
  %i.r = fmul <4 x float> %i.q, %i.o
  %i.s = fadd <4 x float> %i.n, %i.r
  store <4 x float> %i.s, ptr %.023, align 1, !tbaa !24
  %i.t = getelementptr inbounds [4 x i8], ptr %.022, i64 %i.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.c
end_hunk_1
