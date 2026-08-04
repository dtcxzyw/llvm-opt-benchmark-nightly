inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@TIFFCIELabToRGBInit:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bv, ptr %i.bw, align 4, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cb, ptr %i.cc, align 4, !tbaa !13
  ret i32 0
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @TIFFYCbCrtoRGB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.umin.i32(i32 %1, i32 255)
  %i.b = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %i.c = tail call i32 @llvm.umin.i32(i32 %i.b, i32 255)
  %i.d = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %i.e = tail call i32 @llvm.umin.i32(i32 %i.d, i32 255)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = zext nneg i32 %i.e to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, %i.j
  %i.q = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.q, i32 255)
  store i32 %i.r, ptr %4, align 4, !tbaa !3
  %i.s = load i32, ptr %i.i, align 4, !tbaa !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = zext nneg i32 %i.c to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.m
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add nsw i32 %i.ab, %i.x
  %i.ad = ashr i32 %i.ac, 16
  %i.ae = add nsw i32 %i.ad, %i.s
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  store i32 %i.ag, ptr %5, align 4, !tbaa !3
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.v
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, %i.ah
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 255)
  store i32 %i.ao, ptr %6, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @TIFFYCbCrToRGBInit(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_TIFFmemset(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 256) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.b, align 8, !tbaa !37
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.d, align 8, !tbaa !37
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.f, align 8, !tbaa !37
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.h, align 8, !tbaa !37
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.j, align 8, !tbaa !37
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.l, align 8, !tbaa !37
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 512
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.n, align 8, !tbaa !37
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.o, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.p, align 8, !tbaa !37
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.q, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @_TIFFmemset(ptr noundef nonnull %i.r, i32 noundef 255, i64 noundef 512) #6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4144 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5168 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = load float, ptr %1, align 4, !tbaa !11  ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float -2.000000e+00, float 2.000000e+00) ; 4 uses
  %i.ae = fcmp ult float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.b, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.af = fcmp ogt float %i.ad, 2.000000e+00
  %i.ag = select i1 %i.af, float 2.000000e+00, float %i.ad
  %i.ah = fmul nnan float %i.ag, 6.553600e+04
  %i.ai = fpext float %i.ah to double
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = fptosi double %i.aj to i32
  br label %bb.b

bb.b:                                             ; preds = %vector.ph, %bb.a
  %i.al = phi i32 [ %i.ak, %bb.a ], [ 0, %vector.ph ]
  %i.am = fmul float %i.ac, %i.ad
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = fdiv float %i.am, %i.ao                 ; 3 uses
  %i.aq = fcmp ult float %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = fcmp ogt float %i.ap, 2.000000e+00
  %i.as = select i1 %i.ar, float 2.000000e+00, float %i.ap
  %i.at = fmul nnan float %i.as, 6.553600e+04
  %i.au = fpext float %i.at to double
  %i.av = fadd double %i.au, 5.000000e-01
  %i.aw = fptosi double %i.av to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ax = phi i32 [ %i.aw, %bb.c ], [ 0, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !11 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float -2.000000e+00, float 2.000000e+00) ; 4 uses
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = fcmp ogt float %i.ba, 2.000000e+00
  %i.bd = select i1 %i.bc, float 2.000000e+00, float %i.ba
  %i.be = fmul nnan float %i.bd, 6.553600e+04
  %i.bf = fpext float %i.be to double
  %i.bg = fadd double %i.bf, 5.000000e-01
  %i.bh = fptosi double %i.bg to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bi = phi i32 [ %i.bh, %bb.e ], [ 0, %bb.d ]
  %i.bj = fmul float %i.az, %i.ba
  %i.bk = fdiv float %i.bj, %i.ao                 ; 3 uses
  %i.bl = fcmp ult float %i.bk, 0.000000e+00
  br i1 %i.bl, label %vector.ph101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fcmp ogt float %i.bk, 2.000000e+00
  %i.bn = select i1 %i.bm, float 2.000000e+00, float %i.bk
  %i.bo = fmul nnan float %i.bn, 6.553600e+04
  %i.bp = fpext float %i.bo to double
  %i.bq = fadd double %i.bp, 5.000000e-01
  %i.br = fptosi double %i.bq to i32
  br label %vector.ph101

vector.ph101:                                     ; preds = %bb.g, %bb.f
  %i.bs = phi i32 [ %i.br, %bb.g ], [ 0, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !11
  %i.bv = load float, ptr %2, align 4, !tbaa !11  ; 2 uses
  %i.bw = fsub float %i.bu, %i.bv                 ; 2 uses
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = select i1 %i.bx, float %i.bw, float 1.000000e+00
  %i.bz = fptosi float %i.bv to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !11
  %i.cc = fadd <2 x float> %i.cb, splat (float -1.280000e+02) ; 3 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0
  %i.ce = fptosi float %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !11
  %i.ch = fadd <2 x float> %i.cg, splat (float -1.280000e+02) ; 3 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %3 = shufflevector <2 x float> %i.cc, <2 x float> %i.ch, <2 x i32> <i32 1, i32 3>
  %4 = shufflevector <2 x float> %i.cc, <2 x float> %i.ch, <2 x i32> <i32 0, i32 2>
  %5 = fsub <2 x float> %3, %4                    ; 2 uses
  %6 = fcmp une <2 x float> %5, zeroinitializer
  %7 = select <2 x i1> %6, <2 x float> %5, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.cj = fptosi float %i.ci to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat105 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert106 = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat107 = shufflevector <4 x i32> %broadcast.splatinsert106, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat109 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat115 = shufflevector <4 x i32> %broadcast.splatinsert114, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat119 = shufflevector <4 x i32> %broadcast.splatinsert118, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op = sub <4 x i32> splat (i32 128), %broadcast.splat111
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph101
  %index121 = phi i64 [ 0, %vector.ph101 ], [ %index.next123, %vector.body120 ] ; 6 uses
  %vec.ind122 = phi <4 x i32> [ <i32 -128, i32 -127, i32 -126, i32 -125>, %vector.ph101 ], [ %vec.ind.next124, %vector.body120 ] ; 4 uses
  %i.ck = sub nsw <4 x i32> %vec.ind122, %broadcast.splat103
  %i.cl = sitofp <4 x i32> %i.ck to <4 x float>
  %i.cm = fmul nnan <4 x float> %i.cl, splat (float 1.270000e+02)
  %i.cn = fdiv <4 x float> %i.cm, %broadcast.splat105 ; 3 uses
  %i.co = fcmp olt <4 x float> %i.cn, splat (float -4.096000e+03)
  %i.cp = fcmp ogt <4 x float> %i.cn, splat (float 4.096000e+03)
  %i.cq = select <4 x i1> %i.cp, <4 x float> splat (float 4.096000e+03), <4 x float> %i.cn
  %i.cr = select <4 x i1> %i.co, <4 x float> splat (float -4.096000e+03), <4 x float> %i.cq
  %i.cs = fptosi <4 x float> %i.cr to <4 x i32>   ; 2 uses
  %i.ct = sub nsw <4 x i32> %vec.ind122, %broadcast.splat107
  %i.cu = sitofp <4 x i32> %i.ct to <4 x float>
  %i.cv = fmul nnan <4 x float> %i.cu, splat (float 1.270000e+02)
  %i.cw = fdiv <4 x float> %i.cv, %broadcast.splat109 ; 3 uses
  %i.cx = fcmp olt <4 x float> %i.cw, splat (float -4.096000e+03)
  %i.cy = fcmp ogt <4 x float> %i.cw, splat (float 4.096000e+03)
  %i.cz = select <4 x i1> %i.cy, <4 x float> splat (float 4.096000e+03), <4 x float> %i.cw
  %i.da = select <4 x i1> %i.cx, <4 x float> splat (float -4.096000e+03), <4 x float> %i.cz
  %i.db = fptosi <4 x float> %i.da to <4 x i32>   ; 2 uses
  %i.dc = mul nsw <4 x i32> %broadcast.splat115, %i.cs
  %i.dd = add nsw <4 x i32> %i.dc, splat (i32 32768)
  %i.de = ashr <4 x i32> %i.dd, splat (i32 16)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index121
  store <4 x i32> %i.de, ptr %i.df, align 4, !tbaa !3
  %i.dg = mul nsw <4 x i32> %broadcast.splat117, %i.db
  %i.dh = add nsw <4 x i32> %i.dg, splat (i32 32768)
  %i.di = ashr <4 x i32> %i.dh, splat (i32 16)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index121
  store <4 x i32> %i.di, ptr %i.dj, align 4, !tbaa !3
  %i.dk = mul <4 x i32> %broadcast.splat119, %i.cs
  %i.dl = sub <4 x i32> zeroinitializer, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index121
  store <4 x i32> %i.dl, ptr %i.dm, align 4, !tbaa !3
  %i.dn = mul <4 x i32> %broadcast.splat, %i.db
  %i.do = sub <4 x i32> splat (i32 32768), %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index121
  store <4 x i32> %i.do, ptr %i.dp, align 4, !tbaa !3
  %.reass = add <4 x i32> %vec.ind122, %invariant.op
  %i.dq = sitofp <4 x i32> %.reass to <4 x float>
  %i.dr = fmul nnan <4 x float> %i.dq, splat (float 2.550000e+02)
  %i.ds = fdiv <4 x float> %i.dr, %broadcast.splat113 ; 3 uses
  %i.dt = fcmp olt <4 x float> %i.ds, splat (float -4.096000e+03)
  %i.du = fcmp ogt <4 x float> %i.ds, splat (float 4.096000e+03)
  %i.dv = select <4 x i1> %i.du, <4 x float> splat (float 4.096000e+03), <4 x float> %i.ds
  %i.dw = select <4 x i1> %i.dt, <4 x float> splat (float -4.096000e+03), <4 x float> %i.dv
  %i.dx = fptosi <4 x float> %i.dw to <4 x i32>
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index121
  store <4 x i32> %i.dx, ptr %i.dy, align 4, !tbaa !3
  %index.next123 = add nuw i64 %index121, 4       ; 2 uses
  %vec.ind.next124 = add nsw <4 x i32> %vec.ind122, splat (i32 4)
  %i.dz = icmp eq i64 %index.next123, 256
  br i1 %i.dz, label %middle.block125, label %vector.body120, !llvm.loop !38

middle.block125:                                  ; preds = %vector.body120
  ret i32 0
}

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 20}
!8 = !{!"", !4, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !10, i64 28, !5, i64 112, !5, i64 6116, !5, i64 12120}
!9 = !{!"float", !5, i64 0}
!10 = !{!"", !5, i64 0, !9, i64 36, !9, i64 40, !9, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!11 = !{!9, !9, i64 0}
!12 = !{!8, !9, i64 16}
!13 = !{!8, !9, i64 24}
!14 = !{!8, !9, i64 96}
!15 = !{!8, !9, i64 64}
!16 = !{!8, !9, i64 4}
!17 = !{!8, !4, i64 0}
!18 = !{!8, !4, i64 76}
!19 = !{!8, !4, i64 80}
!20 = !{!8, !4, i64 84}
!21 = !{!8, !9, i64 100}
!22 = !{!8, !9, i64 88}
!23 = !{!8, !9, i64 104}
!24 = !{!8, !9, i64 8}
!25 = !{!8, !9, i64 108}
!26 = !{!8, !9, i64 12}
!27 = !{!28, !31, i64 40}
!28 = !{!"", !29, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40}
!29 = !{!"p1 omnipotent char", !30, i64 0}
!30 = !{!"any pointer", !5, i64 0}
!31 = !{!"p1 int", !30, i64 0}
!32 = !{!28, !31, i64 8}
!33 = !{!28, !31, i64 32}
!34 = !{!28, !31, i64 24}
!35 = !{!28, !31, i64 16}
!36 = !{!28, !29, i64 0}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
