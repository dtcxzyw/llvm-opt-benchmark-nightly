Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaS6_T_:bb.a
  %i.ae = add nsw i32 %i.ad, %i.s
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2910
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ai, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  store <2 x float> %.sroa.0.0.copyload.i, ptr %25, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %25, i64 8
  store <2 x float> %.sroa.2.0.copyload.i, ptr %i.aj, align 8
  %i.ak = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi { <2 x float>, <2 x float> } [ %i.ak, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.al = add nsw i32 %i.s, 1                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.am = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %.sroa.speculated12.i.i.i83 = call i32 @llvm.smin.i32(i32 %i.am, i32 0)
  %.sroa.speculated12.i38.i.i86 = call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %.not.i.i95 = icmp sle i32 %.sroa.speculated12.i.i.i83, %i.al
  %i.an = icmp sgt i32 %.sroa.speculated12.i38.i.i86, %i.al
  %or.cond.not22.not25.not30.not35.i.i96 = and i1 %.not.i.i95, %i.an
  %i.ao = load <2 x i32>, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  %i.ap = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ao, <2 x i32> zeroinitializer)
  %i.aq = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ao, <2 x i32> zeroinitializer)
  %i.ar = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.p, i64 1 ; 2 uses
  %i.at = icmp sle <2 x i32> %i.ap, %i.as
  %i.au = icmp sgt <2 x i32> %i.aq, %i.as
  %i.av = and <2 x i1> %i.at, %i.au               ; 2 uses
  %i.aw = extractelement <2 x i1> %i.av, i64 0
  %or.cond18.not27.not32.i.i98 = select i1 %or.cond.not22.not25.not30.not35.i.i96, i1 %i.aw, i1 false
  %i.ax = extractelement <2 x i1> %i.av, i64 1
  %i.ay = select i1 %or.cond18.not27.not32.i.i98, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %i.az = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit104

bb.e:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !2912
  %i.bb = mul nsw i32 %i.ba, %i.p
  %i.bc = add nsw i32 %i.bb, %i.u
  %i.bd = mul nsw i32 %i.bc, %i.am
  %i.be = add nsw i32 %i.bd, %i.al
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2910
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i101 = load <2 x float>, ptr %i.bi, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i103 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i102, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store <2 x float> %.sroa.0.0.copyload.i101, ptr %22, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 8
  store <2 x float> %.sroa.2.0.copyload.i103, ptr %i.bj, align 8
  %i.bk = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(32) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit104

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit104: ; preds = %bb.d, %bb.e
  %.pn.i100 = phi { <2 x float>, <2 x float> } [ %i.bk, %bb.e ], [ %i.az, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.bl = add nsw i32 %i.u, 1                     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !2912 ; 3 uses
  %i.bo = load i32, ptr %i.c, align 8, !tbaa !2909 ; 2 uses
  %.sroa.speculated12.i.i.i114 = call i32 @llvm.smin.i32(i32 %i.bm, i32 0)
  %.sroa.speculated9.i.i.i115 = call i32 @llvm.smin.i32(i32 %i.bn, i32 0)
  %.sroa.speculated.i.i.i116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 0)
  %.sroa.speculated12.i38.i.i117 = call i32 @llvm.smax.i32(i32 %i.bm, i32 0)
  %.sroa.speculated9.i39.i.i118 = call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %.sroa.speculated.i40.i.i119 = call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %.not.i.i126 = icmp sle i32 %.sroa.speculated12.i.i.i114, %i.s
  %i.bp = icmp sgt i32 %.sroa.speculated12.i38.i.i117, %i.s
  %or.cond.not22.not25.not30.not35.i.i127 = and i1 %.not.i.i126, %i.bp
  %.not10.i.i128 = icmp sle i32 %.sroa.speculated9.i.i.i115, %i.bl
  %i.bq = icmp sgt i32 %.sroa.speculated9.i39.i.i118, %i.bl
  %i.br = and i1 %.not10.i.i128, %i.bq
  %or.cond18.not27.not32.i.i129 = select i1 %or.cond.not22.not25.not30.not35.i.i127, i1 %i.br, i1 false
  %.not11.i.i130 = icmp sle i32 %.sroa.speculated.i.i.i116, %i.p
  %i.bs = icmp sgt i32 %.sroa.speculated.i40.i.i119, %i.p
  %i.bt = and i1 %.not11.i.i130, %i.bs
  %i.bu = select i1 %or.cond18.not27.not32.i.i129, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.bv = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(32) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit135

