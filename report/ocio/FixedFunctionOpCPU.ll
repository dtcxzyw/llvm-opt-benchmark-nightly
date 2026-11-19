Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203fwdEPKvPvl:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.02124 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 4 uses
  %.02223 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = call noundef float @fmodf(float noundef %i.f, float noundef 3.600000e+02) #24 ; 3 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.g, 3.600000e+02
  %.0.i.i.i = select i1 %i.h, float %i.i, float %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.b) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.j, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = load <2 x float>, ptr %.025, align 4, !tbaa !16
  store <2 x float> %i.k, ptr %5, align 8, !tbaa !16
  store float %.0.i.i.i, ptr %i.c, align 8, !tbaa !16
  %i.l = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_fwdERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(5828) %i.d) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store <2 x float> %.fca.0.extract, ptr %.02124, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %.02124, i64 8
  store float %.fca.1.extract, ptr %i.m, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.02124, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = add nuw nsw i64 %.02223, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203invEPKvPvl(ptr noundef nonnull align 8 dereferenceable(7300) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::ACES2::ResolvedSharedCompressionParameters", align 8 ; 5 uses
  %5 = alloca %"struct.std::array.16", align 8    ; 5 uses
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1472
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 4 uses
  %.02124 = phi ptr [ %2, %.lr.ph ], [ %i.r, %bb.b ] ; 4 uses
  %.02223 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !16
  %i.g = call noundef float @fmodf(float noundef %i.f, float noundef 3.600000e+02) #24 ; 3 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.g, 3.600000e+02
  %.0.i.i.i = select i1 %i.h, float %i.i, float %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.j = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES225resolve_CompressionParamsEfRKNS0_27SharedCompressionParametersE(float noundef %.0.i.i.i, ptr noundef nonnull align 4 dereferenceable(1460) %i.b) ; 2 uses
  %.fca.0.extract1 = extractvalue { <2 x float>, float } %i.j, 0
  %.fca.1.extract2 = extractvalue { <2 x float>, float } %i.j, 1
  store <2 x float> %.fca.0.extract1, ptr %4, align 8
  store float %.fca.1.extract2, ptr %.sroa.24.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.k = load <2 x float>, ptr %.025, align 4, !tbaa !16
  store <2 x float> %i.k, ptr %5, align 8, !tbaa !16
  store float %.0.i.i.i, ptr %i.c, align 8, !tbaa !16
  %i.l = call { <2 x float>, float } @_ZN16OpenColorIO_v2_55ACES218gamut_compress_invERKSt5arrayIfLm3EERKNS0_35ResolvedSharedCompressionParametersERKNS0_19GamutCompressParamsE(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(5828) %i.d) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.l, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  store <2 x float> %.fca.0.extract, ptr %.02124, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %.02124, i64 8
  store float %.fca.1.extract, ptr %i.m, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %.025, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.02124, i64 12
  store float %i.o, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = add nuw nsw i64 %.02223, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_525Renderer_REC2100_SurroundC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_525Renderer_REC2100_SurroundE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i32 %i.c, 12                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load double, ptr %i.f, align 8, !tbaa !42
  %i.h = fptrunc double %i.g to float             ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call float @powf(float noundef f0x38D1B717, float noundef %i.h) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi float [ %i.i, %bb.b ], [ f0x38D1B717, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !105
  %i.l = fdiv float 1.000000e+00, %i.h
  %i.m = select i1 %i.d, float %i.h, float %i.l
  %i.n = fadd float %i.m, -1.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_525Renderer_REC2100_Surround5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.b ] ; 4 uses
  %.02427 = phi ptr [ %2, %.lr.ph ], [ %i.z, %bb.b ] ; 4 uses
  %.02526 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ]
  %i.d = load float, ptr %.028, align 4, !tbaa !16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.f = load float, ptr %i.b, align 4, !tbaa !16 ; 2 uses
  %i.g = load float, ptr %i.c, align 8, !tbaa !106
  %i.h = getelementptr inbounds nuw i8, ptr %.02427, i64 4
  %i.i = load <2 x float>, ptr %i.e, align 4, !tbaa !16 ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fmul float %i.j, f0x3F2D9168
  %i.l = tail call float @llvm.fmuladd.f32(float %i.d, float 2.627000e-01, float %i.k)
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = tail call float @llvm.fmuladd.f32(float %i.m, float 5.930000e-02, float %i.l)
  %i.o = tail call noundef float @llvm.fabs.f32(float %i.n) ; 2 uses
  %i.p = fcmp olt float %i.f, %i.o
  %.sroa.speculated = select i1 %i.p, float %i.o, float %i.f
  %i.q = tail call float @powf(float noundef %.sroa.speculated, float noundef %i.g) #24 ; 2 uses
  %i.r = fmul float %i.d, %i.q
  store float %i.r, ptr %.02427, align 4, !tbaa !16
  %i.s = insertelement <2 x float> poison, float %i.q, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x float> %i.i, %i.t
  store <2 x float> %i.u, ptr %i.h, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.02427, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.02427, i64 16
  %i.aa = add nuw nsw i64 %.02526, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !165
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_RGB_TO_HSVC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_RGB_TO_HSVE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 %i.e
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.h
  %next.gep82 = getelementptr i8, ptr %1, i64 %i.h ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep83 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep84 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep85 = getelementptr i8, ptr %i.k, i64 48
  %i.l = load float, ptr %next.gep82, align 4, !tbaa !16, !alias.scope !171
  %i.m = load float, ptr %next.gep83, align 4, !tbaa !16, !alias.scope !171
  %i.n = load float, ptr %next.gep84, align 4, !tbaa !16, !alias.scope !171
  %i.o = load float, ptr %next.gep85, align 4, !tbaa !16, !alias.scope !171
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep82, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !171
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !171
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !171
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !171
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep82, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !171
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !171
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !171
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !171
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 6 uses
  %i.ar = fcmp olt <4 x float> %i.ae, %i.s
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.at = fcmp olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> %i.aq, <4 x float> %i.as ; 5 uses
  %i.av = fcmp olt <4 x float> %i.s, %i.ae
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, %i.aq
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.aq, <4 x float> %i.aw ; 9 uses
  %i.az = fcmp une <4 x float> %i.au, %i.ay       ; 4 uses
  %i.ba = fsub <4 x float> %i.ay, %i.au           ; 5 uses
  %i.bb = fcmp une <4 x float> %i.ay, zeroinitializer
  %i.bc = fdiv <4 x float> %i.ba, %i.ay
  %i.bd = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.be = xor <4 x i1> %i.bd, splat (i1 true)
  %i.bf = select <4 x i1> %i.az, <4 x i1> %i.be, <4 x i1> zeroinitializer
  %i.bg = fcmp une <4 x float> %i.ae, %i.ay
  %i.bh = select <4 x i1> %i.bf, <4 x i1> %i.bg, <4 x i1> zeroinitializer
  %i.bi = fsub <4 x float> %i.s, %i.ae
  %i.bj = fdiv <4 x float> %i.bi, %i.ba
  %i.bk = fadd <4 x float> %i.bj, splat (float 4.000000e+00)
  %i.bl = fsub <4 x float> %i.aq, %i.s
  %i.bm = fdiv <4 x float> %i.bl, %i.ba
  %i.bn = fadd <4 x float> %i.bm, splat (float 2.000000e+00)
  %i.bo = select <4 x i1> %i.az, <4 x i1> %i.bd, <4 x i1> zeroinitializer
  %i.bp = fsub <4 x float> %i.ae, %i.aq
  %i.bq = fdiv <4 x float> %i.bp, %i.ba
  %predphi = select <4 x i1> %i.bh, <4 x float> %i.bk, <4 x float> %i.bn
  %predphi86 = select <4 x i1> %i.bo, <4 x float> %i.bq, <4 x float> %predphi ; 3 uses
  %i.br = fcmp olt <4 x float> %predphi86, zeroinitializer
  %i.bs = fadd nnan <4 x float> %predphi86, splat (float 6.000000e+00)
  %i.bt = select <4 x i1> %i.br, <4 x float> %i.bs, <4 x float> %predphi86
  %i.bu = fmul <4 x float> %i.bt, splat (float f0x3E2AAAAB)
  %i.bv = and <4 x i1> %i.az, %i.bb
  %i.bw = select <4 x i1> %i.bv, <4 x float> %i.bc, <4 x float> zeroinitializer
  %predphi87 = select <4 x i1> %i.az, <4 x float> %i.bu, <4 x float> zeroinitializer
  %i.bx = fcmp olt <4 x float> %i.au, zeroinitializer
  %i.by = fadd <4 x float> %i.ay, %i.au
  %i.bz = select <4 x i1> %i.bx, <4 x float> %i.by, <4 x float> %i.ay
  %i.ca = fneg <4 x float> %i.au                  ; 2 uses
  %i.cb = fcmp olt <4 x float> %i.ay, %i.ca
  %i.cc = fdiv <4 x float> %i.ba, %i.ca
  %i.cd = select <4 x i1> %i.cb, <4 x float> %i.cc, <4 x float> %i.bw
  %i.ce = getelementptr inbounds nuw i8, ptr %next.gep82, i64 12
  %i.cf = getelementptr i8, ptr %i.i, i64 28
  %i.cg = getelementptr i8, ptr %i.j, i64 44
  %i.ch = getelementptr i8, ptr %i.k, i64 60
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !16, !alias.scope !171
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !16, !alias.scope !171
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !16, !alias.scope !171
  %i.cl = load float, ptr %i.ch, align 4, !tbaa !16, !alias.scope !171
  %i.cm = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 1
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.cl, i64 3
  %i.cq = shufflevector <4 x float> %predphi87, <4 x float> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <4 x float> %i.bz, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cq, <8 x float> %i.cr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !16, !alias.scope !172, !noalias !171
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04576.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04675.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.04774.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph._crit_edge
  %.04576 = phi i64 [ %i.ef, %.lr.ph._crit_edge ], [ %.04576.ph, %.lr.ph.preheader90 ]
  %.04675 = phi ptr [ %i.ee, %.lr.ph._crit_edge ], [ %.04675.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04774 = phi ptr [ %i.ed, %.lr.ph._crit_edge ], [ %.04774.ph, %.lr.ph.preheader90 ] ; 5 uses
  %i.ct = load float, ptr %.04774, align 4, !tbaa !16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.04774, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !16 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.04774, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !16 ; 6 uses
  %i.cy = fcmp olt float %i.cv, %i.ct
  %.sroa.speculated69 = select i1 %i.cy, float %i.cv, float %i.ct ; 2 uses
  %i.cz = fcmp olt float %i.cx, %.sroa.speculated69
  %.sroa.speculated62 = select i1 %i.cz, float %i.cx, float %.sroa.speculated69 ; 5 uses
  %i.da = fcmp olt float %i.ct, %i.cv
  %.sroa.speculated66 = select i1 %i.da, float %i.cv, float %i.ct ; 2 uses
  %i.db = fcmp olt float %.sroa.speculated66, %i.cx
  %.sroa.speculated = select i1 %i.db, float %i.cx, float %.sroa.speculated66 ; 9 uses
  %i.dc = fcmp une float %.sroa.speculated62, %.sroa.speculated
  %i.dd = fsub float %.sroa.speculated, %.sroa.speculated62 ; 5 uses
  br i1 %i.dc, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.de = fcmp une float %.sroa.speculated, 0.000000e+00
  %i.df = fdiv float %i.dd, %.sroa.speculated
  %.041 = select i1 %i.de, float %i.df, float 0.000000e+00
  %i.dg = fcmp oeq float %i.ct, %.sroa.speculated
  br i1 %i.dg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dh = fsub float %i.cv, %i.cx
  %i.di = fdiv float %i.dh, %i.dd
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dj = fcmp oeq float %i.cv, %.sroa.speculated
  br i1 %i.dj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dk = fsub float %i.cx, %i.ct
  %i.dl = fdiv float %i.dk, %i.dd
  %i.dm = fadd float %i.dl, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dn = fsub float %i.ct, %i.cv
  %i.do = fdiv float %i.dn, %i.dd
  %i.dp = fadd float %i.do, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi float [ %i.di, %bb.c ], [ %i.dm, %bb.e ], [ %i.dp, %bb.f ] ; 3 uses
  %i.dq = fcmp olt float %.0, 0.000000e+00
  %i.dr = fadd nnan float %.0, 6.000000e+00
  %.1 = select i1 %i.dq, float %i.dr, float %.0
  %i.ds = fmul float %.1, f0x3E2AAAAB
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %.142 = phi float [ %.041, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %.2 = phi float [ %i.ds, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %i.dt = fcmp olt float %.sroa.speculated62, 0.000000e+00
  %i.du = fadd float %.sroa.speculated, %.sroa.speculated62
  %.044 = select i1 %i.dt, float %i.du, float %.sroa.speculated
  %i.dv = fneg float %.sroa.speculated62          ; 2 uses
  %i.dw = fcmp olt float %.sroa.speculated, %i.dv
  %i.dx = fdiv float %i.dd, %i.dv
  %.243 = select i1 %i.dw, float %i.dx, float %.142
  store float %.2, ptr %.04675, align 4, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %.04675, i64 4
  store float %.243, ptr %i.dy, align 4, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.04675, i64 8
  store float %.044, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04774, i64 12
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %.04675, i64 12
  store float %i.eb, ptr %i.ec, align 4, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %.04774, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.04675, i64 16
  %i.ef = add nuw nsw i64 %.04576, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ef, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_HSV_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_HSV_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_HSV_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader66, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep60 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep61 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.k, i64 48
  %next.gep63 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.m = load float, ptr %next.gep60, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.n = load float, ptr %next.gep61, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.o = load float, ptr %next.gep62, align 4, !tbaa !16, !alias.scope !178 ; 2 uses
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3
  %i.t = tail call float @llvm.floor.f32(float %i.l)
  %i.u = tail call float @llvm.floor.f32(float %i.m)
  %i.v = tail call float @llvm.floor.f32(float %i.n)
  %i.w = tail call float @llvm.floor.f32(float %i.o)
  %i.x = insertelement <4 x float> poison, float %i.t, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = fsub <4 x float> %i.s, %i.aa
  %i.ac = fmul <4 x float> %i.ab, splat (float 6.000000e+00) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ae = getelementptr i8, ptr %i.i, i64 20
  %i.af = getelementptr i8, ptr %i.j, i64 36
  %i.ag = getelementptr i8, ptr %i.k, i64 52
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !16, !alias.scope !178
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !178
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !178
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !178
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 2 uses
  %i.ap = fcmp ogt <4 x float> %i.ao, zeroinitializer
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.ao, <4 x float> zeroinitializer ; 2 uses
  %i.ar = fcmp ogt <4 x float> %i.aq, splat (float 1.999000e+00)
  %i.as = select <4 x i1> %i.ar, <4 x float> splat (float 1.999000e+00), <4 x float> %i.aq ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.au = getelementptr i8, ptr %i.i, i64 24
  %i.av = getelementptr i8, ptr %i.j, i64 40
  %i.aw = getelementptr i8, ptr %i.k, i64 56
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !178
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !178
  %i.az = load float, ptr %i.av, align 4, !tbaa !16, !alias.scope !178
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !16, !alias.scope !178
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3 ; 6 uses
  %i.bf = fadd <4 x float> %i.ac, splat (float -3.000000e+00)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bf)
  %i.bh = fadd <4 x float> %i.bg, splat (float -1.000000e+00) ; 2 uses
  %i.bi = fcmp ogt <4 x float> %i.bh, zeroinitializer
  %i.bj = select <4 x i1> %i.bi, <4 x float> %i.bh, <4 x float> zeroinitializer ; 2 uses
  %i.bk = fadd <4 x float> %i.ac, splat (float -2.000000e+00)
  %i.bl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bk)
  %i.bm = fsub <4 x float> splat (float 2.000000e+00), %i.bl ; 2 uses
  %i.bn = fcmp ogt <4 x float> %i.bm, zeroinitializer
  %i.bo = select <4 x i1> %i.bn, <4 x float> %i.bm, <4 x float> zeroinitializer ; 2 uses
  %i.bp = fadd <4 x float> %i.ac, splat (float -4.000000e+00)
  %i.bq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bp)
  %i.br = fsub <4 x float> splat (float 2.000000e+00), %i.bq ; 2 uses
  %i.bs = fcmp ogt <4 x float> %i.br, zeroinitializer
  %i.bt = select <4 x i1> %i.bs, <4 x float> %i.br, <4 x float> zeroinitializer ; 2 uses
  %i.bu = fcmp ogt <4 x float> %i.bt, splat (float 1.000000e+00)
  %i.bv = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %i.bt
  %i.bw = fsub <4 x float> splat (float 1.000000e+00), %i.as
  %i.bx = fmul <4 x float> %i.be, %i.bw           ; 2 uses
  %i.by = fcmp ogt <4 x float> %i.as, splat (float 1.000000e+00) ; 2 uses
  %i.bz = fsub <4 x float> splat (float 2.000000e+00), %i.as ; 2 uses
  %i.ca = fdiv <4 x float> %i.bx, %i.bz           ; 2 uses
  %i.cb = fsub <4 x float> %i.be, %i.ca
  %i.cc = select <4 x i1> %i.by, <4 x float> %i.cb, <4 x float> %i.be
  %i.cd = select <4 x i1> %i.by, <4 x float> %i.ca, <4 x float> %i.bx
  %i.ce = fcmp olt <4 x float> %i.be, zeroinitializer ; 2 uses
  %i.cf = fdiv <4 x float> %i.be, %i.bz           ; 2 uses
  %i.cg = fsub <4 x float> %i.be, %i.cf
  %i.ch = select <4 x i1> %i.ce, <4 x float> %i.cg, <4 x float> %i.cc
  %i.ci = select <4 x i1> %i.ce, <4 x float> %i.cf, <4 x float> %i.cd ; 3 uses
  %i.cj = fsub <4 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.cj, <4 x float> %i.ci)
  %i.cl = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cm = getelementptr i8, ptr %i.i, i64 28
  %i.cn = getelementptr i8, ptr %i.j, i64 44
  %i.co = getelementptr i8, ptr %i.k, i64 60
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !16, !alias.scope !178
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !16, !alias.scope !178
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !16, !alias.scope !178
  %i.cs = load float, ptr %i.co, align 4, !tbaa !16, !alias.scope !178
  %i.ct = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3
  %i.cx = shufflevector <4 x float> %i.bj, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = fcmp ogt <8 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = shufflevector <4 x float> %i.bj, <4 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = select <8 x i1> %i.cy, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cz
  %i.db = shufflevector <4 x float> %i.cj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dc = shufflevector <4 x float> %i.ci, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.da, <8 x float> %i.db, <8 x float> %i.dc)
  %i.de = shufflevector <4 x float> %i.ck, <4 x float> %i.cw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !16, !alias.scope !179, !noalias !178
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.04657.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04756.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %.058 = phi ptr [ %i.fb, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi i64 [ %i.fd, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ]
  %.04756 = phi ptr [ %i.fc, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ] ; 4 uses
  %i.dg = load float, ptr %.058, align 4, !tbaa !16 ; 2 uses
  %i.dh = tail call noundef float @llvm.floor.f32(float %i.dg)
  %i.di = fsub float %i.dg, %i.dh
  %i.dj = fmul float %i.di, 6.000000e+00          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !16 ; 2 uses
  %i.dm = fcmp ogt float %i.dl, 0.000000e+00
  %.sroa.speculated2.i = select i1 %i.dm, float %i.dl, float 0.000000e+00 ; 2 uses
  %i.dn = fcmp ogt float %.sroa.speculated2.i, 1.999000e+00
  %.sroa.speculated.i = select i1 %i.dn, float 1.999000e+00, float %.sroa.speculated2.i ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !16 ; 6 uses
  %i.dq = fadd float %i.dj, -3.000000e+00
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fadd <2 x float> %i.dt, <float -2.000000e+00, float -4.000000e+00>
  %i.dv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du) ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 1
  %i.dx = fsub float 2.000000e+00, %i.dw          ; 2 uses
  %i.dy = fcmp ogt float %i.dx, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dy, float %i.dx, float 0.000000e+00 ; 2 uses
  %i.dz = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
  %.sroa.speculated.i55 = select i1 %i.dz, float 1.000000e+00, float %.sroa.speculated2.i54
  %i.ea = fsub float 1.000000e+00, %.sroa.speculated.i
  %i.eb = fmul float %i.dp, %i.ea                 ; 2 uses
  %i.ec = fcmp ogt float %.sroa.speculated.i, 1.000000e+00 ; 2 uses
  %i.ed = fsub float 2.000000e+00, %.sroa.speculated.i ; 2 uses
  %i.ee = fdiv float %i.eb, %i.ed                 ; 2 uses
  %i.ef = fsub float %i.dp, %i.ee
  %.044 = select i1 %i.ec, float %i.ef, float %i.dp
  %.043 = select i1 %i.ec, float %i.ee, float %i.eb
  %i.eg = fcmp olt float %i.dp, 0.000000e+00      ; 2 uses
  %i.eh = fdiv float %i.dp, %i.ed                 ; 2 uses
  %i.ei = fsub float %i.dp, %i.eh
  %.145 = select i1 %i.eg, float %i.ei, float %.044
  %.1 = select i1 %i.eg, float %i.eh, float %.043 ; 3 uses
  %i.ej = fsub float %.145, %.1                   ; 2 uses
  %i.ek = insertelement <2 x float> <float poison, float 2.000000e+00>, float %i.dr, i64 0
  %i.el = shufflevector <2 x float> <float 1.000000e+00, float poison>, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.em = fsub <2 x float> %i.ek, %i.el           ; 2 uses
  %i.en = fcmp ogt <2 x float> %i.em, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.em, <2 x float> zeroinitializer ; 2 uses
  %i.ep = fcmp ogt <2 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = select <2 x i1> %i.ep, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eo
  %i.er = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x float> poison, float %.1, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.es, <2 x float> %i.eu)
  store <2 x float> %i.ev, ptr %.04756, align 4, !tbaa !16
  %i.ew = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i55, float %i.ej, float %.1)
  %i.ex = getelementptr inbounds nuw i8, ptr %.04756, i64 8
  store float %i.ew, ptr %i.ex, align 4, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %.058, i64 12
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %.04756, i64 12
  store float %i.ez, ptr %i.fa, align 4, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %.058, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %.04756, i64 16
  %i.fd = add nuw nsw i64 %.04657, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !177
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %.0145 = phi ptr [ %i.dl, %bb.p ], [ %0, %bb.a ] ; 5 uses
  %.0111144 = phi ptr [ %i.dm, %bb.p ], [ %1, %bb.a ] ; 4 uses
  %.0113143 = phi i64 [ %i.dn, %bb.p ], [ 0, %bb.a ]
  %i.b = load float, ptr %.0145, align 4, !tbaa !16
  %i.c = fadd float %i.b, f0xBE2AAAAB             ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0145, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0145, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !16 ; 9 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fadd float %i.c, 5.000000e-01
  %i.j = select i1 %i.h, float %i.i, float %i.c   ; 2 uses
  %i.k = tail call noundef float @llvm.floor.f32(float %i.j)
  %i.l = fsub float %i.j, %i.k
  %i.m = fmul float %i.l, 6.000000e+00            ; 3 uses
  %i.n = fadd float %i.m, -3.000000e+00
  %i.o = tail call noundef float @llvm.fabs.f32(float %i.n)
  %i.p = fadd float %i.o, -1.000000e+00           ; 3 uses
  %i.q = fcmp ogt float %i.p, 1.000000e+00
  br i1 %i.q, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fcmp olt float %i.p, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.s = phi float [ 1.000000e+00, %.lr.ph ], [ %i.p, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.t = fadd float %i.m, -2.000000e+00
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fsub float 2.000000e+00, %i.u            ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ogt float %i.u, 2.000000e+00
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.y = phi float [ 1.000000e+00, %bb.d ], [ %i.v, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.z = fadd float %i.m, -4.000000e+00
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z) ; 2 uses
  %i.ab = fsub float 2.000000e+00, %i.aa          ; 2 uses
  %i.ac = fcmp ogt float %i.ab, 1.000000e+00
  br i1 %i.ac, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp ogt float %i.aa, 2.000000e+00
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = phi float [ 1.000000e+00, %bb.g ], [ %i.ab, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.af = fmul float %i.y, 7.152000e-01
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.s, float 2.126000e-01, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float 7.220000e-02, float %i.ag)
  %i.ai = fdiv float %i.g, %i.ah                  ; 2 uses
  %i.aj = fmul float %i.ae, %i.ai                 ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.s, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.y, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.al, %i.an           ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %i.g, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fsub <2 x float> %i.ao, %i.aq           ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.as)
  %i.au = extractelement <2 x float> %i.ar, i64 1
  %i.av = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.aw = fadd float %i.at, %i.av
  %i.ax = fsub float %i.aj, %i.g                  ; 2 uses
  %i.ay = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.az = fadd float %i.ay, %i.aw                 ; 5 uses
  switch i32 %3, label %bb.o [
    i32 39, label %bb.k
    i32 40, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %shift = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ao, %shift
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bb = fadd float %i.aj, %i.ba                 ; 2 uses
  %i.bc = fdiv float %i.e, 1.400000e+00           ; 4 uses
  %i.bd = fneg float %i.bc                        ; 3 uses
  %i.be = fmul float %i.bc, 3.000000e+00
  %i.bf = fmul float %i.g, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bb, float %i.bf)
  %i.bh = fadd float %i.bg, %i.az                 ; 2 uses
  %i.bi = fcmp ogt float %i.bh, f0x358637BD
  %.sroa.speculated139 = select i1 %i.bi, float %i.bh, float f0x358637BD
  %i.bj = fmul float %i.az, 5.000000e+00          ; 3 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.g, float 3.000000e+00, float 1.500000e-01) ; 3 uses
  %i.bl = fmul float %i.bc, %i.bk
  %i.bm = fadd float %i.g, -1.000000e-03
  %i.bn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bm, i64 1
  %i.bp = insertelement <2 x float> <float poison, float f0x3C1374BC>, float %.sroa.speculated139, i64 0
  %i.bq = fdiv <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0 ; 2 uses
  %i.bs = fcmp ogt float %i.br, 5.000000e+01
  %.sroa.speculated133 = select i1 %i.bs, float 5.000000e+01, float %i.br
  %i.bt = extractelement <2 x float> %i.bq, i64 1 ; 3 uses
  %i.bu = fcmp ogt float %i.bt, 1.000000e+00
  %i.bv = fcmp olt float %i.bt, 0.000000e+00
  %i.bw = select i1 %i.bv, float 0.000000e+00, float %i.bt
  %i.bx = select i1 %i.bu, float 1.000000e+00, float %i.bw ; 4 uses
  %i.by = fcmp oeq float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = fcmp ogt float %i.bj, 1.000000e-10
  %.sroa.speculated128 = select i1 %i.bz, float %i.bj, float 1.000000e-10
  %i.ca = fdiv float %i.bc, %.sroa.speculated128
  %i.cb = fcmp oeq float %i.bx, 0.000000e+00
  br i1 %i.cb, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = fsub float 1.000000e+00, %i.bx
  %i.cd = fmul float %i.cc, %i.bj                 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.g, float -3.000000e+00, float %i.bb) ; 2 uses
  %i.cf = fmul float %i.ce, %i.cd
  %i.cg = fmul float %i.bx, %i.az
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bk, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.ce, float %i.ch) ; 3 uses
  %i.cj = fmul float %i.bk, %i.bd                 ; 2 uses
  %i.ck = fmul float %i.cf, 4.000000e+00
  %i.cl = fneg float %i.cj
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cm)
  %i.co = tail call noundef float @sqrtf(float noundef %i.cn) #24 ; 2 uses
  %i.cp = fneg float %i.co
  %i.cq = fsub float %i.cp, %i.ci                 ; 2 uses
  %i.cr = fmul float %i.cj, 2.000000e+00          ; 2 uses
  %i.cs = fdiv float %i.cr, %i.cq                 ; 2 uses
  %i.ct = fcmp ult float %i.cs, 0.000000e+00
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.co, float 2.000000e+00, float %i.cq)
  %i.cv = fdiv float %i.cr, %i.cu
  %i.cw = select i1 %i.ct, float %i.cv, float %i.cs
  br label %bb.p

