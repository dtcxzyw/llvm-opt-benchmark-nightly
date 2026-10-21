Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_529Renderer_ACES_GamutComp13_Inv5applyEPKvPvl:bb.a
  %i.n = fcmp olt float %i.k, %i.m
  %i.o = select i1 %i.n, float %i.m, float %i.k   ; 2 uses
  %i.p = fcmp olt float %i.i, %i.o
  %.sroa.speculated = select i1 %i.p, float %i.o, float %i.i ; 8 uses
  %i.q = load float, ptr %i.b, align 4, !tbaa !48 ; 4 uses
  %i.r = load float, ptr %i.c, align 4, !tbaa !45 ; 3 uses
  %i.s = load float, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %i.t = fcmp oeq float %.sroa.speculated, 0.000000e+00
  br i1 %i.t, label %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fsub float %.sroa.speculated, %i.i
  %i.v = tail call noundef float @llvm.fabs.f32(float %.sroa.speculated) ; 6 uses
  %i.w = fdiv float %i.u, %i.v                    ; 4 uses
  %i.x = fcmp olt float %i.w, %i.q
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fadd float %i.q, %i.r
  %i.z = fcmp ult float %i.w, %i.y
  br i1 %i.z, label %bb.e, label %_ZN16OpenColorIO_v2_510uncompressEffff.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub float %i.w, %i.q
  %i.ab = fdiv float %i.aa, %i.r
  %i.ac = tail call noundef float @powf(float noundef %i.ab, float noundef %i.s) #24 ; 2 uses
  %i.ad = fadd float %i.ac, -1.000000e+00
  %i.ae = fneg float %i.ac
  %i.af = fdiv float %i.ae, %i.ad
  %i.ag = fdiv float 1.000000e+00, %i.s
  %i.ah = tail call noundef float @powf(float noundef %i.af, float noundef %i.ag) #24
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ah, float %i.q)
  br label %_ZN16OpenColorIO_v2_510uncompressEffff.exit

_ZN16OpenColorIO_v2_510uncompressEffff.exit:      ; preds = %bb.d, %bb.e
  %.0.i = phi float [ %i.ai, %bb.e ], [ %i.w, %bb.d ]
  %i.aj = fneg float %.0.i
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.v, float %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN16OpenColorIO_v2_510uncompressEffff.exit
  %.1.i.ph = phi float [ %i.i, %bb.c ], [ %i.ak, %_ZN16OpenColorIO_v2_510uncompressEffff.exit ]
  store float %.1.i.ph, ptr %.01937, align 4, !tbaa !16
  %i.al = load float, ptr %i.e, align 8, !tbaa !49 ; 4 uses
  %i.am = load float, ptr %i.f, align 8, !tbaa !46 ; 3 uses
  %i.an = load float, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %i.ao = fsub float %.sroa.speculated, %i.k
  %i.ap = fdiv float %i.ao, %i.v                  ; 4 uses
  %i.aq = fcmp olt float %i.ap, %i.al
  br i1 %i.aq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fadd float %i.al, %i.am
  %i.as = fcmp ult float %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN16OpenColorIO_v2_510uncompressEffff.exit26

bb.h:                                             ; preds = %bb.g
  %i.at = fsub float %i.ap, %i.al
  %i.au = fdiv float %i.at, %i.am
  %i.av = tail call noundef float @powf(float noundef %i.au, float noundef %i.an) #24 ; 2 uses
  %i.aw = fadd float %i.av, -1.000000e+00
  %i.ax = fneg float %i.av
  %i.ay = fdiv float %i.ax, %i.aw
  %i.az = fdiv float 1.000000e+00, %i.an
  %i.ba = tail call noundef float @powf(float noundef %i.ay, float noundef %i.az) #24
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ba, float %i.al)
  br label %_ZN16OpenColorIO_v2_510uncompressEffff.exit26

