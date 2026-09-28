Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmath?download=true
inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8ultrahdr14getYuv422PixelEP14uhdr_raw_imagemm:bb.a
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %2, %i.e
  %i.q = lshr i64 %1, 1                           ; 2 uses
  %i.r = mul i64 %2, %i.j
  %i.s = mul i64 %2, %i.o
  %i.t = getelementptr i8, ptr %i.b, i64 %1
  %i.u = getelementptr i8, ptr %i.t, i64 %i.p
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  %i.w = getelementptr i8, ptr %i.g, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 %i.r
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %i.z = getelementptr i8, ptr %i.l, i64 %i.q
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.s
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.ac = uitofp i8 %i.v to float
  %i.ad = zext i8 %i.y to i32
  %i.ae = add nsw i32 %i.ad, -128
  %i.af = sitofp i32 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = fmul nnan contract <2 x float> %i.ah, splat (float f0x3B808081)
  %i.aj = zext i8 %i.ab to i32
  %i.ak = add nsw i32 %i.aj, -128
  %i.al = sitofp i32 %i.ak to float
  %i.am = fmul nnan contract float %i.al, f0x3B808081
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ai, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.am, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14getYuv420PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %2, %i.e
  %i.q = lshr i64 %1, 1                           ; 2 uses
  %i.r = lshr i64 %2, 1                           ; 2 uses
  %i.s = mul i64 %i.r, %i.j
  %i.t = mul i64 %i.r, %i.o
  %i.u = getelementptr i8, ptr %i.b, i64 %1
  %i.v = getelementptr i8, ptr %i.u, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !24
  %i.x = getelementptr i8, ptr %i.g, i64 %i.q
  %i.y = getelementptr i8, ptr %i.x, i64 %i.s
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr i8, ptr %i.l, i64 %i.q
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.t
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  %i.ad = uitofp i8 %i.w to float
  %i.ae = zext i8 %i.z to i32
  %i.af = add nsw i32 %i.ae, -128
  %i.ag = sitofp i32 %i.af to float
  %i.ah = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = fmul nnan contract <2 x float> %i.ai, splat (float f0x3B808081)
  %i.ak = zext i8 %i.ac to i32
  %i.al = add nsw i32 %i.ak, -128
  %i.am = sitofp i32 %i.al to float
  %i.an = fmul nnan contract float %i.am, f0x3B808081
  %.fca.0.insert.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.aj, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, float } %.fca.0.insert.i, float %i.an, 1
  ret { <2 x float>, float } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14getYuv400PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %2, %i.e
  %i.g = getelementptr i8, ptr %i.b, i64 %1
  %i.h = getelementptr i8, ptr %i.g, i64 %i.f
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  %i.j = uitofp i8 %i.i to float
  %i.k = fmul nnan contract float %i.j, f0x3B808081
  %.sroa.07.4.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.07.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = zext i32 %i.n to i64
  %i.p = mul i64 %2, %i.e
  %i.q = mul i64 %2, %i.j
  %i.r = mul i64 %2, %i.o
  %i.s = getelementptr [2 x i8], ptr %i.b, i64 %i.p
  %i.t = getelementptr [2 x i8], ptr %i.s, i64 %1
  %i.u = load i16, ptr %i.t, align 2, !tbaa !26   ; 2 uses
  %i.v = getelementptr [2 x i8], ptr %i.g, i64 %i.q
  %i.w = getelementptr [2 x i8], ptr %i.v, i64 %1
  %i.x = load i16, ptr %i.w, align 2, !tbaa !26   ; 2 uses
  %i.y = getelementptr [2 x i8], ptr %i.l, i64 %i.r
  %i.z = getelementptr [2 x i8], ptr %i.y, i64 %1
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !26  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ae = insertelement <2 x i16> poison, i16 %i.u, i64 0
  %i.af = insertelement <2 x i16> %i.ae, i16 %i.x, i64 1
  %i.ag = uitofp <2 x i16> %i.af to <2 x float>
  %i.ah = fdiv contract <2 x float> %i.ag, splat (float 1.023000e+03)
  %i.ai = fadd contract <2 x float> %i.ah, <float -0.000000e+00, float -5.000000e-01>
  %i.aj = uitofp i16 %i.aa to float
  %i.ak = fdiv contract float %i.aj, 1.023000e+03
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = zext i16 %i.u to i32
  %i.am = add nsw i32 %i.al, -64
  %i.an = sitofp i32 %i.am to float
  %i.ao = fmul nnan contract float %i.an, f0x3A95A025
  %.sroa.027.0.vec.insert30 = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.ap = zext i16 %i.x to i32
  %i.aq = add nsw i32 %i.ap, -64
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fmul nnan contract float %i.ar, f0x3A924925
  %i.at = fadd contract float %i.as, -5.000000e-01
  %.sroa.027.4.vec.insert32 = insertelement <2 x float> %.sroa.027.0.vec.insert30, float %i.at, i64 1
  %i.au = zext i16 %i.aa to i32
  %i.av = add nsw i32 %i.au, -64
  %i.aw = sitofp i32 %i.av to float
  %i.ax = fmul nnan contract float %i.aw, f0x3A924925
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.027.0 = phi <2 x float> [ %i.ai, %bb.b ], [ %.sroa.027.4.vec.insert32, %bb.c ]
  %.sroa.5.0.in = phi float [ %i.ak, %bb.b ], [ %i.ax, %bb.c ]
  %.sroa.5.0 = fadd contract float %.sroa.5.0.in, -5.000000e-01
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9
  %i.j = zext i32 %i.i to i64
  %i.k = mul i64 %2, %i.e
  %i.l = lshr i64 %2, 1
  %i.m = mul i64 %i.l, %i.j
  %i.n = and i64 %1, -2
  %i.o = getelementptr [2 x i8], ptr %i.b, i64 %i.k
  %i.p = getelementptr [2 x i8], ptr %i.o, i64 %1
  %i.q = load i16, ptr %i.p, align 2, !tbaa !26
  %i.r = getelementptr [2 x i8], ptr %i.g, i64 %i.m
  %i.s = getelementptr [2 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !26
  %i.u = insertelement <2 x i16> poison, i16 %i.q, i64 0
  %i.v = insertelement <2 x i16> %i.u, i16 %i.t, i64 1
  %i.w = lshr <2 x i16> %i.v, splat (i16 6)       ; 3 uses
  %i.x = getelementptr i8, ptr %i.s, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !26
  %i.z = lshr i16 %i.y, 6                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = uitofp nneg <2 x i16> %i.w to <2 x float>
  %i.ae = fdiv contract <2 x float> %i.ad, splat (float 1.023000e+03)
  %3 = fadd contract <2 x float> %i.ae, <float -0.000000e+00, float -5.000000e-01>
  %i.af = uitofp nneg i16 %i.z to float
  %i.ag = fdiv contract float %i.af, 1.023000e+03
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %4 = extractelement <2 x i16> %i.w, i64 0
  %5 = zext nneg i16 %4 to i32
  %6 = add nsw i32 %5, -64
  %7 = sitofp i32 %6 to float
  %8 = fmul nnan contract float %7, f0x3A95A025
  %.sroa.023.0.vec.insert26 = insertelement <2 x float> poison, float %8, i64 0
  %9 = shufflevector <2 x i16> %i.w, <2 x i16> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x i16> %9, i16 %i.z, i64 1
  %i.ah = add nsw <2 x i16> %10, splat (i16 -64)
  %i.ai = sitofp <2 x i16> %i.ah to <2 x float>
  %i.aj = fmul nnan contract <2 x float> %i.ai, splat (float f0x3A924925) ; 2 uses
  %11 = extractelement <2 x float> %i.aj, i64 0
  %12 = fadd contract float %11, -5.000000e-01
  %.sroa.023.4.vec.insert28 = insertelement <2 x float> %.sroa.023.0.vec.insert26, float %12, i64 1
  %13 = extractelement <2 x float> %i.aj, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.023.0.a = phi <2 x float> [ %3, %bb.b ], [ %.sroa.023.4.vec.insert28, %bb.c ]
  %.sroa.5.0.in = phi float [ %i.ag, %bb.b ], [ %13, %bb.c ]
  %.sroa.5.0 = fadd contract float %.sroa.5.0.in, -5.000000e-01
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.023.0.a, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.5.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14getRgb888PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %2, %i.e
  %i.g = add i64 %i.f, %1
  %i.h = mul i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !24
  %i.l = uitofp i8 %i.k to float
  %i.m = load <2 x i8>, ptr %i.i, align 1, !tbaa !24
  %i.n = uitofp <2 x i8> %i.m to <2 x float>
  %i.o = fdiv contract <2 x float> %i.n, splat (float 2.550000e+02)
  %i.p = fdiv contract float %i.l, 2.550000e+02
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.o, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.p, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr16getRgba8888PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %2, %i.e
  %i.g = getelementptr [4 x i8], ptr %i.b, i64 %1
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = lshr i32 %i.i, 8
  %i.k = lshr i32 %i.i, 16
  %i.l = and i32 %i.k, 255
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = and i32 %i.i, 255
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = and i32 %i.j, 255
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fdiv contract <2 x float> %i.s, splat (float 2.550000e+02)
  %i.u = fdiv contract float %i.m, 2.550000e+02
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.t, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.u, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr19getRgba1010102PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %2, %i.e
  %i.g = getelementptr [4 x i8], ptr %i.b, i64 %1
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = lshr i32 %i.i, 10
  %i.k = lshr i32 %i.i, 20
  %i.l = and i32 %i.k, 1023
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = and i32 %i.i, 1023
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = and i32 %i.j, 1023
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fdiv contract <2 x float> %i.s, splat (float 1.023000e+03)
  %i.u = fdiv contract float %i.m, 1.023000e+03
  %.fca.0.insert.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.t, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i, float %i.u, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = zext i32 %i.d to i64
  %i.f = mul i64 %2, %i.e
  %i.g = getelementptr [8 x i8], ptr %i.b, i64 %1
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %i.j = trunc i64 %i.i to i16                    ; 3 uses
  %i.k = lshr i16 %i.j, 10
  %i.l = and i16 %i.k, 31                         ; 3 uses
  %i.m = icmp eq i16 %i.l, 0
  %i.n = and i16 %i.j, 1023
  %i.o = zext nneg i16 %i.n to i32                ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = or disjoint i32 %i.o, 1056964608
  %i.q = bitcast i32 %i.p to float
  %i.r = fadd contract float %i.q, -5.000000e-01
  %i.s = bitcast float %i.r to i32
  br label %_ZN8ultrahdr11halfToFloatEt.exit

bb.c:                                             ; preds = %bb.a
  %i.t = shl nuw nsw i32 %i.o, 13                 ; 2 uses
  %i.u = icmp eq i16 %i.l, 31
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i32 %i.t, 2139095040
  br label %_ZN8ultrahdr11halfToFloatEt.exit

bb.e:                                             ; preds = %bb.c
  %i.w = zext nneg i16 %i.l to i32
  %i.x = shl nuw nsw i32 %i.w, 23
  %i.y = add nuw nsw i32 %i.x, 939524096
  %i.z = or disjoint i32 %i.y, %i.t
  br label %_ZN8ultrahdr11halfToFloatEt.exit

_ZN8ultrahdr11halfToFloatEt.exit:                 ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.s, %bb.b ], [ %i.v, %bb.d ], [ %i.z, %bb.e ]
  %i.aa = lshr i16 %i.j, 15
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = shl nuw i32 %i.ab, 31
  %i.ad = or i32 %.sroa.0.0.i, %i.ac
  %i.ae = bitcast i32 %i.ad to float              ; 5 uses
  %i.af = lshr i64 %i.i, 16
  %i.ag = trunc i64 %i.af to i16                  ; 3 uses
  %i.ah = lshr i16 %i.ag, 10
  %i.ai = and i16 %i.ah, 31                       ; 3 uses
  %i.aj = icmp eq i16 %i.ai, 0
  %i.ak = and i16 %i.ag, 1023
  %i.al = zext nneg i16 %i.ak to i32              ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8ultrahdr11halfToFloatEt.exit
  %i.am = or disjoint i32 %i.al, 1056964608
  %i.an = bitcast i32 %i.am to float
  %i.ao = fadd contract float %i.an, -5.000000e-01
  %i.ap = bitcast float %i.ao to i32
  br label %_ZN8ultrahdr11halfToFloatEt.exit24