bb.g:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit104
  %i.bw = mul nsw i32 %i.bn, %i.p
  %i.bx = add nsw i32 %i.bw, %i.bl
  %i.by = mul nsw i32 %i.bx, %i.bm
  %i.bz = add nsw i32 %i.by, %i.s
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2910
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  %.sroa.0.0.copyload.i132 = load <2 x float>, ptr %i.cd, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.2.0.copyload.i134 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i133, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store <2 x float> %.sroa.0.0.copyload.i132, ptr %19, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8
  store <2 x float> %.sroa.2.0.copyload.i134, ptr %i.ce, align 8
  %i.cf = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit135

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit135: ; preds = %bb.f, %bb.g
  %.pn.i131 = phi { <2 x float>, <2 x float> } [ %i.cf, %bb.g ], [ %i.bv, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !2912 ; 3 uses
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !2909 ; 2 uses
  %.sroa.speculated12.i.i.i145 = call i32 @llvm.smin.i32(i32 %i.cg, i32 0)
  %.sroa.speculated9.i.i.i146 = call i32 @llvm.smin.i32(i32 %i.ch, i32 0)
  %.sroa.speculated.i.i.i147 = call i32 @llvm.smin.i32(i32 %i.ci, i32 0)
  %.sroa.speculated12.i38.i.i148 = call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %.sroa.speculated9.i39.i.i149 = call i32 @llvm.smax.i32(i32 %i.ch, i32 0)
  %.sroa.speculated.i40.i.i150 = call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %.not.i.i157 = icmp sle i32 %.sroa.speculated12.i.i.i145, %i.al
  %i.cj = icmp sgt i32 %.sroa.speculated12.i38.i.i148, %i.al
  %or.cond.not22.not25.not30.not35.i.i158 = and i1 %.not.i.i157, %i.cj
  %.not10.i.i159 = icmp sle i32 %.sroa.speculated9.i.i.i146, %i.bl
  %i.ck = icmp sgt i32 %.sroa.speculated9.i39.i.i149, %i.bl
  %i.cl = and i1 %.not10.i.i159, %i.ck
  %or.cond18.not27.not32.i.i160 = select i1 %or.cond.not22.not25.not30.not35.i.i158, i1 %i.cl, i1 false
  %.not11.i.i161 = icmp sle i32 %.sroa.speculated.i.i.i147, %i.p
  %i.cm = icmp sgt i32 %.sroa.speculated.i40.i.i150, %i.p
  %i.cn = and i1 %.not11.i.i161, %i.cm
  %i.co = select i1 %or.cond18.not27.not32.i.i160, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.cp = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit166

bb.i:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit135
  %i.cq = mul nsw i32 %i.ch, %i.p
  %i.cr = add nsw i32 %i.cq, %i.bl
  %i.cs = mul nsw i32 %i.cr, %i.cg
  %i.ct = add nsw i32 %i.cs, %i.al
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !2910
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.cu ; 2 uses
  %.sroa.0.0.copyload.i163 = load <2 x float>, ptr %i.cx, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.2.0.copyload.i165 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i164, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store <2 x float> %.sroa.0.0.copyload.i163, ptr %16, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 8
  store <2 x float> %.sroa.2.0.copyload.i165, ptr %i.cy, align 8
  %i.cz = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit166

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit166: ; preds = %bb.h, %bb.i
  %.pn.i162 = phi { <2 x float>, <2 x float> } [ %i.cz, %bb.i ], [ %i.cp, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.da = add nsw i32 %i.p, 1                     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.db = load i32, ptr %i.c, align 8, !tbaa !2909 ; 2 uses
  %.sroa.speculated.i.i.i198 = call i32 @llvm.smin.i32(i32 %i.db, i32 0)
  %.sroa.speculated.i40.i.i201 = call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  %i.dc = load <2 x i32>, ptr %i.a, align 8, !tbaa !49 ; 3 uses
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dd, <4 x i32> <i32 2147483647, i32 2147483647, i32 0, i32 0>)
  %i.df = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.de, <4 x i32> <i32 0, i32 0, i32 -2147483648, i32 -2147483648>) ; 2 uses
  %i.dg = icmp sgt <4 x i32> %i.df, %i.o
  %i.dh = icmp sle <4 x i32> %i.df, %i.o
  %i.di = shufflevector <4 x i1> %i.dg, <4 x i1> %i.dh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %.not11.i.i212 = icmp sge i32 %i.da, %.sroa.speculated.i.i.i198
  %i.dj = icmp slt i32 %i.da, %.sroa.speculated.i40.i.i201
  %i.dk = freeze <4 x i1> %i.di
  %i.dl = bitcast <4 x i1> %i.dk to i4
  %i.dm = icmp eq i4 %i.dl, -1
  %op.rdx = and i1 %.not11.i.i212, %i.dj
  %op.rdx538 = select i1 %i.dm, i1 %op.rdx, i1 false
  br i1 %op.rdx538, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit166
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.dn = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit217