_ZN16OpenColorIO_v2_510uncompressEffff.exit26:    ; preds = %bb.g, %bb.h
  %.0.i25 = phi float [ %i.bb, %bb.h ], [ %i.ap, %bb.g ]
  %i.bc = fneg float %.0.i25
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.v, float %.sroa.speculated)
  br label %bb.i

_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22: ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %.01937, align 4, !tbaa !16
  br label %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24

bb.i:                                             ; preds = %bb.f, %_ZN16OpenColorIO_v2_510uncompressEffff.exit26
  %.1.i21.ph = phi float [ %i.k, %bb.f ], [ %i.bd, %_ZN16OpenColorIO_v2_510uncompressEffff.exit26 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.01937, i64 4
  store float %.1.i21.ph, ptr %i.be, align 4, !tbaa !16
  %i.bf = load float, ptr %i.g, align 4, !tbaa !51 ; 4 uses
  %i.bg = load float, ptr %i.h, align 4, !tbaa !47 ; 3 uses
  %i.bh = load float, ptr %i.d, align 8, !tbaa !50 ; 2 uses
  %i.bi = fsub float %.sroa.speculated, %i.m
  %i.bj = fdiv float %i.bi, %i.v                  ; 4 uses
  %i.bk = fcmp olt float %i.bj, %i.bf
  br i1 %i.bk, label %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = fadd float %i.bf, %i.bg
  %i.bm = fcmp ult float %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %_ZN16OpenColorIO_v2_510uncompressEffff.exit28

bb.k:                                             ; preds = %bb.j
  %i.bn = fsub float %i.bj, %i.bf
  %i.bo = fdiv float %i.bn, %i.bg
  %i.bp = tail call noundef float @powf(float noundef %i.bo, float noundef %i.bh) #24 ; 2 uses
  %i.bq = fadd float %i.bp, -1.000000e+00
  %i.br = fneg float %i.bp
  %i.bs = fdiv float %i.br, %i.bq
  %i.bt = fdiv float 1.000000e+00, %i.bh
  %i.bu = tail call noundef float @powf(float noundef %i.bs, float noundef %i.bt) #24
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bu, float %i.bf)
  br label %_ZN16OpenColorIO_v2_510uncompressEffff.exit28

_ZN16OpenColorIO_v2_510uncompressEffff.exit28:    ; preds = %bb.j, %bb.k
  %.0.i27 = phi float [ %i.bv, %bb.k ], [ %i.bj, %bb.j ]
  %i.bw = fneg float %.0.i27
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.v, float %.sroa.speculated)
  br label %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24