bb.n:                                             ; preds = %bb.j
  %i.cx = fmul float %i.az, 4.000000e+00          ; 2 uses
  %i.cy = fcmp ogt float %i.cx, 1.000000e-10
  %.sroa.speculated123 = select i1 %i.cy, float %i.cx, float 1.000000e-10
  %i.cz = fdiv float %i.e, %.sroa.speculated123
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.da = fmul float %i.az, 1.250000e+00          ; 2 uses
  %i.db = fcmp ogt float %i.da, 1.000000e-10
  %.sroa.speculated = select i1 %i.db, float %i.da, float 1.000000e-10
  %i.dc = fdiv float %i.e, %.sroa.speculated
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n, %bb.o
  %.1 = phi float [ %i.dc, %bb.o ], [ %i.cz, %bb.n ], [ %i.ca, %bb.l ], [ %i.cw, %bb.m ], [ %.sroa.speculated133, %bb.k ] ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %.1, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.ar, <2 x float> %i.aq)
  store <2 x float> %i.df, ptr %.0111144, align 4, !tbaa !16
  %i.dg = tail call float @llvm.fmuladd.f32(float %.1, float %i.ax, float %i.g)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0111144, i64 8
  store float %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.0145, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !16
  %i.dk = getelementptr inbounds nuw i8, ptr %.0111144, i64 12
  store float %i.dj, ptr %i.dk, align 4, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %.0145, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.0111144, i64 16
  %i.dn = add nuw nsw i64 %.0113143, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %2, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  %i.d = getelementptr i8, ptr %0, i64 %i.b
  %bound0 = icmp ult ptr %1, %i.d
  %bound1 = icmp ult ptr %0, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %i.h = icmp eq i32 %3, 37
  %predphi.v = select i1 %i.h, <4 x float> splat (float 4.000000e+00), <4 x float> splat (float 1.250000e+00)
  %i.i = icmp eq i32 %3, 36
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep101 = getelementptr i8, ptr %i.k, i64 16
  %i.l = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep102 = getelementptr i8, ptr %i.l, i64 32
  %i.m = getelementptr i8, ptr %0, i64 %i.j       ; 4 uses
  %next.gep103 = getelementptr i8, ptr %i.m, i64 48
  %next.gep104 = getelementptr i8, ptr %1, i64 %i.j
  %i.n = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !186
  %i.o = load float, ptr %next.gep101, align 4, !tbaa !16, !alias.scope !186
  %i.p = load float, ptr %next.gep102, align 4, !tbaa !16, !alias.scope !186
  %i.q = load float, ptr %next.gep103, align 4, !tbaa !16, !alias.scope !186
  %i.r = insertelement <4 x float> poison, float %i.n, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.p, i64 2
  %i.u = insertelement <4 x float> %i.t, float %i.q, i64 3 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.w = getelementptr i8, ptr %i.k, i64 20
  %i.x = getelementptr i8, ptr %i.l, i64 36
  %i.y = getelementptr i8, ptr %i.m, i64 52
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !186
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !186
  %i.ab = load float, ptr %i.x, align 4, !tbaa !16, !alias.scope !186
  %i.ac = load float, ptr %i.y, align 4, !tbaa !16, !alias.scope !186
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ai = getelementptr i8, ptr %i.k, i64 24
  %i.aj = getelementptr i8, ptr %i.l, i64 40
  %i.ak = getelementptr i8, ptr %i.m, i64 56
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !186
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !186
  %i.an = load float, ptr %i.aj, align 4, !tbaa !16, !alias.scope !186
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !16, !alias.scope !186
  %i.ap = insertelement <4 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3 ; 9 uses
  %i.at = fcmp olt <4 x float> %i.ag, %i.u
  %i.au = select <4 x i1> %i.at, <4 x float> %i.ag, <4 x float> %i.u ; 2 uses
  %i.av = fcmp olt <4 x float> %i.as, %i.au
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.as, <4 x float> %i.au ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.u, %i.ag
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.ag, <4 x float> %i.u ; 2 uses
  %i.az = fcmp olt <4 x float> %i.ay, %i.as
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.as, <4 x float> %i.ay ; 4 uses
  %i.bb = fmul <4 x float> %i.ag, splat (float 7.152000e-01)
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> splat (float 2.126000e-01), <4 x float> %i.bb)
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> splat (float 7.220000e-02), <4 x float> %i.bc) ; 5 uses
  %i.be = fsub <4 x float> %i.u, %i.bd
  %i.bf = fsub <4 x float> %i.ag, %i.bd
  %i.bg = fsub <4 x float> %i.as, %i.bd
  %i.bh = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bf)
  %i.bj = fadd <4 x float> %i.bh, %i.bi
  %i.bk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bg)
  %i.bl = fadd <4 x float> %i.bk, %i.bj           ; 4 uses
  %i.bm = fadd <4 x float> %i.u, %i.ag
  %i.bn = fadd <4 x float> %i.bm, %i.as
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> splat (float 7.000000e-02), <4 x float> splat (float f0x358637BD)) ; 2 uses
  %i.bp = fadd <4 x float> %i.bn, splat (float 1.500000e-01) ; 2 uses
  %i.bq = fcmp olt <4 x float> %i.bo, %i.bp
  %i.br = select <4 x i1> %i.bq, <4 x float> %i.bp, <4 x float> %i.bo
  %i.bs = fdiv <4 x float> %i.bl, %i.br
  %i.bt = fmul <4 x float> %i.bl, splat (float 5.000000e+00) ; 2 uses
  %i.bu = fadd <4 x float> %i.bd, splat (float -1.000000e-03)
  %i.bv = fdiv <4 x float> %i.bu, splat (float f0x3C1374BC) ; 3 uses
  %i.bw = fcmp ogt <4 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = fcmp olt <4 x float> %i.bv, zeroinitializer
  %i.by = select <4 x i1> %i.bx, <4 x float> zeroinitializer, <4 x float> %i.bv
  %i.bz = select <4 x i1> %i.bw, <4 x float> splat (float 1.000000e+00), <4 x float> %i.by
  %i.ca = fsub <4 x float> %i.bs, %i.bt
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ca, <4 x float> %i.bt)
  %i.cc = fmul <4 x float> %i.cb, splat (float 1.400000e+00)
  %predphi = fmul <4 x float> %i.bl, %predphi.v
  %predphi105 = select i1 %i.i, <4 x float> %i.cc, <4 x float> %predphi
  %i.cd = fcmp une <4 x float> %i.aw, %i.ba       ; 3 uses
  %i.ce = fsub <4 x float> %i.ba, %i.aw
  %i.cf = fcmp oeq <4 x float> %i.u, %i.ba        ; 2 uses
  %i.cg = xor <4 x i1> %i.cf, splat (i1 true)
  %i.ch = select <4 x i1> %i.cd, <4 x i1> %i.cg, <4 x i1> zeroinitializer
  %i.ci = fcmp une <4 x float> %i.ag, %i.ba
  %i.cj = select <4 x i1> %i.ch, <4 x i1> %i.ci, <4 x i1> zeroinitializer ; 2 uses
  %i.ck = fsub <4 x float> %i.u, %i.ag
  %i.cl = fsub <4 x float> %i.as, %i.u
  %i.cm = select <4 x i1> %i.cd, <4 x i1> %i.cf, <4 x i1> zeroinitializer ; 2 uses
  %i.cn = fsub <4 x float> %i.ag, %i.as
  %predphi106 = select <4 x i1> %i.cj, <4 x float> %i.ck, <4 x float> %i.cl
  %predphi107 = select <4 x i1> %i.cm, <4 x float> %i.cn, <4 x float> %predphi106
  %predphi108 = select <4 x i1> %i.cj, <4 x float> splat (float 5.000000e+00), <4 x float> splat (float 3.000000e+00)
  %predphi109 = select <4 x i1> %i.cm, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi108
  %i.co = fdiv <4 x float> %predphi107, %i.ce
  %i.cp = fadd <4 x float> %i.co, %predphi109
  %i.cq = fmul <4 x float> %i.cp, splat (float f0x3E2AAAAB)
  %predphi110 = select <4 x i1> %i.cd, <4 x float> %i.cq, <4 x float> zeroinitializer
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cs = getelementptr i8, ptr %i.k, i64 28
  %i.ct = getelementptr i8, ptr %i.l, i64 44
  %i.cu = getelementptr i8, ptr %i.m, i64 60
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !16, !alias.scope !186
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !16, !alias.scope !186
  %i.cx = load float, ptr %i.ct, align 4, !tbaa !16, !alias.scope !186
  %i.cy = load float, ptr %i.cu, align 4, !tbaa !16, !alias.scope !186
  %i.cz = insertelement <4 x float> poison, float %i.cv, i64 0
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 1
  %i.db = insertelement <4 x float> %i.da, float %i.cx, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 3
  %i.dd = shufflevector <4 x float> %predphi110, <4 x float> %predphi105, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <4 x float> %i.bd, <4 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep104, align 4, !tbaa !16, !alias.scope !187, !noalias !186
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader113