bb.k:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit166
  %i.do = extractelement <2 x i32> %i.dc, i64 1
  %i.dp = mul nsw i32 %i.do, %i.da
  %i.dq = add nsw i32 %i.dp, %i.u
  %i.dr = extractelement <2 x i32> %i.dc, i64 0
  %i.ds = mul nsw i32 %i.dq, %i.dr
  %i.dt = add nsw i32 %i.ds, %i.s
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2910
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.du ; 2 uses
  %.sroa.0.0.copyload.i214 = load <2 x float>, ptr %i.dx, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i215 = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %.sroa.2.0.copyload.i216 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i215, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store <2 x float> %.sroa.0.0.copyload.i214, ptr %13, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.2.0.copyload.i216, ptr %i.dy, align 8
  %i.dz = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit217

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit217: ; preds = %bb.j, %bb.k
  %.pn.i213 = phi { <2 x float>, <2 x float> } [ %i.dz, %bb.k ], [ %i.dn, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ea = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %.sroa.speculated12.i.i.i227 = call i32 @llvm.smin.i32(i32 %i.ea, i32 0)
  %.sroa.speculated12.i38.i.i230 = call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %.not.i.i239 = icmp sle i32 %.sroa.speculated12.i.i.i227, %i.al
  %i.eb = icmp sgt i32 %.sroa.speculated12.i38.i.i230, %i.al
  %or.cond.not22.not25.not30.not35.i.i240 = and i1 %.not.i.i239, %i.eb
  %i.ec = load <2 x i32>, ptr %i.b, align 4, !tbaa !49 ; 2 uses
  %i.ed = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ec, <2 x i32> zeroinitializer)
  %i.ee = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ec, <2 x i32> zeroinitializer)
  %i.ef = insertelement <2 x i32> %i.ar, i32 %i.da, i64 1 ; 2 uses
  %i.eg = icmp sle <2 x i32> %i.ed, %i.ef
  %i.eh = icmp sgt <2 x i32> %i.ee, %i.ef
  %i.ei = and <2 x i1> %i.eg, %i.eh               ; 2 uses
  %i.ej = extractelement <2 x i1> %i.ei, i64 0
  %or.cond18.not27.not32.i.i242 = select i1 %or.cond.not22.not25.not30.not35.i.i240, i1 %i.ej, i1 false
  %i.ek = extractelement <2 x i1> %i.ei, i64 1
  %i.el = select i1 %or.cond18.not27.not32.i.i242, i1 %i.ek, i1 false
  br i1 %i.el, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.em = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit248