_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit24: ; preds = %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22, %bb.i, %_ZN16OpenColorIO_v2_510uncompressEffff.exit28
  %.1.i23 = phi float [ 0.000000e+00, %_ZN16OpenColorIO_v2_510gamut_compIPFfffffEEEffffffT_.exit22 ], [ %i.bx, %_ZN16OpenColorIO_v2_510uncompressEffff.exit28 ], [ %i.m, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.01937, i64 8
  store float %.1.i23, ptr %i.by, align 4, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.039, i64 12
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %.01937, i64 12
  store float %i.ca, ptr %i.cb, align 4, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %.039, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.01937, i64 16
  %i.ce = add nuw nsw i64 %.01838, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !160
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20C2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr noundef nonnull align 8 dereferenceable(7688) initializes((0, 9), (12, 384)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 7 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 5 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 4 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams", align 4 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20E, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i32 %i.c, 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = fptrunc double %i.i to float             ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !42
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  %i.q = fpext <2 x float> %i.p to <2 x double>
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load <2 x double>, ptr %i.l, align 8, !tbaa !42
  %i.t = fptrunc <2 x double> %i.s to <2 x float>
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load <2 x double>, ptr %i.m, align 8, !tbaa !42
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load <2 x double>, ptr %i.n, align 8, !tbaa !42
  %i.ab = fptrunc <2 x double> %i.aa to <2 x float>
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store <2 x double> %i.q, ptr %2, align 16, !tbaa !42
  store <2 x double> %i.u, ptr %i.r, align 16, !tbaa !42
  store <2 x double> %i.y, ptr %i.v, align 16, !tbaa !42
  store <2 x double> %i.ac, ptr %i.z, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %3, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %i.ad, ptr noundef nonnull align 4 dereferenceable(164) %3, i64 164, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %i.ae, ptr noundef nonnull align 4 dereferenceable(164) %4, i64 164, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %5, float noundef %i.j)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.af, ptr noundef nonnull align 4 dereferenceable(44) %5, i64 44, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %6, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %7, float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(164) %i.ad, ptr noundef nonnull align 4 dereferenceable(164) %6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1460) %i.ag, ptr noundef nonnull align 4 dereferenceable(1460) %7, i64 1460, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ah = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(44) %i.af) ; 2 uses
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0
  %i.aj = extractvalue { <2 x float>, <2 x float> } %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store <2 x float> %i.ai, ptr %i.ak, align 4, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1852
  store <2 x float> %i.aj, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN16OpenColorIO_v2_55ACES224init_GamutCompressParamsEfRKNS0_9JMhParamsES3_RKNS0_15ToneScaleParamsERKNS0_27SharedCompressionParametersES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams") align 4 %8, float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(164) %i.ad, ptr noundef nonnull align 4 dereferenceable(164) %i.ae, ptr noundef nonnull align 4 dereferenceable(44) %i.af, ptr noundef nonnull align 4 dereferenceable(1460) %i.ag, ptr noundef nonnull align 4 dereferenceable(164) %6)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5828) %i.al, ptr noundef nonnull align 4 dereferenceable(5828) %8, i64 5828, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4, float noundef) local_unnamed_addr #7

declare void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4, float noundef, ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(164)) local_unnamed_addr #7

declare { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef, ptr noundef nonnull align 4 dereferenceable(44)) local_unnamed_addr #7