bb.g:                                             ; preds = %_ZN8ultrahdr11halfToFloatEt.exit
  %i.aq = shl nuw nsw i32 %i.al, 13               ; 2 uses
  %i.ar = icmp eq i16 %i.ai, 31
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = or disjoint i32 %i.aq, 2139095040
  br label %_ZN8ultrahdr11halfToFloatEt.exit24

bb.i:                                             ; preds = %bb.g
  %i.at = zext nneg i16 %i.ai to i32
  %i.au = shl nuw nsw i32 %i.at, 23
  %i.av = add nuw nsw i32 %i.au, 939524096
  %i.aw = or disjoint i32 %i.av, %i.aq
  br label %_ZN8ultrahdr11halfToFloatEt.exit24

_ZN8ultrahdr11halfToFloatEt.exit24:               ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.0.0.i23 = phi i32 [ %i.ap, %bb.f ], [ %i.as, %bb.h ], [ %i.aw, %bb.i ]
  %i.ax = lshr i16 %i.ag, 15
  %i.ay = zext nneg i16 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 31
  %i.ba = or i32 %.sroa.0.0.i23, %i.az
  %i.bb = bitcast i32 %i.ba to float              ; 5 uses
  %i.bc = lshr i64 %i.i, 32
  %i.bd = trunc i64 %i.bc to i16                  ; 3 uses
  %i.be = lshr i16 %i.bd, 10
  %i.bf = and i16 %i.be, 31                       ; 3 uses
  %i.bg = icmp eq i16 %i.bf, 0
  %i.bh = and i16 %i.bd, 1023
  %i.bi = zext nneg i16 %i.bh to i32              ; 2 uses
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN8ultrahdr11halfToFloatEt.exit24
  %i.bj = or disjoint i32 %i.bi, 1056964608
  %i.bk = bitcast i32 %i.bj to float
  %i.bl = fadd contract float %i.bk, -5.000000e-01
  %i.bm = bitcast float %i.bl to i32
  br label %_ZN8ultrahdr11halfToFloatEt.exit26

bb.k:                                             ; preds = %_ZN8ultrahdr11halfToFloatEt.exit24
  %i.bn = shl nuw nsw i32 %i.bi, 13               ; 2 uses
  %i.bo = icmp eq i16 %i.bf, 31
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = or disjoint i32 %i.bn, 2139095040
  br label %_ZN8ultrahdr11halfToFloatEt.exit26

