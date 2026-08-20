inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator19getSmoothLightFrameEv:.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.a:                                             ; preds = %bb.d
  ret void

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.j = load i16, ptr %i.b, align 8, !tbaa !41
  %i.k = load i16, ptr %i.c, align 8, !tbaa !41
  %i.l = add i16 %i.k, %i.j
  %i.m = load i16, ptr %i.d, align 2, !tbaa !42
  %i.n = load i16, ptr %i.e, align 2, !tbaa !42
  %i.o = add i16 %i.n, %i.m
  %i.p = load i16, ptr %i.f, align 4, !tbaa !43
  %i.q = load i16, ptr %i.g, align 4, !tbaa !43
  %i.r = add i16 %i.q, %i.p
  %.sroa.3.0.insert.ext.i = zext i16 %i.r to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.o to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.l to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  %i.s = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %indvars.iv
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = call noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %i.s, ptr noundef %i.t) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.u to i8 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.u, 8
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.v = uitofp nsz i8 %.sroa.0.0.extract.trunc to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !44
  %i.x = uitofp nsz i8 %.sroa.5.0.extract.trunc to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !44
  %i.z = icmp eq i8 %.sroa.0.0.extract.trunc, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.aa, align 1, !tbaa !103
  %i.ab = and i64 %indvars.iv, 4294967295
  %i.ac = xor i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 1, ptr %i.ad, align 1, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !116
}