declare void @_ZN16OpenColorIO_v2_55ACES224init_GamutCompressParamsEfRKNS0_9JMhParamsES3_RKNS0_15ToneScaleParamsERKNS0_27SharedCompressionParametersES3_(ptr dead_on_unwind writable sret(%"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams") align 4, float noundef, ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(44), ptr noundef nonnull align 4 dereferenceable(1460), ptr noundef nonnull align 4 dereferenceable(164)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_OutputTransform205applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !90, !range !94, !noundef !95
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK16OpenColorIO_v2_531Renderer_ACES_OutputTransform203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7688) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK16OpenColorIO_v2_531Renderer_ACES_OutputTransform203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7688) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_OutputTransform203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 6 uses
  %6 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %8 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %9 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %10 = alloca %"struct.std::array.16", align 8   ; 5 uses
  %i.c = icmp sgt i64 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.047 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %bb.b ] ; 4 uses
  %.04346 = phi ptr [ %2, %.lr.ph ], [ %i.aj, %bb.b ] ; 4 uses
  %.04445 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.l = load <2 x float>, ptr %.047, align 4, !tbaa !16
  store <2 x float> %i.l, ptr %4, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !16
  store float %i.n, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.o = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210RGB_to_AabERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(164) %i.e) ; 2 uses
  %.fca.0.extract24 = extractvalue { <2 x float>, float } %i.o, 0
  %.fca.1.extract25 = extractvalue { <2 x float>, float } %i.o, 1
  store <2 x float> %.fca.0.extract24, ptr %5, align 8
  store float %.fca.1.extract25, ptr %.sroa.227.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.p = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210Aab_to_JMhERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(164) %i.e) ; 2 uses
  %.fca.0.extract20 = extractvalue { <2 x float>, float } %i.p, 0
  %.fca.1.extract21 = extractvalue { <2 x float>, float } %i.p, 1 ; 2 uses
  store <2 x float> %.fca.0.extract20, ptr %6, align 8
  store float %.fca.1.extract21, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.q = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.fca.1.extract21, ptr noundef nonnull align 4 dereferenceable(1460) %i.f) ; 2 uses
  %.fca.0.extract16 = extractvalue { <2 x float>, float } %i.q, 0
  %.fca.1.extract17 = extractvalue { <2 x float>, float } %i.q, 1
  store <2 x float> %.fca.0.extract16, ptr %7, align 8
  store float %.fca.1.extract17, ptr %.sroa.219.0..sroa_idx, align 8
  %i.r = load float, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !16
  %i.s = fmul float %i.r, f0x40490FDB
  %i.t = fdiv float %i.s, 1.800000e+02            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.u = call noundef float @cosf(float noundef %i.t) #24 ; 2 uses
  store float %i.u, ptr %i.a, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.v = call noundef float @sinf(float noundef %i.t) #24 ; 2 uses
  store float %i.v, ptr %i.b, align 4, !tbaa !16
  %i.w = load float, ptr %i.h, align 8, !tbaa !96
  %i.x = call noundef float @_ZN16OpenColorIO_v2_55ACES220chroma_compress_normEfff(float noundef %i.u, float noundef %i.v, float noundef %i.w)
  %i.y = load float, ptr %5, align 8, !tbaa !16
  %i.z = call noundef float @_ZN16OpenColorIO_v2_55ACES220tonescale_A_to_J_fwdEfRKNS0_9JMhParamsERKNS0_15ToneScaleParamsE(float noundef %i.y, ptr noundef nonnull align 4 dereferenceable(164) %i.e, ptr noundef nonnull align 4 dereferenceable(44) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aa = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES219chroma_compress_fwdERKSt5arrayIfLm3EEffRKNS0_35ResolvedSharedCompressionParametersERKNS0_20ChromaCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %6, float noundef %i.z, float noundef %i.x, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.g) ; 2 uses
  %.fca.0.extract9 = extractvalue { <2 x float>, float } %i.aa, 0
  %.fca.1.extract10 = extractvalue { <2 x float>, float } %i.aa, 1
  store <2 x float> %.fca.0.extract9, ptr %8, align 8
  store float %.fca.1.extract10, ptr %.sroa.212.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ab = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_fwdERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(5828) %i.j) ; 2 uses
  %.fca.0.extract5 = extractvalue { <2 x float>, float } %i.ab, 0
  %.fca.1.extract6 = extractvalue { <2 x float>, float } %i.ab, 1
  store <2 x float> %.fca.0.extract5, ptr %9, align 8
  store float %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ac = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210JMh_to_AabERKSt5arrayIfLm3EERKfS6_RKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(164) %i.k) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.ac, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.ac, 1
  store <2 x float> %.fca.0.extract1, ptr %10, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ad = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210Aab_to_RGBERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(164) %i.k) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ad, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ad, 1
  store <2 x float> %.fca.0.extract, ptr %.04346, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.04346, i64 8
  store float %.fca.1.extract, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %.047, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.04346, i64 12
  store float %i.ag, ptr %i.ah, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.04346, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ak = add nuw nsw i64 %.04445, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !161
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_OutputTransform203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7688) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %7 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %8 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %9 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.c = icmp sgt i64 %3, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 340
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.043 = phi ptr [ %1, %.lr.ph ], [ %i.ah, %bb.b ] ; 4 uses
  %.03942 = phi ptr [ %2, %.lr.ph ], [ %i.ai, %bb.b ] ; 4 uses
  %.04041 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %bb.b ]
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_205applyEPKvPvl:bb.a
  %.01518.i = phi ptr [ %2, %.lr.ph.i ], [ %i.p, %bb.c ] ; 4 uses
  %.01617.i = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = load <2 x float>, ptr %.019.i, align 4, !tbaa !16
  store <2 x float> %i.g, ptr %5, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  store float %i.i, ptr %i.e, align 8, !tbaa !16
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210RGB_to_JMhERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(164) %i.f) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store <2 x float> %.fca.0.extract.i, ptr %.01518.i, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %.01518.i, i64 8
  store float %.fca.1.extract.i, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %.01518.i, i64 12
  store float %i.m, ptr %i.n, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.01518.i, i64 16
  %i.q = add nuw nsw i64 %.01617.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %3
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203fwdEPKvPvl.exit, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.i6, label %_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203fwdEPKvPvl.exit