end_hunk_0
begin_hunk_1_@_ZN8ultrahdr12sampleYuv422EP14uhdr_raw_imagemmm:bb.a
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %i.am, %bb.c ]
  %i.w = add i64 %.02837.i, %i.a                  ; 2 uses
  %i.x = lshr i64 %i.w, 1                         ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.w
  %i.y = load i8, ptr %gep, align 1, !tbaa !24
  %gep8 = getelementptr i8, ptr %invariant.gep7, i64 %i.x
  %i.z = load i8, ptr %gep8, align 1, !tbaa !24
  %gep10 = getelementptr i8, ptr %invariant.gep9, i64 %i.x
  %i.aa = load i8, ptr %gep10, align 1, !tbaa !24
  %i.ab = uitofp i8 %i.y to float
  %i.ac = zext i8 %i.z to i32
  %i.ad = add nsw i32 %i.ac, -128
  %i.ae = sitofp i32 %i.ad to float
  %i.af = zext i8 %i.aa to i32
  %i.ag = add nsw i32 %i.af, -128
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fmul nnan contract float %i.ah, f0x3B808081
  %i.aj = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ae, i64 1
  %i.al = fmul nnan contract <2 x float> %i.ak, splat (float f0x3B808081)
  %i.am = fadd contract <2 x float> %.sroa.030.135.i, %i.al ; 3 uses
  %i.an = fadd contract float %.sroa.9.136.i, %i.ai ; 3 uses
  %i.ao = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %bb.b, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.am, %bb.b ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.an, %bb.b ]
  %i.ap = mul i64 %1, %1
  %i.aq = uitofp i64 %i.ap to float               ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.as
  %i.au = fdiv contract float %.sroa.9.0.lcssa.i, %i.aq
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.at, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.au, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr12sampleYuv420EP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1
  %i.b = mul i64 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = zext i32 %i.p to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.lr.ph.i
  %.040.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %.sroa.9.039.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.ao, %bb.b ]
  %.sroa.030.038.i = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.i ], [ %i.an, %bb.b ]
  %i.r = add i64 %.040.i, %i.b                    ; 2 uses
  %i.s = mul i64 %i.r, %i.g
  %i.t = lshr i64 %i.r, 1                         ; 2 uses
  %i.u = mul i64 %i.t, %i.l
  %i.v = mul i64 %i.t, %i.q
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.s
  %invariant.gep7 = getelementptr i8, ptr %i.i, i64 %i.u
  %invariant.gep9 = getelementptr i8, ptr %i.n, i64 %i.v
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.w = add nuw i64 %.040.i, 1                   ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.w, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.ap, %bb.c ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.ao, %bb.c ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %i.an, %bb.c ]
  %i.x = add i64 %.02837.i, %i.a                  ; 2 uses
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.x
  %i.z = load i8, ptr %gep, align 1, !tbaa !24
  %gep8 = getelementptr i8, ptr %invariant.gep7, i64 %i.y
  %i.aa = load i8, ptr %gep8, align 1, !tbaa !24
  %gep10 = getelementptr i8, ptr %invariant.gep9, i64 %i.y
  %i.ab = load i8, ptr %gep10, align 1, !tbaa !24
  %i.ac = uitofp i8 %i.z to float
  %i.ad = zext i8 %i.aa to i32
  %i.ae = add nsw i32 %i.ad, -128
  %i.af = sitofp i32 %i.ae to float
  %i.ag = zext i8 %i.ab to i32
  %i.ah = add nsw i32 %i.ag, -128
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fmul nnan contract float %i.ai, f0x3B808081
  %i.ak = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.af, i64 1
  %i.am = fmul nnan contract <2 x float> %i.al, splat (float f0x3B808081)
  %i.an = fadd contract <2 x float> %.sroa.030.135.i, %i.am ; 3 uses
  %i.ao = fadd contract float %.sroa.9.136.i, %i.aj ; 3 uses
  %i.ap = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ap, %1
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %bb.b, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.an, %bb.b ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.ao, %bb.b ]
  %i.aq = mul i64 %1, %1
  %i.ar = uitofp i64 %i.aq to float               ; 2 uses
  %i.as = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.at
  %i.av = fdiv contract float %.sroa.9.0.lcssa.i, %i.ar
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.au, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.av, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr10sampleP010EP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1                           ; 2 uses
  %i.b = mul i64 %3, %1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.preheader.i.us, label %.preheader.i

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i, %.split.us.us
  %.040.i.us = phi i64 [ %i.ap, %.split.us.us ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.sroa.9.039.i.us = phi float [ %i.an, %.split.us.us ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  %.sroa.030.038.i.us = phi <2 x float> [ %i.am, %.split.us.us ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %i.p = add i64 %.040.i.us, %i.b                 ; 2 uses
  %i.q = mul i64 %i.p, %i.g
  %i.r = lshr i64 %i.p, 1
  %i.s = mul i64 %i.r, %i.l
  %i.t = getelementptr [2 x i8], ptr %i.d, i64 %i.q
  %i.u = getelementptr [2 x i8], ptr %i.i, i64 %i.s
  br label %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us

_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us: ; preds = %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us, %.preheader.i.us
  %.02837.i.us.us = phi i64 [ 0, %.preheader.i.us ], [ %i.ao, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us ] ; 2 uses
  %.sroa.9.136.i.us.us = phi float [ %.sroa.9.039.i.us, %.preheader.i.us ], [ %i.an, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us ]
  %.sroa.030.135.i.us.us = phi <2 x float> [ %.sroa.030.038.i.us, %.preheader.i.us ], [ %i.am, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us ]
  %i.v = add i64 %.02837.i.us.us, %i.a            ; 2 uses
  %i.w = and i64 %i.v, -2
  %i.x = getelementptr [2 x i8], ptr %i.t, i64 %i.v
  %i.y = load i16, ptr %i.x, align 2, !tbaa !26
  %i.z = getelementptr [2 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.z, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !26
  %i.ad = lshr i16 %i.ac, 6
  %i.ae = uitofp nneg i16 %i.ad to float
  %i.af = fdiv contract float %i.ae, 1.023000e+03
  %.sroa.5.0.i.us.us = fadd contract float %i.af, -5.000000e-01
  %i.ag = insertelement <2 x i16> poison, i16 %i.y, i64 0
  %i.ah = insertelement <2 x i16> %i.ag, i16 %i.aa, i64 1
  %i.ai = lshr <2 x i16> %i.ah, splat (i16 6)
  %i.aj = uitofp nneg <2 x i16> %i.ai to <2 x float>
  %i.ak = fdiv contract <2 x float> %i.aj, splat (float 1.023000e+03)
  %i.al = fadd contract <2 x float> %i.ak, <float -0.000000e+00, float -5.000000e-01>
  %i.am = fadd contract <2 x float> %.sroa.030.135.i.us.us, %i.al ; 3 uses
  %i.an = fadd contract float %.sroa.9.136.i.us.us, %.sroa.5.0.i.us.us ; 3 uses
  %i.ao = add nuw i64 %.02837.i.us.us, 1          ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %i.ao, %1
  br i1 %exitcond.not.i.us.us, label %.split.us.us, label %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us, !llvm.loop !1

.split.us.us:                                     ; preds = %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit.us.us
  %i.ap = add nuw i64 %.040.i.us, 1               ; 2 uses
  %exitcond42.not.i.us = icmp eq i64 %i.ap, %1
  br i1 %exitcond42.not.i.us, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i.us, !llvm.loop !0

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.split
  %.040.i = phi i64 [ %i.aw, %.split ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.sroa.9.039.i = phi float [ %i.bl, %.split ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  %.sroa.030.038.i = phi <2 x float> [ %.sroa.030.4.vec.insert.i, %.split ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %i.aq = add i64 %.040.i, %i.b                   ; 2 uses
  %i.ar = mul i64 %i.aq, %i.g
  %i.as = lshr i64 %i.aq, 1
  %i.at = mul i64 %i.as, %i.l
  %i.au = getelementptr [2 x i8], ptr %i.d, i64 %i.ar
  %i.av = getelementptr [2 x i8], ptr %i.i, i64 %i.at
  br label %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit

.split:                                           ; preds = %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit
  %i.aw = add nuw i64 %.040.i, 1                  ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.aw, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit: ; preds = %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.bm, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.bl, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %.sroa.030.4.vec.insert.i, %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit ] ; 2 uses
  %i.ax = add i64 %.02837.i, %i.a                 ; 2 uses
  %i.ay = and i64 %i.ax, -2
  %i.az = getelementptr [2 x i8], ptr %i.au, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !26
  %4 = lshr i16 %i.ba, 6
  %i.bb = getelementptr [2 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !26
  %5 = lshr i16 %i.bc, 6
  %i.bd = getelementptr i8, ptr %i.bb, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !26
  %i.bf = lshr i16 %i.be, 6
  %6 = zext nneg i16 %4 to i32
  %7 = add nsw i32 %6, -64
  %8 = sitofp i32 %7 to float
  %9 = fmul nnan contract float %8, f0x3A95A025
  %i.bg = zext nneg i16 %5 to i32
  %i.bh = add nsw i32 %i.bg, -64
  %i.bi = sitofp i32 %i.bh to float
  %i.bj = fmul nnan contract float %i.bi, f0x3A924925
  %i.bk = fadd contract float %i.bj, -5.000000e-01
  %10 = zext nneg i16 %i.bf to i32
  %11 = add nsw i32 %10, -64
  %12 = sitofp i32 %11 to float
  %13 = fmul nnan contract float %12, f0x3A924925
  %.sroa.5.0.i = fadd contract float %13, -5.000000e-01
  %.sroa.030.0.vec.extract.i = extractelement <2 x float> %.sroa.030.135.i, i64 0
  %14 = fadd contract float %.sroa.030.0.vec.extract.i, %9
  %.sroa.030.0.vec.insert.i = insertelement <2 x float> poison, float %14, i64 0
  %.sroa.030.4.vec.extract.i = extractelement <2 x float> %.sroa.030.135.i, i64 1
  %15 = fadd contract float %.sroa.030.4.vec.extract.i, %i.bk
  %.sroa.030.4.vec.insert.i = insertelement <2 x float> %.sroa.030.0.vec.insert.i, float %15, i64 1 ; 3 uses
  %i.bl = fadd contract float %.sroa.9.136.i, %.sroa.5.0.i ; 3 uses
  %i.bm = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bm, %1
  br i1 %exitcond.not.i, label %.split, label %_ZN8ultrahdr12getP010PixelEP14uhdr_raw_imagemm.exit, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %.split, %.split.us.us, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.am, %.split.us.us ], [ %.sroa.030.4.vec.insert.i, %.split ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.an, %.split.us.us ], [ %i.bl, %.split ]
  %i.bn = mul i64 %1, %1
  %i.bo = uitofp i64 %i.bn to float               ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.bq
  %i.bs = fdiv contract float %.sroa.9.0.lcssa.i, %i.bo
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.br, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.bs, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr17sampleYuv44410bitEP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1                           ; 2 uses
  %i.b = mul i64 %3, %1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !9
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %.preheader.i.us, label %.preheader.i

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.i, %.split.us.us
  %.040.i.us = phi i64 [ %i.as, %.split.us.us ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.sroa.9.039.i.us = phi float [ %i.aq, %.split.us.us ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  %.sroa.030.038.i.us = phi <2 x float> [ %i.ap, %.split.us.us ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %i.u = add i64 %.040.i.us, %i.b                 ; 3 uses
  %i.v = mul i64 %i.u, %i.g
  %i.w = mul i64 %i.u, %i.l
  %i.x = mul i64 %i.u, %i.q
  %i.y = getelementptr [2 x i8], ptr %i.d, i64 %i.v
  %i.z = getelementptr [2 x i8], ptr %i.i, i64 %i.w
  %i.aa = getelementptr [2 x i8], ptr %i.n, i64 %i.x
  br label %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us

_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us: ; preds = %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us, %.preheader.i.us
  %.02837.i.us.us = phi i64 [ 0, %.preheader.i.us ], [ %i.ar, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us ] ; 2 uses
  %.sroa.9.136.i.us.us = phi float [ %.sroa.9.039.i.us, %.preheader.i.us ], [ %i.aq, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us ]
  %.sroa.030.135.i.us.us = phi <2 x float> [ %.sroa.030.038.i.us, %.preheader.i.us ], [ %i.ap, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us ]
  %i.ab = add i64 %.02837.i.us.us, %i.a           ; 3 uses
  %i.ac = getelementptr [2 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !26
  %i.ae = getelementptr [2 x i8], ptr %i.z, i64 %i.ab
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !26
  %i.ag = getelementptr [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !26
  %i.ai = uitofp i16 %i.ah to float
  %i.aj = fdiv contract float %i.ai, 1.023000e+03
  %.sroa.5.0.i.us.us = fadd contract float %i.aj, -5.000000e-01
  %i.ak = insertelement <2 x i16> poison, i16 %i.ad, i64 0
  %i.al = insertelement <2 x i16> %i.ak, i16 %i.af, i64 1
  %i.am = uitofp <2 x i16> %i.al to <2 x float>
  %i.an = fdiv contract <2 x float> %i.am, splat (float 1.023000e+03)
  %i.ao = fadd contract <2 x float> %i.an, <float -0.000000e+00, float -5.000000e-01>
  %i.ap = fadd contract <2 x float> %.sroa.030.135.i.us.us, %i.ao ; 3 uses
  %i.aq = fadd contract float %.sroa.9.136.i.us.us, %.sroa.5.0.i.us.us ; 3 uses
  %i.ar = add nuw i64 %.02837.i.us.us, 1          ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not.i.us.us, label %.split.us.us, label %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us, !llvm.loop !1

.split.us.us:                                     ; preds = %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit.us.us
  %i.as = add nuw i64 %.040.i.us, 1               ; 2 uses
  %exitcond42.not.i.us = icmp eq i64 %i.as, %1
  br i1 %exitcond42.not.i.us, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i.us, !llvm.loop !0

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %.split
  %.040.i = phi i64 [ %i.ba, %.split ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.sroa.9.039.i = phi float [ %i.bn, %.split ], [ 0.000000e+00, %.preheader.lr.ph.i ]
  %.sroa.030.038.i = phi <2 x float> [ %.sroa.030.4.vec.insert.i, %.split ], [ zeroinitializer, %.preheader.lr.ph.i ]
  %i.at = add i64 %.040.i, %i.b                   ; 3 uses
  %i.au = mul i64 %i.at, %i.g
  %i.av = mul i64 %i.at, %i.l
  %i.aw = mul i64 %i.at, %i.q
  %i.ax = getelementptr [2 x i8], ptr %i.d, i64 %i.au
  %i.ay = getelementptr [2 x i8], ptr %i.i, i64 %i.av
  %i.az = getelementptr [2 x i8], ptr %i.n, i64 %i.aw
  br label %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit

.split:                                           ; preds = %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit
  %i.ba = add nuw i64 %.040.i, 1                  ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.ba, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit: ; preds = %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.bo, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.bn, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %.sroa.030.4.vec.insert.i, %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit ] ; 2 uses
  %i.bb = add i64 %.02837.i, %i.a                 ; 3 uses
  %i.bc = getelementptr [2 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !26
  %i.be = getelementptr [2 x i8], ptr %i.ay, i64 %i.bb
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !26
  %i.bg = getelementptr [2 x i8], ptr %i.az, i64 %i.bb
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !26
  %4 = zext i16 %i.bd to i32
  %5 = add nsw i32 %4, -64
  %6 = sitofp i32 %5 to float
  %7 = fmul nnan contract float %6, f0x3A95A025
  %i.bi = zext i16 %i.bf to i32
  %i.bj = add nsw i32 %i.bi, -64
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fmul nnan contract float %i.bk, f0x3A924925
  %i.bm = fadd contract float %i.bl, -5.000000e-01
  %8 = zext i16 %i.bh to i32
  %9 = add nsw i32 %8, -64
  %10 = sitofp i32 %9 to float
  %11 = fmul nnan contract float %10, f0x3A924925
  %.sroa.5.0.i = fadd contract float %11, -5.000000e-01
  %.sroa.030.0.vec.extract.i = extractelement <2 x float> %.sroa.030.135.i, i64 0
  %12 = fadd contract float %.sroa.030.0.vec.extract.i, %7
  %.sroa.030.0.vec.insert.i = insertelement <2 x float> poison, float %12, i64 0
  %.sroa.030.4.vec.extract.i = extractelement <2 x float> %.sroa.030.135.i, i64 1
  %13 = fadd contract float %.sroa.030.4.vec.extract.i, %i.bm
  %.sroa.030.4.vec.insert.i = insertelement <2 x float> %.sroa.030.0.vec.insert.i, float %13, i64 1 ; 3 uses
  %i.bn = fadd contract float %.sroa.9.136.i, %.sroa.5.0.i ; 3 uses
  %i.bo = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %1
  br i1 %exitcond.not.i, label %.split, label %_ZN8ultrahdr19getYuv444Pixel10bitEP14uhdr_raw_imagemm.exit, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %.split, %.split.us.us, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.ap, %.split.us.us ], [ %.sroa.030.4.vec.insert.i, %.split ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.aq, %.split.us.us ], [ %i.bn, %.split ]
  %i.bp = mul i64 %1, %1
  %i.bq = uitofp i64 %i.bp to float               ; 2 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.bs
  %i.bu = fdiv contract float %.sroa.9.0.lcssa.i, %i.bq
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.bt, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.bu, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr14sampleRgba8888EP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1
  %i.b = mul i64 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.lr.ph.i
  %.040.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.9.039.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.y, %bb.b ]
  %.sroa.030.038.i = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.i ], [ %i.x, %bb.b ]
  %i.h = add i64 %.040.i, %i.b
  %i.i = mul i64 %i.h, %i.g
  %invariant.gep11 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.i
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.040.i, 1                   ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.j, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.y, %bb.c ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %i.x, %bb.c ]
  %gep12 = getelementptr [4 x i8], ptr %invariant.gep11, i64 %.02837.i
  %i.k = load i32, ptr %gep12, align 4, !tbaa !9  ; 3 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = lshr i32 %i.k, 16
  %i.n = and i32 %i.m, 255
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fdiv contract float %i.o, 2.550000e+02
  %i.q = and i32 %i.k, 255
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = and i32 %i.l, 255
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv contract <2 x float> %i.v, splat (float 2.550000e+02)
  %i.x = fadd contract <2 x float> %.sroa.030.135.i, %i.w ; 3 uses
  %i.y = fadd contract float %.sroa.9.136.i, %i.p ; 3 uses
  %i.z = add nuw i64 %.02837.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %1
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %bb.b, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.x, %bb.b ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %bb.b ]
  %i.aa = mul i64 %1, %1
  %i.ab = uitofp i64 %i.aa to float               ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.ad
  %i.af = fdiv contract float %.sroa.9.0.lcssa.i, %i.ab
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ae, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.af, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr17sampleRgba1010102EP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1
  %i.b = mul i64 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.lr.ph.i
  %.040.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.9.039.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.y, %bb.b ]
  %.sroa.030.038.i = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.i ], [ %i.x, %bb.b ]
  %i.h = add i64 %.040.i, %i.b
  %i.i = mul i64 %i.h, %i.g
  %invariant.gep11 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.i
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.040.i, 1                   ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.j, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.c, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.z, %bb.c ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.y, %bb.c ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %i.x, %bb.c ]
  %gep12 = getelementptr [4 x i8], ptr %invariant.gep11, i64 %.02837.i
  %i.k = load i32, ptr %gep12, align 4, !tbaa !9  ; 3 uses
  %i.l = lshr i32 %i.k, 10
  %i.m = lshr i32 %i.k, 20
  %i.n = and i32 %i.m, 1023
  %i.o = uitofp nneg i32 %i.n to float
  %i.p = fdiv contract float %i.o, 1.023000e+03
  %i.q = and i32 %i.k, 1023
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = and i32 %i.l, 1023
  %i.t = uitofp nneg i32 %i.s to float
  %i.u = insertelement <2 x float> poison, float %i.r, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.t, i64 1
  %i.w = fdiv contract <2 x float> %i.v, splat (float 1.023000e+03)
  %i.x = fadd contract <2 x float> %.sroa.030.135.i, %i.w ; 3 uses
  %i.y = fadd contract float %.sroa.9.136.i, %i.p ; 3 uses
  %i.z = add nuw i64 %.02837.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %1
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !1

_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit: ; preds = %bb.b, %bb.a
  %.sroa.030.0.lcssa.i = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.x, %bb.b ]
  %.sroa.9.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.y, %bb.b ]
  %i.aa = mul i64 %1, %1
  %i.ab = uitofp i64 %i.aa to float               ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv contract <2 x float> %.sroa.030.0.lcssa.i, %i.ad
  %i.af = fdiv contract float %.sroa.9.0.lcssa.i, %i.ab
  %.fca.0.insert.i.i.i = insertvalue { <2 x float>, float } poison, <2 x float> %i.ae, 0
  %.fca.1.insert.i.i.i = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i, float %i.af, 1
  ret { <2 x float>, float } %.fca.1.insert.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, float } @_ZN8ultrahdr13sampleRgbaF16EP14uhdr_raw_imagemmm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #15 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.a = mul i64 %2, %1
  %i.b = mul i64 %3, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9
  %i.g = zext i32 %i.f to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.d, i64 %i.a
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.lr.ph.i
  %.040.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.9.039.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %i.dc, %bb.b ]
  %.sroa.030.038.i = phi <2 x float> [ zeroinitializer, %.preheader.lr.ph.i ], [ %i.db, %bb.b ]
  %i.h = add i64 %.040.i, %i.b
  %i.i = mul i64 %i.h, %i.g
  %invariant.gep7 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.i
  br label %bb.c

