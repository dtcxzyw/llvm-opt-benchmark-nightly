Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexFilters?download=true
inline.NumInlined: 85
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Ptex4v2_410PtexFilter9getFilterEPNS0_11PtexTextureERKNS1_7OptionsE:bb.a
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = invoke noundef i32 %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc59 unwind label %bb.x, !inline_history !44

.noexc59:                                         ; preds = %.noexc58
  %i.im = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  store i32 %i.il, ptr %i.im, align 8, !tbaa !51
  %i.in = load ptr, ptr %0, align 8, !tbaa !10
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = invoke noundef i32 %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc60 unwind label %bb.x, !inline_history !44

.noexc60:                                         ; preds = %.noexc59
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hz, i64 68
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !52
  %i.is = load ptr, ptr %0, align 8, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = invoke noundef i32 %i.iu(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %.noexc61 unwind label %bb.x, !inline_history !44

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
  %7 = ashr exact i32 %sext32, 1
  %i.j = sub nsw i32 1065353216, %7
  %i.k = bitcast i32 %i.j to float                ; 2 uses
  %i.l = fcmp ogt float %i.d, %i.k
  %i.m = select i1 %i.l, float %i.d, float %i.k
  %i.n = bitcast float %i.i to i32
  %i.o = lshr i32 %i.n, 23
  %i.p = trunc nuw nsw i32 %i.o to i16
  %i.q = bitcast float %i.m to i32
  %sh.diff = lshr i32 %i.q, 15
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %i.r = and i16 %tr.sh.diff, -256
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = sub nsw i16 127, %i.p                    ; 2 uses
  %.sroa.0.0.insert.ext = and i16 %i.t, 255
  %reass.sub = sub i16 %.sroa.0.0.insert.ext, %i.r
  %.sroa.0.0.insert.insert = add i16 %reass.sub, 32512 ; 2 uses
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 8, !tbaa !34
  %i.u = and i16 %i.t, 255
  %i.v = zext nneg i16 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = lshr i16 %.sroa.0.0.insert.insert, 8
  %i.y = zext nneg i16 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.z, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>
  %i.ad = insertelement <2 x float> poison, float %2, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %3, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.ac, <2 x float> splat (float -5.000000e-01)) ; 2 uses
  %i.ag = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.af) ; 2 uses
  %i.ah = fptosi <2 x float> %i.ag to <2 x i32>
  store <2 x i32> %i.ah, ptr %i.s, align 4, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 2, ptr %i.ai, align 4, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 2, ptr %i.aj, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = fsub <2 x float> %i.af, %i.ag           ; 3 uses
  %i.ao = fsub <2 x float> splat (float 1.000000e+00), %i.an ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0
  store float %i.ap, ptr %i.al, align 4, !tbaa !26
  %i.aq = extractelement <2 x float> %i.an, i64 0
  store float %i.aq, ptr %i.am, align 4, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  %i.at = extractelement <2 x float> %i.ao, i64 1
  store float %i.at, ptr %i.as, align 4, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.av = extractelement <2 x float> %i.an, i64 1
  store float %i.av, ptr %i.au, align 4, !tbaa !26
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
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = insertelement <2 x float> %7, float %5, i64 1 ; 2 uses
  %9 = fcmp olt <2 x float> %8, splat (float 1.000000e+00)
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %11 = insertelement <2 x i16> poison, i16 %6, i64 0
  %12 = insertelement <2 x i16> %11, i16 %.sroa.2.0.extract.shift, i64 1
  %13 = zext <2 x i16> %12 to <2 x i32>
  %14 = select <2 x i1> %9, <2 x float> %8, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %15 = shl <2 x i32> %13, splat (i32 24)
  %16 = ashr exact <2 x i32> %15, splat (i32 1)
  %17 = sub nsw <2 x i32> splat (i32 1065353216), %16
  %18 = bitcast <2 x i32> %17 to <2 x float>      ; 2 uses
  %19 = fcmp ogt <2 x float> %14, %18
  %20 = select <2 x i1> %19, <2 x float> %14, <2 x float> %18 ; 3 uses
  %bc = bitcast <2 x float> %20 to <2 x i32>
  %21 = extractelement <2 x i32> %bc, i64 0
  %i.a = lshr i32 %21, 23
  %i.b = trunc nuw nsw i32 %i.a to i16
  %i.c = sub nsw i16 127, %i.b                    ; 2 uses
  %bc74 = bitcast <2 x float> %20 to <2 x i32>
  %22 = extractelement <2 x i32> %bc74, i64 1
  %sh.diff = lshr i32 %22, 15
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %i.d = and i16 %tr.sh.diff, -256
  %.sroa.0.0.insert.ext = and i16 %i.c, 255
  %reass.sub = sub i16 %.sroa.0.0.insert.ext, %i.d
  %.sroa.0.0.insert.insert = add i16 %reass.sub, 32512 ; 2 uses
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 8, !tbaa !34
  %i.e = and i16 %i.c, 255
  %i.f = zext nneg i16 %i.e to i32
  %i.g = shl nuw i32 1, %i.f
  %i.h = lshr i16 %.sroa.0.0.insert.insert, 8
  %i.i = zext nneg i16 %i.h to i32
  %i.j = shl nuw i32 1, %i.i
  %23 = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %24 = insertelement <2 x i32> %23, i32 %i.j, i64 1
  %25 = sitofp <2 x i32> %24 to <2 x float>       ; 2 uses
  %i.k = insertelement <2 x float> poison, float %2, i64 0
  %i.l = insertelement <2 x float> %i.k, float %3, i64 1
  %i.m = fmul <2 x float> %i.l, %25               ; 2 uses
  %26 = fmul <2 x float> %20, %25                 ; 2 uses
  %27 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> splat (float -5.000000e-01), <2 x float> %i.m) ; 3 uses
  %28 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> splat (float 5.000000e-01), <2 x float> %i.m) ; 2 uses
  %i.n = extractelement <2 x float> %28, i64 0    ; 2 uses
  %i.o = tail call noundef float @llvm.ceil.f32(float %i.n) ; 2 uses
  %29 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %27) ; 3 uses
  %i.p = extractelement <2 x float> %28, i64 1    ; 2 uses
  %i.q = tail call noundef float @llvm.ceil.f32(float %i.p) ; 2 uses
  %30 = fptosi <2 x float> %29 to <2 x i32>       ; 3 uses
  store <2 x i32> %30, ptr %10, align 4, !tbaa !25
  %i.r = fptosi float %i.o to i32
  %31 = extractelement <2 x i32> %30, i64 0
  %i.s = sub nsw i32 %i.r, %31                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.s, ptr %i.t, align 4, !tbaa !36
  %i.u = fptosi float %i.q to i32
  %32 = extractelement <2 x i32> %30, i64 1
  %i.v = sub nsw i32 %i.u, %32                    ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.v, ptr %i.w, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %29, %27
  %33 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = fadd float %33, 1.000000e+00             ; 2 uses
  %i.aa = fsub float %i.n, %i.o
  %i.ab = fadd float %i.aa, 1.000000e+00          ; 2 uses
  %i.ac = icmp eq i32 %i.s, 1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = fadd float %i.z, %i.ab
  %i.ae = fadd float %i.ad, -1.000000e+00
  store float %i.ae, ptr %i.y, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit

bb.c:                                             ; preds = %bb.a
  store float %i.z, ptr %i.y, align 4, !tbaa !26
  %i.af = add i32 %i.s, -1                        ; 2 uses
  %i.ag = icmp sgt i32 %i.s, 2
  br i1 %i.ag, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.af to i64 ; 2 uses
  %i.ah = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ah, -8                      ; 3 uses
  %i.ai = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store <4 x float> splat (float 1.000000e+00), ptr %i.ak, align 4, !tbaa !26
  store <4 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.c
  %i.an = sext i32 %i.af to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.an
  store float %i.ab, ptr %i.ao, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !62

_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit: ; preds = %bb.b, %._crit_edge.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !39 ; 5 uses
  %foldExtExtBinop72 = fsub <2 x float> %29, %27
  %34 = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.as = fadd float %34, 1.000000e+00            ; 2 uses
  %i.at = fsub float %i.p, %i.q
  %i.au = fadd float %i.at, 1.000000e+00          ; 2 uses
  %i.av = icmp eq i32 %i.v, 1
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit
  %i.aw = fadd float %i.as, %i.au
  %i.ax = fadd float %i.aw, -1.000000e+00
  store float %i.ax, ptr %i.ar, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit59

bb.e:                                             ; preds = %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit
  store float %i.as, ptr %i.ar, align 4, !tbaa !26
  %i.ay = add i32 %i.v, -1                        ; 2 uses
  %i.az = icmp sgt i32 %i.v, 2
  br i1 %i.az, label %.lr.ph.preheader.i53, label %._crit_edge.i52