.lr.ph.preheader113:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04993.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.05092.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.05291.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader113, %bb.l
  %.04993 = phi ptr [ %i.fj, %bb.l ], [ %.04993.ph, %.lr.ph.preheader113 ] ; 4 uses
  %.05092 = phi ptr [ %i.fk, %bb.l ], [ %.05092.ph, %.lr.ph.preheader113 ] ; 5 uses
  %.05291 = phi i64 [ %i.fl, %bb.l ], [ %.05291.ph, %.lr.ph.preheader113 ]
  %i.dg = load float, ptr %.04993, align 4, !tbaa !16 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.04993, i64 4
  %i.di = load <2 x float>, ptr %i.dh, align 4, !tbaa !16 ; 3 uses
  %i.dj = extractelement <2 x float> %i.di, i64 1 ; 8 uses
  %i.dk = extractelement <2 x float> %i.di, i64 0 ; 9 uses
  %i.dl = fcmp olt float %i.dk, %i.dg
  %.sroa.speculated83 = select i1 %i.dl, float %i.dk, float %i.dg ; 2 uses
  %i.dm = fcmp olt float %i.dj, %.sroa.speculated83
  %.sroa.speculated72 = select i1 %i.dm, float %i.dj, float %.sroa.speculated83 ; 2 uses
  %i.dn = fcmp olt float %i.dg, %i.dk
  %.sroa.speculated80 = select i1 %i.dn, float %i.dk, float %i.dg ; 2 uses
  %i.do = fcmp olt float %.sroa.speculated80, %i.dj
  %.sroa.speculated69 = select i1 %i.do, float %i.dj, float %.sroa.speculated80 ; 4 uses
  %i.dp = fmul float %i.dk, 7.152000e-01
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dg, float 2.126000e-01, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dj, float 7.220000e-02, float %i.dq) ; 4 uses
  %i.ds = fsub float %i.dg, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fsub <2 x float> %i.di, %i.du
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.ds)
  %i.dx = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dv) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = fadd float %i.dw, %i.dy
  %i.ea = extractelement <2 x float> %i.dx, i64 1
  %i.eb = fadd float %i.ea, %i.dz                 ; 5 uses
  switch i32 %3, label %bb.d [
    i32 36, label %bb.b
    i32 37, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.ec = fadd float %i.dg, %i.dk
  %i.ed = fadd float %i.ec, %i.dj
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.eb, float 7.000000e-02, float f0x358637BD) ; 2 uses
  %i.ef = fadd float %i.ed, 1.500000e-01          ; 2 uses
  %i.eg = fcmp olt float %i.ee, %i.ef
  %.sroa.speculated = select i1 %i.eg, float %i.ef, float %i.ee
  %i.eh = fdiv float %i.eb, %.sroa.speculated
  %i.ei = fmul float %i.eb, 5.000000e+00          ; 2 uses
  %i.ej = fadd float %i.dr, -1.000000e-03
  %i.ek = fdiv float %i.ej, f0x3C1374BC           ; 3 uses
  %i.el = fcmp ogt float %i.ek, 1.000000e+00
  %i.em = fcmp olt float %i.ek, 0.000000e+00
  %i.en = select i1 %i.em, float 0.000000e+00, float %i.ek
  %i.eo = select i1 %i.el, float 1.000000e+00, float %i.en
  %i.ep = fsub float %i.eh, %i.ei
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.ei)
  %i.er = fmul float %i.eq, 1.400000e+00
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.es = fmul float %i.eb, 4.000000e+00
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.et = fmul float %i.eb, 1.250000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.051 = phi float [ %i.er, %bb.b ], [ %i.es, %bb.c ], [ %i.et, %bb.d ]
  %i.eu = fcmp une float %.sroa.speculated72, %.sroa.speculated69
  br i1 %i.eu, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ev = fsub float %.sroa.speculated69, %.sroa.speculated72
  %i.ew = fcmp oeq float %i.dg, %.sroa.speculated69
  br i1 %i.ew, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ex = fsub float %i.dk, %i.dj
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ey = fcmp oeq float %i.dk, %.sroa.speculated69
  br i1 %i.ey, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ez = fsub float %i.dj, %i.dg
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.fa = fsub float %i.dg, %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink99 = phi float [ %i.ez, %bb.i ], [ %i.fa, %bb.j ], [ %i.ex, %bb.g ]
  %.sink98 = phi float [ 3.000000e+00, %bb.i ], [ 5.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ]
  %i.fb = fdiv float %.sink99, %i.ev
  %i.fc = fadd float %i.fb, %.sink98
  %i.fd = fmul float %i.fc, f0x3E2AAAAB
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.1 = phi float [ %i.fd, %bb.k ], [ 0.000000e+00, %bb.e ]
  store float %.1, ptr %.05092, align 4, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %.05092, i64 4
  store float %.051, ptr %i.fe, align 4, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %.05092, i64 8
  store float %i.dr, ptr %i.ff, align 4, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %.04993, i64 12
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %.05092, i64 12
  store float %i.fh, ptr %i.fi, align 4, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %.04993, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %.05092, i64 16
  %i.fl = add nuw nsw i64 %.05291, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !185
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOGC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOGE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LOG5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 48
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !193
  %i.m = load float, ptr %next.gep6, align 4, !tbaa !16, !alias.scope !193
  %i.n = load float, ptr %next.gep7, align 4, !tbaa !16, !alias.scope !193
  %i.o = load float, ptr %next.gep8, align 4, !tbaa !16, !alias.scope !193
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !193
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !193
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !193
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !193
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !193
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !193
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !193
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !193
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 8 uses
  %i.ar = fcmp olt <4 x float> %i.ae, %i.s
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.at = fcmp olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> %i.aq, <4 x float> %i.as ; 2 uses
  %i.av = fcmp olt <4 x float> %i.s, %i.ae
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, %i.aq
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.aq, <4 x float> %i.aw ; 4 uses
  %i.az = fmul <4 x float> %i.ae, splat (float 7.152000e-01)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 2.126000e-01), <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float 7.220000e-02), <4 x float> %i.ba) ; 4 uses
  %i.bc = fsub <4 x float> %i.s, %i.bb
  %i.bd = fsub <4 x float> %i.ae, %i.bb
  %i.be = fsub <4 x float> %i.aq, %i.bb
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bc)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fmul <4 x float> %i.bj, splat (float 4.000000e+00)
  %i.bl = fcmp une <4 x float> %i.au, %i.ay       ; 3 uses
  %i.bm = fsub <4 x float> %i.ay, %i.au
  %i.bn = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.bo = xor <4 x i1> %i.bn, splat (i1 true)
  %i.bp = select <4 x i1> %i.bl, <4 x i1> %i.bo, <4 x i1> zeroinitializer
  %i.bq = fcmp oeq <4 x float> %i.ae, %i.ay
  %i.br = fsub <4 x float> %i.s, %i.ae
  %i.bs = select <4 x i1> %i.bp, <4 x i1> %i.bq, <4 x i1> zeroinitializer ; 2 uses
  %i.bt = fsub <4 x float> %i.aq, %i.s
  %i.bu = select <4 x i1> %i.bl, <4 x i1> %i.bn, <4 x i1> zeroinitializer ; 2 uses
  %i.bv = fsub <4 x float> %i.ae, %i.aq
  %predphi = select <4 x i1> %i.bs, <4 x float> %i.bt, <4 x float> %i.br
  %predphi10 = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %predphi
  %predphi11 = select <4 x i1> %i.bs, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 5.000000e+00)
  %predphi12 = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi11
  %i.bw = fdiv <4 x float> %predphi10, %i.bm
  %i.bx = fadd <4 x float> %i.bw, %predphi12
  %i.by = fmul <4 x float> %i.bx, splat (float f0x3E2AAAAB)
  %predphi13 = select <4 x i1> %i.bl, <4 x float> %i.by, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ca = getelementptr i8, ptr %i.i, i64 28
  %i.cb = getelementptr i8, ptr %i.j, i64 44
  %i.cc = getelementptr i8, ptr %i.k, i64 60
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !16, !alias.scope !193
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !16, !alias.scope !193
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !16, !alias.scope !193
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !16, !alias.scope !193
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = shufflevector <4 x float> %predphi13, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x float> %i.bb, <4 x float> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cl, <8 x float> %i.cm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep9, align 4, !tbaa !16, !alias.scope !194, !noalias !193
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.04993.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  %.05092.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.g, %middle.block ]
  %.05291.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %bb.h
  %.04993.i = phi ptr [ %i.ea, %bb.h ], [ %.04993.i.ph, %.lr.ph.i.preheader16 ] ; 4 uses
  %.05092.i = phi ptr [ %i.eb, %bb.h ], [ %.05092.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05291.i = phi i64 [ %i.ec, %bb.h ], [ %.05291.i.ph, %.lr.ph.i.preheader16 ]
  %i.co = load float, ptr %.04993.i, align 4, !tbaa !16 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04993.i, i64 4
  %i.cq = load <2 x float>, ptr %i.cp, align 4, !tbaa !16 ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 7 uses
  %i.cs = extractelement <2 x float> %i.cq, i64 0 ; 8 uses
  %i.ct = fcmp olt float %i.cs, %i.co
  %.sroa.speculated83.i = select i1 %i.ct, float %i.cs, float %i.co ; 2 uses
  %i.cu = fcmp olt float %i.cr, %.sroa.speculated83.i
  %.sroa.speculated72.i = select i1 %i.cu, float %i.cr, float %.sroa.speculated83.i ; 2 uses
  %i.cv = fcmp olt float %i.co, %i.cs
  %.sroa.speculated80.i = select i1 %i.cv, float %i.cs, float %i.co ; 2 uses
  %i.cw = fcmp olt float %.sroa.speculated80.i, %i.cr
  %.sroa.speculated69.i = select i1 %i.cw, float %i.cr, float %.sroa.speculated80.i ; 4 uses
  %i.cx = fmul float %i.cs, 7.152000e-01
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.co, float 2.126000e-01, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float 7.220000e-02, float %i.cy) ; 3 uses
  %i.da = fsub float %i.co, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fsub <2 x float> %i.cq, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.da)
  %i.df = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dd) ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.de, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh
  %i.dk = fmul float %i.dj, 4.000000e+00
  %i.dl = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dl, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.dm = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.dn = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.dn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.do = fsub float %i.cs, %i.cr
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dp = fcmp oeq float %i.cs, %.sroa.speculated69.i
  br i1 %i.dp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dq = fsub float %i.cr, %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dr = fsub float %i.co, %i.cs
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink99.i = phi float [ %i.dq, %bb.e ], [ %i.dr, %bb.f ], [ %i.do, %bb.c ]
  %.sink98.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.ds = fdiv float %.sink99.i, %i.dm
  %i.dt = fadd float %i.ds, %.sink98.i
  %i.du = fmul float %i.dt, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.du, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.dk, ptr %i.dv, align 4, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cz, ptr %i.dw, align 4, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.04993.i, i64 12
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.dy, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04993.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.ec = add nuw nsw i64 %.05291.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !192

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_LOG_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 40)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LINE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_LIN5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 36)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_LIN_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 39)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VIDE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VID5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.i.preheader, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep6 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep7 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep8 = getelementptr i8, ptr %i.k, i64 48
  %next.gep9 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !200
  %i.m = load float, ptr %next.gep6, align 4, !tbaa !16, !alias.scope !200
  %i.n = load float, ptr %next.gep7, align 4, !tbaa !16, !alias.scope !200
  %i.o = load float, ptr %next.gep8, align 4, !tbaa !16, !alias.scope !200
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !200
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !200
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !200
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !200
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !200
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !200
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !200
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !200
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 8 uses
  %i.ar = fcmp olt <4 x float> %i.ae, %i.s
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.at = fcmp olt <4 x float> %i.aq, %i.as
  %i.au = select <4 x i1> %i.at, <4 x float> %i.aq, <4 x float> %i.as ; 2 uses
  %i.av = fcmp olt <4 x float> %i.s, %i.ae
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ae, <4 x float> %i.s ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, %i.aq
  %i.ay = select <4 x i1> %i.ax, <4 x float> %i.aq, <4 x float> %i.aw ; 4 uses
  %i.az = fmul <4 x float> %i.ae, splat (float 7.152000e-01)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.s, <4 x float> splat (float 2.126000e-01), <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> splat (float 7.220000e-02), <4 x float> %i.ba) ; 4 uses
  %i.bc = fsub <4 x float> %i.s, %i.bb
  %i.bd = fsub <4 x float> %i.ae, %i.bb
  %i.be = fsub <4 x float> %i.aq, %i.bb
  %i.bf = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bc)
  %i.bg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bh = fadd <4 x float> %i.bf, %i.bg
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.be)
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fmul <4 x float> %i.bj, splat (float 1.250000e+00)
  %i.bl = fcmp une <4 x float> %i.au, %i.ay       ; 3 uses
  %i.bm = fsub <4 x float> %i.ay, %i.au
  %i.bn = fcmp oeq <4 x float> %i.s, %i.ay        ; 2 uses
  %i.bo = xor <4 x i1> %i.bn, splat (i1 true)
  %i.bp = select <4 x i1> %i.bl, <4 x i1> %i.bo, <4 x i1> zeroinitializer
  %i.bq = fcmp oeq <4 x float> %i.ae, %i.ay
  %i.br = fsub <4 x float> %i.s, %i.ae
  %i.bs = select <4 x i1> %i.bp, <4 x i1> %i.bq, <4 x i1> zeroinitializer ; 2 uses
  %i.bt = fsub <4 x float> %i.aq, %i.s
  %i.bu = select <4 x i1> %i.bl, <4 x i1> %i.bn, <4 x i1> zeroinitializer ; 2 uses
  %i.bv = fsub <4 x float> %i.ae, %i.aq
  %predphi = select <4 x i1> %i.bs, <4 x float> %i.bt, <4 x float> %i.br
  %predphi10 = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %predphi
  %predphi11 = select <4 x i1> %i.bs, <4 x float> splat (float 3.000000e+00), <4 x float> splat (float 5.000000e+00)
  %predphi12 = select <4 x i1> %i.bu, <4 x float> splat (float 1.000000e+00), <4 x float> %predphi11
  %i.bw = fdiv <4 x float> %predphi10, %i.bm
  %i.bx = fadd <4 x float> %i.bw, %predphi12
  %i.by = fmul <4 x float> %i.bx, splat (float f0x3E2AAAAB)
  %predphi13 = select <4 x i1> %i.bl, <4 x float> %i.by, <4 x float> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ca = getelementptr i8, ptr %i.i, i64 28
  %i.cb = getelementptr i8, ptr %i.j, i64 44
  %i.cc = getelementptr i8, ptr %i.k, i64 60
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !16, !alias.scope !200
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !16, !alias.scope !200
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !16, !alias.scope !200
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !16, !alias.scope !200
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = shufflevector <4 x float> %predphi13, <4 x float> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x float> %i.bb, <4 x float> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cl, <8 x float> %i.cm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep9, align 4, !tbaa !16, !alias.scope !201, !noalias !200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.04993.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.f, %middle.block ]
  %.05092.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.g, %middle.block ]
  %.05291.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %bb.h
  %.04993.i = phi ptr [ %i.ea, %bb.h ], [ %.04993.i.ph, %.lr.ph.i.preheader16 ] ; 4 uses
  %.05092.i = phi ptr [ %i.eb, %bb.h ], [ %.05092.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05291.i = phi i64 [ %i.ec, %bb.h ], [ %.05291.i.ph, %.lr.ph.i.preheader16 ]
  %i.co = load float, ptr %.04993.i, align 4, !tbaa !16 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.04993.i, i64 4
  %i.cq = load <2 x float>, ptr %i.cp, align 4, !tbaa !16 ; 3 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1 ; 7 uses
  %i.cs = extractelement <2 x float> %i.cq, i64 0 ; 8 uses
  %i.ct = fcmp olt float %i.cs, %i.co
  %.sroa.speculated83.i = select i1 %i.ct, float %i.cs, float %i.co ; 2 uses
  %i.cu = fcmp olt float %i.cr, %.sroa.speculated83.i
  %.sroa.speculated72.i = select i1 %i.cu, float %i.cr, float %.sroa.speculated83.i ; 2 uses
  %i.cv = fcmp olt float %i.co, %i.cs
  %.sroa.speculated80.i = select i1 %i.cv, float %i.cs, float %i.co ; 2 uses
  %i.cw = fcmp olt float %.sroa.speculated80.i, %i.cr
  %.sroa.speculated69.i = select i1 %i.cw, float %i.cr, float %.sroa.speculated80.i ; 4 uses
  %i.cx = fmul float %i.cs, 7.152000e-01
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.co, float 2.126000e-01, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float 7.220000e-02, float %i.cy) ; 3 uses
  %i.da = fsub float %i.co, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fsub <2 x float> %i.cq, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.da)
  %i.df = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dd) ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = fadd float %i.de, %i.dg
  %i.di = extractelement <2 x float> %i.df, i64 1
  %i.dj = fadd float %i.di, %i.dh
  %i.dk = fmul float %i.dj, 1.250000e+00
  %i.dl = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dl, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.dm = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.dn = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.dn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.do = fsub float %i.cs, %i.cr
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dp = fcmp oeq float %i.cs, %.sroa.speculated69.i
  br i1 %i.dp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dq = fsub float %i.cr, %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dr = fsub float %i.co, %i.cs
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink99.i = phi float [ %i.dq, %bb.e ], [ %i.dr, %bb.f ], [ %i.do, %bb.c ]
  %.sink98.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.ds = fdiv float %.sink99.i, %i.dm
  %i.dt = fadd float %i.ds, %.sink98.i
  %i.du = fmul float %i.dt, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.du, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.dk, ptr %i.dv, align 4, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cz, ptr %i.dw, align 4, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.04993.i, i64 12
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.dy, ptr %i.dz, align 4, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04993.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.ec = add nuw nsw i64 %.05291.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !199

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 41)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_xyY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.k, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !207
  %i.m = load float, ptr %next.gep32, align 4, !tbaa !16, !alias.scope !207
  %i.n = load float, ptr %next.gep33, align 4, !tbaa !16, !alias.scope !207
  %i.o = load float, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !207
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !207
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !207
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !207
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !207
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !207
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !207
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !207
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !207
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = fadd <4 x float> %i.s, %i.ae
  %i.as = fadd <4 x float> %i.ar, %i.aq           ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.au = getelementptr i8, ptr %i.i, i64 28
  %i.av = getelementptr i8, ptr %i.j, i64 44
  %i.aw = getelementptr i8, ptr %i.k, i64 60
  %i.ax = load float, ptr %i.at, align 4, !tbaa !16, !alias.scope !207
  %i.ay = load float, ptr %i.au, align 4, !tbaa !16, !alias.scope !207
  %i.az = load float, ptr %i.av, align 4, !tbaa !16, !alias.scope !207
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !16, !alias.scope !207
  %i.bb = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 3
  %i.bf = shufflevector <4 x float> %i.s, <4 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bg = shufflevector <4 x float> %i.as, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bh = fcmp oeq <8 x float> %i.bg, zeroinitializer
  %i.bi = shufflevector <4 x float> %i.as, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bj = fdiv <8 x float> splat (float 1.000000e+00), %i.bi
  %i.bk = select <8 x i1> %i.bh, <8 x float> zeroinitializer, <8 x float> %i.bj
  %i.bl = fmul <8 x float> %i.bf, %i.bk
  %i.bm = shufflevector <4 x float> %i.ae, <4 x float> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bl, <8 x float> %i.bm, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !16, !alias.scope !208, !noalias !207
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_519Renderer_uvY_TO_XYZ5applyEPKvPvl:bb.a
  %next.gep32 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.k, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !228
  %i.m = load float, ptr %next.gep32, align 4, !tbaa !16, !alias.scope !228
  %i.n = load float, ptr %next.gep33, align 4, !tbaa !16, !alias.scope !228
  %i.o = load float, ptr %next.gep34, align 4, !tbaa !16, !alias.scope !228
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !228
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !228
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !228
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !228
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !228
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !228
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !228
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !228
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3 ; 3 uses
  %i.ar = fcmp oeq <4 x float> %i.ae, zeroinitializer
  %i.as = fdiv <4 x float> splat (float 1.000000e+00), %i.ae
  %i.at = select <4 x i1> %i.ar, <4 x float> zeroinitializer, <4 x float> %i.as ; 2 uses
  %i.au = fmul <4 x float> %i.aq, splat (float 2.250000e+00)
  %i.av = fmul <4 x float> %i.s, %i.au
  %i.aw = fmul <4 x float> %i.at, %i.av
  %i.ax = fmul <4 x float> %i.aq, splat (float 7.500000e-01)
  %i.ay = fsub <4 x float> splat (float 4.000000e+00), %i.s
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> splat (float f0xC0D55555), <4 x float> %i.ay)
  %i.ba = fmul <4 x float> %i.az, %i.ax
  %i.bb = fmul <4 x float> %i.at, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.bd = getelementptr i8, ptr %i.i, i64 28
  %i.be = getelementptr i8, ptr %i.j, i64 44
  %i.bf = getelementptr i8, ptr %i.k, i64 60
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !16, !alias.scope !228
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !16, !alias.scope !228
  %i.bi = load float, ptr %i.be, align 4, !tbaa !16, !alias.scope !228
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !16, !alias.scope !228
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = shufflevector <4 x float> %i.aw, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bp = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bo, <8 x float> %i.bp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !16, !alias.scope !229, !noalias !228
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.cm, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02629 = phi ptr [ %i.cn, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02728 = phi i64 [ %i.co, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.br = load float, ptr %.030, align 4, !tbaa !16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !16 ; 3 uses
  %i.bw = fcmp oeq float %i.bt, 0.000000e+00
  %i.bx = fdiv float 1.000000e+00, %i.bt
  %i.by = select i1 %i.bw, float 0.000000e+00, float %i.bx ; 2 uses
  %i.bz = fmul float %i.bv, 2.250000e+00
  %i.ca = fmul float %i.br, %i.bz
  %i.cb = fmul float %i.by, %i.ca
  %i.cc = fmul float %i.bv, 7.500000e-01
  %i.cd = fsub float 4.000000e+00, %i.br
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bt, float f0xC0D55555, float %i.cd)
  %i.cf = fmul float %i.ce, %i.cc
  %i.cg = fmul float %i.by, %i.cf
  store float %i.cb, ptr %.02629, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.02629, i64 4
  store float %i.bv, ptr %i.ch, align 4, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.cg, ptr %i.ci, align 4, !tbaa !16
  %i.cj = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.ck, ptr %i.cl, align 4, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.co = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_LUVC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_LUVE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_LUV5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.038 = phi ptr [ %i.ad, %bb.d ], [ %1, %bb.a ] ; 4 uses
  %.03337 = phi ptr [ %i.ae, %bb.d ], [ %2, %bb.a ] ; 4 uses
  %.03436 = phi i64 [ %i.af, %bb.d ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !16
  %i.d = load <2 x float>, ptr %.038, align 4, !tbaa !16 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float 1.500000e+01, float %i.e)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float 3.000000e+00, float %i.g) ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = fdiv float 1.000000e+00, %i.h
  %i.k = select i1 %i.i, float 0.000000e+00, float %i.j
  %i.l = fmul <2 x float> %i.d, <float 4.000000e+00, float 9.000000e+00>
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = fcmp ugt float %i.f, f0x3C111AA7
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = fmul nnan float %i.f, f0x41108704
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = tail call float @powf(float noundef %i.f, float noundef f0x3EAAAAAB) #24
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 1.160000e+00, float -1.600000e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = phi float [ %i.q, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.u = fmul float %i.t, 1.300000e+01
  %i.v = fadd <2 x float> %i.o, <float -1.978300e-01, float f0xBEEFC7A3>
  store float %i.t, ptr %.03337, align 4, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %.03337, i64 4
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.v, %i.y
  store <2 x float> %i.z, ptr %i.w, align 4, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %.038, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.03337, i64 12
  store float %i.ab, ptr %i.ac, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %.038, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.03337, i64 16
  %i.af = add nuw nsw i64 %.03436, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_LUV_TO_XYZC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_LUV_TO_XYZE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_LUV_TO_XYZ5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.e = shl i64 %n.vec, 4                        ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep47 = getelementptr i8, ptr %i.i, i64 16
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep48 = getelementptr i8, ptr %i.j, i64 32
  %i.k = getelementptr i8, ptr %1, i64 %i.h       ; 4 uses
  %next.gep49 = getelementptr i8, ptr %i.k, i64 48
  %next.gep50 = getelementptr i8, ptr %2, i64 %i.h
  %i.l = load float, ptr %next.gep, align 4, !tbaa !16, !alias.scope !236
  %i.m = load float, ptr %next.gep47, align 4, !tbaa !16, !alias.scope !236
  %i.n = load float, ptr %next.gep48, align 4, !tbaa !16, !alias.scope !236
  %i.o = load float, ptr %next.gep49, align 4, !tbaa !16, !alias.scope !236
  %i.p = insertelement <4 x float> poison, float %i.l, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.n, i64 2
  %i.s = insertelement <4 x float> %i.r, float %i.o, i64 3 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.u = getelementptr i8, ptr %i.i, i64 20
  %i.v = getelementptr i8, ptr %i.j, i64 36
  %i.w = getelementptr i8, ptr %i.k, i64 52
  %i.x = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !236
  %i.y = load float, ptr %i.u, align 4, !tbaa !16, !alias.scope !236
  %i.z = load float, ptr %i.v, align 4, !tbaa !16, !alias.scope !236
  %i.aa = load float, ptr %i.w, align 4, !tbaa !16, !alias.scope !236
  %i.ab = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ag = getelementptr i8, ptr %i.i, i64 24
  %i.ah = getelementptr i8, ptr %i.j, i64 40
  %i.ai = getelementptr i8, ptr %i.k, i64 56
  %i.aj = load float, ptr %i.af, align 4, !tbaa !16, !alias.scope !236
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !16, !alias.scope !236
  %i.al = load float, ptr %i.ah, align 4, !tbaa !16, !alias.scope !236
  %i.am = load float, ptr %i.ai, align 4, !tbaa !16, !alias.scope !236
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 1
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = fcmp oeq <4 x float> %i.s, zeroinitializer
  %i.as = fdiv <4 x float> splat (float f0x3D9D89D9), %i.s
  %i.at = select <4 x i1> %i.ar, <4 x float> zeroinitializer, <4 x float> %i.as ; 2 uses
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> %i.at, <4 x float> splat (float 1.978300e-01)) ; 2 uses
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aq, <4 x float> %i.at, <4 x float> splat (float f0x3EEFC7A3)) ; 3 uses
  %i.aw = fcmp ugt <4 x float> %i.s, splat (float 8.000000e-02)
  %i.ax = fmul nnan <4 x float> %i.s, splat (float f0x3DE2B9A4)
  %i.ay = fadd <4 x float> %i.s, splat (float 1.600000e-01)
  %i.az = fmul <4 x float> %i.ay, splat (float f0x3F5CB08D) ; 3 uses
  %i.ba = fmul <4 x float> %i.az, %i.az
  %i.bb = fmul <4 x float> %i.az, %i.ba
  %predphi = select <4 x i1> %i.aw, <4 x float> %i.bb, <4 x float> %i.ax ; 3 uses
  %i.bc = fcmp oeq <4 x float> %i.av, zeroinitializer
  %i.bd = fdiv <4 x float> splat (float 2.500000e-01), %i.av
  %i.be = select <4 x i1> %i.bc, <4 x float> zeroinitializer, <4 x float> %i.bd ; 2 uses
  %i.bf = fmul <4 x float> %predphi, splat (float 9.000000e+00)
  %i.bg = fmul <4 x float> %i.au, %i.bf
  %i.bh = fmul <4 x float> %i.be, %i.bg
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> splat (float -3.000000e+00), <4 x float> splat (float 1.200000e+01))
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> splat (float -2.000000e+01), <4 x float> %i.bi)
  %i.bk = fmul <4 x float> %i.bj, %predphi
  %i.bl = fmul <4 x float> %i.be, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.bn = getelementptr i8, ptr %i.i, i64 28
  %i.bo = getelementptr i8, ptr %i.j, i64 44
  %i.bp = getelementptr i8, ptr %i.k, i64 60
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !16, !alias.scope !236
  %i.br = load float, ptr %i.bn, align 4, !tbaa !16, !alias.scope !236
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !16, !alias.scope !236
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !16, !alias.scope !236
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = shufflevector <4 x float> %i.bh, <4 x float> %predphi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = shufflevector <4 x float> %i.bl, <4 x float> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.by, <8 x float> %i.bz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep50, align 4, !tbaa !16, !alias.scope !237, !noalias !236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader53