.lr.ph.i6:                                        ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i6
  %.020.i = phi ptr [ %1, %.lr.ph.i6 ], [ %i.ae, %bb.e ] ; 4 uses
  %.01619.i = phi ptr [ %2, %.lr.ph.i6 ], [ %i.af, %bb.e ] ; 4 uses
  %.01718.i = phi i64 [ 0, %.lr.ph.i6 ], [ %i.ag, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !16
  %i.v = call noundef float @fmodf(float noundef %i.u, float noundef 3.600000e+02) #24 ; 3 uses
  %i.w = fcmp olt float %i.v, 0.000000e+00
  %i.x = fadd float %i.v, 3.600000e+02
  %.0.i.i.i.i = select i1 %i.w, float %i.x, float %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.y = load <2 x float>, ptr %.020.i, align 4, !tbaa !16
  store <2 x float> %i.y, ptr %4, align 8, !tbaa !16
  store float %.0.i.i.i.i, ptr %i.r, align 8, !tbaa !16
  %i.z = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210JMh_to_RGBERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(164) %i.s) ; 2 uses
  %.fca.0.extract.i7 = extractvalue { <2 x float>, float } %i.z, 0
  %.fca.1.extract.i8 = extractvalue { <2 x float>, float } %i.z, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store <2 x float> %.fca.0.extract.i7, ptr %.01619.i, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.01619.i, i64 8
  store float %.fca.1.extract.i8, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.020.i, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.01619.i, i64 12
  store float %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.01619.i, i64 16
  %i.ag = add nuw nsw i64 %.01718.i, 1            ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %i.ag, %3
  br i1 %exitcond.not.i11, label %_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203fwdEPKvPvl.exit, label %bb.e, !llvm.loop !1

_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203fwdEPKvPvl.exit: ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi ptr [ %1, %.lr.ph ], [ %i.l, %bb.b ] ; 4 uses
  %.01518 = phi ptr [ %2, %.lr.ph ], [ %i.m, %bb.b ] ; 4 uses
  %.01617 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.d = load <2 x float>, ptr %.019, align 4, !tbaa !16
  store <2 x float> %i.d, ptr %4, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  store float %i.f, ptr %i.b, align 8, !tbaa !16
  %i.g = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210RGB_to_JMhERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(164) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.g, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store <2 x float> %.fca.0.extract, ptr %.01518, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %.01518, i64 8
  store float %.fca.1.extract, ptr %i.h, align 4, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %.019, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %.01518, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.01518, i64 16
  %i.n = add nuw nsw i64 %.01617, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.020 = phi ptr [ %1, %.lr.ph ], [ %i.o, %bb.b ] ; 4 uses
  %.01619 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.b ] ; 4 uses
  %.01718 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !16
  %i.f = call noundef float @fmodf(float noundef %i.e, float noundef 3.600000e+02) #24 ; 3 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00
  %i.h = fadd float %i.f, 3.600000e+02
  %.0.i.i.i = select i1 %i.g, float %i.h, float %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.i = load <2 x float>, ptr %.020, align 4, !tbaa !16
  store <2 x float> %i.i, ptr %4, align 8, !tbaa !16
  store float %.0.i.i.i, ptr %i.b, align 8, !tbaa !16
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210JMh_to_RGBERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(164) %i.c) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store <2 x float> %.fca.0.extract, ptr %.01619, align 4, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %.01619, i64 8
  store float %.fca.1.extract, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %.01619, i64 12
  store float %i.m, ptr %i.n, align 4, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.01619, i64 16
  %i.q = add nuw nsw i64 %.01718, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1
}