.lr.ph.preheader.i53:                             ; preds = %bb.e
  %wide.trip.count.i54 = zext nneg i32 %i.ay to i64 ; 2 uses
  %i.ba = add nsw i64 %wide.trip.count.i54, -1    ; 3 uses
  %min.iters.check62 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check62, label %.lr.ph.i55.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.preheader.i53
  %n.vec64 = and i64 %i.ba, -8                    ; 3 uses
  %i.bb = or disjoint i64 %n.vec64, 1
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next67, %vector.body65 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index66 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store <4 x float> splat (float 1.000000e+00), ptr %i.bd, align 4, !tbaa !26
  store <4 x float> splat (float 1.000000e+00), ptr %i.be, align 4, !tbaa !26
  %index.next67 = add nuw i64 %index66, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next67, %n.vec64
  br i1 %i.bf, label %middle.block68, label %vector.body65, !llvm.loop !63

middle.block68:                                   ; preds = %vector.body65
  %cmp.n69 = icmp eq i64 %i.ba, %n.vec64
  br i1 %cmp.n69, label %._crit_edge.i52, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %.lr.ph.preheader.i53, %middle.block68
  %indvars.iv.i56.ph = phi i64 [ 1, %.lr.ph.preheader.i53 ], [ %i.bb, %middle.block68 ]
  br label %.lr.ph.i55

._crit_edge.i52:                                  ; preds = %.lr.ph.i55, %middle.block68, %bb.e
  %i.bg = sext i32 %i.ay to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.bg
  store float %i.au, ptr %i.bh, align 4, !tbaa !26
  br label %_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit59

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.preheader, %.lr.ph.i55
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %.lr.ph.i55 ], [ %indvars.iv.i56.ph, %.lr.ph.i55.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i56
  store float 1.000000e+00, ptr %i.bi, align 4, !tbaa !26
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, %wide.trip.count.i54
  br i1 %exitcond.not.i58, label %._crit_edge.i52, label %.lr.ph.i55, !llvm.loop !64

_ZN4Ptex4v2_413PtexBoxFilter14computeWeightsEPfiff.exit59: ; preds = %bb.d, %._crit_edge.i52
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZN4Ptex4v2_418PtexGaussianFilter8kernelFnEfPKf(float noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = fmul float %0, -2.000000e+00
  %i.b = fmul float %0, %i.a
  %i.c = tail call noundef float @expf(float noundef %i.b) #12
  ret float %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexGaussianFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_416PtexWidth4Filter11buildKernelERNS0_19PtexSeparableKernelEffffNS0_3ResE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i16 %6) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %6 to i32
  %.sroa.2.0.extract.shift = lshr i16 %6, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.e = ashr exact i32 %sext, 24
  tail call void @_ZN4Ptex4v2_416PtexWidth4Filter15buildKernelAxisERaRiS3_Pfffi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef %i.d, float noundef %2, float noundef %4, i32 noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %sext13 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %7 = ashr exact i32 %sext13, 24
  tail call void @_ZN4Ptex4v2_416PtexWidth4Filter15buildKernelAxisERaRiS3_Pfffi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef %i.j, float noundef %3, float noundef %5, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_416PtexWidth4Filter15buildKernelAxisERaRiS3_Pfffi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl i32 %7, 23
  %i.b = sub i32 1065353216, %i.a
  %i.c = bitcast i32 %i.b to float                ; 2 uses
  %i.d = fcmp ogt float %6, %i.c
  %i.e = select i1 %i.d, float %6, float %i.c     ; 8 uses
  %i.f = bitcast float %i.e to i32
  %i.g = lshr i32 %i.f, 23
  %i.h = and i32 %i.g, 255
  %i.i = sub nsw i32 127, %i.h                    ; 2 uses
  %i.j = trunc nsw i32 %i.i to i8
  store i8 %i.j, ptr %1, align 1, !tbaa !34
  %i.k = shl nuw i32 1, %i.i
  %i.l = sitofp i32 %i.k to float                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !70, !range !71, !noundef !72
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = fdiv float 1.000000e+00, %i.l            ; 2 uses
  %i.q = fsub float %i.e, %i.p
  %i.r = fdiv float %i.q, %i.p
  %i.s = select i1 %i.o, float %i.r, float 0.000000e+00 ; 6 uses
  %i.t = fsub float 1.000000e+00, %i.s            ; 5 uses
  %i.u = fcmp ult float %i.e, 2.500000e-01
  br i1 %i.u, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = fcmp olt float %i.e, 5.000000e-01
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store i8 2, ptr %1, align 1, !tbaa !34
  %i.w = tail call float @llvm.fmuladd.f32(float %5, float 4.000000e+00, float -5.000000e-01) ; 3 uses
  %i.x = fadd float %i.w, -2.000000e+00
  %i.y = tail call noundef float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = fadd float %i.w, 2.000000e+00
  %i.ab = tail call noundef float @llvm.ceil.f32(float %i.aa)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = and i32 %i.z, -2                        ; 3 uses
  %i.ae = add nsw i32 %i.ac, 1
  %i.af = and i32 %i.ae, -2
  store i32 %i.ad, ptr %2, align 4, !tbaa !25
  %i.ag = sub nsw i32 %i.af, %i.ad                ; 2 uses
  store i32 %i.ag, ptr %3, align 4, !tbaa !25
  %i.ah = sitofp i32 %i.ad to float
  %i.ai = fsub float %i.ah, %i.w
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.ak = fadd nnan float %i.e, 7.500000e-01
  %i.al = fdiv nnan float 1.000000e+00, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit ] ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fadd float %i.ai, %i.ar                 ; 3 uses
  %i.at = fadd float %i.as, 1.000000e+00          ; 2 uses
  %i.au = fadd float %i.as, %i.at
  %i.av = fmul float %i.au, 2.500000e-01
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.ay = tail call noundef float %i.aw(float noundef %i.as, ptr noundef %i.ax)
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !29
  %i.bb = tail call noundef float %i.az(float noundef %i.at, ptr noundef %i.ba)
  %i.bc = fmul float %i.al, %i.av
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc) ; 4 uses
  %i.be = fcmp olt float %i.bd, 1.000000e+00
  br i1 %i.be, label %bb.e, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit

bb.e:                                             ; preds = %bb.d
  %i.bf = tail call nnan float @llvm.fmuladd.f32(float %i.bd, float 2.000000e+00, float -3.000000e+00)
  %i.bg = fmul float %i.bd, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bd, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit:      ; preds = %bb.d, %bb.e
  %i.bi = phi float [ %i.bh, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.bj = fmul float %i.s, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.bl = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bb, i64 1
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ap, <2 x float> %i.bo)
  store <2 x float> %i.bp, ptr %i.bk, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = load i32, ptr %3, align 4, !tbaa !25
  %i.br = trunc nuw i64 %indvars.iv.next to i32
  %i.bs = icmp sgt i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.d, label %.loopexit, !llvm.loop !67

bb.f:                                             ; preds = %bb.b
  %i.bt = fcmp olt float %i.e, 1.000000e+00
  br i1 %i.bt, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %1, align 1, !tbaa !34
  %i.bu = insertelement <2 x float> poison, float %5, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.e, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> <float 2.000000e+00, float 1.500000e+00>, <2 x float> <float -5.000000e-01, float 5.000000e-01>) ; 2 uses
  %i.bx = fadd float %5, -5.000000e-01
  %i.by = tail call noundef float @llvm.floor.f32(float %i.bx)
  %i.bz = fptosi float %i.by to i32
  %i.ca = shl nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %2, align 4, !tbaa !25
  store i32 4, ptr %3, align 4, !tbaa !25
  %i.cb = load i32, ptr %2, align 4, !tbaa !25
  %i.cc = sitofp i32 %i.cb to float
  %i.cd = extractelement <2 x float> %i.bw, i64 0
  %i.ce = fsub float %i.cc, %i.cd                 ; 4 uses
  %i.cf = extractelement <2 x float> %i.bw, i64 1
  %i.cg = fdiv float 1.000000e+00, %i.cf          ; 6 uses
  %i.ch = fadd float %i.ce, 1.000000e+00          ; 2 uses
  %i.ci = fadd float %i.ce, %i.ch
  %i.cj = fmul float %i.ci, 5.000000e-01
  %i.ck = fmul float %i.cg, %i.ce
  %i.cl = tail call noundef float @llvm.fabs.f32(float %i.ck) ; 4 uses
  %i.cm = fcmp olt float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.h, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164