bb.b:                                             ; preds = %_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm.exit
  %i.j = add nuw i64 %.040.i, 1                   ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.j, %1
  br i1 %exitcond42.not.i, label %_ZN8ultrahdrL12samplePixelsEP14uhdr_raw_imagemmmPFNS_5ColorES1_mmE.exit, label %.preheader.i, !llvm.loop !0

bb.c:                                             ; preds = %_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm.exit, %.preheader.i
  %.02837.i = phi i64 [ 0, %.preheader.i ], [ %i.dd, %_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm.exit ] ; 2 uses
  %.sroa.9.136.i = phi float [ %.sroa.9.039.i, %.preheader.i ], [ %i.dc, %_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm.exit ]
  %.sroa.030.135.i = phi <2 x float> [ %.sroa.030.038.i, %.preheader.i ], [ %i.db, %_ZN8ultrahdr15getRgbaF16PixelEP14uhdr_raw_imagemm.exit ]
  %gep8 = getelementptr [8 x i8], ptr %invariant.gep7, i64 %.02837.i
  %i.k = load i64, ptr %gep8, align 8, !tbaa !34  ; 3 uses
  %i.l = trunc i64 %i.k to i16                    ; 3 uses
  %i.m = lshr i16 %i.l, 10
  %i.n = and i16 %i.m, 31                         ; 3 uses
  %i.o = icmp eq i16 %i.n, 0
  %i.p = and i16 %i.l, 1023
  %i.q = zext nneg i16 %i.p to i32                ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = or disjoint i32 %i.q, 1056964608
  %i.s = bitcast i32 %i.r to float
  %i.t = fadd contract float %i.s, -5.000000e-01
  %i.u = bitcast float %i.t to i32