bb.m:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit217
  %i.en = load i32, ptr %i.b, align 4, !tbaa !2912
  %i.eo = mul nsw i32 %i.en, %i.da
  %i.ep = add nsw i32 %i.eo, %i.u
  %i.eq = mul nsw i32 %i.ep, %i.ea
  %i.er = add nsw i32 %i.eq, %i.al
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !2910
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.es ; 2 uses
  %.sroa.0.0.copyload.i245 = load <2 x float>, ptr %i.ev, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.2.0.copyload.i247 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i246, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store <2 x float> %.sroa.0.0.copyload.i245, ptr %10, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.2.0.copyload.i247, ptr %i.ew, align 8
  %i.ex = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit248

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit248: ; preds = %bb.l, %bb.m
  %.pn.i244 = phi { <2 x float>, <2 x float> } [ %i.ex, %bb.m ], [ %i.em, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ey = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !2912 ; 3 uses
  %i.fa = load i32, ptr %i.c, align 8, !tbaa !2909 ; 2 uses
  %.sroa.speculated12.i.i.i278 = call i32 @llvm.smin.i32(i32 %i.ey, i32 0)
  %.sroa.speculated9.i.i.i279 = call i32 @llvm.smin.i32(i32 %i.ez, i32 0)
  %.sroa.speculated.i.i.i280 = call i32 @llvm.smin.i32(i32 %i.fa, i32 0)
  %.sroa.speculated12.i38.i.i281 = call i32 @llvm.smax.i32(i32 %i.ey, i32 0)
  %.sroa.speculated9.i39.i.i282 = call i32 @llvm.smax.i32(i32 %i.ez, i32 0)
  %.sroa.speculated.i40.i.i283 = call i32 @llvm.smax.i32(i32 %i.fa, i32 0)
  %.not.i.i290 = icmp sle i32 %.sroa.speculated12.i.i.i278, %i.s
  %i.fb = icmp sgt i32 %.sroa.speculated12.i38.i.i281, %i.s
  %or.cond.not22.not25.not30.not35.i.i291 = and i1 %.not.i.i290, %i.fb
  %.not10.i.i292 = icmp sle i32 %.sroa.speculated9.i.i.i279, %i.bl
  %i.fc = icmp sgt i32 %.sroa.speculated9.i39.i.i282, %i.bl
  %i.fd = and i1 %.not10.i.i292, %i.fc
  %or.cond18.not27.not32.i.i293 = select i1 %or.cond.not22.not25.not30.not35.i.i291, i1 %i.fd, i1 false
  %.not11.i.i294 = icmp sge i32 %i.da, %.sroa.speculated.i.i.i280
  %i.fe = icmp slt i32 %i.da, %.sroa.speculated.i40.i.i283
  %i.ff = and i1 %.not11.i.i294, %i.fe
  %i.fg = select i1 %or.cond18.not27.not32.i.i293, i1 %i.ff, i1 false
  br i1 %i.fg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit248
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.fh = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit299

bb.o:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit248
  %i.fi = mul nsw i32 %i.ez, %i.da
  %i.fj = add nsw i32 %i.fi, %i.bl
  %i.fk = mul nsw i32 %i.fj, %i.ey
  %i.fl = add nsw i32 %i.fk, %i.s
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !2910
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fm ; 2 uses
  %.sroa.0.0.copyload.i296 = load <2 x float>, ptr %i.fp, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.sroa.2.0.copyload.i298 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i297, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store <2 x float> %.sroa.0.0.copyload.i296, ptr %7, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.2.0.copyload.i298, ptr %i.fq, align 8
  %i.fr = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit299

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit299: ; preds = %bb.n, %bb.o
  %.pn.i295 = phi { <2 x float>, <2 x float> } [ %i.fr, %bb.o ], [ %i.fh, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.fs = load i32, ptr %i.a, align 8, !tbaa !2911 ; 3 uses
  %i.ft = load i32, ptr %i.b, align 4, !tbaa !2912 ; 3 uses
  %i.fu = load i32, ptr %i.c, align 8, !tbaa !2909 ; 2 uses
  %.sroa.speculated12.i.i.i309 = call i32 @llvm.smin.i32(i32 %i.fs, i32 0)
  %.sroa.speculated9.i.i.i310 = call i32 @llvm.smin.i32(i32 %i.ft, i32 0)
  %.sroa.speculated.i.i.i311 = call i32 @llvm.smin.i32(i32 %i.fu, i32 0)
  %.sroa.speculated12.i38.i.i312 = call i32 @llvm.smax.i32(i32 %i.fs, i32 0)
  %.sroa.speculated9.i39.i.i313 = call i32 @llvm.smax.i32(i32 %i.ft, i32 0)
  %.sroa.speculated.i40.i.i314 = call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %.not.i.i321 = icmp sle i32 %.sroa.speculated12.i.i.i309, %i.al
  %i.fv = icmp sgt i32 %.sroa.speculated12.i38.i.i312, %i.al
  %or.cond.not22.not25.not30.not35.i.i322 = and i1 %.not.i.i321, %i.fv
  %.not10.i.i323 = icmp sle i32 %.sroa.speculated9.i.i.i310, %i.bl
  %i.fw = icmp sgt i32 %.sroa.speculated9.i39.i.i313, %i.bl
  %i.fx = and i1 %.not10.i.i323, %i.fw
  %or.cond18.not27.not32.i.i324 = select i1 %or.cond.not22.not25.not30.not35.i.i322, i1 %i.fx, i1 false
  %.not11.i.i325 = icmp sge i32 %i.da, %.sroa.speculated.i.i.i311
  %i.fy = icmp slt i32 %i.da, %.sroa.speculated.i40.i.i314
  %i.fz = and i1 %.not11.i.i325, %i.fy
  %i.ga = select i1 %or.cond18.not27.not32.i.i324, i1 %i.fz, i1 false
  br i1 %i.ga, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit299
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.gb = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit330

bb.q:                                             ; preds = %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit299
  %i.gc = mul nsw i32 %i.ft, %i.da
  %i.gd = add nsw i32 %i.gc, %i.bl
  %i.ge = mul nsw i32 %i.gd, %i.fs
  %i.gf = add nsw i32 %i.ge, %i.al
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !2910
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gg ; 2 uses
  %.sroa.0.0.copyload.i327 = load <2 x float>, ptr %i.gj, align 4, !tbaa !189
  %.sroa.2.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.2.0.copyload.i329 = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i328, align 4, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> %.sroa.0.0.copyload.i327, ptr %4, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.2.0.copyload.i329, ptr %i.gk, align 8
  %i.gl = call { <2 x float>, <2 x float> } @_ZNK4pbrt20RGBUnboundedSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit330

_ZNK4pbrt11SampledGridINS_20RGBUnboundedSpectrumEE6LookupIZNKS_13RGBGridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsEEUlS1_E_EEDaRKNS5_IiEET_.exit330: ; preds = %bb.p, %bb.q
  %.pn.i326 = phi { <2 x float>, <2 x float> } [ %i.gl, %bb.q ], [ %i.gb, %bb.p ] ; 2 uses
  %i.gm = extractvalue { <2 x float>, <2 x float> } %.pn.i295, 1
  %i.gn = extractvalue { <2 x float>, <2 x float> } %.pn.i295, 0 ; 2 uses
  %i.go = extractvalue { <2 x float>, <2 x float> } %.pn.i213, 1 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gq = extractvalue { <2 x float>, <2 x float> } %.pn.i244, 1 ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gs = extractvalue { <2 x float>, <2 x float> } %.pn.i213, 0 ; 2 uses
end_hunk_0