bb.h:                                             ; preds = %bb.g
  %i.cn = tail call nnan float @llvm.fmuladd.f32(float %i.cl, float 2.000000e+00, float -3.000000e+00)
  %i.co = fmul float %i.cl, %i.cn
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cl, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164:   ; preds = %bb.g, %bb.h
  %i.cq = phi float [ %i.cp, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.cr = fmul float %i.cg, %i.ch
  %i.cs = tail call noundef float @llvm.fabs.f32(float %i.cr) ; 4 uses
  %i.ct = fcmp olt float %i.cs, 1.000000e+00
  br i1 %i.ct, label %bb.i, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165

bb.i:                                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164
  %i.cu = tail call nnan float @llvm.fmuladd.f32(float %i.cs, float 2.000000e+00, float -3.000000e+00)
  %i.cv = fmul float %i.cs, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cs, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165:   ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164, %bb.i
  %i.cx = phi float [ %i.cw, %bb.i ], [ 0.000000e+00, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164 ]
  %i.cy = fmul float %i.cg, %i.cj
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cy) ; 4 uses
  %i.da = fcmp olt float %i.cz, 1.000000e+00
  br i1 %i.da, label %bb.j, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166

bb.j:                                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165
  %i.db = tail call nnan float @llvm.fmuladd.f32(float %i.cz, float 2.000000e+00, float -3.000000e+00)
  %i.dc = fmul float %i.cz, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.cz, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166:   ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165, %bb.j
  %i.de = phi float [ %i.dd, %bb.j ], [ 0.000000e+00, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165 ]
  %i.df = fmul float %i.s, %i.de
  %i.dg = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cx, i64 1
  %i.di = insertelement <2 x float> poison, float %i.t, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dl)
  store <2 x float> %i.dm, ptr %4, align 4, !tbaa !26
  %i.dn = fadd float %i.ce, 2.000000e+00          ; 3 uses
  %i.do = fadd float %i.dn, 1.000000e+00          ; 2 uses
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = fmul float %i.dp, 5.000000e-01
  %i.dr = fmul float %i.cg, %i.dn
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr) ; 4 uses
  %i.dt = fcmp olt float %i.ds, 1.000000e+00
  br i1 %i.dt, label %bb.k, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1

bb.k:                                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166
  %i.du = tail call nnan float @llvm.fmuladd.f32(float %i.ds, float 2.000000e+00, float -3.000000e+00)
  %i.dv = fmul float %i.ds, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.ds, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1: ; preds = %bb.k, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166
  %i.dx = phi float [ %i.dw, %bb.k ], [ 0.000000e+00, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166 ]
  %i.dy = fmul float %i.cg, %i.do
  %i.dz = tail call noundef float @llvm.fabs.f32(float %i.dy) ; 4 uses
  %i.ea = fcmp olt float %i.dz, 1.000000e+00
  br i1 %i.ea, label %bb.l, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1

bb.l:                                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1
  %i.eb = tail call nnan float @llvm.fmuladd.f32(float %i.dz, float 2.000000e+00, float -3.000000e+00)
  %i.ec = fmul float %i.dz, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dz, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1: ; preds = %bb.l, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1
  %i.ee = phi float [ %i.ed, %bb.l ], [ 0.000000e+00, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit164.1 ]
  %i.ef = fmul float %i.cg, %i.dq
  %i.eg = tail call noundef float @llvm.fabs.f32(float %i.ef) ; 4 uses
  %i.eh = fcmp olt float %i.eg, 1.000000e+00
  br i1 %i.eh, label %bb.m, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1