end_hunk_1
begin_hunk_2_@_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb:bb.a
  store i16 %i.ij, ptr %i.ii, align 2, !tbaa !26
  %i.ik = add nuw nsw i64 %.0336530, 1            ; 2 uses
  %i.il = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !36 ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = icmp samesign ult i64 %i.ik, %i.im
  br i1 %i.in, label %bb.ad, label %._crit_edge532.loopexit, !llvm.loop !72

bb.af:                                            ; preds = %bb.ad
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.z
  %i.ip = icmp eq i32 %i.a, 3                     ; 2 uses
  %or.cond3 = and i1 %2, %i.ip
  br i1 %or.cond3, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.iq = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc376 unwind label %bb.aj ; 13 uses

.noexc376:                                        ; preds = %bb.ah
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !43, !noalias !87
  %i.iw = load i32, ptr %i.it, align 8, !tbaa !44, !noalias !87
  %i.ix = load i32, ptr %i.is, align 8, !tbaa !9, !noalias !87
  %i.iy = load i32, ptr %i.ir, align 4, !tbaa !9, !noalias !87
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.iq, i32 noundef 1, i32 noundef %i.iv, i32 noundef %i.iw, i32 noundef 1, i32 noundef %i.ix, i32 noundef %i.iy, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393 unwind label %bb.ai, !noalias !87