declare noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6), ptr noundef nonnull align 2 dereferenceable(6), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = fdiv nsz float %i.b, 1.000000e+01
  %i.h = fpext nsz float %i.g to double
  %i.i = fadd nsz double %i.h, 5.000000e-01       ; 2 uses
  %i.j = fcmp nsz olt double %i.i, -1.000000e+00
  %i.k = select i1 %i.j, double -1.000000e+00, double %i.i ; 2 uses
  %i.l = fcmp nsz olt double %i.k, 2.000000e+00
  %i.m = select i1 %i.l, double %i.k, double 2.000000e+00
  %i.n = fptrunc nsz double %i.m to float         ; 5 uses
  %i.o = fsub nsz float 1.000000e+00, %i.n        ; 4 uses
  %i.p = load <2 x float>, ptr %1, align 4, !tbaa !44
  %i.q = fdiv nsz <2 x float> %i.p, splat (float 1.000000e+01)
  %i.r = fpext <2 x float> %i.q to <2 x double>
  %i.s = fadd nsz <2 x double> %i.r, splat (double 5.000000e-01) ; 2 uses
  %i.t = fcmp nsz olt <2 x double> %i.s, splat (double -1.000000e+00)
  %i.u = select <2 x i1> %i.t, <2 x double> splat (double -1.000000e+00), <2 x double> %i.s ; 2 uses
  %i.v = fcmp nsz olt <2 x double> %i.u, splat (double 2.000000e+00)
  %i.w = select <2 x i1> %i.v, <2 x double> %i.u, <2 x double> splat (double 2.000000e+00)
  %i.x = fptrunc <2 x double> %i.w to <2 x float> ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0   ; 3 uses
  %i.z = extractelement <2 x float> %i.x, i64 1   ; 3 uses
  %i.aa = fmul nsz float %i.y, %i.z               ; 2 uses
  %i.ab = fmul nsz float %i.o, %i.aa              ; 2 uses
  %i.ac = fsub nsz float 1.000000e+00, %i.z       ; 2 uses
  %i.ad = fmul nsz float %i.ac, %i.y              ; 2 uses
  %i.ae = fmul nsz float %i.ad, %i.n              ; 2 uses
  %i.af = fmul nsz float %i.o, %i.ad              ; 2 uses
  %i.ag = fsub nsz float 1.000000e+00, %i.y       ; 2 uses
  %i.ah = fmul nsz float %i.ag, %i.z              ; 2 uses
  %i.ai = fmul nsz float %i.ah, %i.n              ; 2 uses
  %i.aj = fmul nsz float %i.o, %i.ah              ; 2 uses
  %i.ak = fmul nsz float %i.ag, %i.ac             ; 2 uses
  %i.al = fmul nsz float %i.ak, %i.n              ; 2 uses
  %i.am = fmul nsz float %i.o, %i.ak              ; 2 uses
  %i.an = fmul nsz float %i.aa, %i.n              ; 2 uses
  %i.ao = load <16 x float>, ptr %i.c, align 8    ; 10 uses
  %.pre68 = load float, ptr %.phi.trans.insert67, align 4, !tbaa !44
  %i.ap = load float, ptr %i.e, align 4
  %i.aq = load <4 x i8>, ptr %i.d, align 8, !tbaa !103
  %i.ar = trunc <4 x i8> %i.aq to <4 x i1>
  %i.as = load <4 x float>, ptr %.phi.trans.insert58, align 8
  %i.at = shufflevector <16 x float> %i.ao, <16 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.ap, i64 1
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.aw = select <4 x i1> %i.ar, <4 x float> splat (float 2.550000e+02), <4 x float> %i.av ; 4 uses
  %i.ax = load <4 x i8>, ptr %i.f, align 4, !tbaa !103
  %i.ay = trunc <4 x i8> %i.ax to <4 x i1>
  %i.az = load <4 x float>, ptr %.phi.trans.insert70, align 8
  %i.ba = shufflevector <16 x float> %i.ao, <16 x float> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.bb = insertelement <4 x float> %i.ba, float %.pre68, i64 1
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bd = select <4 x i1> %i.ay, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bc ; 4 uses
  %i.be = extractelement <4 x float> %i.aw, i64 0
  %i.bf = fmul nsz float %i.am, %i.be
  %i.bg = extractelement <4 x float> %i.aw, i64 1
  %i.bh = tail call nsz float @llvm.fmuladd.f32(float %i.al, float %i.bg, float %i.bf)
  %i.bi = extractelement <4 x float> %i.aw, i64 2
  %i.bj = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %i.bi, float %i.bh)
  %i.bk = extractelement <4 x float> %i.aw, i64 3
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.ai, float %i.bk, float %i.bj)
  %i.bm = extractelement <4 x float> %i.bd, i64 0
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.bm, float %i.bl)
  %i.bo = extractelement <4 x float> %i.bd, i64 1
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bo, float %i.bn)
  %i.bq = extractelement <4 x float> %i.bd, i64 2
  %i.br = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.bq, float %i.bp)
  %i.bs = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.bv = fmul nsz <2 x float> %i.bt, %i.bu
  %i.bw = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 1, i32 9>
  %i.bz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.by, <2 x float> %i.bv)
  %i.ca = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.bz)
  %i.ce = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.cd)
  %i.ci = insertelement <2 x float> poison, float %i.af, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 4, i32 12>
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.ck, <2 x float> %i.ch)
  %i.cm = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 5, i32 13>
  %i.cp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.co, <2 x float> %i.cl)
  %i.cq = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 6, i32 14>
  %i.ct = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.cs, <2 x float> %i.cp)
  %i.cu = insertelement <2 x float> poison, float %i.an, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <16 x float> %i.ao, <16 x float> poison, <2 x i32> <i32 7, i32 15>
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.ct)
  %i.cy = extractelement <4 x float> %i.bd, i64 3
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.cy, float %i.br)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cx, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cz, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare i32 @_Z12encode_lightth(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 3 uses
  %i.a = tail call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.a, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !118 ; 2 uses
  %i.d = fcmp nsz olt float %i.c, 0.000000e+00
  %i.e = select nsz i1 %i.d, float 0.000000e+00, float %i.c ; 2 uses
  %i.f = fsub nsz float 1.000000e+00, %i.e
  %.sroa.09.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.g = fmul nsz float %.fca.1.extract, %i.e
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %.sroa.09.0.vec.extract, float %i.g)
  %4 = insertelement <2 x float> %.fca.0.extract, float %i.h, i64 0
  %5 = fadd nsz <2 x float> %4, splat (float 5.000000e-01)
  %6 = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %5)
  %7 = fptosi <2 x float> %6 to <2 x i32>
  %8 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %7, <2 x i32> zeroinitializer)
  %9 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %8, <2 x i32> splat (i32 255))
  %10 = trunc nuw nsw <2 x i32> %9 to <2 x i16>   ; 2 uses
  %11 = extractelement <2 x i16> %10, i64 1
  %.sroa.2.0.insert.shift.i = shl nuw i16 %11, 8
  %12 = extractelement <2 x i16> %10, i64 0
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1410
  %i.l = load i8, ptr %i.k, align 2, !tbaa !113
  %i.m = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i, i8 noundef zeroext %i.l) ; 2 uses
  store i32 %i.m, ptr %3, align 4
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1410
  %i.p = load i8, ptr %i.o, align 2, !tbaa !113
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %3, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
  %.pre = load i32, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.m, %bb.a ]
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN21MapblockMeshGenerator27generateCuboidTextureCoordsERKN4core8aabbox3dIfEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !44
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.d = fdiv nsz <2 x float> %i.c, splat (float 1.000000e+01)
  %i.e = fadd nsz <2 x float> %i.d, splat (float 5.000000e-01) ; 3 uses
  %i.f = fsub nsz <2 x float> splat (float 1.000000e+00), %i.e ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load <5 x float>, ptr %i.a, align 4, !tbaa !44
  %i.h = shufflevector <5 x float> %i.g, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.i = fdiv nsz <4 x float> %i.h, splat (float 1.000000e+01)
  %i.j = fadd nsz <4 x float> %i.i, splat (float 5.000000e-01) ; 3 uses
  %i.k = fsub nsz <4 x float> splat (float 1.000000e+00), %i.j ; 5 uses
  %i.l = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  store float %i.l, ptr %1, align 4, !tbaa !44
  %i.m = extractelement <4 x float> %i.k, i64 3
  store float %i.m, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !44
  %i.n = extractelement <2 x float> %i.e, i64 1   ; 3 uses
  store float %i.n, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44
  %i.o = extractelement <4 x float> %i.k, i64 1
  store float %i.o, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !44
  store float %i.l, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !44
  %i.p = extractelement <4 x float> %i.j, i64 1   ; 2 uses
  store float %i.p, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44
  store float %i.n, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !44
  %i.q = extractelement <4 x float> %i.j, i64 3   ; 2 uses
  store float %i.q, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !44
  store float %i.p, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !44
  %i.r = extractelement <4 x float> %i.k, i64 2   ; 3 uses
  store float %i.r, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !44
  store float %i.q, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !44
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x float> %i.s, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !44
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = extractelement <4 x float> %i.k, i64 0   ; 3 uses
  store float %i.t, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = extractelement <2 x float> %i.f, i64 1
  store float %i.u, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !44
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.r, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !44
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = extractelement <2 x float> %i.f, i64 0
  store float %i.v, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !44
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.t, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !44
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.l, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !44
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.n, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.t, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEERK8TileSpecPKfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef readonly byval(%"class.core::aabbox3d") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr nofree noundef readonly captures(address_is_null) %3, i8 noundef zeroext %4) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 %1, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %3, i8 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef byval(%"class.core::aabbox3d") align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i8 noundef zeroext %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %"class.video::SColor", align 4     ; 30 uses
  %7 = alloca %"struct.std::array.115", align 4   ; 45 uses
  %8 = alloca %"struct.std::array.115", align 4   ; 4 uses
  %9 = alloca [8 x %struct.LightInfo], align 16   ; 22 uses
  %10 = alloca %"class.core::vector3d.0", align 8 ; 34 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load float, ptr %i.c, align 8, !tbaa !119 ; 3 uses
  %i.e = fadd nsz float %i.d, -1.000000e+00
  %i.f = tail call nsz noundef float @llvm.fabs.f32(float %i.e)
  %i.g = fcmp nsz ogt float %i.f, 1.000000e-03    ; 2 uses
  %i.h = load float, ptr %1, align 8, !tbaa !120  ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !44 ; 5 uses
  %i.k = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.l = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !44 ; 6 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  %i.q = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !121 ; 5 uses
  %i.t = shufflevector <2 x float> %i.j, <2 x float> %i.o, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.u = insertelement <4 x float> %i.t, float %i.h, i64 0 ; 2 uses
  %i.v = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.s, i64 1 ; 2 uses
  %i.x = insertelement <4 x float> poison, float %i.d, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul nsz <4 x float> %i.y, %i.u
  %i.aa = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul nsz <2 x float> %i.ab, %i.w
  %i.ad = select i1 %i.g, <4 x float> %i.z, <4 x float> %i.u
  %i.ae = select i1 %i.g, <2 x float> %i.ac, <2 x float> %i.w
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load <3 x float>, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ai = fadd nsz <4 x float> %i.ah, %i.ad
  store <4 x float> %i.ai, ptr %1, align 8, !tbaa !44
  %i.aj = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ak = fadd nsz <2 x float> %i.aj, %i.ae
  store <2 x float> %i.ak, ptr %i.n, align 8, !tbaa !44
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 65
  %i.an = load i8, ptr %i.am, align 1, !tbaa !114, !range !106, !noundef !107
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store float %i.h, ptr %10, align 8, !tbaa !122
  store <2 x float> %i.j, ptr %i.ap, align 4, !tbaa !44
  %i.ar = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ar, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ar, 1
  store <2 x float> %.fca.0.extract, ptr %9, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store float %i.h, ptr %10, align 8, !tbaa !122
  store float %i.l, ptr %i.ap, align 4, !tbaa !118
  store float %i.s, ptr %i.aq, align 8, !tbaa !45
  %i.as = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 2 uses
  %.fca.0.extract.1 = extractvalue { <2 x float>, float } %i.as, 0
  %.fca.1.extract.1 = extractvalue { <2 x float>, float } %i.as, 1
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 12
  store <2 x float> %.fca.0.extract.1, ptr %i.at, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store float %.fca.1.extract.1, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store float %i.h, ptr %10, align 8, !tbaa !122
  store float %i.p, ptr %i.ap, align 4, !tbaa !118
  store float %i.k, ptr %i.aq, align 8, !tbaa !45
  %i.au = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 2 uses
  %.fca.0.extract.2 = extractvalue { <2 x float>, float } %i.au, 0
  %.fca.1.extract.2 = extractvalue { <2 x float>, float } %i.au, 1
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 24
  store <2 x float> %.fca.0.extract.2, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store float %.fca.1.extract.2, ptr %.sroa.4.0..sroa_idx.2, align 16, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store float %i.h, ptr %10, align 8, !tbaa !122
  store float %i.p, ptr %i.ap, align 4, !tbaa !118
  store float %i.s, ptr %i.aq, align 8, !tbaa !45
  %i.aw = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %10) ; 2 uses
  %.fca.0.extract.3 = extractvalue { <2 x float>, float } %i.aw, 0
  %.fca.1.extract.3 = extractvalue { <2 x float>, float } %i.aw, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 36