bb.m:                                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1
  %i.ei = tail call nnan float @llvm.fmuladd.f32(float %i.eg, float 2.000000e+00, float -3.000000e+00)
  %i.ej = fmul float %i.eg, %i.ei
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.eg, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1: ; preds = %bb.m, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1
  %i.el = phi float [ %i.ek, %bb.m ], [ 0.000000e+00, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit165.1 ]
  %i.em = fmul float %i.s, %i.el                  ; 2 uses
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.t, float %i.em)
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.en, ptr %i.eo, align 4, !tbaa !26
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.t, float %i.em)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.f
  store i8 0, ptr %1, align 1, !tbaa !34
  %i.eq = fadd float %5, -5.000000e-01            ; 2 uses
  store i32 2, ptr %3, align 4, !tbaa !25
  %i.er = tail call noundef float @llvm.floor.f32(float %i.eq) ; 2 uses
  %i.es = fptosi float %i.er to i32
  store i32 %i.es, ptr %2, align 4, !tbaa !25
  %i.et = fsub float %i.eq, %i.er
  %i.eu = tail call noundef float @llvm.fabs.f32(float %i.et) ; 4 uses
  %i.ev = fcmp olt float %i.eu, 1.000000e+00
  br i1 %i.ev, label %bb.o, label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167

bb.o:                                             ; preds = %bb.n
  %i.ew = tail call nnan float @llvm.fmuladd.f32(float %i.eu, float 2.000000e+00, float -3.000000e+00)
  %i.ex = fmul float %i.eu, %i.ew
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.eu, float 1.000000e+00)
  br label %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167

_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167:   ; preds = %bb.n, %bb.o
  %i.ez = phi float [ %i.ey, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  store float %i.ez, ptr %4, align 4, !tbaa !26
  %i.fa = fsub float 1.000000e+00, %i.ez
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.a
  %i.fb = tail call float @llvm.fmuladd.f32(float %5, float %i.l, float -5.000000e-01) ; 4 uses
  %i.fc = fmul float %i.e, %i.l                   ; 3 uses
  %i.fd = fmul float %i.fc, 2.000000e+00          ; 2 uses
  %i.fe = fsub float %i.fb, %i.fd
  %i.ff = tail call noundef float @llvm.ceil.f32(float %i.fe)
  %i.fg = fptosi float %i.ff to i32               ; 4 uses
  %i.fh = fadd float %i.fb, %i.fd
  %i.fi = tail call noundef float @llvm.ceil.f32(float %i.fh)
  %i.fj = fptosi float %i.fi to i32               ; 2 uses
  %i.fk = fcmp une float %i.s, 0.000000e+00
  %i.fl = fdiv float 1.000000e+00, %i.fc          ; 4 uses
  br i1 %i.fk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fm = and i32 %i.fg, -2                       ; 3 uses
  %i.fn = add nsw i32 %i.fj, 1
  %i.fo = and i32 %i.fn, -2
  store i32 %i.fm, ptr %2, align 4, !tbaa !25
  %i.fp = sub nsw i32 %i.fo, %i.fm                ; 2 uses
  store i32 %i.fp, ptr %3, align 4, !tbaa !25
  %i.fq = sitofp i32 %i.fm to float
  %i.fr = fsub float %i.fq, %i.fb
  %i.fs = fmul float %i.fl, %i.fr
  %i.ft = icmp sgt i32 %i.fp, 0
  br i1 %i.ft, label %.lr.ph176, label %.loopexit

.lr.ph176:                                        ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.fw = insertelement <2 x float> poison, float %i.t, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph176, %bb.r
  %indvars.iv185 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next186, %bb.r ] ; 3 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv185 to i32
  %i.fz = uitofp nneg i32 %i.fy to float
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fl, float %i.fs) ; 3 uses
  %i.gb = fadd float %i.fl, %i.ga                 ; 2 uses
  %i.gc = fadd float %i.ga, %i.gb
  %i.gd = fmul float %i.gc, 5.000000e-01
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !28
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !29
  %i.gg = tail call noundef float %i.ge(float noundef %i.ga, ptr noundef %i.gf)
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !28
  %i.gi = load ptr, ptr %i.fv, align 8, !tbaa !29
  %i.gj = tail call noundef float %i.gh(float noundef %i.gb, ptr noundef %i.gi)
  %i.gk = load ptr, ptr %i.fu, align 8, !tbaa !28
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !29
  %i.gm = tail call noundef float %i.gk(float noundef %i.gd, ptr noundef %i.gl)
  %i.gn = fmul float %i.s, %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv185
  %i.gp = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gq = insertelement <2 x float> %i.gp, float %i.gj, i64 1
  %i.gr = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.fx, <2 x float> %i.gs)
  store <2 x float> %i.gt, ptr %i.go, align 4, !tbaa !26
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 2 ; 2 uses
  %i.gu = load i32, ptr %3, align 4, !tbaa !25
  %i.gv = trunc nuw i64 %indvars.iv.next186 to i32
  %i.gw = icmp sgt i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.r, label %.loopexit, !llvm.loop !68