bb.ai:                                            ; preds = %.noexc376
  %i.iz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef 72) #39, !noalias !87
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393: ; preds = %.noexc376
  store ptr %i.iq, ptr %3, align 8, !tbaa !42
  %i.ja = ptrtoint ptr %i.iq to i64               ; 2 uses
  %.phi.trans.insert725 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre726 = load ptr, ptr %.phi.trans.insert725, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert727 = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %.pre728 = load ptr, ptr %.phi.trans.insert727, align 8, !tbaa !16 ; 4 uses
  %.phi.trans.insert729 = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %.pre730 = load ptr, ptr %.phi.trans.insert729, align 8, !tbaa !16
  %.phi.trans.insert731 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %.pre732 = load ptr, ptr %.phi.trans.insert731, align 8, !tbaa !16
  %.phi.trans.insert733 = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  %.pre734 = load i32, ptr %.phi.trans.insert733, align 4, !tbaa !35 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 20
  %.not541 = icmp eq i32 %.pre734, 0
  br i1 %.not541, label %.loopexit, label %.preheader519.lr.ph

.preheader519.lr.ph:                              ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !9
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %.phi.trans.insert758 = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %.pre759 = load i32, ptr %.phi.trans.insert758, align 8, !tbaa !36
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iq, i64 48 ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 52
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  br label %.preheader519

.preheader519:                                    ; preds = %.preheader519.lr.ph, %._crit_edge528
  %i.ji = phi i32 [ %.pre759, %.preheader519.lr.ph ], [ %i.jr, %._crit_edge528 ]
  %i.jj = phi i32 [ %.pre734, %.preheader519.lr.ph ], [ %i.js, %._crit_edge528 ]
  %.0335529 = phi i64 [ 0, %.preheader519.lr.ph ], [ %i.jt, %._crit_edge528 ] ; 6 uses
  %.not542 = icmp eq i32 %i.ji, 0
  br i1 %.not542, label %._crit_edge528, label %.lr.ph527

.lr.ph527:                                        ; preds = %.preheader519
  %i.jk = mul nuw i64 %.0335529, %i.je
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.pre726, i64 %i.jk ; 2 uses
  %i.jm = or disjoint i64 %.0335529, 1            ; 3 uses
  %i.jn = mul nuw i64 %i.jm, %i.je
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.pre726, i64 %i.jn ; 2 uses
  %i.jp = lshr exact i64 %.0335529, 1             ; 2 uses
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge528.loopexit:                          ; preds = %bb.ao
  %.pre735 = load i32, ptr %i.jb, align 4, !tbaa !35
  br label %._crit_edge528

._crit_edge528:                                   ; preds = %._crit_edge528.loopexit, %.preheader519
  %i.jr = phi i32 [ %i.ok, %._crit_edge528.loopexit ], [ 0, %.preheader519 ]
  %i.js = phi i32 [ %.pre735, %._crit_edge528.loopexit ], [ %i.jj, %.preheader519 ] ; 2 uses
  %i.jt = add nuw nsw i64 %.0335529, 2            ; 2 uses
  %i.ju = zext i32 %i.js to i64
  %i.jv = icmp samesign ult i64 %i.jt, %i.ju
  br i1 %i.jv, label %.preheader519, label %.loopexit, !llvm.loop !75