.lr.ph.preheader53:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.043.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.03842.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.03941.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %bb.d
  %.043 = phi ptr [ %i.di, %bb.d ], [ %.043.ph, %.lr.ph.preheader53 ] ; 4 uses
  %.03842 = phi ptr [ %i.dj, %bb.d ], [ %.03842.ph, %.lr.ph.preheader53 ] ; 5 uses
  %.03941 = phi i64 [ %i.dk, %bb.d ], [ %.03941.ph, %.lr.ph.preheader53 ]
  %i.cb = load float, ptr %.043, align 4, !tbaa !16 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !16
  %i.ce = fcmp oeq float %i.cb, 0.000000e+00
  %i.cf = fdiv float f0x3D9D89D9, %i.cb
  %i.cg = select i1 %i.ce, float 0.000000e+00, float %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ci, <2 x float> <float 1.978300e-01, float f0x3EEFC7A3>) ; 2 uses
  %i.ck = fcmp ugt float %i.cb, 8.000000e-02
  br i1 %i.ck, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.cl = fmul nnan float %i.cb, f0x3DE2B9A4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.cm = fadd float %i.cb, 1.600000e-01
  %i.cn = fmul float %i.cm, f0x3F5CB08D           ; 3 uses
  %i.co = fmul float %i.cn, %i.cn
  %i.cp = fmul float %i.cn, %i.co
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cq = phi float [ %i.cl, %bb.b ], [ %i.cp, %bb.c ] ; 3 uses
  %i.cr = extractelement <2 x float> %i.cj, i64 1 ; 3 uses
  %i.cs = fcmp oeq float %i.cr, 0.000000e+00
  %i.ct = fdiv float 2.500000e-01, %i.cr
  %i.cu = select i1 %i.cs, float 0.000000e+00, float %i.ct ; 2 uses
  %i.cv = fmul float %i.cq, 9.000000e+00
  %i.cw = extractelement <2 x float> %i.cj, i64 0 ; 2 uses
  %i.cx = fmul float %i.cw, %i.cv
  %i.cy = fmul float %i.cu, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cw, float -3.000000e+00, float 1.200000e+01)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cr, float -2.000000e+01, float %i.cz)
  %i.db = fmul float %i.da, %i.cq
  %i.dc = fmul float %i.cu, %i.db
  store float %i.cy, ptr %.03842, align 4, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %.03842, i64 4
  store float %i.cq, ptr %i.dd, align 4, !tbaa !16
  %i.de = getelementptr inbounds nuw i8, ptr %.03842, i64 8
  store float %i.dc, ptr %i.de, align 4, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %.043, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !16
  %i.dh = getelementptr inbounds nuw i8, ptr %.03842, i64 12
  store float %i.dg, ptr %i.dh, align 4, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %.043, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.03842, i64 16
  %i.dk = add nuw nsw i64 %.03941, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !235
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <4 x float> @_ZN16OpenColorIO_v2_522Renderer_PQ_TO_LIN_SSEILb1EE7myPowerEDv4_fS2_(<4 x float> noundef %0, <4 x float> noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = bitcast <4 x float> %0 to <4 x i32>      ; 2 uses
  %i.b = and <4 x i32> %i.a, splat (i32 -2139095041)
  %i.c = or disjoint <4 x i32> %i.b, splat (i32 1065353216)
  %i.d = bitcast <4 x i32> %i.c to <4 x float>    ; 5 uses
  %i.e = fmul nnan <4 x float> %i.d, splat (float f0x3D37CD65)
  %i.f = fadd nnan <4 x float> %i.e, splat (float f0xBED547D7)
  %i.g = fmul nnan <4 x float> %i.f, %i.d
  %i.h = fadd nnan <4 x float> %i.g, splat (float f0x3FD0C97C)
  %i.i = fmul nnan <4 x float> %i.h, %i.d
  %i.j = fadd nnan <4 x float> %i.i, splat (float f0xC0634031)
  %i.k = fmul nnan <4 x float> %i.j, %i.d
  %i.l = fadd nnan <4 x float> %i.k, splat (float f0x40A2EF4C)
  %i.m = fmul nnan <4 x float> %i.l, %i.d
  %i.n = fadd nnan <4 x float> %i.m, splat (float f0xC033392A)
  %i.o = lshr <4 x i32> %i.a, splat (i32 23)
  %i.p = and <4 x i32> %i.o, splat (i32 255)
  %i.q = add nsw <4 x i32> %i.p, splat (i32 -127)
  %i.r = sitofp <4 x i32> %i.q to <4 x float>
  %i.s = fadd nnan <4 x float> %i.n, %i.r
  %i.t = fmul <4 x float> %1, %i.s                ; 5 uses
  %i.u = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.t)
  %i.v = fcmp ult <4 x float> %i.t, zeroinitializer
  %i.w = sext <4 x i1> %i.v to <4 x i32>
  %i.x = add <4 x i32> %i.u, %i.w                 ; 2 uses
  %i.y = shl <4 x i32> %i.x, splat (i32 23)
  %i.z = add <4 x i32> %i.y, splat (i32 1065353216)
  %i.aa = bitcast <4 x i32> %i.z to <4 x float>
  %i.ab = sitofp <4 x i32> %i.x to <4 x float>
  %i.ac = fsub <4 x float> %i.t, %i.ab            ; 4 uses
  %i.ad = fmul <4 x float> %i.ac, splat (float f0x3C5DBE6A)
  %i.ae = fadd <4 x float> %i.ad, splat (float f0x3D5509F8)
  %i.af = fmul <4 x float> %i.ac, %i.ae
  %i.ag = fadd <4 x float> %i.af, splat (float f0x3E773CC5)
  %i.ah = fmul <4 x float> %i.ac, %i.ag
  %i.ai = fadd <4 x float> %i.ah, splat (float f0x3F3168B3)
  %i.aj = fmul <4 x float> %i.ac, %i.ai
  %i.ak = fadd <4 x float> %i.aj, splat (float f0x3F800016)
  %i.al = fmul <4 x float> %i.ak, %i.aa
  %i.am = fcmp uge <4 x float> %i.t, splat (float -1.260000e+02)
  %i.an = fcmp oge <4 x float> %i.t, splat (float 1.280000e+02)
  %i.ao = fcmp ogt <4 x float> %0, zeroinitializer
  %i.ap = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> zeroinitializer
  %i.aq = select <4 x i1> %i.an, <4 x float> splat (float +inf), <4 x float> %i.ap
  %i.ar = select <4 x i1> %i.ao, <4 x float> %i.aq, <4 x float> zeroinitializer
  ret <4 x float> %i.ar
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef <4 x float> @_ZN16OpenColorIO_v2_522Renderer_LIN_TO_PQ_SSEILb1EE7myPowerEDv4_fS2_(<4 x float> noundef %0, <4 x float> noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = bitcast <4 x float> %0 to <4 x i32>      ; 2 uses
  %i.b = and <4 x i32> %i.a, splat (i32 -2139095041)
  %i.c = or disjoint <4 x i32> %i.b, splat (i32 1065353216)
  %i.d = bitcast <4 x i32> %i.c to <4 x float>    ; 5 uses
  %i.e = fmul nnan <4 x float> %i.d, splat (float f0x3D37CD65)
  %i.f = fadd nnan <4 x float> %i.e, splat (float f0xBED547D7)
  %i.g = fmul nnan <4 x float> %i.f, %i.d
  %i.h = fadd nnan <4 x float> %i.g, splat (float f0x3FD0C97C)
  %i.i = fmul nnan <4 x float> %i.h, %i.d
  %i.j = fadd nnan <4 x float> %i.i, splat (float f0xC0634031)
  %i.k = fmul nnan <4 x float> %i.j, %i.d
  %i.l = fadd nnan <4 x float> %i.k, splat (float f0x40A2EF4C)
  %i.m = fmul nnan <4 x float> %i.l, %i.d
  %i.n = fadd nnan <4 x float> %i.m, splat (float f0xC033392A)
  %i.o = lshr <4 x i32> %i.a, splat (i32 23)
  %i.p = and <4 x i32> %i.o, splat (i32 255)
  %i.q = add nsw <4 x i32> %i.p, splat (i32 -127)
  %i.r = sitofp <4 x i32> %i.q to <4 x float>
  %i.s = fadd nnan <4 x float> %i.n, %i.r
  %i.t = fmul <4 x float> %1, %i.s                ; 5 uses
  %i.u = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.t)
  %i.v = fcmp ult <4 x float> %i.t, zeroinitializer
  %i.w = sext <4 x i1> %i.v to <4 x i32>
  %i.x = add <4 x i32> %i.u, %i.w                 ; 2 uses
  %i.y = shl <4 x i32> %i.x, splat (i32 23)
  %i.z = add <4 x i32> %i.y, splat (i32 1065353216)
  %i.aa = bitcast <4 x i32> %i.z to <4 x float>
  %i.ab = sitofp <4 x i32> %i.x to <4 x float>
  %i.ac = fsub <4 x float> %i.t, %i.ab            ; 4 uses
  %i.ad = fmul <4 x float> %i.ac, splat (float f0x3C5DBE6A)
  %i.ae = fadd <4 x float> %i.ad, splat (float f0x3D5509F8)
  %i.af = fmul <4 x float> %i.ac, %i.ae
  %i.ag = fadd <4 x float> %i.af, splat (float f0x3E773CC5)
  %i.ah = fmul <4 x float> %i.ac, %i.ag
  %i.ai = fadd <4 x float> %i.ah, splat (float f0x3F3168B3)
  %i.aj = fmul <4 x float> %i.ac, %i.ai
  %i.ak = fadd <4 x float> %i.aj, splat (float f0x3F800016)
  %i.al = fmul <4 x float> %i.ak, %i.aa
  %i.am = fcmp uge <4 x float> %i.t, splat (float -1.260000e+02)
  %i.an = fcmp oge <4 x float> %i.t, splat (float 1.280000e+02)
  %i.ao = fcmp ogt <4 x float> %0, zeroinitializer
  %i.ap = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> zeroinitializer
  %i.aq = select <4 x i1> %i.an, <4 x float> splat (float +inf), <4 x float> %i.ap
  %i.ar = select <4 x i1> %i.ao, <4 x float> %i.aq, <4 x float> zeroinitializer
  ret <4 x float> %i.ar
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_525Renderer_LIN_TO_GAMMA_LOGC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_525Renderer_LIN_TO_GAMMA_LOGE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+01, float 1.000000e+00, float 0.000000e+00>, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.c, align 8, !tbaa !16
  %i.d = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !40   ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !110

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #26
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !111 ; 2 uses
  %.pre15 = load ptr, ptr %i.f, align 8, !tbaa !111
  %.pre16 = ptrtoint ptr %.pre15 to i64
  %.pre17 = ptrtoint ptr %.pre to i64
  br label %.noexc3

.noexc3:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.a
end_hunk_1
