Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt4Disk6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE:bb.a
  store i8 1, ptr %i.bd, align 8, !tbaa !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 16 dereferenceable(89) %4, i64 72, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !34
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.ba, ptr %i.bh, align 8, !tbaa !430
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk6SampleENS_6Point2IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, <2 x float> %2) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %.sroa.0 = alloca { %"class.pbrt::Point3fi", float, %"class.pbrt::Vector3" }, align 8 ; 5 uses
  %i.a = fmul <2 x float> %2, splat (float 2.000000e+00)
  %i.b = fadd <2 x float> %i.a, splat (float -1.000000e+00) ; 3 uses
  %i.c = extractelement <2 x float> %i.b, i64 0   ; 4 uses
  %i.d = fcmp oeq float %i.c, 0.000000e+00
  %i.e = extractelement <2 x float> %i.b, i64 1   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %or.cond.i = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZN4pbrt27SampleUniformDiskConcentricENS_6Point2IfEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b) ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.h = fcmp ogt <2 x float> %i.g, %shift
  %i.i = extractelement <2 x i1> %i.h, i64 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fdiv float %i.e, %i.c
  %i.k = fmul float %i.j, f0x3F490FDB
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = fdiv float %i.c, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  %i.n = fsub float f0x3FC90FDB, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.024.i = phi float [ %i.k, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.c, %bb.c ], [ %i.e, %bb.d ] ; 2 uses
  %i.o = tail call noundef float @cosf(float noundef %.024.i) #37
  %i.p = tail call noundef float @sinf(float noundef %.024.i) #37
  %i.q = fmul float %.0.i, %i.o
  %i.r = fmul float %.0.i, %i.p
  %.sroa.0.0.vec.insert.i.i29.i = insertelement <2 x float> poison, float %i.q, i64 0
  %.sroa.0.4.vec.insert.i.i30.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i, float %i.r, i64 1
  br label %_ZN4pbrt27SampleUniformDiskConcentricENS_6Point2IfEE.exit