bb.ak:                                            ; preds = %.lr.ph527, %bb.ao
  %.0334526 = phi i64 [ 0, %.lr.ph527 ], [ %i.oj, %bb.ao ] ; 9 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.0334526
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !9  ; 3 uses
  %i.jy = and i32 %i.jx, 255
  %i.jz = uitofp nneg i32 %i.jy to float
  %i.ka = lshr i32 %i.jx, 8
  %i.kb = and i32 %i.ka, 255
  %i.kc = uitofp nneg i32 %i.kb to float
  %i.kd = lshr i32 %i.jx, 16
  %i.ke = and i32 %i.kd, 255
  %i.kf = uitofp nneg i32 %i.ke to float
  %i.kg = or disjoint i64 %.0334526, 1            ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !9  ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.0334526
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9  ; 3 uses
  %i.kl = and i32 %i.kk, 255
  %i.km = uitofp nneg i32 %i.kl to float
  %i.kn = lshr i32 %i.kk, 8
  %i.ko = and i32 %i.kn, 255
  %i.kp = uitofp nneg i32 %i.ko to float
  %i.kq = lshr i32 %i.kk, 16
  %i.kr = and i32 %i.kq, 255
  %i.ks = uitofp nneg i32 %i.kr to float
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kg
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !9  ; 3 uses
  %i.kv = and i32 %i.ku, 255
  %i.kw = uitofp nneg i32 %i.kv to float
  %i.kx = lshr i32 %i.ku, 8
  %i.ky = and i32 %i.kx, 255
  %i.kz = uitofp nneg i32 %i.ky to float
  %i.la = lshr i32 %i.ku, 16
  %i.lb = and i32 %i.la, 255
  %i.lc = uitofp nneg i32 %i.lb to float
  %i.ld = fdiv contract float %i.jz, 2.550000e+02
  %i.le = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lf = fdiv contract float %i.kc, 2.550000e+02
  %.sroa.0.4.vec.insert574 = insertelement <2 x float> %i.le, float %i.lf, i64 1
  %i.lg = fdiv contract float %i.kf, 2.550000e+02
  %i.lh = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0.4.vec.insert574, float %i.lg)
          to label %bb.al unwind label %bb.ap, !callees !85 ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.li = lshr i32 %i.ki, 16
  %i.lj = and i32 %i.li, 255
  %i.lk = uitofp nneg i32 %i.lj to float
  %i.ll = lshr i32 %i.ki, 8
  %i.lm = and i32 %i.ll, 255
  %i.ln = uitofp nneg i32 %i.lm to float
  %i.lo = and i32 %i.ki, 255
  %i.lp = uitofp nneg i32 %i.lo to float
  %.fca.0.extract37 = extractvalue { <2 x float>, float } %i.lh, 0 ; 2 uses
  %.fca.1.extract38 = extractvalue { <2 x float>, float } %i.lh, 1
  %.sroa.0.0.vec.extract559 = extractelement <2 x float> %.fca.0.extract37, i64 0
  %i.lq = fmul contract float %.sroa.0.0.vec.extract559, 2.550000e+02
  %i.lr = fadd contract float %i.lq, 5.000000e-01 ; 3 uses
  %i.ls = fcmp contract olt float %i.lr, 0.000000e+00
  %.inv = fcmp contract oge float %i.lr, 2.550000e+02
  %spec.select806 = select i1 %.inv, float 2.550000e+02, float %i.lr
  %spec.select = fptoui float %spec.select806 to i8
  %i.lt = select i1 %i.ls, i8 0, i8 %spec.select
  %i.lu = fdiv contract float %i.lp, 2.550000e+02
  %i.lv = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lw = fdiv contract float %i.ln, 2.550000e+02
  %.sroa.27.16.vec.insert592 = insertelement <2 x float> %i.lv, float %i.lw, i64 1
  %i.lx = fdiv contract float %i.lk, 2.550000e+02
  %i.ly = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.27.16.vec.insert592, float %i.lx)
          to label %bb.am unwind label %bb.ap, !callees !85 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.fca.0.extract37.1 = extractvalue { <2 x float>, float } %i.ly, 0 ; 2 uses
  %.fca.1.extract38.1 = extractvalue { <2 x float>, float } %i.ly, 1
  %.sroa.27.12.vec.extract583 = extractelement <2 x float> %.fca.0.extract37.1, i64 0
  %i.lz = fmul contract float %.sroa.27.12.vec.extract583, 2.550000e+02
  %i.ma = fadd contract float %i.lz, 5.000000e-01 ; 3 uses
  %i.mb = fcmp contract olt float %i.ma, 0.000000e+00
  %.inv808 = fcmp contract oge float %i.ma, 2.550000e+02
  %spec.select803807 = select i1 %.inv808, float 2.550000e+02, float %i.ma
  %spec.select803 = fptoui float %spec.select803807 to i8
  %i.mc = select i1 %i.mb, i8 0, i8 %spec.select803
  %i.md = fdiv contract float %i.km, 2.550000e+02
  %i.me = insertelement <2 x float> poison, float %i.md, i64 0
  %i.mf = fdiv contract float %i.kp, 2.550000e+02
  %.sroa.45.28.vec.insert610 = insertelement <2 x float> %i.me, float %i.mf, i64 1
  %i.mg = fdiv contract float %i.ks, 2.550000e+02
  %i.mh = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.45.28.vec.insert610, float %i.mg)
          to label %bb.an unwind label %bb.ap, !callees !85 ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.mi = fdiv contract float %i.kw, 2.550000e+02
  %i.mj = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mk = fdiv contract float %i.kz, 2.550000e+02
  %.sroa.63.40.vec.insert628 = insertelement <2 x float> %i.mj, float %i.mk, i64 1
  %i.ml = fdiv contract float %i.lc, 2.550000e+02
  %i.mm = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.63.40.vec.insert628, float %i.ml)
          to label %bb.ao unwind label %bb.ap, !callees !85 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %.fca.0.extract37.2 = extractvalue { <2 x float>, float } %i.mh, 0 ; 2 uses
  %.fca.1.extract38.2 = extractvalue { <2 x float>, float } %i.mh, 1
  %.fca.0.extract37.3 = extractvalue { <2 x float>, float } %i.mm, 0 ; 2 uses
  %.fca.1.extract38.3 = extractvalue { <2 x float>, float } %i.mm, 1
  %i.mn = load i32, ptr %i.jf, align 8, !tbaa !9
  %i.mo = zext i32 %i.mn to i64
  %i.mp = mul nuw i64 %.0335529, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.pre728, i64 %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.0334526
  store i8 %i.lt, ptr %i.mr, align 1, !tbaa !24
  %i.ms = load i32, ptr %i.jf, align 8, !tbaa !9
  %i.mt = zext i32 %i.ms to i64
  %i.mu = mul nuw i64 %.0335529, %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %.pre728, i64 %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.0334526
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store i8 %i.mc, ptr %i.mx, align 1, !tbaa !24
  %i.my = load i32, ptr %i.jf, align 8, !tbaa !9
  %i.mz = zext i32 %i.my to i64
  %i.na = mul nuw i64 %i.jm, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %.pre728, i64 %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %.0334526
  %i.nd = insertelement <2 x float> %.fca.0.extract37, float %.fca.1.extract38, i64 0
  %i.ne = insertelement <2 x float> %.fca.0.extract37.1, float %.fca.1.extract38.1, i64 0
  %i.nf = fadd contract <2 x float> %i.nd, %i.ne
  %i.ng = insertelement <2 x float> %.fca.0.extract37.2, float %.fca.1.extract38.2, i64 0
  %i.nh = fadd contract <2 x float> %i.nf, %i.ng
  %i.ni = insertelement <2 x float> %.fca.0.extract37.3, float %.fca.1.extract38.3, i64 0
  %i.nj = fadd contract <2 x float> %i.nh, %i.ni
  %5 = fmul contract <2 x float> %i.nj, splat (float 2.500000e-01)
  %i.nk = fmul contract <2 x float> %5, splat (float 2.550000e+02)
  %6 = fadd contract <2 x float> %i.nk, splat (float 5.000000e-01)
  %7 = fadd contract <2 x float> %6, splat (float 1.280000e+02) ; 4 uses
  %8 = extractelement <2 x float> %7, i64 1
  %9 = fcmp contract olt float %8, 0.000000e+00
  %10 = fcmp contract ogt <2 x float> %7, splat (float 2.550000e+02)
  %11 = extractelement <2 x float> %7, i64 0
  %12 = fcmp contract olt float %11, 0.000000e+00
  %13 = shufflevector <2 x float> %.fca.0.extract37.2, <2 x float> %.fca.0.extract37.3, <2 x i32> <i32 0, i32 2>
  %14 = fmul contract <2 x float> %13, splat (float 2.550000e+02)
  %15 = fadd contract <2 x float> %14, splat (float 5.000000e-01) ; 3 uses
  %16 = fcmp contract oge <2 x float> %15, splat (float 2.550000e+02)
  %17 = shufflevector <2 x i1> %16, <2 x i1> %10, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %18 = shufflevector <2 x float> %7, <2 x float> %15, <4 x i32> <i32 2, i32 3, i32 1, i32 0>
  %i.nl = select <4 x i1> %17, <4 x float> splat (float 2.550000e+02), <4 x float> %18 ; 3 uses
  %19 = fcmp contract olt <2 x float> %15, zeroinitializer
  %20 = shufflevector <4 x float> %i.nl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %21 = fptoui <2 x float> %20 to <2 x i8>
  %i.nm = select <2 x i1> %19, <2 x i8> zeroinitializer, <2 x i8> %21 ; 2 uses
  %i.nn = extractelement <2 x i8> %i.nm, i64 0
  store i8 %i.nn, ptr %i.nc, align 1, !tbaa !24
  %i.no = load i32, ptr %i.jf, align 8, !tbaa !9
  %i.np = zext i32 %i.no to i64
  %i.nq = mul nuw i64 %i.jm, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %.pre728, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.0334526
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nu = extractelement <2 x i8> %i.nm, i64 1
  store i8 %i.nu, ptr %i.nt, align 1, !tbaa !24
  %i.nv = extractelement <4 x float> %i.nl, i64 2
  %22 = select contract i1 %9, float 0.000000e+00, float %i.nv
  %i.nw = extractelement <4 x float> %i.nl, i64 3
  %23 = select contract i1 %12, float 0.000000e+00, float %i.nw
  %24 = fptoui float %22 to i8
  %i.nx = load i32, ptr %i.jg, align 4, !tbaa !9
  %i.ny = zext i32 %i.nx to i64
  %i.nz = mul nuw nsw i64 %i.jp, %i.ny
  %i.oa = lshr exact i64 %.0334526, 1             ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.pre730, i64 %i.nz
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oa
  store i8 %24, ptr %i.oc, align 1, !tbaa !24
  %i.od = fptoui float %23 to i8
  %i.oe = load i32, ptr %i.jh, align 8, !tbaa !9
  %i.of = zext i32 %i.oe to i64
  %i.og = mul nuw nsw i64 %i.jp, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.pre732, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.oa
  store i8 %i.od, ptr %i.oi, align 1, !tbaa !24
  %i.oj = add nuw nsw i64 %.0334526, 2            ; 2 uses
  %i.ok = load i32, ptr %.phi.trans.insert758, align 8, !tbaa !36 ; 2 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = icmp samesign ult i64 %i.oj, %i.ol
  br i1 %i.om, label %bb.ak, label %._crit_edge528.loopexit, !llvm.loop !76

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.ag
  br i1 %i.ip, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  %i.oo = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc397 unwind label %bb.at ; 13 uses

.noexc397:                                        ; preds = %bb.ar
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !43, !noalias !88
  %i.ou = load i32, ptr %i.or, align 8, !tbaa !44, !noalias !88
  %i.ov = load i32, ptr %i.oq, align 8, !tbaa !9, !noalias !88
  %i.ow = load i32, ptr %i.op, align 4, !tbaa !9, !noalias !88
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.oo, i32 noundef 6, i32 noundef %i.ot, i32 noundef %i.ou, i32 noundef 1, i32 noundef %i.ov, i32 noundef %i.ow, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414 unwind label %bb.as, !noalias !88