end_hunk_0
begin_hunk_1_@_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb:bb.a
  %i.bd = fpext nsz float %i.bc to double
  %i.be = fmul nsz double %i.bd, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.be) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !122 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !118
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !45 ; 2 uses
  %i.bl = load float, ptr %i.k, align 8, !tbaa !45
  %i.bm = fpext nsz float %i.c to double          ; 2 uses
  %i.bn = fpext nsz float %i.bl to double         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bp = insertelement <2 x double> poison, double %cos.i, i64 0 ; 2 uses
  %i.bq = insertelement <2 x double> %i.bp, double %sin.i, i64 1 ; 3 uses
  %i.br = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bs = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.d, i64 1 ; 2 uses
  %i.bu = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bk, i64 0 ; 2 uses
  %i.bw = insertelement <2 x float> %i.bv, float %i.bg, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bz = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x float> <float poison, float -5.000000e+00>, float %i.j, i64 0
  %i.cc = fadd nsz <2 x float> %i.ca, %i.cb       ; 9 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 3 uses
  %i.ce = load <4 x float>, ptr %i.bo, align 4, !tbaa !45
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cg = fpext <2 x float> %i.cf to <2 x double> ; 3 uses
  %i.ch = fneg nsz <2 x double> %i.cg
  %i.ci = shufflevector <2 x double> %i.br, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %i.cj = fmul nsz <2 x double> %i.bq, %i.ci
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bu, <2 x double> %i.cj)
  %i.cl = fptrunc <2 x double> %i.ck to <2 x float>
  %i.cm = fadd nsz <2 x float> %i.bw, %i.cl       ; 9 uses
  %i.cn = shufflevector <2 x float> %i.cc, <2 x float> %i.cm, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  store float %i.cd, ptr %i.bx, align 16, !tbaa !118
  %i.co = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = fmul nsz <2 x double> %i.co, %i.cg
  %i.cq = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ct, <2 x double> %i.cp)
  %i.cv = fptrunc <2 x double> %i.cu to <2 x float>
  %i.cw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fadd nsz <2 x float> %i.cw, %i.cv       ; 6 uses
  %i.cy = insertelement <2 x double> %i.cg, double %i.bn, i64 0
  %i.cz = fneg nsz <2 x double> %i.cy
  %i.da = fmul nsz <2 x double> %i.ct, %i.cz
  %i.db = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.co, <2 x double> %i.da)
  %i.dc = fptrunc <2 x double> %i.db to <2 x float>
  %i.dd = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fadd nsz <2 x float> %i.de, %i.dc       ; 10 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.cn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.dh, ptr %5, align 16, !tbaa !44
  %i.di = shufflevector <2 x float> %i.cx, <2 x float> %i.cc, <4 x i32> <i32 0, i32 poison, i32 3, i32 1>
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.dg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %i.dj, ptr %i.bo, align 4, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !45
  %i.dm = fpext nsz float %i.dl to double         ; 2 uses
  %i.dn = fneg nsz double %i.dm
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dn, i64 1
  %i.dq = fmul nsz <2 x double> %i.bq, %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.bu, <2 x double> %i.dq) ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1
  %i.dv = fptrunc nsz double %i.du to float
  %i.dw = extractelement <2 x double> %i.dt, i64 0
  %i.dx = fptrunc nsz double %i.dw to float
  %i.dy = fadd nsz float %i.bg, %i.dv             ; 5 uses
  %i.dz = insertelement <2 x float> %i.cc, float %i.dy, i64 0 ; 2 uses
  store <2 x float> %i.dz, ptr %i.p, align 4, !tbaa !44
  %i.ea = fadd nsz float %i.bk, %i.dx             ; 5 uses
  store float %i.ea, ptr %i.dk, align 4, !tbaa !45
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !40
  %i.ee = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.eb, ptr noundef %i.ed)
  switch i8 %i.ee, label %.loopexit [
    i8 5, label %.preheader.split.us114.preheader
    i8 0, label %.preheader.split.us.preheader
    i8 2, label %.preheader.split.us96.preheader
    i8 3, label %.preheader.split.us102.preheader
    i8 4, label %.preheader.split.us108.preheader
  ]

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !45
  %i.ei = fadd nsz float %3, %i.eh
  store float %i.ei, ptr %i.eg, align 8, !tbaa !45
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 20 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !45
  %i.em = fadd nsz float %3, %i.el
  store float %i.em, ptr %i.ek, align 4, !tbaa !45
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 16, !tbaa !45
  %i.eq = fadd nsz float %3, %i.ep
  store float %i.eq, ptr %i.eo, align 16, !tbaa !45
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 44 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !45
  %i.eu = fadd nsz float %3, %i.et
  store float %i.eu, ptr %i.es, align 4, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader91.unr-lcssa, label %bb.e, !llvm.loop !202

