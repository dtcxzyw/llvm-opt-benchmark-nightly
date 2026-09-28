Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexFilters?download=true
inline.NumInlined: 85
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Ptex4v2_410PtexFilter9getFilterEPNS0_11PtexTextureERKNS1_7OptionsE:bb.a

.noexc61:                                         ; preds = %.noexc60
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 72
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !53
  %i.ix = load ptr, ptr %0, align 8, !tbaa !10
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 72
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef i32 %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc62 unwind label %bb.x, !inline_history !44

.noexc62:                                         ; preds = %.noexc61
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 76
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !54
  %i.jc = load i32, ptr %i.ib, align 8, !tbaa !55
  %i.jd = icmp slt i32 %i.jc, 16
  br i1 %i.jd, label %bb.w, label %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit63

bb.w:                                             ; preds = %.noexc62
  %i.je = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store i8 0, ptr %i.je, align 8, !tbaa !56
  br label %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit63

_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit63: ; preds = %.noexc62, %bb.w
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hz, i64 96 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hz, i64 80
  store ptr @_ZN4Ptex4v2_417PtexBicubicFilter8kernelFnEfPKf, ptr %i.jg, align 8, !tbaa !28
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hz, i64 88
  store ptr %i.jf, ptr %i.jh, align 8, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4Ptex4v2_417PtexBicubicFilterE, i64 16), ptr %i.hz, align 8, !tbaa !10
  store <4 x float> <float f0x3F955556, float -2.000000e+00, float f0x3F638E39, float f0xBEC71C72>, ptr %i.jf, align 8, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hz, i64 112
  store <2 x float> <float 2.000000e+00, float f0xC0555556>, ptr %i.ji, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hz, i64 120
  store float f0x3FE38E39, ptr %i.jj, align 8, !tbaa !26
  br label %bb.ab

bb.x:                                             ; preds = %.noexc61, %.noexc60, %.noexc59, %.noexc58, %bb.v
  %i.jk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 128) #11
  br label %bb.ac

bb.y:                                             ; preds = %bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !45
  %cond = icmp eq i32 %i.jm, 0
  br i1 %cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jn = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #10 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4Ptex4v2_418PtexPointFilterTriE, i64 16), ptr %i.jn, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %0, ptr %i.jo, align 8, !tbaa !31
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.jp = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #10 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4Ptex4v2_418PtexTriangleFilterE, i64 16), ptr %i.jp, align 8, !tbaa !10
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %0, ptr %i.jq, align 8, !tbaa !59
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jr, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !49
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.js, i8 0, i64 28, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit63, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit57, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit51, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit, %_ZN4Ptex4v2_418PtexGaussianFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit, %_ZN4Ptex4v2_413PtexBoxFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit, %_ZN4Ptex4v2_418PtexBilinearFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit, %bb.a, %bb.aa, %bb.z, %bb.c
  %.025 = phi ptr [ %i.hz, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit63 ], [ %i.i, %_ZN4Ptex4v2_418PtexBilinearFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit ], [ %i.g, %bb.c ], [ %i.jp, %bb.aa ], [ %i.gn, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit57 ], [ %i.ap, %_ZN4Ptex4v2_413PtexBoxFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit ], [ %i.bw, %_ZN4Ptex4v2_418PtexGaussianFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsE.exit ], [ %i.df, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit ], [ %i.fb, %_ZN4Ptex4v2_417PtexBicubicFilterC2EPNS0_11PtexTextureERKNS0_10PtexFilter7OptionsEf.exit51 ], [ %i.jn, %bb.z ], [ null, %bb.a ]
  ret ptr %.025

bb.ac:                                            ; preds = %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.i ], [ %i.ao, %bb.f ], [ %i.jk, %bb.x ], [ %i.de, %bb.l ], [ %i.fa, %bb.o ], [ %i.gm, %bb.r ], [ %i.hy, %bb.u ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_415PtexPointFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_415PtexPointFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_415PtexPointFilter4evalEPfiiiffffffff(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %3, 1
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %4, 0
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = icmp slt i32 %4, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %4) ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !33
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !60
  %i.t = zext nneg i8 %i.s to i32
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = sitofp i32 %i.q to float
  %i.w = fmul float %5, %i.v
  %i.x = fptosi float %i.w to i32
  %i.y = add nsw i32 %i.q, -1
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 0)
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.y)
  %i.ab = sitofp i32 %i.u to float
  %i.ac = fmul float %6, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = add nsw i32 %i.u, -1
  %i.af = tail call noundef i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.ae)
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %4, i32 noundef %i.aa, i32 noundef %i.ag, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexBilinearFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableFilter7releaseEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  ret void
}