declare { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES210JMh_to_RGBERKSt5arrayIfLm3EERKNS0_9JMhParamsE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(164)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20C2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr noundef nonnull align 8 dereferenceable(1696) initializes((0, 9), (12, 220)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 4 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20E, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i32 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = fptrunc double %i.i to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %2, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %i.k, ptr noundef nonnull align 4 dereferenceable(164) %2, i64 164, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %3, float noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.l, ptr noundef nonnull align 4 dereferenceable(44) %3, i64 44, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %5, float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(164) %i.k, ptr noundef nonnull align 4 dereferenceable(164) %4)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1460) %i.m, ptr noundef nonnull align 4 dereferenceable(1460) %5, i64 1460, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.n = call { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.j, ptr noundef nonnull align 4 dereferenceable(44) %i.l) ; 2 uses
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.n, 0
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store <2 x float> %i.o, ptr %i.q, align 8, !tbaa !16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1688
  store <2 x float> %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_205applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100, !range !94, !noundef !95
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_203fwdEPKvPvl(ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.b ] ; 5 uses
  %.02932 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.b ] ; 4 uses
  %.03031 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  %i.j = call noundef float @fmodf(float noundef %i.i, float noundef 3.600000e+02) #24 ; 3 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  %i.l = fadd float %i.j, 3.600000e+02
  %.0.i.i.i = select i1 %i.k, float %i.l, float %i.j ; 3 uses
  %i.m = fmul float %.0.i.i.i, f0x40490FDB
  %i.n = fdiv float %i.m, 1.800000e+02            ; 2 uses
  %i.o = call noundef float @cosf(float noundef %i.n) #24
  %i.p = call noundef float @sinf(float noundef %i.n) #24
  %i.q = load float, ptr %i.c, align 4, !tbaa !101
  %i.r = call noundef float @_ZN16OpenColorIO_v2_55ACES220chroma_compress_normEfff(float noundef %i.o, float noundef %i.p, float noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.s = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.d) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.s, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.s, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.t = load float, ptr %.033, align 4, !tbaa !16
  %i.u = call noundef float @_ZN16OpenColorIO_v2_55ACES213tonescale_fwdEfRKNS0_9JMhParamsERKNS0_15ToneScaleParamsE(float noundef %i.t, ptr noundef nonnull align 4 dereferenceable(164) %i.e, ptr noundef nonnull align 4 dereferenceable(44) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.v = load <2 x float>, ptr %.033, align 4, !tbaa !16
  store <2 x float> %i.v, ptr %5, align 8, !tbaa !16
  store float %.0.i.i.i, ptr %i.g, align 8, !tbaa !16
  %i.w = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES219chroma_compress_fwdERKSt5arrayIfLm3EEffRKNS0_35ResolvedSharedCompressionParametersERKNS0_20ChromaCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, float noundef %i.u, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.w, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store <2 x float> %.fca.0.extract, ptr %.02932, align 4, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.02932, i64 8
  store float %.fca.1.extract, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.02932, i64 12
  store float %i.z, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ad = add nuw nsw i64 %.03031, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !163
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(1696) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 220
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.033 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.b ] ; 5 uses
  %.02932 = phi ptr [ %2, %.lr.ph ], [ %i.ac, %bb.b ] ; 4 uses
  %.03031 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.033, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !16
  %i.j = call noundef float @fmodf(float noundef %i.i, float noundef 3.600000e+02) #24 ; 3 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  %i.l = fadd float %i.j, 3.600000e+02
  %.0.i.i.i = select i1 %i.k, float %i.l, float %i.j ; 3 uses
  %i.m = fmul float %.0.i.i.i, f0x40490FDB
  %i.n = fdiv float %i.m, 1.800000e+02            ; 2 uses
  %i.o = call noundef float @cosf(float noundef %i.n) #24
  %i.p = call noundef float @sinf(float noundef %i.n) #24
  %i.q = load float, ptr %i.c, align 4, !tbaa !101
  %i.r = call noundef float @_ZN16OpenColorIO_v2_55ACES220chroma_compress_normEfff(float noundef %i.o, float noundef %i.p, float noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.s = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.d) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.s, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.s, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  %i.t = load float, ptr %.033, align 4, !tbaa !16
  %i.u = call noundef float @_ZN16OpenColorIO_v2_55ACES213tonescale_invEfRKNS0_9JMhParamsERKNS0_15ToneScaleParamsE(float noundef %i.t, ptr noundef nonnull align 4 dereferenceable(164) %i.e, ptr noundef nonnull align 4 dereferenceable(44) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.v = load <2 x float>, ptr %.033, align 4, !tbaa !16
  store <2 x float> %i.v, ptr %5, align 8, !tbaa !16
  store float %.0.i.i.i, ptr %i.g, align 8, !tbaa !16
  %i.w = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES219chroma_compress_invERKSt5arrayIfLm3EEffRKNS0_35ResolvedSharedCompressionParametersERKNS0_20ChromaCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, float noundef %i.u, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.w, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store <2 x float> %.fca.0.extract, ptr %.02932, align 4, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.02932, i64 8
  store float %.fca.1.extract, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.02932, i64 12
  store float %i.z, ptr %i.aa, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.02932, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ad = add nuw nsw i64 %.03031, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !164
}