bb.s:                                             ; preds = %bb.p
  store i32 %i.fg, ptr %2, align 4, !tbaa !25
  %i.gx = sub nsw i32 %i.fj, %i.fg                ; 2 uses
  store i32 %i.gx, ptr %3, align 4, !tbaa !25
  %i.gy = sitofp i32 %i.fg to float
  %i.gz = fsub float %i.gy, %i.fb
  %i.ha = fdiv float %i.gz, %i.fc
  %i.hb = icmp sgt i32 %i.gx, 0
  br i1 %i.hb, label %.lr.ph174, label %.loopexit

.lr.ph174:                                        ; preds = %bb.s
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph174, %bb.t
  %indvars.iv182 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next183, %bb.t ] ; 3 uses
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !28
  %i.hf = trunc nuw nsw i64 %indvars.iv182 to i32
  %i.hg = uitofp nneg i32 %i.hf to float
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.fl, float %i.ha)
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !29
  %i.hj = tail call noundef float %i.he(float noundef %i.hh, ptr noundef %i.hi)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv182
  store float %i.hj, ptr %i.hk, align 4, !tbaa !26
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.hl = load i32, ptr %3, align 4, !tbaa !25
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next183, %i.hm
  br i1 %i.hn, label %bb.t, label %.loopexit, !llvm.loop !69