declare void @_ZN4Ptex4v2_419PtexSeparableFilter4evalEPfiiiffffffff(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexBilinearFilter11buildKernelERNS0_19PtexSeparableKernelEffffNS0_3ResE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %6 to i32
  %.sroa.2.0.extract.shift = lshr i16 %6, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.a = fcmp olt float %4, 1.000000e+00
  %i.b = select i1 %i.a, float %4, float 1.000000e+00 ; 2 uses
  %i.c = fcmp olt float %5, 1.000000e+00
  %i.d = select i1 %i.c, float %5, float 1.000000e+00 ; 2 uses
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.e = ashr exact i32 %sext, 1
  %i.f = sub nsw i32 1065353216, %i.e
  %i.g = bitcast i32 %i.f to float                ; 2 uses
  %i.h = fcmp ogt float %i.b, %i.g
  %i.i = select i1 %i.h, float %i.b, float %i.g
  %sext32 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.j = ashr exact i32 %sext32, 1
  %i.k = sub nsw i32 1065353216, %i.j
  %i.l = bitcast i32 %i.k to float                ; 2 uses
  %i.m = fcmp ogt float %i.d, %i.l
  %i.n = select i1 %i.m, float %i.d, float %i.l
  %i.o = bitcast float %i.i to i32
  %i.p = lshr i32 %i.o, 23
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = bitcast float %i.n to i32
  %sh.diff = lshr i32 %i.r, 15
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %i.s = and i16 %tr.sh.diff, -256
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %reass.sub.a = sub nsw i16 127, %i.q            ; 2 uses
  %.sroa.0.0.insert.ext = and i16 %reass.sub.a, 255
  %reass.sub = sub i16 %.sroa.0.0.insert.ext, %i.s
  %.sroa.0.0.insert.insert = add i16 %reass.sub, 32512 ; 2 uses
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 8, !tbaa !34
  %i.t = and i16 %reass.sub.a, 255
  %i.u = zext nneg i16 %i.t to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = lshr i16 %.sroa.0.0.insert.insert, 8
  %i.x = zext nneg i16 %i.w to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = insertelement <2 x i32> poison, i32 %i.v, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %i.y, i64 1
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>
  %i.ac = insertelement <2 x float> poison, float %2, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %3, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ab, <2 x float> splat (float -5.000000e-01)) ; 2 uses
  %i.af = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ae) ; 2 uses
  %i.ag = fptosi <2 x float> %i.af to <2 x i32>
  store <2 x i32> %i.ag, ptr %7, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 2, ptr %i.ah, align 4, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 2, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = fsub <2 x float> %i.ae, %i.af           ; 3 uses
  %i.an = fsub <2 x float> splat (float 1.000000e+00), %i.am ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0
  store float %i.ao, ptr %i.ak, align 4, !tbaa !26
  %i.ap = extractelement <2 x float> %i.am, i64 0
  store float %i.ap, ptr %i.al, align 4, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 2 uses
  %i.as = extractelement <2 x float> %i.an, i64 1
  store float %i.as, ptr %i.ar, align 4, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = extractelement <2 x float> %i.am, i64 1
  store float %i.au, ptr %i.at, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_413PtexBoxFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_413PtexBoxFilter11buildKernelERNS0_19PtexSeparableKernelEffffNS0_3ResE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i16 %6, 8
  %i.a = insertelement <2 x float> poison, float %4, i64 0
  %i.b = insertelement <2 x float> %i.a, float %5, i64 1 ; 2 uses
  %i.c = fcmp olt <2 x float> %i.b, splat (float 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = insertelement <2 x i16> poison, i16 %6, i64 0
  %i.f = insertelement <2 x i16> %i.e, i16 %.sroa.2.0.extract.shift, i64 1
  %i.g = zext <2 x i16> %i.f to <2 x i32>
  %i.h = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.i = shl <2 x i32> %i.g, splat (i32 24)
  %i.j = ashr exact <2 x i32> %i.i, splat (i32 1)
  %i.k = sub nsw <2 x i32> splat (i32 1065353216), %i.j
  %i.l = bitcast <2 x i32> %i.k to <2 x float>    ; 2 uses
  %i.m = fcmp ogt <2 x float> %i.h, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %i.h, <2 x float> %i.l ; 3 uses
  %bc = bitcast <2 x float> %i.n to <2 x i32>
  %i.o = extractelement <2 x i32> %bc, i64 0
  %i.p = lshr i32 %i.o, 23
  %i.q = trunc nuw nsw i32 %i.p to i16
  %i.r = sub nsw i16 127, %i.q                    ; 2 uses
  %bc74 = bitcast <2 x float> %i.n to <2 x i32>
  %i.s = extractelement <2 x i32> %bc74, i64 1
  %sh.diff = lshr i32 %i.s, 15
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %i.t = and i16 %tr.sh.diff, -256
  %.sroa.0.0.insert.ext = and i16 %i.r, 255
  %reass.sub = sub i16 %.sroa.0.0.insert.ext, %i.t
  %.sroa.0.0.insert.insert = add i16 %reass.sub, 32512 ; 2 uses
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 8, !tbaa !34
  %i.u = and i16 %i.r, 255
  %i.v = zext nneg i16 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = lshr i16 %.sroa.0.0.insert.insert, 8
  %i.y = zext nneg i16 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.z, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>   ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %2, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %3, i64 1
  %i.af = fmul <2 x float> %i.ae, %i.ac           ; 2 uses
  %i.ag = fmul <2 x float> %i.n, %i.ac            ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float -5.000000e-01), <2 x float> %i.af) ; 3 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 5.000000e-01), <2 x float> %i.af) ; 2 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.ak = tail call noundef float @llvm.ceil.f32(float %i.aj) ; 2 uses
  %i.al = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ah) ; 3 uses
  %i.am = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.an = tail call noundef float @llvm.ceil.f32(float %i.am) ; 2 uses
  %i.ao = fptosi <2 x float> %i.al to <2 x i32>   ; 3 uses
  store <2 x i32> %i.ao, ptr %i.d, align 4, !tbaa !25
  %i.ap = fptosi float %i.ak to i32
  %i.aq = extractelement <2 x i32> %i.ao, i64 0
  %i.ar = sub nsw i32 %i.ap, %i.aq                ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !36
  %i.at = fptosi float %i.an to i32
  %i.au = extractelement <2 x i32> %i.ao, i64 1
  %i.av = sub nsw i32 %i.at, %i.au                ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.al, %i.ah
  %i.az = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ba = fadd float %i.az, 1.000000e+00          ; 2 uses
  %i.bb = fsub float %i.aj, %i.ak
  %i.bc = fadd float %i.bb, 1.000000e+00          ; 2 uses
  %i.bd = icmp eq i32 %i.ar, 1
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.be = fadd float %i.ba, %i.bc
  %i.bf = fadd float %i.be, -1.000000e+00
  store float %i.bf, ptr %i.ay, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit

bb.c:                                             ; preds = %bb.a
  store float %i.ba, ptr %i.ay, align 4, !tbaa !26
  %i.bg = add i32 %i.ar, -1                       ; 2 uses
  %i.bh = icmp sgt i32 %i.ar, 2
  br i1 %i.bh, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.bg to i64 ; 2 uses
  %i.bi = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bi, -8                      ; 3 uses
  %i.bj = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  store <4 x float> splat (float 1.000000e+00), ptr %i.bl, align 4, !tbaa !26
  store <4 x float> splat (float 1.000000e+00), ptr %i.bm, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.c
  %i.bo = sext i32 %i.bg to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bo
  store float %i.bc, ptr %i.bp, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.bq, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit: ; preds = %bb.b, %._crit_edge.i
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 5 uses
  %foldExtExtBinop72 = fsub <2 x float> %i.al, %i.ah
  %i.bt = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.bu = fadd float %i.bt, 1.000000e+00          ; 2 uses
  %i.bv = fsub float %i.am, %i.an
  %i.bw = fadd float %i.bv, 1.000000e+00          ; 2 uses
  %i.bx = icmp eq i32 %i.av, 1
  br i1 %i.bx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit
  %i.by = fadd float %i.bu, %i.bw
  %i.bz = fadd float %i.by, -1.000000e+00
  store float %i.bz, ptr %i.bs, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit59

bb.e:                                             ; preds = %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit
  store float %i.bu, ptr %i.bs, align 4, !tbaa !26
  %i.ca = add i32 %i.av, -1                       ; 2 uses
  %i.cb = icmp sgt i32 %i.av, 2
  br i1 %i.cb, label %.lr.ph.preheader.i53, label %._crit_edge.i52

.lr.ph.preheader.i53:                             ; preds = %bb.e
  %wide.trip.count.i54 = zext nneg i32 %i.ca to i64 ; 2 uses
  %i.cc = add nsw i64 %wide.trip.count.i54, -1    ; 3 uses
  %min.iters.check62 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check62, label %.lr.ph.i55.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.preheader.i53
  %n.vec64 = and i64 %i.cc, -8                    ; 3 uses
end_hunk_0