declare noundef float @_ZN16OpenColorIO_v2_55ACES213tonescale_fwdEfRKNS0_9JMhParamsERKNS0_15ToneScaleParamsE(float noundef, ptr noundef nonnull align 4 dereferenceable(164), ptr noundef nonnull align 4 dereferenceable(44)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20C2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr noundef nonnull align 8 dereferenceable(7300) initializes((0, 9), (12, 1472)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 7 uses
  %3 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 5 uses
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 5 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 4 uses
  %8 = alloca %"struct.OpenColorIO_v2_5::ACES2::GamutCompressParams", align 4 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20E, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i32 %i.c, 34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 5 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = fptrunc double %i.i to float             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.o = load <2 x double>, ptr %i.k, align 8, !tbaa !42
  %i.p = fptrunc <2 x double> %i.o to <2 x float>
  %i.q = fpext <2 x float> %i.p to <2 x double>
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load <2 x double>, ptr %i.l, align 8, !tbaa !42
  %i.t = fptrunc <2 x double> %i.s to <2 x float>
  %i.u = fpext <2 x float> %i.t to <2 x double>
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load <2 x double>, ptr %i.m, align 8, !tbaa !42
  %i.x = fptrunc <2 x double> %i.w to <2 x float>
  %i.y = fpext <2 x float> %i.x to <2 x double>
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_529Renderer_ACES_GamutComp13_InvESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(7704) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7704) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(7704) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(7688) dereferenceable(7688) %i.a) #24, !inline_history !390
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(7704) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7704) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_OutputTransform20ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(7704) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvEJRSt10shared_ptrIKNS4_19FixedFunctionOpDataEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit:
  %4 = alloca %"struct.OpenColorIO_v2_5::Primaries", align 16 ; 7 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #26 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20E, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.e = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = icmp eq i32 %i.g, 30
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.p = load <2 x double>, ptr %i.l, align 8, !tbaa !42
  %i.q = fptrunc <2 x double> %i.p to <2 x float>
  %i.r = fpext <2 x float> %i.q to <2 x double>
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = load <2 x double>, ptr %i.m, align 8, !tbaa !42
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fpext <2 x float> %i.u to <2 x double>
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = load <2 x double>, ptr %i.n, align 8, !tbaa !42
  %i.y = fptrunc <2 x double> %i.x to <2 x float>
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = load <2 x double>, ptr %i.o, align 8, !tbaa !42
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float>
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store <2 x double> %i.r, ptr %4, align 16, !tbaa !42
  store <2 x double> %i.v, ptr %i.s, align 16, !tbaa !42
  store <2 x double> %i.z, ptr %i.w, align 16, !tbaa !42
  store <2 x double> %i.ad, ptr %i.aa, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %5, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %i.ae, ptr noundef nonnull align 4 dereferenceable(164) %5, i64 164, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  store ptr %i.d, ptr %1, align 8, !tbaa !391
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 192) #27
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.a) #24, !inline_history !392
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_527Renderer_ACES_RGB_TO_JMh_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvEJRSt10shared_ptrIKNS4_19FixedFunctionOpDataEEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %5 = alloca %"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams", align 4 ; 4 uses
  %6 = alloca %"struct.OpenColorIO_v2_5::ACES2::JMhParams", align 4 ; 4 uses
  %7 = alloca %"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters", align 4 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1712) ptr @_Znwm(i64 noundef 1712) #26 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !145
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20E, i64 16), ptr %i.d, align 8, !tbaa !14
  %i.e = load ptr, ptr %3, align 8, !tbaa !37     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = icmp eq i32 %i.g, 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = zext i1 %i.h to i8
  store i8 %i.j, ptr %i.i, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = load double, ptr %i.l, align 8, !tbaa !42
  %i.n = fptrunc double %i.m to float             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %4, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE)
          to label %.noexc unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14

