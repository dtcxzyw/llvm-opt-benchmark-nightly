inline.NumInlined: 221
inline.NumDeleted: 20
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.y = select i1 %i.x, i16 %i.t, i16 %i.e
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !14
  %i.ac = fcmp olt float %i.r, %i.m
  %i.ad = select i1 %i.ac, i16 %i.o, i16 %i.j     ; 2 uses
  %i.ae = zext i16 %i.ad to i64
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14
  %i.am = load ptr, ptr %2, align 8, !tbaa !23    ; 3 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !20 ; 3 uses
  %i.ao = zext i16 %i.an to i64
end_hunk_1
begin_hunk_2_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.bh = select i1 %i.bg, i16 %i.bc, i16 %i.an
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !14
  %i.bl = fcmp olt float %i.ba, %i.av
  %i.bm = select i1 %i.bl, i16 %i.ax, i16 %i.as   ; 2 uses
  %i.bn = zext i16 %i.bm to i64
end_hunk_2
begin_hunk_3_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !14
  %4 = insertelement <2 x float> poison, float %i.ab, i64 0
  %5 = insertelement <2 x float> %4, float %i.bk, i64 1 ; 2 uses
  %6 = fcmp ogt <2 x float> %5, zeroinitializer
  %7 = insertelement <2 x float> poison, float %i.al, i64 0
  %8 = insertelement <2 x float> %7, float %i.bu, i64 1
  %9 = fdiv <2 x float> %8, %5
  %10 = fsub <2 x float> splat (float 1.000000e+00), %9
  %11 = select <2 x i1> %6, <2 x float> %10, <2 x float> zeroinitializer ; 3 uses
  %12 = extractelement <2 x float> %11, i64 1     ; 2 uses
  %13 = extractelement <2 x float> %11, i64 0     ; 2 uses
  %i.bv = add nsw i32 %1, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_3
begin_hunk_4_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
bb.b:                                             ; preds = %.lr.ph, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit
  %.pre = phi ptr [ %i.c, %.lr.ph ], [ %.pre65, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ] ; 31 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ] ; 5 uses
  %.062 = phi float [ %12, %.lr.ph ], [ %24, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.03861 = phi float [ %12, %.lr.ph ], [ %.062, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.03960 = phi float [ %13, %.lr.ph ], [ %25, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %.04159 = phi float [ %13, %.lr.ph ], [ %.03960, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %14 = phi <2 x float> [ %11, %.lr.ph ], [ %23, %_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca12_GLOBAL__N_110desaturateERKNS_4RgbaEfRKN9Imath_3_14Vec3IfEERS2_.exit ]
  %i.ca = icmp samesign ult i64 %indvars.iv, %i.bz
  br i1 %i.ca, label %bb.c, label %bb.d

end_hunk_4
begin_hunk_5_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.cy = select i1 %i.cx, i16 %i.ct, i16 %i.cp
  %i.cz = zext i16 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !14
  %i.dc = fcmp olt float %i.cn, %i.cj
  %i.dd = select i1 %i.dc, i16 %i.ck, i16 %i.cg   ; 2 uses
  %i.de = zext i16 %i.dd to i64
end_hunk_5
begin_hunk_6_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.dj = zext i16 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !14
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.cc ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
end_hunk_6
begin_hunk_7_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.ei = select i1 %i.eh, i16 %i.ed, i16 %i.dz
  %i.ej = zext i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !14
  %i.em = fcmp olt float %i.dx, %i.dt
  %i.en = select i1 %i.em, i16 %i.du, i16 %i.dq   ; 2 uses
  %i.eo = zext i16 %i.en to i64
end_hunk_7
begin_hunk_8_@_ZN27OpenImageIO_v3_1_Imf__3_3_57RgbaYca13fixSaturationERKN9Imath_3_14Vec3IfEEiPKPKNS_4RgbaEPS6_:bb.a
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !14
  %15 = insertelement <2 x float> poison, float %i.el, i64 0
  %16 = insertelement <2 x float> %15, float %i.db, i64 1 ; 2 uses
  %17 = fcmp ogt <2 x float> %16, zeroinitializer
  %18 = insertelement <2 x float> poison, float %i.ev, i64 0
  %19 = insertelement <2 x float> %18, float %i.dl, i64 1
  %20 = fdiv <2 x float> %19, %16
  %21 = fsub <2 x float> splat (float 1.000000e+00), %20
  %22 = select <2 x i1> %17, <2 x float> %21, <2 x float> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %23 = phi <2 x float> [ %22, %bb.c ], [ %14, %bb.b ] ; 3 uses
  %24 = extractelement <2 x float> %23, i64 1     ; 2 uses
  %25 = extractelement <2 x float> %23, i64 0     ; 2 uses
  %i.ew = fadd float %.03861, %24
  %i.ex = fadd float %.04159, %i.ew
  %i.ey = fadd float %25, %i.ex
  %i.ez = fmul float %i.ey, 2.500000e-01          ; 2 uses
  %i.fa = fcmp olt float %i.ez, 1.000000e+00
  %.sroa.speculated54 = select i1 %i.fa, float %i.ez, float 1.000000e+00 ; 2 uses
end_hunk_8