_ZN4pbrt27SampleUniformDiskConcentricENS_6Point2IfEE.exit: ; preds = %bb.a, %bb.e
  %.sroa.035.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i, %bb.e ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.020.0.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !1272 ; 2 uses
  %i.u = fmul float %.sroa.020.0.vec.extract, %i.t ; 3 uses
  %.sroa.020.4.vec.extract = extractelement <2 x float> %.sroa.035.0.i, i64 1 ; 2 uses
  %i.v = fmul float %.sroa.020.4.vec.extract, %i.t ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !1273
  %i.y = load ptr, ptr %1, align 8, !tbaa !1274
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %.sroa.07.0.vec.insert.i = insertelement <2 x float> poison, float %i.u, i64 0
  %.sroa.07.4.vec.insert.i = shufflevector <2 x float> %.sroa.07.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.0.vec.insert.i = insertelement <2 x float> poison, float %i.v, i64 0
  %.sroa.05.4.vec.insert.i = shufflevector <2 x float> %.sroa.05.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.x, i64 0
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %.sroa.0, ptr noundef nonnull align 4 dereferenceable(128) %i.y, ptr noundef nonnull align 4 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1274  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ag = load float, ptr %i.af, align 4, !tbaa !89
  %i.ah = fmul float %i.ag, 0.000000e+00
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !89
  %i.ak = fmul float %i.aj, 0.000000e+00
  %i.al = fadd float %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.an = load float, ptr %i.am, align 4, !tbaa !89
  %i.ao = fadd float %i.an, %i.al                 ; 3 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1275, !range !134, !noundef !135
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = load <2 x float>, ptr %i.ac, align 4, !tbaa !89
  %i.au = fmul <2 x float> %i.at, zeroinitializer
  %i.av = load <2 x float>, ptr %i.ad, align 4, !tbaa !89
  %i.aw = fmul <2 x float> %i.av, zeroinitializer
  %i.ax = fadd <2 x float> %i.au, %i.aw
  %i.ay = load <2 x float>, ptr %i.ae, align 4, !tbaa !89
  %i.az = fadd <2 x float> %i.ay, %i.ax           ; 3 uses
  %i.ba = fmul <2 x float> %i.az, %i.az           ; 2 uses
  %shift43 = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ba, %shift43
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = fadd float %i.bb, %i.ap
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bc) ; 2 uses
  %i.bd = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fdiv <2 x float> %i.az, %i.be           ; 2 uses
  %i.bg = fdiv float %i.ao, %sqrt.i.i             ; 2 uses
  %i.bh = fneg <2 x float> %i.bf
  %i.bi = fneg float %i.bg
  %.sroa.033.0 = select i1 %i.as, <2 x float> %i.bh, <2 x float> %i.bf
  %.sroa.837.0 = select i1 %i.as, float %i.bi, float %i.bg
  %i.bj = call noundef float @atan2f(float noundef %.sroa.020.4.vec.extract, float noundef %.sroa.020.0.vec.extract) #37 ; 3 uses
  %i.bk = fcmp olt float %i.bj, 0.000000e+00
  %i.bl = fadd float %i.bj, f0x40C90FDB
  %spec.select = select i1 %i.bk, float %i.bl, float %i.bj
  %i.bm = fmul float %i.u, %i.u
  %i.bn = fmul float %i.v, %i.v
  %i.bo = fadd float %i.bm, %i.bn
  %sqrt = call float @llvm.sqrt.f32(float %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !1241 ; 2 uses
  %i.br = load float, ptr %i.s, align 8, !tbaa !1272 ; 4 uses
  %i.bs = fsub float %i.br, %sqrt
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !1276 ; 3 uses
  %i.bv = fsub float %i.br, %i.bu
  %i.bw = insertelement <2 x float> poison, float %spec.select, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bs, i64 1
  %i.by = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bv, i64 1
  %i.ca = fdiv <2 x float> %i.bx, %i.bz
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx, i8 0, i64 16, i1 false)
  %i.cb = fmul float %i.bq, 5.000000e-01
  %i.cc = fmul float %i.br, %i.br
  %i.cd = fmul float %i.bu, %i.bu
  %i.ce = fsub float %i.cc, %i.cd
  %i.cf = fmul float %i.cb, %i.ce
  %i.cg = fdiv float 1.000000e+00, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.ch, align 8, !tbaa !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.033.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.837.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.ca, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.3.0..sroa.8.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.cg, ptr %i.ci, align 8, !tbaa !430
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(52) %2, <2 x float> %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pstd::optional.84", align 16 ; 14 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.pstd::array.152", align 8   ; 9 uses
  %i.b = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !1243
  %i.c = load i32, ptr %1, align 4, !tbaa !1245
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1247
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1251 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1253
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1256
  %i.m = mul nsw i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1257 ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !97
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0922.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.11928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.11928.0.copyload = load float, ptr %.sroa.11928.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !97
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0910.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 6 uses
  %.sroa.11918.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.11918.0.copyload = load float, ptr %.sroa.11918.0..sroa_idx, align 4 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !97
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0898.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 7 uses
  %.sroa.11906.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11906.0.copyload = load float, ptr %.sroa.11906.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.ac = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ad = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.af = fadd <2 x float> %i.ac, %i.ae
  %i.ag = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @_ZNK4pbrt8Triangle10SolidAngleENS_6Point3IfEE(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %i.ag, float %i.ai) ; 2 uses
  %i.ak = fcmp olt float %i.aj, 3.000000e-04
  %i.al = fcmp ogt float %i.aj, 6.220000e+00
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.84") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %3)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !428, !range !134, !noundef !135
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef 235, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(4) @.str.120) #36
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !1264
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !456
  %.sroa.0.sroa.2.0..sroa_idx.i474 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i480 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.sroa.5.0.copyload.i481 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i480, align 16
  %.sroa.0.sroa.6.0..sroa_idx.i482 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.0.sroa.6.0.copyload.i483 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i482, align 4
  %i.as = fadd float %.sroa.0.sroa.5.0.copyload.i481, %.sroa.0.sroa.6.0.copyload.i483
  %i.at = fmul float %i.as, 5.000000e-01          ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i496 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i498 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.au = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i474, align 4
  %i.av = load <4 x float>, ptr %4, align 16
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ax = fadd <2 x float> %i.au, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 5.000000e-01) ; 2 uses
  %i.az = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ba = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bc = fadd <2 x float> %i.az, %i.bb
  %i.bd = fmul <2 x float> %i.bc, splat (float 5.000000e-01) ; 2 uses
  %i.be = fadd float %.sroa.0.sroa.5.0.copyload.i496, %.sroa.0.sroa.6.0.copyload.i498
  %i.bf = fmul float %i.be, 5.000000e-01          ; 2 uses
  %i.bg = fsub float %i.at, %i.bf                 ; 3 uses
  %i.bh = fsub <2 x float> %i.ay, %i.bd           ; 4 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bh           ; 2 uses
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bi, %shift
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = fmul float %i.bg, %i.bg
  %i.bl = fadd float %i.bj, %i.bk                 ; 2 uses
  %i.bm = fcmp oeq float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bl) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0380.0.copyload = load <2 x float>, ptr %i.bn, align 8 ; 2 uses
  %.sroa.2381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.2381.0.copyload = load float, ptr %.sroa.2381.0..sroa_idx, align 16 ; 2 uses
  %i.bo = extractelement <2 x float> %i.bh, i64 0
  %i.bp = fneg float %i.bo
  %i.bq = fdiv float %i.bp, %sqrt.i.i
  %i.br = extractelement <2 x float> %i.bh, i64 1
  %i.bs = fneg float %i.br
  %i.bt = fdiv float %i.bs, %sqrt.i.i
  %i.bu = fneg float %i.bg
  %i.bv = fdiv float %i.bu, %sqrt.i.i             ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 1
  %i.bw = fmul float %i.bv, %.sroa.2381.0.copyload ; 2 uses
  %i.bx = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.bt, float %i.bw)
  %i.by = fneg float %i.bw
  %i.bz = call noundef float @llvm.fma.f32(float %.sroa.2381.0.copyload, float %i.bv, float %i.by)
  %i.ca = fadd float %i.bx, %i.bz
  %i.cb = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.bq, float %i.ca)
  %i.cc = call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fsub <2 x float> %i.bd, %i.ay           ; 2 uses
  %i.ce = fsub float %i.bf, %i.at                 ; 2 uses
  %i.cf = fmul <2 x float> %i.cd, %i.cd           ; 2 uses
  %shift979 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop980 = fadd <2 x float> %i.cf, %shift979
  %i.cg = extractelement <2 x float> %foldExtExtBinop980, i64 0
  %i.ch = fmul float %i.ce, %i.ce
  %i.ci = fadd float %i.cg, %i.ch
  %i.cj = fdiv float %i.cc, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cl = load float, ptr %i.ck, align 16, !tbaa !430
  %i.cm = fdiv float %i.cl, %i.cj                 ; 2 uses
  %i.cn = call float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp oeq float %i.cn, +inf
  br i1 %i.co, label %bb.f, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit: ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.cp, align 8, !tbaa !428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 16 dereferenceable(89) %4, i64 72, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !34
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.cm, ptr %i.ct, align 8, !tbaa !430
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !1277
  %i.cw = fcmp une float %i.cv, 0.000000e+00
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cy = load float, ptr %i.cx, align 4
  %i.cz = fcmp une float %i.cy, 0.000000e+00
  %or.cond.i = select i1 %i.cw, i1 true, i1 %i.cz
  %.sroa.2289.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.2289.0.copyload.pre = load float, ptr %.sroa.2289.0..sroa_idx.phi.trans.insert, align 4 ; 5 uses
  %i.da = fcmp une float %.sroa.2289.0.copyload.pre, 0.000000e+00
  %or.cond977 = select i1 %or.cond.i, i1 true, i1 %i.da
  br i1 %or.cond977, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.h
  %.sroa.0898.0.vec.extract = extractelement <2 x float> %.sroa.0898.0.copyload, i64 0 ; 2 uses
  %.sroa.0898.4.vec.extract = extractelement <2 x float> %.sroa.0898.0.copyload, i64 1 ; 2 uses
  %.sroa.0288.0.copyload = load <2 x float>, ptr %i.cu, align 4 ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i549 = load float, ptr %2, align 4
  %.sroa.0.sroa.2.0.copyload.i551 = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %.sroa.0.sroa.3.0.copyload.i553 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i555 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %.sroa.0.sroa.5.0.copyload.i557 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i559 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %.scalar = fadd float %.sroa.0.sroa.3.0.copyload.i553, %.sroa.0.sroa.4.0.copyload.i555
  %6 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.scalar, i64 1
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %8 = fmul <4 x float> %7, <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %9 = insertelement <2 x float> poison, float %.sroa.0.sroa.5.0.copyload.i557, i64 0
  %10 = insertelement <2 x float> %9, float %.sroa.0.sroa.0.0.copyload.i549, i64 1
  %11 = insertelement <2 x float> poison, float %.sroa.0.sroa.6.0.copyload.i559, i64 0
  %12 = insertelement <2 x float> %11, float %.sroa.0.sroa.2.0.copyload.i551, i64 1
  %13 = fadd <2 x float> %10, %12
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.db = fmul <4 x float> %14, splat (float 5.000000e-01) ; 3 uses
  %i.dc = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> %.sroa.0922.0.copyload, <4 x i32> <i32 0, i32 0, i32 2, i32 poison> ; 2 uses
  %i.dd = insertelement <4 x float> %i.dc, float %.sroa.0898.0.vec.extract, i64 3
  %i.de = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.df = fsub <4 x float> %i.dd, %i.de
  %i.dg = insertelement <4 x float> %i.dc, float %.sroa.11918.0.copyload, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %.sroa.0898.0.vec.extract, i64 3
  %i.di = fsub <4 x float> %i.dh, %i.db           ; 3 uses
  %15 = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> %.sroa.0922.0.copyload, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison> ; 2 uses
  %i.dj = insertelement <4 x float> %15, float -0.000000e+00, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %.sroa.0898.4.vec.extract, i64 3
  %i.dl = fsub <4 x float> %i.dk, %8              ; 2 uses
  %i.dm = insertelement <4 x float> %15, float 1.000000e+00, i64 0
  %i.dn = insertelement <4 x float> %i.dm, float %.sroa.0898.4.vec.extract, i64 3
  %i.do = fsub <4 x float> %i.dn, %8
  %16 = insertelement <2 x float> poison, float %.sroa.11928.0.copyload, i64 0
  %17 = insertelement <2 x float> %16, float %.sroa.11906.0.copyload, i64 1
  %18 = shufflevector <4 x float> %i.db, <4 x float> poison, <2 x i32> zeroinitializer
  %19 = fsub <2 x float> %17, %18                 ; 3 uses
  %i.dp = fmul <4 x float> %i.di, %i.di
  %i.dq = fmul <4 x float> %i.dl, %i.do
  %i.dr = fadd <4 x float> %i.dp, %i.dq           ; 2 uses
  %i.ds = fmul <2 x float> %19, %19
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dw = fadd <4 x float> %i.dr, %i.dv
  %i.dx = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dw) ; 3 uses
  %i.dy = fdiv <4 x float> %i.df, %i.dx
  %20 = shufflevector <4 x float> %i.dl, <4 x float> %i.di, <4 x i32> <i32 1, i32 4, i32 2, i32 3> ; 2 uses
  %i.dz = fdiv <4 x float> %20, %i.dx             ; 2 uses
  %21 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 1, i32 0, i32 4, i32 5>
  %i.ea = fdiv <4 x float> %22, %i.dx             ; 2 uses
  %i.eb = extractelement <4 x float> %i.dz, i64 1
  %i.ec = fmul float %.sroa.2289.0.copyload.pre, %i.eb ; 2 uses
  %i.ed = fneg float %i.ec
  %i.ee = insertelement <2 x float> poison, float %.sroa.2289.0.copyload.pre, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = shufflevector <4 x float> %i.ea, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eh = fmul <2 x float> %i.ef, %i.eg           ; 2 uses
  %i.ei = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.2289.0.copyload.pre, i64 1
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.el = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.em = insertelement <4 x float> %i.el, float %i.ec, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ed, i64 1 ; 2 uses
  %i.eo = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ek, <4 x float> %i.dz, <4 x float> %i.en)
  %i.ep = fneg <2 x float> %i.eh
  %i.eq = insertelement <2 x float> %.sroa.0288.0.copyload, float %.sroa.2289.0.copyload.pre, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.es = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.et = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ev = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.er, <4 x float> %i.ea, <4 x float> %i.eu)
  %i.ew = fadd <4 x float> %i.eo, %i.ev
  %i.ex = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ex, <4 x float> %i.dy, <4 x float> %i.ew)
  %i.ez = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ey) ; 2 uses
  %i.fa = fcmp ogt <4 x float> %i.ez, splat (float f0x3C23D70A)
  %i.fb = select <4 x i1> %i.fa, <4 x float> %i.ez, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.fc = extractelement <4 x float> %i.fb, i64 0 ; 3 uses
  %foldExtExtBinop982 = fadd <4 x float> %i.fb, %i.fb ; 3 uses
  %i.fd = extractelement <4 x float> %foldExtExtBinop982, i64 0 ; 3 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.fe = extractelement <4 x float> %i.fb, i64 2 ; 4 uses
  %i.ff = extractelement <4 x float> %i.fb, i64 3 ; 4 uses
  %i.fg = fadd float %i.fe, %i.ff                 ; 3 uses
  %i.fh = fadd nnan float %i.fd, %i.fg
  %i.fi = fmul float %.sroa.012.4.vec.extract.i, %i.fh
  %foldExtExtBinop984 = fmul <4 x float> %foldExtExtBinop982, %foldExtExtBinop982
  %i.fj = extractelement <4 x float> %foldExtExtBinop984, i64 0
  %i.fk = fmul float %i.fg, %i.fg
  %i.fl = fsub float 1.000000e+00, %.sroa.012.4.vec.extract.i
  %i.fm = fmul float %i.fl, %i.fj
  %i.fn = fmul float %.sroa.012.4.vec.extract.i, %i.fk
  %i.fo = fadd float %i.fm, %i.fn
  %i.fp = tail call noundef float @sqrtf(float noundef %i.fo) #37
  %i.fq = fadd float %i.fd, %i.fp
  %i.fr = fdiv float %i.fi, %i.fq                 ; 2 uses
  %i.fs = fcmp ogt float %i.fr, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.fs, float f0x3F7FFFFF, float %i.fr ; 8 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.ft = fsub float 1.000000e+00, %.sroa.speculated.i.i ; 3 uses
  %i.fu = fmul float %i.fc, %i.ft                 ; 2 uses
  %i.fv = fmul float %i.fe, %.sroa.speculated.i.i
  %i.fw = fadd float %i.fv, %i.fu                 ; 5 uses
  %i.fx = fcmp oeq float %.sroa.012.0.vec.extract.i, 0.000000e+00
  %i.fy = fcmp oeq float %i.fw, 0.000000e+00
  %or.cond.i1.i = and i1 %i.fx, %i.fy
  br i1 %or.cond.i1.i, label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.fz = fmul float %i.ff, %.sroa.speculated.i.i
  %i.ga = fadd float %i.fz, %i.fu                 ; 3 uses
  %i.gb = fadd float %i.fw, %i.ga
  %i.gc = fmul float %.sroa.012.0.vec.extract.i, %i.gb
  %i.gd = fmul float %i.fw, %i.fw
  %i.ge = fmul float %i.ga, %i.ga
  %i.gf = fsub float 1.000000e+00, %.sroa.012.0.vec.extract.i
  %i.gg = fmul float %i.gf, %i.gd
  %i.gh = fmul float %.sroa.012.0.vec.extract.i, %i.ge
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = tail call noundef float @sqrtf(float noundef %i.gi) #37
  %i.gk = fadd float %i.fw, %i.gj
  %i.gl = fdiv float %i.gc, %i.gk                 ; 2 uses
  %i.gm = fcmp ogt float %i.gl, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.gm, float f0x3F7FFFFF, float %i.gl
  br label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.i
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.i ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 6 uses
  %i.gn = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> %i.gn, float %.sroa.speculated.i.i, i64 1 ; 2 uses
  %i.go = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.gp = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i622 = or i1 %i.go, %i.gp
  %i.gq = fcmp olt float %.sroa.speculated.i.i, 0.000000e+00
  %i.gr = fcmp ogt float %.sroa.speculated.i.i, 1.000000e+00
  %i.gs = or i1 %i.gq, %i.gr
  %or.cond8.i = or i1 %i.gs, %or.cond.i622
  br i1 %or.cond8.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.gt = fadd float %i.fd, %i.fe
  %i.gu = fadd float %i.gt, %i.ff
  %i.gv = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.gw = fmul float %i.ft, %i.gv
  %i.gx = fmul float %i.fc, %i.gw
  %i.gy = fmul float %i.ft, %.0.i3.i
  %i.gz = fmul float %i.fc, %i.gy
  %i.ha = fadd float %i.gz, %i.gx
  %i.hb = fmul float %.sroa.speculated.i.i, %i.gv
  %i.hc = fmul float %i.fe, %i.hb
  %i.hd = fadd float %i.hc, %i.ha
  %i.he = fmul float %.sroa.speculated.i.i, %.0.i3.i
  %i.hf = fmul float %i.ff, %i.he
  %i.hg = fadd float %i.hf, %i.hd
  %i.hh = fmul float %i.hg, 4.000000e+00
  %i.hi = fdiv float %i.hh, %i.gu
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.h, %bb.j, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %.0465 = phi float [ 1.000000e+00, %bb.h ], [ %i.hi, %bb.j ], [ 0.000000e+00, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  %.sroa.0459.0 = phi <2 x float> [ %3, %bb.h ], [ %.sroa.013.0.vec.insert.i, %bb.j ], [ %.sroa.013.0.vec.insert.i, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store <2 x float> %.sroa.0922.0.copyload, ptr %5, align 8
  %.sroa.4951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.11928.0.copyload, ptr %.sroa.4951.0..sroa_idx, align 8
  %.sroa.5952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %.sroa.0910.0.copyload, ptr %.sroa.5952.0..sroa_idx, align 4
  %.sroa.6953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sroa.11918.0.copyload, ptr %.sroa.6953.0..sroa_idx, align 4
  %.sroa.7954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> %.sroa.0898.0.copyload, ptr %.sroa.7954.0..sroa_idx, align 8
  %.sroa.8955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %.sroa.11906.0.copyload, ptr %.sroa.8955.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0.copyload.i635 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i637 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.hj = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.hk = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hm = fadd <2 x float> %i.hj, %i.hl
  %i.hn = fmul <2 x float> %i.hm, splat (float 5.000000e-01)
  %i.ho = fadd float %.sroa.0.sroa.5.0.copyload.i635, %.sroa.0.sroa.6.0.copyload.i637
  %i.hp = fmul float %i.ho, 5.000000e-01
  %i.hq = call { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36) %5, <2 x float> %i.hn, float %i.hp, <2 x float> %.sroa.0459.0, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.1.extract241 = extractvalue { <2 x float>, float } %i.hq, 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.hr = load float, ptr %i.a, align 4, !tbaa !89 ; 2 uses
  %i.hs = fcmp oeq float %i.hr, 0.000000e+00
  br i1 %i.hs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.ac

bb.l:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  %.fca.0.extract240 = extractvalue { <2 x float>, float } %i.hq, 0 ; 10 uses
  %i.ht = fmul float %.0465, %i.hr
  %.sroa.0849.0.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 0 ; 3 uses
  %foldExtExtBinop986 = fmul <2 x float> %.sroa.0922.0.copyload, %.fca.0.extract240
  %i.hu = extractelement <2 x float> %foldExtExtBinop986, i64 0 ; 2 uses
  %shift988 = shufflevector <2 x float> %.sroa.0922.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop989 = fmul <2 x float> %shift988, %.fca.0.extract240
  %i.hv = extractelement <2 x float> %foldExtExtBinop989, i64 0 ; 2 uses
  %i.hw = fmul float %.sroa.11928.0.copyload, %.sroa.0849.0.vec.extract ; 2 uses
  %i.hx = call noundef float @llvm.fabs.f32(float %i.hu)
  %i.hy = call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hz = call noundef float @llvm.fabs.f32(float %i.hw)
  %.sroa.0849.4.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 1 ; 4 uses
  %.sroa.0.0.vec.extract.i654 = extractelement <2 x float> %.sroa.0910.0.copyload, i64 0
  %i.ia = fmul float %.sroa.0.0.vec.extract.i654, %.sroa.0849.4.vec.extract ; 2 uses
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = fadd float %i.ib, %i.hx
  %i.id = fsub float 1.000000e+00, %.sroa.0849.0.vec.extract
  %i.ie = fsub float %i.id, %.sroa.0849.4.vec.extract ; 5 uses
  %.sroa.0.0.vec.extract.i672 = extractelement <2 x float> %.sroa.0898.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i673 = extractelement <2 x float> %.sroa.0898.0.copyload, i64 1
  %i.if = fmul float %.sroa.11906.0.copyload, %i.ie
  %i.ig = shufflevector <2 x float> %.sroa.0910.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ih = insertelement <4 x float> %i.ig, float %.sroa.11918.0.copyload, i64 1
  %i.ii = insertelement <4 x float> %i.ih, float %i.ie, i64 2
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ik = shufflevector <2 x float> %.fca.0.extract240, <2 x float> %.sroa.0898.0.copyload, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.il = fmul <4 x float> %i.ij, %i.ik           ; 3 uses
  %i.im = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.il) ; 4 uses
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = fadd float %i.in, %i.hy
  %i.ip = extractelement <4 x float> %i.im, i64 1
  %i.iq = fadd float %i.ip, %i.hz
  %i.ir = call noundef float @llvm.fabs.f32(float %i.if)
  %i.is = extractelement <4 x float> %i.im, i64 2
  %i.it = fadd float %i.ic, %i.is
  %i.iu = extractelement <4 x float> %i.im, i64 3
  %i.iv = fadd float %i.io, %i.iu
  %i.iw = fadd float %i.iq, %i.ir
  %i.ix = fmul float %i.it, 3.576280e-07          ; 3 uses
  %i.iy = fmul float %i.iv, 3.576280e-07          ; 3 uses
  %i.iz = fmul float %i.iw, 3.576280e-07          ; 3 uses
  %i.ja = fadd float %i.ia, %i.hu
  %i.jb = extractelement <4 x float> %i.il, i64 0
  %i.jc = fadd float %i.jb, %i.hv
  %i.jd = extractelement <4 x float> %i.il, i64 1
  %i.je = fadd float %i.jd, %i.hw
  %i.jf = fmul float %.sroa.0.0.vec.extract.i672, %.fca.1.extract241
  %i.jg = fmul float %.sroa.0.4.vec.extract.i673, %.fca.1.extract241
  %i.jh = fmul float %.sroa.11906.0.copyload, %.fca.1.extract241
  %i.ji = fadd float %i.jf, %i.ja                 ; 3 uses
  %i.jj = fadd float %i.jg, %i.jc                 ; 3 uses
  %i.jk = fadd float %i.jh, %i.je                 ; 3 uses
  %.sroa.0.0.vec.insert.i724 = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jl = fsub <2 x float> %.sroa.0910.0.copyload, %.sroa.0922.0.copyload ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf:bb.a

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #10 comdat align 2 {
_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit:
  %6 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !1304
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 8, !tbaa !1241 ; 2 uses
  %i.f = fmul <2 x float> %.sroa.040.0.copyload, %.sroa.040.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !1272 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !1276 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = fneg float %i.e
  %i.n = fsub float %i.k, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load <4 x float>, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1275, !range !134, !noundef !135
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1323, !range !134, !noundef !135
  %.not = icmp eq i8 %i.r, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1322 ; 4 uses
  %i.w = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !89
  %i.aa = fmul <2 x float> %3, %i.z               ; 2 uses
  %shift103 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.aa, %shift103
  %i.ab = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !89
  %i.ae = fmul float %4, %i.ad
  %i.af = fadd float %i.ab, %i.ae                 ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1274
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i41.i = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> zeroinitializer
  %sqrt = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.ah = fsub float %i.i, %sqrt
  %i.ai = insertelement <2 x float> poison, float %i.c, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.al = insertelement <2 x float> %i.ak, float %i.l, i64 1
  %i.am = fdiv <2 x float> %i.aj, %i.al
  %i.an = insertelement <2 x float> %i.ak, float %i.m, i64 1
  %i.ao = fmul <2 x float> %.sroa.040.0.copyload, %i.an ; 3 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.aq = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fmul <2 x float> %.sroa.040.0.copyload, %i.ar
  %i.at = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.au = fmul <2 x float> %i.at, %i.ar
  %i.av = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ax = fdiv <2 x float> %i.as, %i.aw           ; 4 uses
  %i.ay = fdiv <2 x float> %i.au, %i.aw           ; 3 uses
  %i.az = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  %i.ba = fmul float %i.az, 0.000000e+00          ; 2 uses
  %i.bb = fneg float %i.ba
  %i.bc = extractelement <2 x float> %i.ao, i64 0
  %i.bd = extractelement <2 x float> %i.ay, i64 0 ; 3 uses
  %i.be = tail call noundef float @llvm.fma.f32(float %i.bc, float %i.bd, float %i.bb)
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.az, float -0.000000e+00, float %i.ba)
  %i.bg = fadd float %i.be, %i.bf                 ; 3 uses
  %i.bh = fmul <2 x float> %i.ap, %i.ay           ; 2 uses
  %i.bi = fneg <2 x float> %i.bh
  %i.bj = insertelement <2 x float> %i.ao, float 0.000000e+00, i64 0
  %i.bk = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ax, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = fneg <2 x float> %i.ap
  %i.bm = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bl, <2 x float> %i.ay, <2 x float> %i.bh)
  %i.bn = fadd <2 x float> %i.bk, %i.bm           ; 3 uses
  %i.bo = fmul float %i.bg, %i.bg
  %i.bp = fmul <2 x float> %i.bn, %i.bn           ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fadd float %i.bo, %i.bq
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fadd float %i.bs, %i.br
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bt) ; 2 uses
  %i.bu = fdiv float %i.bg, %sqrt.i.i.i           ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bn, %i.bw           ; 3 uses
  %.sroa.0.0.vec.insert.i64 = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.by = shufflevector <2 x float> %.sroa.0.0.vec.insert.i64, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2>
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.cb = fmul float %i.af, %i.af
  %i.cc = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.v, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !89 ; 3 uses
  %i.cd = shufflevector <5 x float> %i.cc, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <5 x float> %i.cc, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cf = fmul <2 x float> %i.w, %i.ce
  %i.cg = load <2 x float>, ptr %i.x, align 4, !tbaa !89 ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.cd, <4 x float> %i.ch, <2 x i32> <i32 0, i32 4>
  %i.cj = fmul <2 x float> %3, %i.ci
  %i.ck = fadd <2 x float> %i.cf, %i.cj
  %i.cl = insertelement <2 x float> poison, float %4, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = shufflevector <2 x float> %i.cg, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <5 x float> %i.cc, <5 x float> %i.cn, <2 x i32> <i32 2, i32 6>
  %i.cp = fmul <2 x float> %i.cm, %i.co
  %i.cq = fadd <2 x float> %i.ck, %i.cp           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store <2 x float> %.sroa.0.0.vec.insert.i.i, ptr %6, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i24.i, ptr %.sroa.484.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i41.i, ptr %.sroa.585.0..sroa_idx, align 8
  store float %5, ptr %i.bz, align 8, !tbaa !460
  %i.cr = fmul <2 x float> %i.cq, %i.cq           ; 2 uses
  %shift106 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.cr, %shift106
  %i.cs = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.ct = fadd float %i.cs, %i.cb
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ct) ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fdiv <2 x float> %i.cq, %i.cv
  %i.cx = fdiv float %i.af, %sqrt.i.i.i.i
  store <2 x float> %i.cw, ptr %i.ca, align 4
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.cx, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store <2 x float> %i.by, ptr %i.cy, align 8
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cz = extractelement <2 x float> %i.bx, i64 1
  store float %i.cz, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <2 x float> %i.am, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> %i.ap, ptr %i.dc, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 92
  store <2 x float> %i.ax, ptr %i.dd, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 100
  store float %i.bd, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.dg, i8 0, i64 60, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.df, ptr noundef nonnull align 8 dereferenceable(12) %i.cy, i64 12, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 140
  store <2 x float> %i.ap, ptr %i.dh, align 4
  %.sroa.439.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx40.i, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x float> %i.ax, ptr %i.di, align 8
  %.sroa.4.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %6, i64 160
  store float %i.bd, ptr %.sroa.4.0..sroa_idx33.i, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  br i1 %.not, label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.dk = fneg float %i.bu
  store float %i.dk, ptr %i.cy, align 8, !tbaa !1277
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.dm = fneg <2 x float> %i.bx
  store <2 x float> %i.dm, ptr %i.dl, align 4, !tbaa !89
  %i.dn = load <2 x float>, ptr %i.df, align 8, !tbaa !89
  %i.do = fneg <2 x float> %i.dn
  store <2 x float> %i.do, ptr %i.df, align 8, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !465
  %i.dr = fneg float %i.dq
  store float %i.dr, ptr %i.dp, align 8, !tbaa !465
  br label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit

_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit: ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.a
  call void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.ag, ptr noundef nonnull align 8 dereferenceable(248) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt8Triangle3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(52) %1, <2 x float> %2, float %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Ray", align 8         ; 9 uses
  %5 = alloca %"class.pstd::optional.157", align 8 ; 9 uses
  %6 = alloca %"class.pstd::array.152", align 4   ; 9 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.a = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.b = load <4 x float>, ptr %1, align 4
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.d = fadd <2 x float> %i.a, %i.c
  %i.e = fmul <2 x float> %i.d, splat (float 5.000000e-01)
  %i.f = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.g = fmul float %i.f, 5.000000e-01
  %i.h = tail call noundef float @_ZNK4pbrt8Triangle10SolidAngleENS_6Point3IfEE(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %i.e, float %i.g) ; 3 uses
  %i.i = fcmp olt float %i.h, 3.000000e-04
  %i.j = fcmp ogt float %i.h, 6.220000e+00
  %or.cond = or i1 %i.i, %i.j
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.k = tail call { <2 x float>, float } @_ZNK4pbrt18ShapeSampleContext15OffsetRayOriginENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(52) %1, <2 x float> %2, float %3), !noalias !1324 ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.k, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.k, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load float, ptr %i.l, align 4, !tbaa !1264, !noalias !1324
  store <2 x float> %.fca.0.extract.i, ptr %4, align 8, !alias.scope !1324
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !1324
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %2, ptr %i.n, align 4, !alias.scope !1324
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %3, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !1324
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.m, ptr %i.o, align 8, !tbaa !1288, !alias.scope !1324
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !34, !alias.scope !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.157") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, float noundef +inf)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1327, !range !134, !noundef !135
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !1243
  %i.u = load i32, ptr %0, align 4, !tbaa !1245
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1247
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1251 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1253
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1256
  %i.ae = mul nsw i32 %i.ad, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1257 ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !97
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.al, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !97
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !97
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.au = load <2 x float>, ptr %i.ap, align 4
  %i.av = load <2 x float>, ptr %.sroa.453.0..sroa_idx.i, align 4
  %i.aw = load <2 x float>, ptr %i.at, align 4
  %i.ax = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.ay = fsub <2 x float> %i.au, %.sroa.029.0.copyload.i ; 2 uses
  %i.az = shufflevector <2 x float> %.sroa.029.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x float> %i.az, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.bb = fsub <2 x float> %i.av, %i.ba           ; 3 uses
  %i.bc = fsub <2 x float> %i.aw, %.sroa.029.0.copyload.i ; 3 uses
  %i.bd = fsub <2 x float> %i.ax, %i.ba           ; 2 uses
  %i.be = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bg = fmul float %i.be, %i.bf                 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = extractelement <2 x float> %i.bb, i64 1
  %i.bj = extractelement <2 x float> %i.bc, i64 0
  %i.bk = call noundef float @llvm.fma.f32(float %i.bi, float %i.bj, float %i.bh)
  %i.bl = fneg float %i.be
  %i.bm = call noundef float @llvm.fma.f32(float %i.bl, float %i.bf, float %i.bg)
  %i.bn = fadd float %i.bk, %i.bm                 ; 2 uses
  %i.bo = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.bp = fneg <2 x float> %i.bo
  %i.bq = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ay, <2 x float> %i.bd, <2 x float> %i.bp)
  %i.br = fneg <2 x float> %i.bb
  %i.bs = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.br, <2 x float> %i.bc, <2 x float> %i.bo)
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fmul float %i.bn, %i.bn
  %i.bv = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = fadd float %i.bw, %i.bu
  %i.by = extractelement <2 x float> %i.bv, i64 0
  %i.bz = fadd float %i.by, %i.bx
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i.i, 5.000000e-01
  %i.cb = fdiv float 1.000000e+00, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cc, align 8 ; 2 uses
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.2143.0.copyload = load float, ptr %.sroa.2143.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0339.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.cd = fneg float %.sroa.0339.0.vec.extract
  %.sroa.0339.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.ce = fneg float %.sroa.0339.4.vec.extract
  %i.cf = fneg float %3                           ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 1
  %i.cg = fmul float %.sroa.2143.0.copyload, %i.cf ; 2 uses
  %i.ch = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.ce, float %i.cg)
  %i.ci = fneg float %i.cg
  %i.cj = call noundef float @llvm.fma.f32(float %.sroa.2143.0.copyload, float %i.cf, float %i.ci)
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.cd, float %i.ck)
  %i.cm = call noundef float @llvm.fabs.f32(float %i.cl)
  %.sroa.0.sroa.3.0.copyload.i185 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i187 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.cn = fadd float %.sroa.0.sroa.3.0.copyload.i185, %.sroa.0.sroa.4.0.copyload.i187
  %i.co = fmul float %i.cn, 5.000000e-01
  %.sroa.0.sroa.3.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.3.0.copyload.i202 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i201, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.0.sroa.4.0.copyload.i204 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i203, align 4
  %i.cp = fadd float %.sroa.0.sroa.3.0.copyload.i202, %.sroa.0.sroa.4.0.copyload.i204
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %1, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.cu = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cv = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = fmul <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = load <6 x float>, ptr %5, align 8       ; 2 uses
  %i.cz = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.da = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = fmul <2 x float> %i.db, splat (float 5.000000e-01)
  %i.dd = fsub <2 x float> %i.cx, %i.dc           ; 2 uses
  %i.de = fmul <2 x float> %i.dd, %i.dd           ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fadd float %i.df, %i.cs
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = fdiv float %i.cm, %i.di
  %i.dk = fdiv float %i.cb, %i.dj                 ; 2 uses
  %i.dl = call float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp oeq float %i.dl, +inf
  %spec.select = select i1 %i.dm, float 0.000000e+00, float %i.dk
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi float [ %spec.select, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.dn = fdiv float 1.000000e+00, %i.h           ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !1277
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = fcmp une float %i.ds, 0.000000e+00
  %or.cond.i = select i1 %i.dq, i1 true, i1 %i.dt
  br i1 %or.cond.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit:  ; preds = %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !465
  %i.dw = fcmp une float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.g

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.e, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit
  %i.dx = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !1243
  %i.dy = load i32, ptr %0, align 4, !tbaa !1245
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1247
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1251 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1253
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !1256
  %i.ei = mul nsw i32 %i.eh, 3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !1257 ; 3 uses
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !97
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.eo ; 2 uses
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !97
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.es ; 2 uses
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !97
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.ew ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ey = load <2 x float>, ptr %i.ep, align 4    ; 3 uses
  %i.ez = load <2 x float>, ptr %i.et, align 4    ; 3 uses
  %i.fa = load <2 x float>, ptr %i.ex, align 4    ; 2 uses
  %i.fb = extractelement <2 x float> %i.ey, i64 0
  %.sroa.4350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fc = load <2 x float>, ptr %.sroa.5331.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.fd = extractelement <2 x float> %i.ez, i64 0
  %.sroa.7353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load <2 x float>, ptr %.sroa.5323.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ff = extractelement <2 x float> %i.fa, i64 0
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fg = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store float %i.fb, ptr %6, align 4
  store <2 x float> %i.fc, ptr %.sroa.4350.0..sroa_idx, align 4
  store float %i.fd, ptr %.sroa.6352.0..sroa_idx, align 4
  store <2 x float> %i.fe, ptr %.sroa.7353.0..sroa_idx, align 4
  store float %i.ff, ptr %.sroa.9354.0..sroa_idx, align 4
  store <2 x float> %i.fg, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0.copyload.i223 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i225 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.fh = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fi = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fk = fadd <2 x float> %i.fh, %i.fj
  %i.fl = fmul <2 x float> %i.fk, splat (float 5.000000e-01)
  %i.fm = fadd float %.sroa.0.sroa.5.0.copyload.i223, %.sroa.0.sroa.6.0.copyload.i225
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = call <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36) %6, <2 x float> %i.fl, float %i.fn, <2 x float> %2, float %3) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.fp = fcmp olt <2 x float> %i.fo, zeroinitializer
  %i.fq = fcmp ogt <2 x float> %i.fo, splat (float 1.000000e+00)
  %i.fr = or <2 x i1> %i.fp, %i.fq                ; 2 uses
  %i.fs = extractelement <2 x i1> %i.fr, i64 0
  %i.ft = extractelement <2 x i1> %i.fr, i64 1
  %or.cond8.i = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond8.i, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %i.fo, i64 1 ; 3 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %i.fo, i64 0 ; 3 uses
  %.sroa.031.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 3 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.232.0.copyload = load float, ptr %.sroa.232.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0.sroa.0.0.copyload.i230 = load float, ptr %1, align 4
  %.sroa.0.sroa.2.0.copyload.i232 = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %.sroa.0.sroa.3.0.copyload.i234 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i236 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %.scalar = fadd float %.sroa.0.sroa.3.0.copyload.i234, %.sroa.0.sroa.4.0.copyload.i236
  %7 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.scalar, i64 1
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %9 = fmul <4 x float> %8, <float 0.000000e+00, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i238 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i240 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %10 = insertelement <2 x float> poison, float %.sroa.0.sroa.5.0.copyload.i238, i64 0
  %11 = insertelement <2 x float> %10, float %.sroa.0.sroa.0.0.copyload.i230, i64 1
  %12 = insertelement <2 x float> poison, float %.sroa.0.sroa.6.0.copyload.i240, i64 0
  %13 = insertelement <2 x float> %12, float %.sroa.0.sroa.2.0.copyload.i232, i64 1
  %14 = fadd <2 x float> %11, %13
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %16 = fmul <4 x float> %15, splat (float 5.000000e-01) ; 3 uses
  %17 = shufflevector <2 x float> %i.fc, <2 x float> %i.fg, <2 x i32> <i32 1, i32 3>
  %18 = shufflevector <4 x float> %16, <4 x float> poison, <2 x i32> zeroinitializer
  %19 = fsub <2 x float> %17, %18                 ; 3 uses
  %i.fu = fmul <2 x float> %19, %19
  %i.fv = shufflevector <2 x float> %i.ez, <2 x float> %i.ey, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fw = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 0, i32 1, i32 4> ; 2 uses
  %20 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fy = fsub <4 x float> %i.fx, %20
  %i.fz = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %21 = insertelement <4 x float> %i.fz, float -0.000000e+00, i64 0
  %i.ga = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gb = shufflevector <4 x float> %21, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gd = fsub <4 x float> %i.gc, %9              ; 3 uses
  %22 = insertelement <4 x float> %i.fz, float 1.000000e+00, i64 0
  %i.ge = shufflevector <4 x float> %22, <4 x float> %i.ga, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gg = fsub <4 x float> %i.gf, %9
  %23 = fmul <4 x float> %i.gd, %i.gg
  %24 = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> %i.fx, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.gh = fsub <4 x float> %25, %16               ; 4 uses
  %i.gi = fmul <4 x float> %i.gh, %i.gh
  %i.gj = fadd <4 x float> %i.gi, %23             ; 2 uses
  %26 = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gk = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gl = shufflevector <4 x float> %26, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gm = fadd <4 x float> %i.gj, %i.gl
  %i.gn = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.gm) ; 3 uses
  %27 = shufflevector <4 x float> %i.gh, <4 x float> %i.gd, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %28 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.go = fdiv <4 x float> %29, %i.gn             ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %.sroa.232.0.copyload, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <4 x float> %i.go, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gs = fmul <2 x float> %i.gq, %i.gr           ; 2 uses
  %i.gt = fneg <2 x float> %i.gs
  %i.gu = fdiv <4 x float> %i.fy, %i.gn
  %30 = shufflevector <4 x float> %i.gd, <4 x float> %i.gh, <4 x i32> <i32 1, i32 4, i32 2, i32 3>
  %i.gv = fdiv <4 x float> %30, %i.gn             ; 2 uses
  %i.gw = extractelement <4 x float> %i.gv, i64 1
  %i.gx = fmul float %.sroa.232.0.copyload, %i.gw ; 2 uses
  %i.gy = fneg float %i.gx
  %i.gz = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ha = insertelement <2 x float> %i.gz, float %.sroa.232.0.copyload, i64 1
  %31 = shufflevector <2 x float> %i.ha, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hb = shufflevector <2 x float> %i.gs, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hc = insertelement <4 x float> %i.hb, float %i.gx, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gy, i64 1 ; 2 uses
  %i.he = call <4 x float> @llvm.fma.v4f32(<4 x float> %31, <4 x float> %i.gv, <4 x float> %i.hd)
  %i.hf = insertelement <2 x float> %.sroa.031.0.copyload, float %.sroa.232.0.copyload, i64 0
  %32 = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hg = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.hh = shufflevector <2 x float> %i.gt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hi = shufflevector <4 x float> %i.hg, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hj = call <4 x float> @llvm.fma.v4f32(<4 x float> %32, <4 x float> %i.go, <4 x float> %i.hi)
  %i.hk = fadd <4 x float> %i.he, %i.hj
  %i.hl = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hm = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.hl, <4 x float> %i.gu, <4 x float> %i.hk)
  %i.hn = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hm) ; 2 uses
  %i.ho = fcmp ogt <4 x float> %i.hn, splat (float f0x3C23D70A)
  %i.hp = select <4 x i1> %i.ho, <4 x float> %i.hn, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.hq = extractelement <4 x float> %i.hp, i64 0 ; 2 uses
  %foldExtExtBinop = fadd <4 x float> %i.hp, %i.hp
  %i.hr = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.hs = extractelement <4 x float> %i.hp, i64 2 ; 2 uses
  %i.ht = fadd float %i.hr, %i.hs
  %i.hu = extractelement <4 x float> %i.hp, i64 3 ; 2 uses
  %i.hv = fadd float %i.ht, %i.hu
  %i.hw = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.hx = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.hy = fmul float %i.hw, %i.hx
  %i.hz = fmul float %i.hy, %i.hq
  %i.ia = fmul float %.sroa.020.0.vec.extract.i, %i.hx
  %i.ib = fmul float %i.ia, %i.hq
  %i.ic = fadd float %i.hz, %i.ib
  %i.id = fmul float %.sroa.020.4.vec.extract.i, %i.hw
  %i.ie = fmul float %i.id, %i.hs
  %i.if = fadd float %i.ic, %i.ie
  %i.ig = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.ih = fmul float %i.ig, %i.hu
  %i.ii = fadd float %i.if, %i.ih
  %i.ij = fmul float %i.ii, 4.000000e+00
  %i.ik = fdiv float %i.ij, %i.hv
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, %bb.f
  %.0.i = phi float [ %i.ik, %bb.f ], [ 0.000000e+00, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ]
  %i.il = fmul float %i.dn, %.0.i
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.d
  %.1 = phi float [ %.0, %bb.d ], [ %i.il, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ %i.dn, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit ]
  ret float %.1
}