.noexc:                                           ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %i.o, ptr noundef nonnull align 4 dereferenceable(164) %4, i64 164, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN16OpenColorIO_v2_55ACES220init_ToneScaleParamsEf(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::ToneScaleParams") align 4 %5, float noundef %i.n)
          to label %.noexc9 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14

.noexc9:                                          ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.p, ptr noundef nonnull align 4 dereferenceable(44) %5, i64 44, i1 false), !tbaa.struct !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN16OpenColorIO_v2_55ACES214init_JMhParamsERKNS_9PrimariesE(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::JMhParams") align 4 %6, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP19primariesE)
          to label %.noexc10 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN16OpenColorIO_v2_55ACES228init_SharedCompressionParamsEfRKNS0_9JMhParamsES3_(ptr dead_on_unwind nonnull writable sret(%"struct.OpenColorIO_v2_5::ACES2::SharedCompressionParameters") align 4 %7, float noundef %i.n, ptr noundef nonnull align 4 dereferenceable(164) %i.o, ptr noundef nonnull align 4 dereferenceable(164) %6)
          to label %.noexc11 unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14

.noexc11:                                         ; preds = %.noexc10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1460) %i.q, ptr noundef nonnull align 4 dereferenceable(1460) %7, i64 1460, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.r = invoke { <2 x float>, <2 x float> } @_ZN16OpenColorIO_v2_55ACES225init_ChromaCompressParamsEfRKNS0_15ToneScaleParamsE(float noundef %i.n, ptr noundef nonnull align 4 dereferenceable(44) %i.p)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14 ; 2 uses

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %.noexc11
  %i.s = extractvalue { <2 x float>, <2 x float> } %i.r, 0
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <2 x float> %i.s, ptr %i.u, align 8, !tbaa !16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1704
  store <2 x float> %i.t, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  store ptr %i.a, ptr %0, align 8, !tbaa !146
  store ptr %i.d, ptr %1, align 8, !tbaa !393
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14: ; preds = %.noexc11, %.noexc10, %.noexc9, %.noexc, %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1712) #27
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(1712) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1712) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(1696) dereferenceable(1696) %i.a) #24, !inline_history !394
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(1712) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1712) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_535Renderer_ACES_TONESCALE_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(1712) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(7320) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7320) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(7320) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(7300) dereferenceable(7300) %i.a) #24, !inline_history !395
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(7320) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7320) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_20ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(7320) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_525Renderer_REC2100_SurroundESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_525Renderer_REC2100_SurroundESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #24, !inline_history !396
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_525Renderer_REC2100_SurroundESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_525Renderer_REC2100_SurroundESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_525Renderer_REC2100_SurroundESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !91
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519Renderer_RGB_TO_HSVESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519Renderer_RGB_TO_HSVESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !397
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519Renderer_RGB_TO_HSVESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_519Renderer_RGB_TO_HSVESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
end_hunk_2