.preheader.split.us114.preheader:                 ; preds = %.preheader91
  %i.ev = fpext <2 x float> %i.cc to <2 x double> ; 5 uses
  %i.ew = fpext <2 x float> %i.cm to <2 x double> ; 3 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = fneg nsz double %i.ex
  %i.ez = extractelement <2 x double> %i.ev, i64 0
  %i.fa = tail call nsz double @llvm.fmuladd.f64(double %i.ez, double f0x3C91A62633145C07, double %i.ey)
  %i.fb = fptrunc nsz double %i.fa to float
  %i.fc = extractelement <2 x float> %i.df, i64 0
  %i.fd = fpext nsz float %i.fc to double         ; 2 uses
  %i.fe = fpext nsz float %i.fb to double         ; 2 uses
  %i.ff = fneg nsz double %i.fe
  %i.fg = tail call nsz double @llvm.fmuladd.f64(double %i.fd, double f0x3C91A62633145C07, double %i.ff)
  %i.fh = fmul nsz double %i.fe, f0x3C91A62633145C07
  %i.fi = fadd nsz double %i.fh, %i.fd
  %i.fj = insertelement <4 x double> poison, double %i.fg, i64 0
  %i.fk = insertelement <4 x double> %i.fj, double %i.fi, i64 1
  %i.fl = fpext <2 x float> %i.cx to <2 x double> ; 3 uses
  %i.fm = fmul nsz <2 x double> %i.ew, <double f0x3C91A62633145C07, double 1.000000e+00>
  %i.fn = extractelement <2 x float> %i.df, i64 1
  %i.fo = fpext nsz float %i.fn to double         ; 2 uses
  %i.fp = shufflevector <2 x double> %i.ew, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x double> %i.fp, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.fr = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fs = shufflevector <4 x double> %i.fq, <4 x double> %i.fr, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.ft = insertelement <4 x double> %i.fs, double %i.fo, i64 3
  %i.fu = fneg nsz <2 x double> %i.fl
  %i.fv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.fu) ; 2 uses
  %i.fw = extractelement <2 x double> %i.fv, i64 1
  %i.fx = fptrunc nsz double %i.fw to float
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.ea, i64 1
  %i.ga = fpext <2 x float> %i.fz to <2 x double> ; 2 uses
  %i.gb = fneg nsz <2 x double> %i.ga
  %i.gc = insertelement <2 x double> %i.ev, double %i.fo, i64 0
  %i.gd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.gb) ; 2 uses
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gg = fpext nsz float %i.dy to double         ; 2 uses
  %i.gh = shufflevector <2 x double> %i.fv, <2 x double> %i.gd, <2 x i32> <i32 0, i32 3>
  %i.gi = fptrunc <2 x double> %i.gh to <2 x float>
  %i.gj = fpext <2 x float> %i.gi to <2 x double> ; 3 uses
  %i.gk = fneg nsz <2 x double> %i.gj             ; 2 uses
  %i.gl = shufflevector <2 x double> %i.ev, <2 x double> %i.gk, <2 x i32> <i32 0, i32 2>
  %i.gm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> <double 1.000000e+00, double f0x3C91A62633145C07>, <2 x double> %i.gl)
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = shufflevector <4 x double> %i.fk, <4 x double> %i.gn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gp = fptrunc <4 x double> %i.go to <4 x float>
  store <4 x float> %i.gp, ptr %5, align 16, !tbaa !44
  %i.gq = shufflevector <2 x double> %i.gj, <2 x double> %i.fl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gr = shufflevector <4 x double> %i.gq, <4 x double> %i.ge, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gs = shufflevector <4 x double> %i.gr, <4 x double> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gt = fmul nsz <4 x double> %i.gs, <double f0x3C91A62633145C07, double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07>
  %i.gu = fadd nsz <4 x double> %i.gt, %i.ft
  %i.gv = fptrunc <4 x double> %i.gu to <4 x float>
  store <4 x float> %i.gv, ptr %i.bx, align 16, !tbaa !44
  %i.gw = extractelement <2 x double> %i.gk, i64 1
  %i.gx = tail call nsz double @llvm.fmuladd.f64(double %i.gg, double f0x3C91A62633145C07, double %i.gw)
  %i.gy = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gz = insertelement <4 x double> %i.gy, double %i.gx, i64 1
  %i.ha = shufflevector <2 x double> %i.gj, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hb = shufflevector <4 x double> %i.gz, <4 x double> %i.ha, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hc = shufflevector <4 x double> %i.hb, <4 x double> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hd = fmul nsz <4 x double> %i.hc, <double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07, double f0x3C91A62633145C07>
  %i.he = shufflevector <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x double> %i.fr, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.hf = insertelement <4 x double> %i.he, double %i.gg, i64 2
  %i.hg = shufflevector <4 x double> %i.hf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hh = fadd nsz <4 x double> %i.hd, %i.hg
  %i.hi = fptrunc <4 x double> %i.hh to <4 x float>
  store <4 x float> %i.hi, ptr %i.by, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us108.preheader:                 ; preds = %.preheader91
  %i.hj = fpext <2 x float> %i.df to <2 x double> ; 3 uses
  %i.hk = extractelement <2 x float> %i.cx, i64 0
  %i.hl = extractelement <2 x float> %i.cm, i64 1
  %i.hm = fpext nsz float %i.hk to double         ; 2 uses
  %i.hn = fpext nsz float %i.hl to double         ; 2 uses
  %i.ho = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hp = fpext nsz float %i.ea to double         ; 2 uses
  %i.hq = fpext <2 x float> %i.dz to <2 x double> ; 5 uses
  %7 = fpext nsz float %i.cd to double            ; 3 uses
  %i.hr = shufflevector <2 x float> %i.cm, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3>
  %i.hs = fpext <2 x float> %i.hr to <2 x double> ; 3 uses
  %i.ht = insertelement <2 x double> poison, double %7, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = insertelement <2 x double> %i.hs, double %i.hm, i64 1
  %i.hw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.hv)
  %i.hx = fptrunc <2 x double> %i.hw to <2 x float>
  %i.hy = fpext <2 x float> %i.hx to <2 x double> ; 3 uses
  %i.hz = fneg nsz <2 x double> %i.hy             ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %8 = extractelement <2 x double> %i.hj, i64 0
  %9 = tail call nsz double @llvm.fmuladd.f64(double %8, double f0x3C91A62633145C07, double %i.ia)
  %10 = extractelement <2 x double> %i.hz, i64 1
  %11 = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double f0x3C91A62633145C07, double %10)
  %12 = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x double> %12, double %i.hm, i64 1
  %14 = fmul nsz <2 x double> %13, splat (double f0x3C91A62633145C07) ; 2 uses
  %15 = insertelement <2 x double> %i.ho, double %7, i64 1 ; 2 uses
  %16 = fadd nsz <2 x double> %14, %15
  %17 = fsub nsz <2 x double> %14, %15
  %i.ib = insertelement <4 x double> poison, double %9, i64 0
  %i.ic = fmul nsz <2 x double> %i.hs, splat (double f0x3C91A62633145C07)
  %i.id = insertelement <2 x double> %i.hq, double %7, i64 0
  %i.ie = fsub nsz <2 x double> %i.ic, %i.id      ; 2 uses
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ig = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ii = insertelement <2 x double> %i.ih, double %i.hp, i64 1
  %i.ij = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ii)
  %i.ik = fptrunc <2 x double> %i.ij to <2 x float>
  %i.il = fpext <2 x float> %i.ik to <2 x double> ; 3 uses
  %i.im = fneg nsz <2 x double> %i.il             ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  %i.io = extractelement <2 x double> %i.hj, i64 1
  %i.ip = tail call nsz double @llvm.fmuladd.f64(double %i.io, double f0x3C91A62633145C07, double %i.in)
  %i.iq = shufflevector <2 x double> %i.hy, <2 x double> %i.il, <2 x i32> <i32 0, i32 2>
  %i.ir = fmul nsz <2 x double> %i.iq, splat (double f0x3C91A62633145C07)
  %i.is = fadd nsz <2 x double> %i.ir, %i.hj
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iu = shufflevector <4 x double> %i.ib, <4 x double> %i.it, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.iv = shufflevector <4 x double> %i.iu, <4 x double> %i.if, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.iw = insertelement <4 x double> %i.iv, double %11, i64 3
  %i.ix = fptrunc <4 x double> %i.iw to <4 x float>
  store <4 x float> %i.ix, ptr %5, align 16, !tbaa !44
  %i.iy = insertelement <4 x double> %18, double %i.ip, i64 2
  %i.iz = shufflevector <4 x double> %i.iy, <4 x double> %i.it, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ja = fptrunc <4 x double> %i.iz to <4 x float>
  store <4 x float> %i.ja, ptr %i.bx, align 16, !tbaa !44
  %i.jb = extractelement <2 x double> %i.hq, i64 0
  %i.jc = extractelement <2 x double> %i.im, i64 1
  %i.jd = tail call nsz double @llvm.fmuladd.f64(double %i.jb, double f0x3C91A62633145C07, double %i.jc)
  %i.je = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jf = insertelement <2 x double> %i.je, double %i.hp, i64 1
  %i.jg = fmul nsz <2 x double> %i.jf, splat (double f0x3C91A62633145C07) ; 2 uses
  %i.jh = fadd nsz <2 x double> %i.jg, %i.hq
  %i.ji = fsub nsz <2 x double> %i.jg, %i.hq
  %i.jj = shufflevector <2 x double> %i.ie, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jk = insertelement <4 x double> %i.jj, double %i.jd, i64 1
  %i.jl = shufflevector <2 x double> %i.jh, <2 x double> %i.ji, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jm = shufflevector <4 x double> %i.jk, <4 x double> %i.jl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jn = fptrunc <4 x double> %i.jm to <4 x float>
  store <4 x float> %i.jn, ptr %i.by, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us102.preheader:                 ; preds = %.preheader91
  %i.jo = extractelement <2 x float> %i.df, i64 0
  %i.jp = fpext nsz float %i.jo to double         ; 2 uses
  %i.jq = fpext nsz float %i.cd to double         ; 2 uses
  %i.jr = fmul nsz double %i.jq, f0x3C91A62633145C07 ; 2 uses
  %i.js = fsub nsz double %i.jr, %i.jp
  %i.jt = fptrunc nsz double %i.js to float
  %i.ju = insertelement <2 x float> %i.cm, float %i.jt, i64 0
  %i.jv = fpext <2 x float> %i.ju to <2 x double> ; 3 uses
  %i.jw = extractelement <2 x double> %i.jv, i64 1
  %i.jx = fsub nsz double %i.jr, %i.jw
  %i.jy = fptrunc nsz double %i.jx to float
  %i.jz = extractelement <2 x double> %i.jv, i64 0
  %i.ka = insertelement <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, double %i.jp, i64 0
  %i.kb = shufflevector <2 x double> %i.jv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kc = shufflevector <4 x double> %i.ka, <4 x double> %i.kb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.kd = insertelement <4 x double> poison, double %i.jq, i64 0
  %i.ke = extractelement <2 x float> %i.cc, i64 1
  %i.kf = fpext nsz float %i.ke to double         ; 3 uses
  %i.kg = fmul nsz double %i.kf, f0x3C91A62633145C07 ; 2 uses
  %i.kh = insertelement <2 x float> %i.df, float %i.jy, i64 0
  %i.ki = fpext <2 x float> %i.kh to <2 x double> ; 3 uses
  %i.kj = extractelement <2 x double> %i.ki, i64 1
  %i.kk = fsub nsz double %i.kg, %i.kj
  %i.kl = fptrunc nsz double %i.kk to float
  %i.km = fpext nsz float %i.kl to double         ; 2 uses
  %i.kn = extractelement <2 x double> %i.ki, i64 0
  %i.ko = fpext nsz float %i.dy to double         ; 2 uses
  %i.kp = fsub nsz double %i.kg, %i.ko
  %i.kq = fptrunc nsz double %i.kp to float
  %i.kr = fpext nsz float %i.kq to double         ; 2 uses
  %i.ks = shufflevector <2 x float> %i.cm, <2 x float> %i.cx, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.kt = insertelement <4 x float> %i.ks, float %i.ea, i64 3
  %i.ku = fpext <4 x float> %i.kt to <4 x double> ; 5 uses
  %i.kv = extractelement <4 x double> %i.ku, i64 0
  %i.kw = fmul nsz double %i.kv, f0xBCA1A62633145C07
  %i.kx = fsub nsz double %i.kw, %i.jz
  %i.ky = insertelement <4 x double> %i.kd, double %i.kx, i64 1
  %i.kz = fneg nsz <4 x double> %i.ku             ; 3 uses
  %i.la = shufflevector <4 x double> %i.ky, <4 x double> %i.kz, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.lb = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kc, <4 x double> <double f0x3C91A62633145C07, double 0.000000e+00, double f0x3CA1A62633145C07, double f0x3C91A62633145C07>, <4 x double> %i.la)
  %i.lc = fptrunc <4 x double> %i.lb to <4 x float>
  store <4 x float> %i.lc, ptr %5, align 16, !tbaa !44
  %i.ld = extractelement <4 x double> %i.ku, i64 1
  %i.le = fmul nsz double %i.ld, f0xBCA1A62633145C07
  %i.lf = extractelement <4 x double> %i.ku, i64 2
  %i.lg = fmul nsz double %i.lf, f0xBCA1A62633145C07
  %i.lh = fsub nsz double %i.le, %i.kn
  %i.li = fsub nsz double %i.lg, %i.km
  %i.lj = shufflevector <4 x double> %i.kz, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lk = insertelement <2 x double> %i.lj, double %i.kf, i64 1
  %i.ll = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> <double f0x3CA1A62633145C07, double f0x3C91A62633145C07>, <2 x double> %i.lk)
  %i.lm = insertelement <4 x double> poison, double %i.lh, i64 0
  %i.ln = shufflevector <2 x double> %i.ll, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lo = shufflevector <4 x double> %i.lm, <4 x double> %i.ln, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.lp = insertelement <4 x double> %i.lo, double %i.li, i64 3
  %i.lq = fptrunc <4 x double> %i.lp to <4 x float>
  store <4 x float> %i.lq, ptr %i.bx, align 16, !tbaa !44
  %i.lr = extractelement <4 x double> %i.ku, i64 3
  %i.ls = fmul nsz double %i.lr, f0xBCA1A62633145C07
  %i.lt = fsub nsz double %i.ls, %i.kr
  %i.lu = insertelement <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, double %i.km, i64 0
  %i.lv = insertelement <4 x double> %i.lu, double %i.ko, i64 1
  %i.lw = insertelement <4 x double> %i.lv, double %i.kr, i64 3
  %i.lx = shufflevector <4 x double> %i.kz, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 3>
  %i.ly = insertelement <4 x double> %i.lx, double %i.kf, i64 1
  %i.lz = insertelement <4 x double> %i.ly, double %i.lt, i64 2
  %i.ma = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lw, <4 x double> <double f0x3CA1A62633145C07, double f0x3C91A62633145C07, double 0.000000e+00, double f0x3CA1A62633145C07>, <4 x double> %i.lz)
  %i.mb = fptrunc <4 x double> %i.ma to <4 x float>
  store <4 x float> %i.mb, ptr %i.by, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us96.preheader:                  ; preds = %.preheader91
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.me = extractelement <2 x float> %i.cm, i64 1
  %i.mf = fpext <2 x float> %i.cc to <2 x double> ; 3 uses
  %i.mg = extractelement <2 x double> %i.mf, i64 0
  %i.mh = fmul nsz double %i.mg, f0x3C91A62633145C07 ; 2 uses
  %i.mi = fpext nsz float %i.dy to double         ; 2 uses
  %i.mj = extractelement <2 x float> %i.df, i64 1
  %i.mk = fpext nsz float %i.mj to double         ; 2 uses
  %i.ml = fpext nsz float %i.me to double         ; 2 uses
  %i.mm = extractelement <2 x float> %i.df, i64 0
  %i.mn = fpext nsz float %i.mm to double         ; 2 uses
  %i.mo = fadd nsz double %i.mh, %i.mn
  %i.mp = fneg nsz <2 x double> %i.mf
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mr = insertelement <4 x double> poison, double %i.mn, i64 0
  %i.ms = insertelement <4 x double> %i.mr, double %i.mk, i64 1
  %i.mt = insertelement <4 x double> %i.ms, double %i.ml, i64 2
  %i.mu = insertelement <4 x double> %i.mt, double %i.mi, i64 3
  %i.mv = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mu, <4 x double> splat (double f0x3C91A62633145C07), <4 x double> %i.mq) ; 4 uses
  %i.mw = shufflevector <4 x double> %i.mv, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.mx = insertelement <2 x double> %i.mw, double %i.mo, i64 1
  %i.my = fptrunc <2 x double> %i.mx to <2 x float>
  store <2 x float> %i.my, ptr %5, align 16, !tbaa !44
  %i.mz = fadd nsz double %i.mh, %i.ml
  %i.na = shufflevector <4 x double> %i.mv, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.nb = insertelement <2 x double> %i.na, double %i.mz, i64 1
  %i.nc = fptrunc <2 x double> %i.nb to <2 x float>
  store <2 x float> %i.nc, ptr %i.l, align 4, !tbaa !44
  %i.nd = extractelement <4 x double> %i.mv, i64 1
  %i.ne = fptrunc nsz double %i.nd to float
  %i.nf = extractelement <2 x double> %i.mf, i64 1
  %i.ng = fmul nsz double %i.nf, f0x3C91A62633145C07 ; 2 uses
  %i.nh = fadd nsz double %i.ng, %i.mk
  %i.ni = fptrunc nsz double %i.nh to float
  store float %i.ne, ptr %i.n, align 8, !tbaa !122
  store float %i.ni, ptr %i.md, align 4, !tbaa !118
  %i.nj = extractelement <4 x double> %i.mv, i64 3
  %i.nk = fptrunc nsz double %i.nj to float
  %i.nl = fadd nsz double %i.ng, %i.mi
  %i.nm = fptrunc nsz double %i.nl to float
  store float %i.nk, ptr %i.p, align 4, !tbaa !122
  store float %i.nm, ptr %i.mc, align 8, !tbaa !118
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.preheader91
  %i.nn = extractelement <2 x float> %i.cm, i64 0
  %i.no = extractelement <2 x float> %i.cm, i64 1
  %i.np = fpext nsz float %i.nn to double         ; 2 uses
  %i.nq = fneg nsz double %i.np
  %i.nr = shufflevector <2 x float> %i.df, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ns = fpext <2 x float> %i.nr to <2 x double> ; 4 uses
  %i.nt = extractelement <2 x double> %i.ns, i64 1
  %i.nu = tail call nsz double @llvm.fmuladd.f64(double %i.nt, double f0x3CA1A62633145C07, double %i.nq)
  %i.nv = fptrunc nsz double %i.nu to float
  %i.nw = fpext nsz float %i.nv to double         ; 2 uses
  %i.nx = fneg nsz double %i.nw
  %i.ny = extractelement <2 x double> %i.ns, i64 0
  %i.nz = tail call nsz double @llvm.fmuladd.f64(double %i.ny, double f0x3CA1A62633145C07, double %i.nx)
  %i.oa = insertelement <4 x double> poison, double %i.nw, i64 0
  %i.ob = insertelement <4 x double> %i.oa, double %i.np, i64 1
  %i.oc = insertelement <4 x double> %i.ob, double %i.nz, i64 2
  %i.od = shufflevector <2 x double> %i.ns, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oe = insertelement <4 x double> %i.od, double 0.000000e+00, i64 2
  %i.of = shufflevector <2 x float> %i.cc, <2 x float> %i.df, <2 x i32> <i32 3, i32 1>
  %i.og = fpext <2 x float> %i.of to <2 x double> ; 5 uses
  %i.oh = fpext nsz float %i.no to double         ; 2 uses
  %i.oi = insertelement <4 x double> %i.oe, double %i.oh, i64 3
  %i.oj = extractelement <2 x double> %i.og, i64 1
  %i.ok = fpext <2 x float> %i.cx to <2 x double> ; 2 uses
  %i.ol = fneg nsz <2 x double> %i.ok
  %i.om = shufflevector <2 x double> %i.ns, <2 x double> %i.og, <2 x i32> <i32 1, i32 3>
  %i.on = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> splat (double f0x3CA1A62633145C07), <2 x double> %i.ol)
  %i.oo = shufflevector <4 x double> <double poison, double 0.000000e+00, double poison, double poison>, <4 x double> %i.od, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.op = shufflevector <2 x double> %i.og, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.oq = shufflevector <4 x double> %i.oo, <4 x double> %i.op, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.or = fptrunc <2 x double> %i.on to <2 x float>
  %i.os = fpext <2 x float> %i.or to <2 x double> ; 2 uses
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ou = shufflevector <4 x double> %i.oc, <4 x double> %i.ot, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ov = fmul nsz <4 x double> %i.ou, <double f0xBCA1A62633145C07, double f0xBCA1A62633145C07, double 1.000000e+00, double f0xBCA1A62633145C07>
  %i.ow = fsub nsz <4 x double> %i.ov, %i.oi
  %i.ox = fptrunc <4 x double> %i.ow to <4 x float>
  store <4 x float> %i.ox, ptr %5, align 16, !tbaa !44
  %i.oy = fneg nsz <2 x double> %i.os
  %i.oz = shufflevector <2 x double> %i.og, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pa = insertelement <2 x double> %i.oz, double %i.oh, i64 0
  %i.pb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> splat (double f0x3CA1A62633145C07), <2 x double> %i.oy) ; 2 uses
  %i.pc = shufflevector <2 x double> %i.ok, <2 x double> %i.pb, <4 x i32> <i32 0, i32 2, i32 poison, i32 1>
  %i.pd = shufflevector <4 x double> %i.pc, <4 x double> %i.ot, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.pe = fmul nsz <4 x double> %i.pd, <double f0xBCA1A62633145C07, double 1.000000e+00, double f0xBCA1A62633145C07, double f0xBCA1A62633145C07>
  %i.pf = fsub nsz <4 x double> %i.pe, %i.oq
  %i.pg = fptrunc <4 x double> %i.pf to <4 x float>
  store <4 x float> %i.pg, ptr %i.bx, align 16, !tbaa !44
  %i.ph = fpext nsz float %i.ea to double         ; 2 uses
  %i.pi = fneg nsz double %i.ph
  %i.pj = tail call nsz double @llvm.fmuladd.f64(double %i.oj, double f0x3CA1A62633145C07, double %i.pi)
  %i.pk = fptrunc nsz double %i.pj to float
  %19 = fpext nsz float %i.dy to double           ; 2 uses
  %i.pl = fpext nsz float %i.pk to double         ; 2 uses
  %i.pm = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.pn = insertelement <2 x double> %i.pm, double %i.ph, i64 1
  %i.po = fmul nsz <2 x double> %i.pn, splat (double f0xBCA1A62633145C07)
  %i.pp = insertelement <2 x double> %i.og, double %19, i64 0
  %i.pq = fsub nsz <2 x double> %i.po, %i.pp
  %i.pr = fneg nsz double %i.pl
  %i.ps = tail call nsz double @llvm.fmuladd.f64(double %19, double f0x3CA1A62633145C07, double %i.pr)
  %i.pt = shufflevector <2 x double> %i.pb, <2 x double> %i.pq, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.pu = insertelement <4 x double> %i.pt, double %i.ps, i64 3
  %i.pv = fptrunc <4 x double> %i.pu to <4 x float>
  store <4 x float> %i.pv, ptr %i.by, align 16, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader91, %.preheader.split.us114.preheader, %.preheader.split.us108.preheader, %.preheader.split.us102.preheader, %.preheader.split.us96.preheader, %.preheader.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i16 0, ptr %6, align 2, !tbaa !41
  %i.pw = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.pw, align 2, !tbaa !42
  %i.px = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 0, ptr %i.px, align 2, !tbaa !43
  %i.py = load float, ptr %i.f, align 4, !tbaa !194
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %5, ptr noundef nonnull align 2 dereferenceable(6) %6, float noundef %i.py)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator13drawPlantlikeERK8TileSpecb(ptr noundef nonnull align 8 dereferenceable(496) initializes((460, 485), (488, 496)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load float, ptr %i.f, align 8, !tbaa !119
  %i.h = fmul nsz float %i.g, 5.000000e+00        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !193
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !201
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  store i8 0, ptr %i.k, align 4, !tbaa !195
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.l, align 8, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !194
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.o = load i8, ptr %i.n, align 1, !tbaa !187
  switch i8 %i.o, label %bb.j [
    i8 7, label %bb.b
    i8 6, label %bb.h
    i8 12, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.q = load i8, ptr %i.p, align 1, !tbaa !108   ; 4 uses
  %i.r = and i8 %i.q, 7
  %i.s = zext nneg i8 %i.r to i32
  store i32 %i.s, ptr %i.a, align 4, !tbaa !203
  %i.t = and i8 %i.q, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fpext nsz float %i.h to double
  %i.v = fmul nsz double %i.u, 1.414210e+00
  %i.w = fptrunc nsz double %i.v to float
  store float %i.w, ptr %i.i, align 4, !tbaa !193
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = and i8 %i.q, 8
  %.not17 = icmp eq i8 %i.x, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i16, ptr %i.c, align 8, !tbaa !178
  %i.z = sext i16 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !176
  %i.ad = sext i16 %i.ac to i32
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !197
  %i.ah = sext i16 %i.ag to i32
  %i.ai = shl nsw i32 %i.ah, 16
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, 1103515245
  %i.al = add i32 %i.ak, 12345                    ; 2 uses
  %i.am = mul i32 %i.al, 1103515245
  %i.an = add i32 %i.am, 12345
  %i.ao = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.ap = insertelement <2 x i32> %i.ao, i32 %i.an, i64 1
  %i.aq = sdiv <2 x i32> %i.ap, splat (i32 65536)
  %i.ar = and <2 x i32> %i.aq, splat (i32 15)
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = fmul nnan nsz <2 x double> %i.as, splat (double 6.250000e-02)
  %i.au = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 2.900000e-01), <2 x double> splat (double -1.450000e-01))
  %i.av = fmul nnan nsz <2 x double> %i.au, splat (double 1.000000e+01)
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  store float %i.ax, ptr %i.b, align 8, !tbaa !204
  %i.ay = extractelement <2 x float> %i.aw, i64 1
  store float %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !205
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = and i8 %i.q, 32
  %.not18 = icmp eq i8 %i.az, 0
  br i1 %.not18, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.k, align 4, !tbaa !195
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bd = tail call noundef zeroext i8 @_ZNK7MapNode12getDegRotateEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef %i.bc)
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fmul nnan nsz float %i.be, 1.500000e+00
  store float %i.bf, ptr %i.j, align 8, !tbaa !201
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !108
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan nsz float %i.bi, 6.250000e-02
  store float %i.bj, ptr %i.m, align 4, !tbaa !194
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.f, %bb.g, %bb.i, %bb.h
  br i1 %2, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40
  %i.bn = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef %i.bm)
  switch i8 %i.bn, label %bb.m [
    i8 0, label %.sink.split
    i8 3, label %bb.l
    i8 2, label %bb.l
    i8 5, label %bb.l
    i8 4, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.bo = load float, ptr %i.b, align 8, !tbaa !204
  %i.bp = fadd nsz float %i.bo, -1.000000e+01
  store float %i.bp, ptr %i.b, align 8, !tbaa !204
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l
  %.sink22 = phi float [ 1.000000e+01, %bb.l ], [ 2.000000e+01, %bb.k ]
  %i.bq = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !198
  %i.br = fadd nsz float %i.bq, %.sink22
  store float %i.br, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %bb.j
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !203
  switch i32 %i.bs, label %bb.s [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 4.600000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef -4.400000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 9.100000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.210000e+02, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 2.410000e+02, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

end_hunk_1