.loopexit.sink.split:                             ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1
  %.sink200 = phi i64 [ 12, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1 ], [ 4, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167 ]
  %.sink = phi float [ %i.ep, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit166.1 ], [ %i.fa, %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit167 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 %.sink200
  store float %.sink, ptr %i.ho, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4Ptex4v2_416PtexWidth4Filter4blurEf.exit, %bb.t, %bb.r, %.loopexit.sink.split, %bb.c, %bb.s, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZN4Ptex4v2_417PtexBicubicFilter8kernelFnEfPKf(float noundef %0, ptr noundef %1) #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef float @llvm.fabs.f32(float %0) ; 7 uses
  %i.b = fcmp olt float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load float, ptr %1, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !26
  %i.f = tail call float @llvm.fmuladd.f32(float %i.c, float %i.a, float %i.e)
  %i.g = fmul float %i.a, %i.f
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = fcmp olt float %i.a, 2.000000e+00
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !26
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.a, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !26
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.a, float %i.o)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink21 = phi i64 [ 24, %bb.d ], [ 8, %bb.b ]
  %.sink = phi float [ %i.p, %bb.d ], [ %i.g, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.sink21
  %i.r = load float, ptr %i.q, align 4, !tbaa !26
  %i.s = tail call float @llvm.fmuladd.f32(float %.sink, float %i.a, float %i.r)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.s, %.sink.split ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_417PtexBicubicFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTriD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTri7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexPointFilterTri4evalEPfiiiffffffff(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp slt i32 %3, 1
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %4, 0
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.not = icmp slt i32 %4, %i.i
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %4)
  %i.o = load i8, ptr %i.n, align 4, !tbaa !33
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw i32 1, %i.p                      ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 4 uses
  %i.s = sitofp i32 %i.q to float                 ; 2 uses
  %i.t = fmul float %5, %i.s                      ; 2 uses
  %i.u = fmul float %6, %i.s                      ; 2 uses
  %i.v = fptosi float %i.t to i32
  %i.w = tail call noundef i32 @llvm.smax.i32(i32 %i.v, i32 0)
  %i.x = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.r) ; 3 uses
  %i.y = fptosi float %i.u to i32
  %i.z = tail call noundef i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 %i.r) ; 3 uses
  %i.ab = uitofp nneg i32 %i.x to float
  %i.ac = fsub float %i.t, %i.ab
  %i.ad = uitofp nneg i32 %i.aa to float
  %i.ae = fsub float %i.u, %i.ad
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = fcmp ugt float %i.af, 1.000000e+00
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !31  ; 4 uses
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %4, i32 noundef %i.x, i32 noundef %i.aa, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.al = sub nuw nsw i32 %i.r, %i.aa
  %i.am = sub nuw nsw i32 %i.r, %i.x
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %4, i32 noundef %i.al, i32 noundef %i.am, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { builtin allocsize(0) }
attributes #11 = { builtin nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN4Ptex4v2_410PtexFilter10FilterTypeE", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"_ZTSN4Ptex4v2_410PtexFilter7OptionsE", !6, i64 0, !11, i64 4, !12, i64 8, !13, i64 12, !12, i64 16}
!15 = !{!"_ZTSN4Ptex4v2_410PtexFilterE"}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"p1 _ZTSN4Ptex4v2_411PtexTextureE", !16, i64 0}
!18 = !{!"_ZTSN4Ptex4v2_415PtexPointFilterE", !15, i64 0, !17, i64 8}
!19 = !{!18, !17, i64 8}
!20 = !{!"p1 float", !16, i64 0}
!21 = !{!"_ZTSN4Ptex4v2_48DataTypeE", !5, i64 0}
!22 = !{!"_ZTSN4Ptex4v2_410BorderModeE", !5, i64 0}
!23 = !{!"_ZTSN4Ptex4v2_414EdgeFilterModeE", !5, i64 0}
!24 = !{!"_ZTSN4Ptex4v2_419PtexSeparableFilterE", !15, i64 0, !17, i64 8, !14, i64 16, !20, i64 40, !13, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !21, i64 64, !22, i64 68, !22, i64 72, !23, i64 76}
!25 = !{!6, !6, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!"_ZTSN4Ptex4v2_416PtexWidth4FilterE", !24, i64 0, !16, i64 80, !20, i64 88}
!28 = !{!27, !16, i64 80}
!29 = !{!27, !20, i64 88}
!30 = !{!"_ZTSN4Ptex4v2_418PtexPointFilterTriE", !15, i64 0, !17, i64 8}
!31 = !{!30, !17, i64 8}
!32 = !{!"_ZTSN4Ptex4v2_43ResE", !5, i64 0, !5, i64 1}
!33 = !{!32, !5, i64 0}
!34 = !{!5, !5, i64 0}
!35 = !{!"_ZTSN4Ptex4v2_419PtexSeparableKernelE", !32, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !20, i64 24, !20, i64 32, !5, i64 40, !5, i64 80, !6, i64 120}
!36 = !{!35, !6, i64 12}
!37 = !{!35, !6, i64 16}
!38 = !{!35, !20, i64 24}
!39 = !{!35, !20, i64 32}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = !{!14, !11, i64 4}
!46 = !{!24, !17, i64 8}
!47 = !{!11, !11, i64 0}
!48 = !{!12, !12, i64 0}
!49 = !{i64 0, i64 4, !25, i64 4, i64 4, !47, i64 8, i64 1, !48, i64 12, i64 4, !26, i64 16, i64 1, !48}
!50 = !{!24, !6, i64 60}
!51 = !{!24, !21, i64 64}
!52 = !{!24, !22, i64 68}
!53 = !{!24, !22, i64 72}
!54 = !{!24, !23, i64 76}
!55 = !{!24, !6, i64 16}
!56 = !{!24, !12, i64 32}
!57 = !{!14, !13, i64 12}
!58 = !{!"_ZTSN4Ptex4v2_418PtexTriangleFilterE", !15, i64 0, !17, i64 8, !14, i64 16, !20, i64 40, !13, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !21, i64 64}
!59 = !{!58, !17, i64 8}
!60 = !{!32, !5, i64 1}
!61 = distinct !{!61, !40, !65, !66}
!62 = distinct !{!62, !40, !66, !65}
!63 = distinct !{!63, !40, !65, !66}
!64 = distinct !{!64, !40, !66, !65}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = !{!24, !12, i64 24}
!71 = !{i8 0, i8 2}
!72 = !{}
end_hunk_0