bb.as:                                            ; preds = %.noexc397
  %i.ox = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef 72) #39, !noalias !88
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414: ; preds = %.noexc397
  store ptr %i.oo, ptr %3, align 8, !tbaa !42
  %i.oy = ptrtoint ptr %i.oo to i64               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16
  %.phi.trans.insert716 = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %.pre717 = load ptr, ptr %.phi.trans.insert716, align 8, !tbaa !16
  %.phi.trans.insert718 = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %.pre719 = load ptr, ptr %.phi.trans.insert718, align 8, !tbaa !16
  %.phi.trans.insert720 = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %.pre721 = load ptr, ptr %.phi.trans.insert720, align 8, !tbaa !16
  %.phi.trans.insert722 = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  %.pre723 = load i32, ptr %.phi.trans.insert722, align 4, !tbaa !35 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oo, i64 20
  %.not539 = icmp eq i32 %.pre723, 0
  br i1 %.not539, label %.loopexit, label %.preheader521.lr.ph

.preheader521.lr.ph:                              ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit414
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !9
  %i.pc = zext i32 %i.pb to i64
  %.phi.trans.insert756 = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 2 uses
  %.pre757 = load i32, ptr %.phi.trans.insert756, align 8, !tbaa !36
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oo, i64 48
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oo, i64 52
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oo, i64 56
  br label %.preheader521

.preheader521:                                    ; preds = %.preheader521.lr.ph, %._crit_edge
  %i.pg = phi i32 [ %.pre757, %.preheader521.lr.ph ], [ %i.pl, %._crit_edge ]
  %i.ph = phi i32 [ %.pre723, %.preheader521.lr.ph ], [ %i.pm, %._crit_edge ]
  %.0329524 = phi i64 [ 0, %.preheader521.lr.ph ], [ %i.pn, %._crit_edge ] ; 5 uses
  %.not540 = icmp eq i32 %i.pg, 0
  br i1 %.not540, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader521
  %i.pi = mul nuw i64 %.0329524, %i.pc
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.pi
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.loopexit:                             ; preds = %bb.av
  %.pre724 = load i32, ptr %i.oz, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader521
  %i.pl = phi i32 [ %i.rs, %._crit_edge.loopexit ], [ 0, %.preheader521 ]
  %i.pm = phi i32 [ %.pre724, %._crit_edge.loopexit ], [ %i.ph, %.preheader521 ] ; 2 uses
  %i.pn = add nuw nsw i64 %.0329524, 1            ; 2 uses
  %i.po = zext i32 %i.pm to i64
  %i.pp = icmp samesign ult i64 %i.pn, %i.po
  br i1 %i.pp, label %.preheader521, label %.loopexit, !llvm.loop !79

bb.au:                                            ; preds = %.lr.ph, %bb.av
  %.0328523 = phi i64 [ 0, %.lr.ph ], [ %i.rr, %bb.av ] ; 5 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %.0328523
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !9  ; 3 uses
  %i.ps = and i32 %i.pr, 255
  %i.pt = uitofp nneg i32 %i.ps to float
  %i.pu = lshr i32 %i.pr, 8
  %i.pv = and i32 %i.pu, 255
  %i.pw = uitofp nneg i32 %i.pv to float
  %i.px = lshr i32 %i.pr, 16
  %i.py = and i32 %i.px, 255
  %i.pz = uitofp nneg i32 %i.py to float
  %i.qa = fdiv contract float %i.pt, 2.550000e+02
  %i.qb = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qc = fdiv contract float %i.pw, 2.550000e+02
  %.sroa.0443.4.vec.insert465 = insertelement <2 x float> %i.qb, float %i.qc, i64 1
  %i.qd = fdiv contract float %i.pz, 2.550000e+02
  %i.qe = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0443.4.vec.insert465, float %i.qd)
          to label %bb.av unwind label %bb.aw, !callees !85 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.qe, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.qe, 1
  %.sroa.0443.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.qf = fmul contract float %.sroa.0443.0.vec.extract, 2.550000e+02
  %i.qg = fadd contract float %i.qf, 5.000000e-01 ; 3 uses
  %i.qh = fcmp contract olt float %i.qg, 0.000000e+00
  %i.qi = fcmp contract ogt float %i.qg, 2.550000e+02
  %i.qj = select contract i1 %i.qi, float 2.550000e+02, float %i.qg
  %i.qk = select contract i1 %i.qh, float 0.000000e+00, float %i.qj
  %i.ql = fptoui float %i.qk to i8
  %i.qm = load i32, ptr %i.pd, align 8, !tbaa !9
  %i.qn = zext i32 %i.qm to i64
  %i.qo = mul nuw i64 %.0329524, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %.pre717, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.0328523
  store i8 %i.ql, ptr %i.qq, align 1, !tbaa !24
  %.sroa.0443.4.vec.extract459 = extractelement <2 x float> %.fca.0.extract, i64 1
  %i.qr = fmul contract float %.sroa.0443.4.vec.extract459, 2.550000e+02
  %i.qs = fadd contract float %i.qr, 5.000000e-01
  %i.qt = fadd contract float %i.qs, 1.280000e+02 ; 3 uses
  %i.qu = fmul contract float %.fca.1.extract, 2.550000e+02
  %i.qv = fadd contract float %i.qu, 5.000000e-01
  %i.qw = fadd contract float %i.qv, 1.280000e+02 ; 3 uses
  %i.qx = fcmp contract olt float %i.qt, 0.000000e+00
  %i.qy = fcmp contract ogt float %i.qt, 2.550000e+02
  %i.qz = select contract i1 %i.qy, float 2.550000e+02, float %i.qt
  %i.ra = select contract i1 %i.qx, float 0.000000e+00, float %i.qz
  %i.rb = fcmp contract olt float %i.qw, 0.000000e+00
  %i.rc = fcmp contract ogt float %i.qw, 2.550000e+02
  %i.rd = select contract i1 %i.rc, float 2.550000e+02, float %i.qw
  %i.re = select contract i1 %i.rb, float 0.000000e+00, float %i.rd
  %i.rf = fptoui float %i.ra to i8
  %i.rg = load i32, ptr %i.pe, align 4, !tbaa !9
  %i.rh = zext i32 %i.rg to i64
  %i.ri = mul nuw i64 %.0329524, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %.pre719, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %.0328523
  store i8 %i.rf, ptr %i.rk, align 1, !tbaa !24
  %i.rl = fptoui float %i.re to i8
  %i.rm = load i32, ptr %i.pf, align 8, !tbaa !9
  %i.rn = zext i32 %i.rm to i64
  %i.ro = mul nuw i64 %.0329524, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %.pre721, i64 %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.0328523
  store i8 %i.rl, ptr %i.rq, align 1, !tbaa !24
  %i.rr = add nuw nsw i64 %.0328523, 1            ; 2 uses
  %i.rs = load i32, ptr %.phi.trans.insert756, align 8, !tbaa !36 ; 2 uses
  %i.rt = zext i32 %i.rs to i64
  %i.ru = icmp samesign ult i64 %i.rr, %i.rt
  br i1 %i.ru, label %bb.au, label %._crit_edge.loopexit, !llvm.loop !80

bb.aw:                                            ; preds = %bb.au
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %bb.aq
  %switch = icmp ult i32 %i.a, 2
  br i1 %switch, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.rw = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc418 unwind label %bb.ba ; 6 uses

.noexc418:                                        ; preds = %bb.ay
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.sc = load i32, ptr %1, align 8, !tbaa !45, !noalias !89
  %i.sd = load i32, ptr %i.sb, align 4, !tbaa !43, !noalias !89
  %i.se = load i32, ptr %i.sa, align 8, !tbaa !44, !noalias !89
  %i.sf = load i32, ptr %i.rz, align 4, !tbaa !46, !noalias !89
  %i.sg = load i32, ptr %i.ry, align 8, !tbaa !9, !noalias !89
  %i.sh = load i32, ptr %i.rx, align 4, !tbaa !9, !noalias !89
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.rw, i32 noundef %i.sc, i32 noundef %i.sd, i32 noundef %i.se, i32 noundef %i.sf, i32 noundef %i.sg, i32 noundef %i.sh, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit434 unwind label %bb.az, !noalias !89

bb.az:                                            ; preds = %.noexc418
  %i.si = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef 72) #39, !noalias !89
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit434: ; preds = %.noexc418
end_hunk_2