declare void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional.157") align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

declare <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36), <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt5Curve3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt4Disk12NormalBoundsEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt8Triangle12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt13BilinearPatch12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !393    ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = lshr i64 %i.a, 57
  %i.e = trunc nuw nsw i64 %i.d to i32
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(42) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

declare void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape6SampleENS_6Point2IfEEEUlT_E_N4pstd8optionalINS_11ShapeSampleEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS5_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1329, !noalias !135, !nonnull !135, !align !800
  %.sroa.0.0.copyload.i16 = load <2 x float>, ptr %i.a, align 4, !noalias !135 ; 6 uses
  switch i32 %3, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(42) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8, ptr noundef nonnull align 4 dereferenceable(12), <2 x float>) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8, ptr noundef nonnull align 8 dereferenceable(16), <2 x float>) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef byval(%"class.pbrt::Point3fi") align 8 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #30 comdat {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i)
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i)
  %i.c = tail call noundef float @llvm.fabs.f32(float %2) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !291 ; 2 uses
  %i.j = load float, ptr %i.g, align 8, !tbaa !293 ; 2 uses
  %i.k = fsub float %i.i, %i.j
  %i.l = fmul float %i.k, 5.000000e-01            ; 2 uses
  %i.m = fmul float %i.c, %i.l                    ; 2 uses
  %i.n = fneg float %i.m
  %i.o = tail call noundef float @llvm.fma.f32(float %i.c, float %i.l, float %i.n)
  %.sroa.04.0.vec.extract.i76 = extractelement <2 x float> %3, i64 0
  %.sroa.04.4.vec.extract.i78 = extractelement <2 x float> %3, i64 1
  %i.p = fmul float %2, %4                        ; 2 uses
  %i.q = tail call noundef float @llvm.fma.f32(float %.sroa.03.4.vec.extract.i, float %.sroa.04.4.vec.extract.i78, float %i.p)
  %i.r = fneg float %i.p
  %i.s = tail call noundef float @llvm.fma.f32(float %2, float %4, float %i.r)
  %i.t = fadd float %i.q, %i.s
  %i.u = tail call noundef float @llvm.fma.f32(float %.sroa.03.0.vec.extract.i, float %.sroa.04.0.vec.extract.i76, float %i.t)
  %i.v = fcmp olt float %i.u, 0.000000e+00        ; 2 uses
  %i.w = fadd float %i.i, %i.j
  %i.x = fmul float %i.w, 5.000000e-01
  %i.y = load <4 x float>, ptr %0, align 8, !tbaa !89 ; 3 uses
  %i.z = load float, ptr %i.f, align 4, !tbaa !291
  %i.aa = load float, ptr %i.e, align 8, !tbaa !293
  %i.ab = load float, ptr %i.d, align 4, !tbaa !291
  %i.ac = extractelement <4 x float> %i.y, i64 0
  %i.ad = fsub float %i.ab, %i.ac
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = fsub float %i.z, %i.aa
  %i.ag = fmul float %i.af, 5.000000e-01
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.b, float %i.ag, float %i.m)
  %i.ai = fadd float %i.ah, %i.o
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.a, float %i.ae, float %i.ai) ; 2 uses
  %i.ak = fmul float %2, %i.aj                    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.aj, i64 0
end_hunk_1
