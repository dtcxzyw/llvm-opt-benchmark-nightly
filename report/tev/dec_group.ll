Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group?download=true
inline.NumInlined: 2848
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 609
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN3jxl13GroupDecCache16InitDCBufferOnceEP22JxlMemoryManagerStruct:bb.a

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl23DecodeGroupForRoundtripERKNS_11FrameHeaderERKNSt3__16vectorINS3_10unique_ptrINS_7ACImageENS3_14default_deleteIS6_EEEENS3_9allocatorIS9_EEEEmPNS_18PassesDecoderStateEPNS_13GroupDecCacheEmRNS_19RenderPipelineInputEPNS_4jpeg8JPEGDataEPNS_6AuxOutE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noalias noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #8 {
bb.a:
  %9 = alloca %"struct.jxl::(anonymous namespace)::GetBlockFromEncoder", align 8 ; 7 uses
  %10 = alloca %"struct.jxl::(anonymous namespace)::GetBlockFromEncoder", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48, !noalias !2324
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !tbaa !324, !noalias !2324
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.f, align 8, !tbaa !325, !noalias !2324
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 288
  store ptr %i.d, ptr %i.g, align 8, !tbaa !2325, !noalias !2324
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !330, !noalias !2324
  %i.j = load ptr, ptr %1, align 8, !tbaa !331, !noalias !2324 ; 2 uses
  %.not21.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not21.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader.i, %.lr.ph.i
  %i.l = phi ptr [ %i.j, %.lr.ph.i ], [ %i.at, %.preheader.i ]
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ar, %.preheader.i ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.022.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192, !noalias !2324 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194, !noalias !2324
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2324
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #49, !noalias !2324, !inline_history !2320
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.022.i ; 3 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !331, !noalias !2324
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.022.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !192, !noalias !2324 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !194, !noalias !2324
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !2324
  %i.aa = tail call ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0, i64 noundef %2, i64 noundef 0) #49, !noalias !2324, !inline_history !2320
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !332, !noalias !2324
  %i.ab = load ptr, ptr %1, align 8, !tbaa !331, !noalias !2324
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.022.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !192, !noalias !2324 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !194, !noalias !2324
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !2324
  %i.ah = tail call ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 1, i64 noundef %2, i64 noundef 0) #49, !noalias !2324, !inline_history !2320
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !332, !noalias !2324
  %i.aj = load ptr, ptr %1, align 8, !tbaa !331, !noalias !2324
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.022.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !192, !noalias !2324 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !194, !noalias !2324
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !2324
  %i.ap = tail call ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef 2, i64 noundef %2, i64 noundef 0) #49, !noalias !2324, !inline_history !2320
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !332, !noalias !2324
  %i.ar = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !330, !noalias !2324
  %i.at = load ptr, ptr %1, align 8, !tbaa !331, !noalias !2324 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %.not.i = icmp ult i64 %i.ar, %i.ax
  br i1 %.not.i, label %bb.b, label %.loopexit, !llvm.loop !2321

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !2324
  br label %bb.f

.loopexit:                                        ; preds = %.preheader.i, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.ay, ptr noundef nonnull align 8 dereferenceable(288) %i.e, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48, !noalias !2324
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3jxl12_GLOBAL__N_119GetBlockFromEncoderE, i64 16), ptr %10, align 8, !tbaa !194, !alias.scope !2326
  %i.az = tail call i32 @_ZN3jxl13GroupDecCache8InitOnceEP22JxlMemoryManagerStructmm(ptr noundef nonnull align 64 dereferenceable(2016) %4, ptr noundef %i.c, i64 noundef 0, i64 noundef 134217727) #49 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #49
  %i.bc = load atomic i64, ptr %i.bb seq_cst, align 8
  %i.bd = and i64 %i.bc, 103425
  %i.be = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.bd, i1 true)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxl12_GLOBAL__N_135DecodeGroupImplHighwayDispatchTableE, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !321
  %i.bh = call i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef %5, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %7, i32 noundef 0) #49
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %.sroa.017.0 = phi i32 [ %i.bh, %bb.d ], [ %i.az, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.017.1 = phi i32 [ %.sroa.017.0, %bb.e ], [ 1, %bb.c ]
  ret i32 %.sroa.017.1
}

declare i32 @_ZN3jxl13GroupDecCache8InitOnceEP22JxlMemoryManagerStructmm(ptr noundef nonnull align 64 dereferenceable(2016), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl8GetBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.0.val, ptr %.0.val1) unnamed_addr #12 {
bb.a:
  tail call void %0(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.val, ptr noundef %.0.val1) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_113IDCT1DWrapperILm4ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #13 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %i.q, ptr %3, align 1, !tbaa !222, !alias.scope !2336
  store <4 x float> %i.r, ptr %i.c, align 1, !tbaa !222, !alias.scope !2336
  store <4 x float> %i.u, ptr %i.d, align 1, !tbaa !222, !alias.scope !2336
  store <4 x float> %i.v, ptr %i.e, align 1, !tbaa !222, !alias.scope !2336
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.010 ; 4 uses
  %.val = load i64, ptr %0, align 8, !tbaa !266   ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !270
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010 ; 4 uses
  %.val9 = load i64, ptr %1, align 8, !tbaa !269  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %i.j = load <4 x float>, ptr %i.g, align 1, !tbaa !222, !alias.scope !2337, !noalias !2338 ; 2 uses
  %.idx.i.i = shl i64 %.val, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !222, !alias.scope !2337, !noalias !2338 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.val
  %i.n = load <4 x float>, ptr %i.m, align 1, !tbaa !222, !alias.scope !2337, !noalias !2338 ; 2 uses
  %.idx20.i.i = mul i64 %.val, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx20.i.i
  %i.p = load <4 x float>, ptr %i.o, align 1, !tbaa !222, !alias.scope !2337, !noalias !2338
  %i.q = fadd <4 x float> %i.j, %i.l              ; 3 uses
  %i.r = fsub <4 x float> %i.j, %i.l              ; 3 uses
  %i.s = fadd <4 x float> %i.n, %i.p              ; 2 uses
  %i.t = fmul <4 x float> %i.n, splat (float f0x3FB504F3) ; 2 uses
  %i.u = fadd <4 x float> %i.t, %i.s              ; 2 uses
  %i.v = fsub <4 x float> %i.t, %i.s              ; 2 uses
  %i.w = fmul <4 x float> %i.u, splat (float f0x3F0A8BD4) ; 2 uses
  %i.x = fadd <4 x float> %i.q, %i.w
  %i.y = fsub <4 x float> %i.q, %i.w
  store <4 x float> %i.x, ptr %i.i, align 1, !tbaa !222, !alias.scope !2339, !noalias !2340
  %.idx.i12.i = mul i64 %.val9, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i12.i
  store <4 x float> %i.y, ptr %i.z, align 1, !tbaa !222, !alias.scope !2339, !noalias !2340
  %i.aa = fmul <4 x float> %i.v, splat (float f0x3FA73D75) ; 2 uses
  %i.ab = fadd <4 x float> %i.r, %i.aa
  %i.ac = fsub <4 x float> %i.r, %i.aa
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.val9
  store <4 x float> %i.ab, ptr %i.ad, align 1, !tbaa !222, !alias.scope !2339, !noalias !2340
  %.idx29.i.i = shl i64 %.val9, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx29.i.i
  store <4 x float> %i.ac, ptr %i.ae, align 1, !tbaa !222, !alias.scope !2339, !noalias !2340
  %i.af = add nuw i64 %.010, 4                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %2
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !2335
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_113IDCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef captures(none) %3) #14 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.010
  %.val = load i64, ptr %0, align 8, !tbaa !266
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !270
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.010
  %.val9 = load i64, ptr %1, align 8, !tbaa !269
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_110IDCT1DImplILm16ELm4EEclEPKfmPfmS6_(ptr noundef %i.d, i64 noundef %.val, ptr noundef %i.f, i64 noundef %.val9, ptr noundef %3) #50
  %i.g = add i64 %.010, 4                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %bb.b, label %._crit_edge, !llvm.loop !2341
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_110IDCT1DImplILm16ELm4EEclEPKfmPfmS6_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2, i64 noundef %3, ptr noalias nofree noundef captures(none) initializes((0, 448)) %4) unnamed_addr #15 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2371)
  %i.a = load <4 x float>, ptr %0, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %.idx24.i = shl i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx24.i
  %i.c = load <4 x float>, ptr %i.b, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.idx.i = shl i64 %1, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.f = load <4 x float>, ptr %i.e, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.idx20.i = mul i64 %1, 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx20.i
  %i.i = load <4 x float>, ptr %i.h, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.idx21.i = shl i64 %1, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx21.i
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.idx22.i = mul i64 %1, 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx22.i
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx23.i = mul i64 %1, 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.idx23.i
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.idx25.i = mul i64 %1, 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx25.i
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.idx26.i = mul i64 %1, 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx26.i
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.ab = getelementptr i8, ptr %4, i64 144       ; 3 uses
  store <4 x float> %i.aa, ptr %i.ab, align 16, !tbaa !222, !alias.scope !2371, !noalias !2370
  %.idx27.i = mul i64 %1, 20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx27.i
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.ae = getelementptr i8, ptr %4, i64 160       ; 3 uses
  store <4 x float> %i.ad, ptr %i.ae, align 16, !tbaa !222, !alias.scope !2371, !noalias !2370
  %.idx28.i = mul i64 %1, 28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.idx28.i
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.ah = getelementptr i8, ptr %4, i64 176       ; 3 uses
  store <4 x float> %i.ag, ptr %i.ah, align 16, !tbaa !222, !alias.scope !2371, !noalias !2370
  %.idx29.i = mul i64 %1, 36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx29.i
  %i.aj = load <4 x float>, ptr %i.ai, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.ak = getelementptr i8, ptr %4, i64 192
  %.idx30.i = mul i64 %1, 44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.idx30.i
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.an = getelementptr i8, ptr %4, i64 208
  %.idx31.i = mul i64 %1, 52
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.idx31.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371 ; 2 uses
  %i.aq = getelementptr i8, ptr %4, i64 224
  %.idx32.i = mul i64 %1, 60
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32.i
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !222, !alias.scope !2370, !noalias !2371
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.az = getelementptr i8, ptr %4, i64 336
  %i.ba = getelementptr i8, ptr %4, i64 352
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 368
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 400
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.bg = fadd <4 x float> %i.a, %i.l             ; 2 uses
  %i.bh = fsub <4 x float> %i.a, %i.l             ; 2 uses
  %i.bi = fadd <4 x float> %i.f, %i.r             ; 2 uses
  %i.bj = fmul <4 x float> %i.f, splat (float f0x3FB504F3) ; 2 uses
  %i.bk = fadd <4 x float> %i.bj, %i.bi
  %i.bl = fsub <4 x float> %i.bj, %i.bi
  %i.bm = fmul <4 x float> %i.bk, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bn = fadd <4 x float> %i.bg, %i.bm           ; 2 uses
  %i.bo = fsub <4 x float> %i.bg, %i.bm           ; 2 uses
  %i.bp = fmul <4 x float> %i.bl, splat (float f0x3FA73D75) ; 2 uses
  %i.bq = fadd <4 x float> %i.bh, %i.bp           ; 2 uses
  %i.br = fsub <4 x float> %i.bh, %i.bp           ; 2 uses
  %i.bs = fadd <4 x float> %i.o, %i.u
  %i.bt = fadd <4 x float> %i.i, %i.o             ; 2 uses
  %i.bu = fadd <4 x float> %i.c, %i.i             ; 2 uses
  %i.bv = fmul <4 x float> %i.c, splat (float f0x3FB504F3) ; 2 uses
  %i.bw = fadd <4 x float> %i.bv, %i.bt           ; 2 uses
  %i.bx = fsub <4 x float> %i.bv, %i.bt           ; 2 uses
  %i.by = fadd <4 x float> %i.bu, %i.bs           ; 2 uses
  %i.bz = fmul <4 x float> %i.bu, splat (float f0x3FB504F3) ; 2 uses
  %i.ca = fadd <4 x float> %i.bz, %i.by
  %i.cb = fsub <4 x float> %i.bz, %i.by
  %i.cc = fmul <4 x float> %i.ca, splat (float f0x3F0A8BD4) ; 2 uses
  %i.cd = fadd <4 x float> %i.bw, %i.cc
  %i.ce = fsub <4 x float> %i.bw, %i.cc
  %i.cf = fmul <4 x float> %i.cb, splat (float f0x3FA73D75) ; 2 uses
  %i.cg = fadd <4 x float> %i.bx, %i.cf
  %i.ch = fsub <4 x float> %i.bx, %i.cf
  %i.ci = fmul <4 x float> %i.cd, splat (float f0x3F0281F7) ; 2 uses
  %i.cj = fadd <4 x float> %i.bn, %i.ci           ; 3 uses
  %i.ck = fsub <4 x float> %i.bn, %i.ci           ; 3 uses
  store <4 x float> %i.cj, ptr %4, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  store <4 x float> %i.ck, ptr %i.v, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  %i.cl = fmul <4 x float> %i.cg, splat (float f0x3F19F1BD) ; 2 uses
  %i.cm = fadd <4 x float> %i.bq, %i.cl           ; 3 uses
  %i.cn = fsub <4 x float> %i.bq, %i.cl           ; 3 uses
  store <4 x float> %i.cm, ptr %i.d, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  store <4 x float> %i.cn, ptr %i.s, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  %i.co = fmul <4 x float> %i.ch, splat (float f0x3F6664D7) ; 2 uses
  %i.cp = fadd <4 x float> %i.br, %i.co           ; 3 uses
  %i.cq = fsub <4 x float> %i.br, %i.co           ; 3 uses
  store <4 x float> %i.cp, ptr %i.g, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  store <4 x float> %i.cq, ptr %i.p, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  %i.cr = fmul <4 x float> %i.ce, splat (float f0x402406CF) ; 2 uses
  %i.cs = fadd <4 x float> %i.bo, %i.cr           ; 3 uses
  %i.ct = fsub <4 x float> %i.bo, %i.cr           ; 3 uses
  store <4 x float> %i.cs, ptr %i.j, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  store <4 x float> %i.ct, ptr %i.m, align 16, !tbaa !222, !alias.scope !2372, !noalias !2373
  %i.cu = fadd <4 x float> %i.as, %i.ap
  %i.cv = fadd <4 x float> %i.ap, %i.am
  %i.cw = fadd <4 x float> %i.am, %i.aj           ; 2 uses
  %i.cx = load <4 x float>, ptr %i.ah, align 16, !tbaa !222, !alias.scope !2374 ; 2 uses
  %i.cy = fadd <4 x float> %i.aj, %i.cx           ; 2 uses
  %i.cz = load <4 x float>, ptr %i.ae, align 16, !tbaa !222, !alias.scope !2374 ; 2 uses
  %i.da = fadd <4 x float> %i.cx, %i.cz           ; 2 uses
  %i.db = load <4 x float>, ptr %i.ab, align 16, !tbaa !222, !alias.scope !2374 ; 2 uses
  %i.dc = fadd <4 x float> %i.cz, %i.db           ; 2 uses
  %i.dd = fadd <4 x float> %i.x, %i.db            ; 2 uses
  %i.de = fmul <4 x float> %i.x, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2375)
  %i.df = fadd <4 x float> %i.de, %i.cy           ; 2 uses
  %i.dg = fsub <4 x float> %i.de, %i.cy           ; 2 uses
  %i.dh = fadd <4 x float> %i.cv, %i.dc           ; 2 uses
  %i.di = fmul <4 x float> %i.dc, splat (float f0x3FB504F3) ; 2 uses
  %i.dj = fadd <4 x float> %i.di, %i.dh
  %i.dk = fsub <4 x float> %i.di, %i.dh
  %i.dl = fmul <4 x float> %i.dj, splat (float f0x3F0A8BD4) ; 2 uses
  %i.dm = fadd <4 x float> %i.df, %i.dl           ; 3 uses
  %i.dn = fsub <4 x float> %i.df, %i.dl           ; 3 uses
  store <4 x float> %i.dm, ptr %i.au, align 16, !tbaa !222, !alias.scope !2376, !noalias !2377
  store <4 x float> %i.dn, ptr %i.ax, align 16, !tbaa !222, !alias.scope !2376, !noalias !2377
  %i.do = fmul <4 x float> %i.dk, splat (float f0x3FA73D75) ; 2 uses
  %i.dp = fadd <4 x float> %i.dg, %i.do           ; 3 uses
  %i.dq = fsub <4 x float> %i.dg, %i.do           ; 3 uses
  store <4 x float> %i.dp, ptr %i.av, align 16, !tbaa !222, !alias.scope !2376, !noalias !2377
  store <4 x float> %i.dq, ptr %i.aw, align 16, !tbaa !222, !alias.scope !2376, !noalias !2377
  %i.dr = fadd <4 x float> %i.cu, %i.cw
  %i.ds = fadd <4 x float> %i.cw, %i.da           ; 2 uses
  %i.dt = fadd <4 x float> %i.da, %i.dd           ; 2 uses
  %i.du = fmul <4 x float> %i.dd, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378)
  %i.dv = fadd <4 x float> %i.ds, %i.du           ; 3 uses
  store <4 x float> %i.dv, ptr %i.bc, align 16, !tbaa !222, !alias.scope !2379
  %i.dw = fsub <4 x float> %i.du, %i.ds           ; 3 uses
  store <4 x float> %i.dw, ptr %i.bd, align 16, !tbaa !222, !alias.scope !2379
  %i.dx = fadd <4 x float> %i.dr, %i.dt           ; 2 uses
  %i.dy = fmul <4 x float> %i.dt, splat (float f0x3FB504F3) ; 2 uses
  %i.dz = fadd <4 x float> %i.dy, %i.dx           ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE412_GLOBAL__N_19TransposeILm8ELm16EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_:.preheader
  %i.cw = load <4 x float>, ptr %i.cv, align 1, !tbaa !222 ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cq, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cq, <4 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.da = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.db = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dc = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.de = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ah
  store <4 x float> %i.db, ptr %gep.1.1, align 1, !tbaa !222
  %gep9.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ai
  store <4 x float> %i.dc, ptr %gep9.1.1, align 1, !tbaa !222
  %gep11.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aj
  store <4 x float> %i.dd, ptr %gep11.1.1, align 1, !tbaa !222
  %gep13.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ak
  store <4 x float> %i.de, ptr %gep13.1.1, align 1, !tbaa !222
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.dg = load <4 x float>, ptr %i.df, align 1, !tbaa !222 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.di = load <4 x float>, ptr %i.dh, align 1, !tbaa !222 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.dk = load <4 x float>, ptr %i.dj, align 1, !tbaa !222 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.dm = load <4 x float>, ptr %i.dl, align 1, !tbaa !222 ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dg, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.do = shufflevector <4 x float> %i.di, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dg, <4 x float> %i.dk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.di, <4 x float> %i.dm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ds = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dt = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.du = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bb
  store <4 x float> %i.dr, ptr %gep.2.1, align 1, !tbaa !222
  %gep9.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bc
  store <4 x float> %i.ds, ptr %gep9.2.1, align 1, !tbaa !222
  %gep11.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bd
  store <4 x float> %i.dt, ptr %gep11.2.1, align 1, !tbaa !222
  %gep13.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.be
  store <4 x float> %i.du, ptr %gep13.2.1, align 1, !tbaa !222
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !222 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !222 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ea = load <4 x float>, ptr %i.dz, align 1, !tbaa !222 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !tbaa !222 ; 2 uses
  %i.ed = shufflevector <4 x float> %i.dw, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dy, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.dw, <4 x float> %i.ea, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dy, <4 x float> %i.ec, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ei = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ek = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bv
  store <4 x float> %i.eh, ptr %gep.3.1, align 1, !tbaa !222
  %gep9.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bw
  store <4 x float> %i.ei, ptr %gep9.3.1, align 1, !tbaa !222
  %gep11.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bx
  store <4 x float> %i.ej, ptr %gep11.3.1, align 1, !tbaa !222
  %gep13.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.by
  store <4 x float> %i.ek, ptr %gep13.3.1, align 1, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_113IDCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #13 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr i8, ptr %3, i64 80
  %i.h = getelementptr i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <4 x float> %i.an, ptr %3, align 1, !tbaa !222, !alias.scope !2405, !noalias !2406
  store <4 x float> %i.ao, ptr %i.e, align 1, !tbaa !222, !alias.scope !2405, !noalias !2406
  store <4 x float> %i.aq, ptr %i.c, align 1, !tbaa !222, !alias.scope !2405, !noalias !2406
  store <4 x float> %i.ar, ptr %i.d, align 1, !tbaa !222, !alias.scope !2405, !noalias !2406
  store <4 x float> %i.aw, ptr %i.j, align 1, !tbaa !222, !alias.scope !2407
  store <4 x float> %i.ax, ptr %i.k, align 1, !tbaa !222, !alias.scope !2407
  store <4 x float> %i.ba, ptr %i.l, align 1, !tbaa !222, !alias.scope !2407
  store <4 x float> %i.bb, ptr %i.m, align 1, !tbaa !222, !alias.scope !2407
  store <4 x float> %i.bd, ptr %i.f, align 1, !tbaa !222, !alias.scope !2408, !noalias !2409
  store <4 x float> %i.be, ptr %i.i, align 1, !tbaa !222, !alias.scope !2408, !noalias !2409
  store <4 x float> %i.bg, ptr %i.g, align 1, !tbaa !222, !alias.scope !2408, !noalias !2409
  store <4 x float> %i.bh, ptr %i.h, align 1, !tbaa !222, !alias.scope !2408, !noalias !2409
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !267
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.010 ; 8 uses
  %.val = load i64, ptr %0, align 8, !tbaa !266   ; 7 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !270
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.010 ; 8 uses
  %.val9 = load i64, ptr %1, align 8, !tbaa !269  ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.r = load <4 x float>, ptr %i.o, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx20.i.i = shl i64 %.val, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx20.i.i
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx.i.i = shl i64 %.val, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx21.i.i = mul i64 %.val, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx21.i.i
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.val
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx22.i.i = mul i64 %.val, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx22.i.i
  %i.ab = load <4 x float>, ptr %i.aa, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx23.i.i = mul i64 %.val, 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx23.i.i
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412 ; 2 uses
  %.idx24.i.i = mul i64 %.val, 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx24.i.i
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !222, !alias.scope !2411, !noalias !2412
  %i.ag = fadd <4 x float> %i.r, %i.v             ; 2 uses
  %i.ah = fsub <4 x float> %i.r, %i.v             ; 2 uses
  %i.ai = fadd <4 x float> %i.t, %i.x             ; 2 uses
  %i.aj = fmul <4 x float> %i.t, splat (float f0x3FB504F3) ; 2 uses
  %i.ak = fadd <4 x float> %i.aj, %i.ai
  %i.al = fsub <4 x float> %i.aj, %i.ai
  %i.am = fmul <4 x float> %i.ak, splat (float f0x3F0A8BD4) ; 2 uses
  %i.an = fadd <4 x float> %i.ag, %i.am           ; 3 uses
  %i.ao = fsub <4 x float> %i.ag, %i.am           ; 3 uses
  %i.ap = fmul <4 x float> %i.al, splat (float f0x3FA73D75) ; 2 uses
  %i.aq = fadd <4 x float> %i.ah, %i.ap           ; 3 uses
  %i.ar = fsub <4 x float> %i.ah, %i.ap           ; 3 uses
  %i.as = fadd <4 x float> %i.ad, %i.af
  %i.at = fadd <4 x float> %i.ab, %i.ad           ; 2 uses
  %i.au = fadd <4 x float> %i.z, %i.ab            ; 2 uses
  %i.av = fmul <4 x float> %i.z, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  %i.aw = fadd <4 x float> %i.av, %i.at           ; 3 uses
  %i.ax = fsub <4 x float> %i.av, %i.at           ; 3 uses
  %i.ay = fadd <4 x float> %i.au, %i.as           ; 2 uses
  %i.az = fmul <4 x float> %i.au, splat (float f0x3FB504F3) ; 2 uses
  %i.ba = fadd <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bb = fsub <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bc = fmul <4 x float> %i.ba, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bd = fadd <4 x float> %i.aw, %i.bc           ; 2 uses
  %i.be = fsub <4 x float> %i.aw, %i.bc           ; 2 uses
  %i.bf = fmul <4 x float> %i.bb, splat (float f0x3FA73D75) ; 2 uses
  %i.bg = fadd <4 x float> %i.ax, %i.bf           ; 2 uses
  %i.bh = fsub <4 x float> %i.ax, %i.bf           ; 2 uses
  %i.bi = fmul <4 x float> %i.bd, splat (float f0x3F0281F7) ; 2 uses
  %i.bj = fadd <4 x float> %i.an, %i.bi
  %i.bk = fsub <4 x float> %i.an, %i.bi
  store <4 x float> %i.bj, ptr %i.q, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %.idx.i12.i = mul i64 %.val9, 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i12.i
  store <4 x float> %i.bk, ptr %i.bl, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %i.bm = fmul <4 x float> %i.bg, splat (float f0x3F19F1BD) ; 2 uses
  %i.bn = fadd <4 x float> %i.aq, %i.bm
  %i.bo = fsub <4 x float> %i.aq, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.val9
  store <4 x float> %i.bn, ptr %i.bp, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %.idx29.i.i = mul i64 %.val9, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx29.i.i
  store <4 x float> %i.bo, ptr %i.bq, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %i.br = fmul <4 x float> %i.bh, splat (float f0x3F6664D7) ; 2 uses
  %i.bs = fadd <4 x float> %i.ar, %i.br
  %i.bt = fsub <4 x float> %i.ar, %i.br
  %.idx30.i.i = shl i64 %.val9, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx30.i.i
  store <4 x float> %i.bs, ptr %i.bu, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %.idx31.i.i = mul i64 %.val9, 20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx31.i.i
  store <4 x float> %i.bt, ptr %i.bv, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %i.bw = fmul <4 x float> %i.be, splat (float f0x402406CF) ; 2 uses
  %i.bx = fadd <4 x float> %i.ao, %i.bw
  %i.by = fsub <4 x float> %i.ao, %i.bw
  %.idx32.i.i = mul i64 %.val9, 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx32.i.i
  store <4 x float> %i.bx, ptr %i.bz, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %.idx33.i.i = shl i64 %.val9, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx33.i.i
  store <4 x float> %i.by, ptr %i.ca, align 1, !tbaa !222, !alias.scope !2414, !noalias !2415
  %i.cb = add nuw i64 %.010, 4                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %2
  br i1 %i.cc, label %bb.c, label %._crit_edge, !llvm.loop !2404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_19TransposeILm16ELm8EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_(i64 %.0.val, ptr nofree readonly captures(none) %.8.val, i64 %.0.val1, ptr nofree writeonly captures(none) initializes((0, 64)) %.8.val3) unnamed_addr #16 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %.0.val ; 2 uses
  %.idx = shl i64 %.0.val, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx ; 2 uses
  %.idx19 = mul i64 %.0.val, 12
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx19 ; 2 uses
  %i.d = load <4 x float>, ptr %.8.val, align 1, !tbaa !222 ; 2 uses
  %i.e = load <4 x float>, ptr %i.a, align 1, !tbaa !222 ; 2 uses
  %i.f = load <4 x float>, ptr %i.b, align 1, !tbaa !222 ; 2 uses
  %i.g = load <4 x float>, ptr %i.c, align 1, !tbaa !222 ; 2 uses
  %i.h = shufflevector <4 x float> %i.d, <4 x float> %i.f, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %i.e, <4 x float> %i.g, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %i.d, <4 x float> %i.f, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %i.e, <4 x float> %i.g, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.m = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.o = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.l, ptr %.8.val3, align 1, !tbaa !222
  %gep9 = getelementptr [4 x i8], ptr %.8.val3, i64 %.0.val1
  store <4 x float> %i.m, ptr %gep9, align 1, !tbaa !222
  %i.p = shl i64 %.0.val1, 1                      ; 4 uses
  %gep11 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.p
  store <4 x float> %i.n, ptr %gep11, align 1, !tbaa !222
  %i.q = mul i64 %.0.val1, 3                      ; 4 uses
  %gep13 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.q
  store <4 x float> %i.o, ptr %gep13, align 1, !tbaa !222
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !222 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !222 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !222 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !222 ; 2 uses
  %i.z = shufflevector <4 x float> %i.s, <4 x float> %i.w, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <4 x float> %i.u, <4 x float> %i.y, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.s, <4 x float> %i.w, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.u, <4 x float> %i.y, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ae = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ag = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ah = shl i64 %.0.val1, 2                     ; 4 uses
  %gep.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ah
  store <4 x float> %i.ad, ptr %gep.1, align 1, !tbaa !222
  %i.ai = mul i64 %.0.val1, 5                     ; 4 uses
  %gep9.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ai
  store <4 x float> %i.ae, ptr %gep9.1, align 1, !tbaa !222
  %i.aj = mul i64 %.0.val1, 6                     ; 4 uses
  %gep11.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.aj
  store <4 x float> %i.af, ptr %gep11.1, align 1, !tbaa !222
  %i.ak = mul i64 %.0.val1, 7                     ; 4 uses
  %gep13.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ak
  store <4 x float> %i.ag, ptr %gep13.1, align 1, !tbaa !222
  %.idx20 = shl i64 %.0.val, 4
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx20 ; 2 uses
  %.idx21 = mul i64 %.0.val, 20
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx21 ; 2 uses
  %.idx22 = mul i64 %.0.val, 24
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx22 ; 2 uses
  %.idx23 = mul i64 %.0.val, 28
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx23 ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %.8.val3, i64 16 ; 8 uses
  %i.ap = load <4 x float>, ptr %i.al, align 1, !tbaa !222 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.am, align 1, !tbaa !222 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.an, align 1, !tbaa !222 ; 2 uses
  %i.as = load <4 x float>, ptr %i.ao, align 1, !tbaa !222 ; 2 uses
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.av = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ay = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.az = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ba = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ax, ptr %invariant.gep.1, align 1, !tbaa !222
  %gep9.116 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %.0.val1
  store <4 x float> %i.ay, ptr %gep9.116, align 1, !tbaa !222
  %gep11.117 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.p
  store <4 x float> %i.az, ptr %gep11.117, align 1, !tbaa !222
  %gep13.118 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.q
  store <4 x float> %i.ba, ptr %gep13.118, align 1, !tbaa !222
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !222 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 1, !tbaa !222 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bg = load <4 x float>, ptr %i.bf, align 1, !tbaa !222 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !222 ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bc, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.be, <4 x float> %i.bi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bc, <4 x float> %i.bg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.be, <4 x float> %i.bi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bo = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bp = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bq = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ah
  store <4 x float> %i.bn, ptr %gep.1.1, align 1, !tbaa !222
  %gep9.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ai
  store <4 x float> %i.bo, ptr %gep9.1.1, align 1, !tbaa !222
  %gep11.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aj
  store <4 x float> %i.bp, ptr %gep11.1.1, align 1, !tbaa !222
  %gep13.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ak
  store <4 x float> %i.bq, ptr %gep13.1.1, align 1, !tbaa !222
  %.idx24 = shl i64 %.0.val, 5
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx24 ; 2 uses
  %.idx25 = mul i64 %.0.val, 36
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx25 ; 2 uses
  %.idx26 = mul i64 %.0.val, 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx26 ; 2 uses
  %.idx27 = mul i64 %.0.val, 44
  %i.bu = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx27 ; 2 uses
  %invariant.gep.2 = getelementptr i8, ptr %.8.val3, i64 32 ; 8 uses
  %i.bv = load <4 x float>, ptr %i.br, align 1, !tbaa !222 ; 2 uses
  %i.bw = load <4 x float>, ptr %i.bs, align 1, !tbaa !222 ; 2 uses
  %i.bx = load <4 x float>, ptr %i.bt, align 1, !tbaa !222 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bu, align 1, !tbaa !222 ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bw, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bw, <4 x float> %i.by, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cd = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ce = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cf = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cg = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.cd, ptr %invariant.gep.2, align 1, !tbaa !222
  %gep9.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %.0.val1
  store <4 x float> %i.ce, ptr %gep9.2, align 1, !tbaa !222
  %gep11.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.p
  store <4 x float> %i.cf, ptr %gep11.2, align 1, !tbaa !222
  %gep13.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.q
  store <4 x float> %i.cg, ptr %gep13.2, align 1, !tbaa !222
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !222 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !222 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !222 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.co = load <4 x float>, ptr %i.cn, align 1, !tbaa !222 ; 2 uses
  %i.cp = shufflevector <4 x float> %i.ci, <4 x float> %i.cm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cq = shufflevector <4 x float> %i.ck, <4 x float> %i.co, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cr = shufflevector <4 x float> %i.ci, <4 x float> %i.cm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cs = shufflevector <4 x float> %i.ck, <4 x float> %i.co, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cu = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cw = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ah
  store <4 x float> %i.ct, ptr %gep.1.2, align 1, !tbaa !222
  %gep9.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ai
  store <4 x float> %i.cu, ptr %gep9.1.2, align 1, !tbaa !222
  %gep11.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.aj
  store <4 x float> %i.cv, ptr %gep11.1.2, align 1, !tbaa !222
  %gep13.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ak
  store <4 x float> %i.cw, ptr %gep13.1.2, align 1, !tbaa !222
  %.idx28 = mul i64 %.0.val, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx28 ; 2 uses
  %.idx29 = mul i64 %.0.val, 52
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx29 ; 2 uses
  %.idx30 = mul i64 %.0.val, 56
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx30 ; 2 uses
  %.idx31 = mul i64 %.0.val, 60
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx31 ; 2 uses
  %invariant.gep.3 = getelementptr i8, ptr %.8.val3, i64 48 ; 8 uses
  %i.db = load <4 x float>, ptr %i.cx, align 1, !tbaa !222 ; 2 uses
  %i.dc = load <4 x float>, ptr %i.cy, align 1, !tbaa !222 ; 2 uses
  %i.dd = load <4 x float>, ptr %i.cz, align 1, !tbaa !222 ; 2 uses
  %i.de = load <4 x float>, ptr %i.da, align 1, !tbaa !222 ; 2 uses
  %i.df = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.di = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dk = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.dj, ptr %invariant.gep.3, align 1, !tbaa !222
  %gep9.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %.0.val1
  store <4 x float> %i.dk, ptr %gep9.3, align 1, !tbaa !222
  %gep11.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.p
  store <4 x float> %i.dl, ptr %gep11.3, align 1, !tbaa !222
  %gep13.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.q
  store <4 x float> %i.dm, ptr %gep13.3, align 1, !tbaa !222
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.do = load <4 x float>, ptr %i.dn, align 1, !tbaa !222 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !222 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 1, !tbaa !222 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm16ELm8EEclEPKfmPfmS6_:bb.a
  %i.dw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ds, <8 x float> splat (float f0x3F19F1BD), <8 x float> %i.de) ; 3 uses
  %i.dx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ds, <8 x float> splat (float f0xBF19F1BD), <8 x float> %i.de) ; 3 uses
  store <8 x float> %i.dw, ptr %i.ab, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  store <8 x float> %i.dx, ptr %i.aq, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  %i.dy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dt, <8 x float> splat (float f0x3F6664D7), <8 x float> %i.df) ; 3 uses
  %i.dz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dt, <8 x float> splat (float f0xBF6664D7), <8 x float> %i.df) ; 3 uses
  store <8 x float> %i.dy, ptr %i.ae, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  store <8 x float> %i.dz, ptr %i.an, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  %i.ea = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dr, <8 x float> splat (float f0x402406CF), <8 x float> %i.dd) ; 3 uses
  %i.eb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dr, <8 x float> splat (float f0xC02406CF), <8 x float> %i.dd) ; 3 uses
  store <8 x float> %i.ea, ptr %i.ah, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  store <8 x float> %i.eb, ptr %i.ak, align 32, !tbaa !222, !alias.scope !2579, !noalias !2580
  %i.ec = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.du, <8 x float> splat (float f0x3F009E8D), <8 x float> %i.ce)
  %i.ed = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.du, <8 x float> splat (float f0xBF009E8D), <8 x float> %i.ce)
  store <8 x float> %i.ec, ptr %2, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx.i12 = mul i64 %3, 60
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i12
  store <8 x float> %i.ed, ptr %i.ee, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.ef = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> splat (float f0x3F05C278), <8 x float> %i.cg)
  %i.eg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dw, <8 x float> splat (float f0xBF05C278), <8 x float> %i.cg)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  store <8 x float> %i.ef, ptr %i.eh, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx29.i13 = mul i64 %3, 56
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %.idx29.i13
  store <8 x float> %i.eg, ptr %i.ei, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.ej = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dy, <8 x float> splat (float f0x3F11233F), <8 x float> %i.ci)
  %i.ek = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dy, <8 x float> splat (float f0xBF11233F), <8 x float> %i.ci)
  %.idx30.i14 = shl i64 %3, 3
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %.idx30.i14
  store <8 x float> %i.ej, ptr %i.el, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx31.i15 = mul i64 %3, 52
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx31.i15
  store <8 x float> %i.ek, ptr %i.em, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.en = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ea, <8 x float> splat (float f0x3F25961D), <8 x float> %i.ck)
  %i.eo = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ea, <8 x float> splat (float f0xBF25961D), <8 x float> %i.ck)
  %.idx32.i16 = mul i64 %3, 12
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 %.idx32.i16
  store <8 x float> %i.en, ptr %i.ep, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx33.i = mul i64 %3, 48
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx33.i
  store <8 x float> %i.eo, ptr %i.eq, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.er = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.eb, <8 x float> splat (float f0x3F49C480), <8 x float> %i.cl)
  %i.es = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.eb, <8 x float> splat (float f0xBF49C480), <8 x float> %i.cl)
  %.idx34.i = shl i64 %3, 4
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %.idx34.i
  store <8 x float> %i.er, ptr %i.et, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx35.i = mul i64 %3, 44
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx35.i
  store <8 x float> %i.es, ptr %i.eu, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.ev = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> splat (float f0x3F87C449), <8 x float> %i.cj)
  %i.ew = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dz, <8 x float> splat (float f0xBF87C449), <8 x float> %i.cj)
  %.idx36.i = mul i64 %3, 20
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %.idx36.i
  store <8 x float> %i.ev, ptr %i.ex, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx37.i = mul i64 %3, 40
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 %.idx37.i
  store <8 x float> %i.ew, ptr %i.ey, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.ez = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0x3FDC7926), <8 x float> %i.ch)
  %i.fa = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0xBFDC7926), <8 x float> %i.ch)
  %.idx38.i = mul i64 %3, 24
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx38.i
  store <8 x float> %i.ez, ptr %i.fb, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx39.i = mul i64 %3, 36
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx39.i
  store <8 x float> %i.fa, ptr %i.fc, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %i.fd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dv, <8 x float> splat (float f0x40A33C9C), <8 x float> %i.cf)
  %i.fe = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dv, <8 x float> splat (float f0xC0A33C9C), <8 x float> %i.cf)
  %.idx40.i = mul i64 %3, 28
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 %.idx40.i
  store <8 x float> %i.fd, ptr %i.ff, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  %.idx41.i = shl i64 %3, 5
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx41.i
  store <8 x float> %i.fe, ptr %i.fg, align 1, !tbaa !222, !alias.scope !2581, !noalias !2582
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_AVX212_GLOBAL__N_113IDCT1DWrapperILm8ELm8ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #23 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.g = getelementptr i8, ptr %3, i64 160
  %i.h = getelementptr i8, ptr %3, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 352
  store <8 x float> %i.am, ptr %3, align 1, !tbaa !222, !alias.scope !2602, !noalias !2603
  store <8 x float> %i.an, ptr %i.e, align 1, !tbaa !222, !alias.scope !2602, !noalias !2603
  store <8 x float> %i.ao, ptr %i.c, align 1, !tbaa !222, !alias.scope !2602, !noalias !2603
  store <8 x float> %i.ap, ptr %i.d, align 1, !tbaa !222, !alias.scope !2602, !noalias !2603
  store <8 x float> %i.au, ptr %i.j, align 1, !tbaa !222, !alias.scope !2604
  store <8 x float> %i.av, ptr %i.k, align 1, !tbaa !222, !alias.scope !2604
  store <8 x float> %i.ay, ptr %i.l, align 1, !tbaa !222, !alias.scope !2604
  store <8 x float> %i.az, ptr %i.m, align 1, !tbaa !222, !alias.scope !2604
  store <8 x float> %i.ba, ptr %i.f, align 1, !tbaa !222, !alias.scope !2605, !noalias !2606
  store <8 x float> %i.bb, ptr %i.i, align 1, !tbaa !222, !alias.scope !2605, !noalias !2606
  store <8 x float> %i.bc, ptr %i.g, align 1, !tbaa !222, !alias.scope !2605, !noalias !2606
  store <8 x float> %i.bd, ptr %i.h, align 1, !tbaa !222, !alias.scope !2605, !noalias !2606
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.010 ; 8 uses
  %.val = load i64, ptr %0, align 8, !tbaa !275   ; 7 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.010 ; 8 uses
  %.val9 = load i64, ptr %1, align 8, !tbaa !272  ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.r = load <8 x float>, ptr %i.o, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx20.i.i = shl i64 %.val, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx20.i.i
  %i.t = load <8 x float>, ptr %i.s, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx.i.i = shl i64 %.val, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.v = load <8 x float>, ptr %i.u, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx21.i.i = mul i64 %.val, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx21.i.i
  %i.x = load <8 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.val
  %i.z = load <8 x float>, ptr %i.y, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx22.i.i = mul i64 %.val, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx22.i.i
  %i.ab = load <8 x float>, ptr %i.aa, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx23.i.i = mul i64 %.val, 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx23.i.i
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609 ; 2 uses
  %.idx24.i.i = mul i64 %.val, 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx24.i.i
  %i.af = load <8 x float>, ptr %i.ae, align 1, !tbaa !222, !alias.scope !2608, !noalias !2609
  %i.ag = fadd <8 x float> %i.r, %i.v             ; 2 uses
  %i.ah = fsub <8 x float> %i.r, %i.v             ; 2 uses
  %i.ai = fadd <8 x float> %i.t, %i.x             ; 2 uses
  %i.aj = fmul <8 x float> %i.t, splat (float f0x3FB504F3) ; 2 uses
  %i.ak = fadd <8 x float> %i.aj, %i.ai           ; 2 uses
  %i.al = fsub <8 x float> %i.aj, %i.ai           ; 2 uses
  %i.am = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ak, <8 x float> splat (float f0x3F0A8BD4), <8 x float> %i.ag) ; 3 uses
  %i.an = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ak, <8 x float> splat (float f0xBF0A8BD4), <8 x float> %i.ag) ; 3 uses
  %i.ao = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.al, <8 x float> splat (float f0x3FA73D75), <8 x float> %i.ah) ; 3 uses
  %i.ap = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.al, <8 x float> splat (float f0xBFA73D75), <8 x float> %i.ah) ; 3 uses
  %i.aq = fadd <8 x float> %i.ad, %i.af
  %i.ar = fadd <8 x float> %i.ab, %i.ad           ; 2 uses
  %i.as = fadd <8 x float> %i.z, %i.ab            ; 2 uses
  %i.at = fmul <8 x float> %i.z, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2610)
  %i.au = fadd <8 x float> %i.at, %i.ar           ; 3 uses
  %i.av = fsub <8 x float> %i.at, %i.ar           ; 3 uses
  %i.aw = fadd <8 x float> %i.as, %i.aq           ; 2 uses
  %i.ax = fmul <8 x float> %i.as, splat (float f0x3FB504F3) ; 2 uses
  %i.ay = fadd <8 x float> %i.ax, %i.aw           ; 3 uses
  %i.az = fsub <8 x float> %i.ax, %i.aw           ; 3 uses
  %i.ba = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ay, <8 x float> splat (float f0x3F0A8BD4), <8 x float> %i.au) ; 3 uses
  %i.bb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ay, <8 x float> splat (float f0xBF0A8BD4), <8 x float> %i.au) ; 3 uses
  %i.bc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.az, <8 x float> splat (float f0x3FA73D75), <8 x float> %i.av) ; 3 uses
  %i.bd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.az, <8 x float> splat (float f0xBFA73D75), <8 x float> %i.av) ; 3 uses
  %i.be = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ba, <8 x float> splat (float f0x3F0281F7), <8 x float> %i.am)
  %i.bf = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ba, <8 x float> splat (float f0xBF0281F7), <8 x float> %i.am)
  store <8 x float> %i.be, ptr %i.q, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %.idx.i12.i = mul i64 %.val9, 28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i12.i
  store <8 x float> %i.bf, ptr %i.bg, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %i.bh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bc, <8 x float> splat (float f0x3F19F1BD), <8 x float> %i.ao)
  %i.bi = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bc, <8 x float> splat (float f0xBF19F1BD), <8 x float> %i.ao)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.val9
  store <8 x float> %i.bh, ptr %i.bj, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %.idx29.i.i = mul i64 %.val9, 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx29.i.i
  store <8 x float> %i.bi, ptr %i.bk, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %i.bl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> splat (float f0x3F6664D7), <8 x float> %i.ap)
  %i.bm = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bd, <8 x float> splat (float f0xBF6664D7), <8 x float> %i.ap)
  %.idx30.i.i = shl i64 %.val9, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx30.i.i
  store <8 x float> %i.bl, ptr %i.bn, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %.idx31.i.i = mul i64 %.val9, 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx31.i.i
  store <8 x float> %i.bm, ptr %i.bo, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %i.bp = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bb, <8 x float> splat (float f0x402406CF), <8 x float> %i.an)
  %i.bq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bb, <8 x float> splat (float f0xC02406CF), <8 x float> %i.an)
  %.idx32.i.i = mul i64 %.val9, 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx32.i.i
  store <8 x float> %i.bp, ptr %i.br, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %.idx33.i.i = shl i64 %.val9, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx33.i.i
  store <8 x float> %i.bq, ptr %i.bs, align 1, !tbaa !222, !alias.scope !2611, !noalias !2612
  %i.bt = add nuw i64 %.010, 8                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %2
  br i1 %i.bu, label %bb.c, label %._crit_edge, !llvm.loop !2601
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm32ELm8EEclEPKfmPfmS6_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, i64 noundef %3, ptr noalias nofree noundef captures(none) initializes((0, 1024)) %4) unnamed_addr #22 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2622)
  %i.a = load <8 x float>, ptr %0, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  store <8 x float> %i.a, ptr %4, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx32.i = shl i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32.i
  %i.c = load <8 x float>, ptr %i.b, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store <8 x float> %i.c, ptr %i.d, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx.i = shl i64 %1, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.f = load <8 x float>, ptr %i.e, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store <8 x float> %i.f, ptr %i.g, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx20.i = mul i64 %1, 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx20.i
  %i.i = load <8 x float>, ptr %i.h, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  store <8 x float> %i.i, ptr %i.j, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx21.i = shl i64 %1, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx21.i
  %i.l = load <8 x float>, ptr %i.k, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  store <8 x float> %i.l, ptr %i.m, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx22.i = mul i64 %1, 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx22.i
  %i.o = load <8 x float>, ptr %i.n, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store <8 x float> %i.o, ptr %i.p, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx23.i = mul i64 %1, 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.idx23.i
  %i.r = load <8 x float>, ptr %i.q, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  store <8 x float> %i.r, ptr %i.s, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx24.i = mul i64 %1, 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx24.i
  %i.u = load <8 x float>, ptr %i.t, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 2 uses
  store <8 x float> %i.u, ptr %i.v, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx25.i = shl i64 %1, 6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.idx25.i
  %i.x = load <8 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  store <8 x float> %i.x, ptr %i.y, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx26.i = mul i64 %1, 72
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx26.i
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  store <8 x float> %i.aa, ptr %i.ab, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx27.i = mul i64 %1, 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx27.i
  %i.ad = load <8 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 320 ; 2 uses
  store <8 x float> %i.ad, ptr %i.ae, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx28.i = mul i64 %1, 88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.idx28.i
  %i.ag = load <8 x float>, ptr %i.af, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 352 ; 2 uses
  store <8 x float> %i.ag, ptr %i.ah, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx29.i = mul i64 %1, 96
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx29.i
  %i.aj = load <8 x float>, ptr %i.ai, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 384 ; 2 uses
  store <8 x float> %i.aj, ptr %i.ak, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx30.i = mul i64 %1, 104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.idx30.i
  %i.am = load <8 x float>, ptr %i.al, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 416 ; 2 uses
  store <8 x float> %i.am, ptr %i.an, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx31.i = mul i64 %1, 112
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.idx31.i
  %i.ap = load <8 x float>, ptr %i.ao, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 448 ; 2 uses
  store <8 x float> %i.ap, ptr %i.aq, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx33.i = mul i64 %1, 120
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx33.i
  %i.as = load <8 x float>, ptr %i.ar, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 480 ; 2 uses
  store <8 x float> %i.as, ptr %i.at, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.av = load <8 x float>, ptr %i.au, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 512 ; 6 uses
  store <8 x float> %i.av, ptr %i.aw, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx34.i = mul i64 %1, 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.idx34.i
  %i.ay = load <8 x float>, ptr %i.ax, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.az = getelementptr i8, ptr %4, i64 544       ; 4 uses
  store <8 x float> %i.ay, ptr %i.az, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx35.i = mul i64 %1, 20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35.i
  %i.bb = load <8 x float>, ptr %i.ba, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bc = getelementptr i8, ptr %4, i64 576       ; 4 uses
  store <8 x float> %i.bb, ptr %i.bc, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx36.i = mul i64 %1, 28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx36.i
  %i.be = load <8 x float>, ptr %i.bd, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bf = getelementptr i8, ptr %4, i64 608       ; 4 uses
  store <8 x float> %i.be, ptr %i.bf, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx37.i = mul i64 %1, 36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx37.i
  %i.bh = load <8 x float>, ptr %i.bg, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bi = getelementptr i8, ptr %4, i64 640       ; 4 uses
  store <8 x float> %i.bh, ptr %i.bi, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx38.i = mul i64 %1, 44
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx38.i
  %i.bk = load <8 x float>, ptr %i.bj, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bl = getelementptr i8, ptr %4, i64 672       ; 4 uses
  store <8 x float> %i.bk, ptr %i.bl, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx39.i = mul i64 %1, 52
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.idx39.i
  %i.bn = load <8 x float>, ptr %i.bm, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bo = getelementptr i8, ptr %4, i64 704       ; 4 uses
  store <8 x float> %i.bn, ptr %i.bo, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx40.i = mul i64 %1, 60
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx40.i
  %i.bq = load <8 x float>, ptr %i.bp, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.br = getelementptr i8, ptr %4, i64 736       ; 4 uses
  store <8 x float> %i.bq, ptr %i.br, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx41.i = mul i64 %1, 68
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx41.i
  %i.bt = load <8 x float>, ptr %i.bs, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bu = getelementptr i8, ptr %4, i64 768       ; 4 uses
  store <8 x float> %i.bt, ptr %i.bu, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx42.i = mul i64 %1, 76
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.idx42.i
  %i.bw = load <8 x float>, ptr %i.bv, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.bx = getelementptr i8, ptr %4, i64 800       ; 4 uses
  store <8 x float> %i.bw, ptr %i.bx, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx43.i = mul i64 %1, 84
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.idx43.i
  %i.bz = load <8 x float>, ptr %i.by, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.ca = getelementptr i8, ptr %4, i64 832       ; 4 uses
  store <8 x float> %i.bz, ptr %i.ca, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx44.i = mul i64 %1, 92
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx44.i
  %i.cc = load <8 x float>, ptr %i.cb, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.cd = getelementptr i8, ptr %4, i64 864       ; 4 uses
  store <8 x float> %i.cc, ptr %i.cd, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx45.i = mul i64 %1, 100
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.idx45.i
  %i.cf = load <8 x float>, ptr %i.ce, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.cg = getelementptr i8, ptr %4, i64 896       ; 4 uses
  store <8 x float> %i.cf, ptr %i.cg, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx46.i = mul i64 %1, 108
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.idx46.i
  %i.ci = load <8 x float>, ptr %i.ch, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.cj = getelementptr i8, ptr %4, i64 928       ; 4 uses
  store <8 x float> %i.ci, ptr %i.cj, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx47.i = mul i64 %1, 116
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %.idx47.i
  %i.cl = load <8 x float>, ptr %i.ck, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.cm = getelementptr i8, ptr %4, i64 960       ; 4 uses
  store <8 x float> %i.cl, ptr %i.cm, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %.idx48.i = mul i64 %1, 124
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx48.i
  %i.co = load <8 x float>, ptr %i.cn, align 1, !tbaa !222, !alias.scope !2621, !noalias !2622
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 992 ; 4 uses
  store <8 x float> %i.co, ptr %i.cp, align 32, !tbaa !222, !alias.scope !2622, !noalias !2621
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 1024 ; 2 uses
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm16ELm8EEclEPKfmPfmS6_(ptr noundef nonnull %4, i64 noundef 8, ptr noundef nonnull %4, i64 noundef 8, ptr noundef nonnull %i.cq) #50
  %i.cr = load <8 x float>, ptr %i.cp, align 32, !tbaa !222, !alias.scope !2623
  %i.cs = load <8 x float>, ptr %i.cm, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.ct = fadd <8 x float> %i.cr, %i.cs
  store <8 x float> %i.ct, ptr %i.cp, align 32, !tbaa !222, !alias.scope !2623
  %i.cu = load <8 x float>, ptr %i.cj, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.cv = fadd <8 x float> %i.cs, %i.cu
  store <8 x float> %i.cv, ptr %i.cm, align 32, !tbaa !222, !alias.scope !2623
  %i.cw = load <8 x float>, ptr %i.cg, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.cx = fadd <8 x float> %i.cu, %i.cw
  store <8 x float> %i.cx, ptr %i.cj, align 32, !tbaa !222, !alias.scope !2623
  %i.cy = load <8 x float>, ptr %i.cd, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.cz = fadd <8 x float> %i.cw, %i.cy
  store <8 x float> %i.cz, ptr %i.cg, align 32, !tbaa !222, !alias.scope !2623
  %i.da = load <8 x float>, ptr %i.ca, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.db = fadd <8 x float> %i.cy, %i.da
  store <8 x float> %i.db, ptr %i.cd, align 32, !tbaa !222, !alias.scope !2623
  %i.dc = load <8 x float>, ptr %i.bx, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.dd = fadd <8 x float> %i.da, %i.dc
  store <8 x float> %i.dd, ptr %i.ca, align 32, !tbaa !222, !alias.scope !2623
  %i.de = load <8 x float>, ptr %i.bu, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.df = fadd <8 x float> %i.dc, %i.de
  store <8 x float> %i.df, ptr %i.bx, align 32, !tbaa !222, !alias.scope !2623
  %i.dg = load <8 x float>, ptr %i.br, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.dh = fadd <8 x float> %i.de, %i.dg
  store <8 x float> %i.dh, ptr %i.bu, align 32, !tbaa !222, !alias.scope !2623
  %i.di = load <8 x float>, ptr %i.bo, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.dj = fadd <8 x float> %i.dg, %i.di
  store <8 x float> %i.dj, ptr %i.br, align 32, !tbaa !222, !alias.scope !2623
  %i.dk = load <8 x float>, ptr %i.bl, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.dl = fadd <8 x float> %i.di, %i.dk
  store <8 x float> %i.dl, ptr %i.bo, align 32, !tbaa !222, !alias.scope !2623
  %i.dm = load <8 x float>, ptr %i.bi, align 32, !tbaa !222, !alias.scope !2623 ; 2 uses
  %i.dn = fadd <8 x float> %i.dk, %i.dm
end_hunk_2
begin_hunk_3_@_ZN3jxl6N_AVX212_GLOBAL__N_113IDCT1DWrapperILm256ELm8ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf:bb.a
  store <8 x float> %i.er, ptr %i.es, align 32, !tbaa !222, !alias.scope !2722, !noalias !2718
  %i.et = or disjoint i64 %.01619.i.i17.i, 1      ; 2 uses
  %.idx5.i.1 = shl nuw nsw i64 %i.et, 6
  %i.eu = getelementptr i8, ptr %i.f, i64 %.idx5.i.1
  %i.ev = getelementptr i8, ptr %i.eu, i64 -4064
  %i.ew = load <8 x float>, ptr %i.ev, align 1, !tbaa !222, !alias.scope !2720, !noalias !2721
  %.idx.i.i18.i.1 = shl nuw nsw i64 %i.et, 5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i18.i.1
  store <8 x float> %i.ew, ptr %i.ex, align 32, !tbaa !222, !alias.scope !2722, !noalias !2718
  %i.ey = or disjoint i64 %.01619.i.i17.i, 2      ; 2 uses
  %.idx5.i.2 = shl nuw nsw i64 %i.ey, 6
  %i.ez = getelementptr i8, ptr %i.f, i64 %.idx5.i.2
  %i.fa = getelementptr i8, ptr %i.ez, i64 -4064
  %i.fb = load <8 x float>, ptr %i.fa, align 1, !tbaa !222, !alias.scope !2720, !noalias !2721
  %.idx.i.i18.i.2 = shl nuw nsw i64 %i.ey, 5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i18.i.2
  store <8 x float> %i.fb, ptr %i.fc, align 32, !tbaa !222, !alias.scope !2722, !noalias !2718
  %i.fd = or disjoint i64 %.01619.i.i17.i, 3      ; 2 uses
  %.idx5.i.3 = shl nuw nsw i64 %i.fd, 6
  %i.fe = getelementptr i8, ptr %i.f, i64 %.idx5.i.3
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4064
  %i.fg = load <8 x float>, ptr %i.ff, align 1, !tbaa !222, !alias.scope !2720, !noalias !2721
  %.idx.i.i18.i.3 = shl nuw nsw i64 %i.fd, 5
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i18.i.3
  store <8 x float> %i.fg, ptr %i.fh, align 32, !tbaa !222, !alias.scope !2722, !noalias !2718
  %i.fi = add nuw nsw i64 %.01619.i.i17.i, 4      ; 2 uses
  %exitcond20.not.i.i19.i.3 = icmp eq i64 %i.fi, 128
  br i1 %exitcond20.not.i.i19.i.3, label %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm128ELm8EE14ForwardEvenOddEPKfmPf.exit.i20.i, label %.preheader.i.i16.i, !llvm.loop !7

_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm128ELm8EE14ForwardEvenOddEPKfmPf.exit.i20.i: ; preds = %.preheader.i.i16.i
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm64ELm8EEclEPKfmPfmS6_(ptr noundef nonnull %i.c, i64 noundef 8, ptr noundef nonnull %i.c, i64 noundef 8, ptr noundef nonnull %i.d) #50
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm128ELm8EE14ForwardEvenOddEPKfmPf.exit.i20.i
  %.019.i.i21.i = phi i64 [ 63, %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm128ELm8EE14ForwardEvenOddEPKfmPf.exit.i20.i ], [ %i.ga, %bb.h ] ; 4 uses
  %.idx.i12.i22.i = shl nuw nsw i64 %.019.i.i21.i, 5
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i12.i22.i ; 3 uses
  %i.fk = load <8 x float>, ptr %i.fj, align 32, !tbaa !222, !alias.scope !2723
  %i.fl = getelementptr i8, ptr %i.fj, i64 -32
  %i.fm = load <8 x float>, ptr %i.fl, align 32, !tbaa !222, !alias.scope !2723 ; 2 uses
  %i.fn = fadd <8 x float> %i.fk, %i.fm
  store <8 x float> %i.fn, ptr %i.fj, align 32, !tbaa !222, !alias.scope !2723
  %i.fo = shl i64 %.019.i.i21.i, 5
  %i.fp = getelementptr i8, ptr %i.e, i64 %i.fo   ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -32
  %i.fr = getelementptr i8, ptr %i.fp, i64 -64
  %i.fs = load <8 x float>, ptr %i.fr, align 32, !tbaa !222, !alias.scope !2723 ; 2 uses
  %i.ft = fadd <8 x float> %i.fm, %i.fs
  store <8 x float> %i.ft, ptr %i.fq, align 32, !tbaa !222, !alias.scope !2723
  %i.fu = shl i64 %.019.i.i21.i, 5
  %i.fv = getelementptr i8, ptr %i.e, i64 %i.fu   ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -64
  %i.fx = getelementptr i8, ptr %i.fv, i64 -96
  %i.fy = load <8 x float>, ptr %i.fx, align 32, !tbaa !222, !alias.scope !2723
  %i.fz = fadd <8 x float> %i.fs, %i.fy
  store <8 x float> %i.fz, ptr %i.fw, align 32, !tbaa !222, !alias.scope !2723
  %i.ga = add nsw i64 %.019.i.i21.i, -3           ; 2 uses
  %.not.i.i23.i.2 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.i23.i.2, label %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm64ELm8EE10BTransposeEPf.exit.i24.i, label %bb.h, !llvm.loop !8

_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm64ELm8EE10BTransposeEPf.exit.i24.i: ; preds = %bb.h
  %i.gb = load <8 x float>, ptr %i.e, align 32, !tbaa !222, !alias.scope !2723
  %i.gc = fmul <8 x float> %i.gb, splat (float f0x3FB504F3)
  store <8 x float> %i.gc, ptr %i.e, align 32, !tbaa !222, !alias.scope !2723
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm64ELm8EEclEPKfmPfmS6_(ptr noundef nonnull %i.e, i64 noundef 8, ptr noundef nonnull %i.e, i64 noundef 8, ptr noundef nonnull %i.d) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm64ELm8EE10BTransposeEPf.exit.i24.i
  %.028.i.i25.i = phi i64 [ 0, %_ZN3jxl6N_AVX212_GLOBAL__N_111CoeffBundleILm64ELm8EE10BTransposeEPf.exit.i24.i ], [ %i.gs, %bb.i ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZN3jxl13WcMultipliersILm128EE12kMultipliersE, i64 %.028.i.i25.i
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !256, !noalias !2726
  %i.gf = insertelement <8 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <8 x float> %i.gf, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.idx.i13.i26.i = shl nuw nsw i64 %.028.i.i25.i, 5 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i13.i26.i ; 2 uses
  %i.gi = load <8 x float>, ptr %i.gh, align 32, !tbaa !222, !alias.scope !2727, !noalias !2725 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 2048
  %i.gk = load <8 x float>, ptr %i.gj, align 32, !tbaa !222, !alias.scope !2727, !noalias !2725 ; 2 uses
  %i.gl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gg, <8 x float> %i.gk, <8 x float> %i.gi)
  %i.gm = fneg <8 x float> %i.gg
  %i.gn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gm, <8 x float> %i.gk, <8 x float> %i.gi)
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i13.i26.i
  store <8 x float> %i.gl, ptr %i.go, align 1, !tbaa !222, !alias.scope !2728, !noalias !2729
  %i.gp = shl nuw nsw i64 %.028.i.i25.i, 3
  %i.gq = sub nuw nsw i64 1016, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gq
  store <8 x float> %i.gn, ptr %i.gr, align 1, !tbaa !222, !alias.scope !2728, !noalias !2729
  %i.gs = add nuw nsw i64 %.028.i.i25.i, 1        ; 2 uses
  %exitcond.not.i14.i27.i = icmp eq i64 %i.gs, 64
  br i1 %exitcond.not.i14.i27.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm128ELm8EEclEPKfmPfmS6_.exit28.i, label %bb.i, !llvm.loop !9

_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm128ELm8EEclEPKfmPfmS6_.exit28.i: ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.010 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm128ELm8EEclEPKfmPfmS6_.exit28.i
  %.028.i.i = phi i64 [ 0, %_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm128ELm8EEclEPKfmPfmS6_.exit28.i ], [ %i.hk, %bb.j ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr @_ZN3jxl13WcMultipliersILm256EE12kMultipliersE, i64 %.028.i.i
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !256, !noalias !2732
  %i.gw = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.idx.i29.i = shl nuw nsw i64 %.028.i.i, 5
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i29.i ; 2 uses
  %i.gz = load <8 x float>, ptr %i.gy, align 32, !tbaa !222, !alias.scope !2733, !noalias !2731 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4096
  %i.hb = load <8 x float>, ptr %i.ha, align 32, !tbaa !222, !alias.scope !2733, !noalias !2731 ; 2 uses
  %i.hc = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gx, <8 x float> %i.hb, <8 x float> %i.gz)
  %i.hd = fneg <8 x float> %i.gx
  %i.he = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hd, <8 x float> %i.hb, <8 x float> %i.gz)
  %i.hf = mul i64 %.028.i.i, %.val9
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hf
  store <8 x float> %i.hc, ptr %i.hg, align 1, !tbaa !222, !alias.scope !2731, !noalias !2733
  %i.hh = sub nuw nsw i64 255, %.028.i.i
  %i.hi = mul i64 %i.hh, %.val9
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.hi
  store <8 x float> %i.he, ptr %i.hj, align 1, !tbaa !222, !alias.scope !2731, !noalias !2733
  %i.hk = add nuw nsw i64 %.028.i.i, 1            ; 2 uses
  %exitcond.not.i30.i = icmp eq i64 %i.hk, 128
  br i1 %exitcond.not.i30.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm256ELm8EEclEPKfmPfmS6_.exit, label %bb.j, !llvm.loop !2697

_ZN3jxl6N_AVX212_GLOBAL__N_110IDCT1DImplILm256ELm8EEclEPKfmPfmS6_.exit: ; preds = %bb.j
  %i.hl = add i64 %.010, 8                        ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %2
  br i1 %i.hm, label %bb.b, label %._crit_edge, !llvm.loop !2698
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_115NoInlineWrapperIFvRKNS1_7DCTFromERKNS1_5DCTToEmPfEJS3_S6_mrS9_EEEvRKT_DpRKT0_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.0.val, ptr %.0.val1) unnamed_addr #26 {
bb.a:
  tail call void %0(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %.0.val, ptr noundef %.0.val1) #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_113IDCT1DWrapperILm4ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #27 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %i.q, ptr %3, align 1, !tbaa !222, !alias.scope !2759
  store <4 x float> %i.r, ptr %i.c, align 1, !tbaa !222, !alias.scope !2760
  store <4 x float> %i.u, ptr %i.d, align 1, !tbaa !222, !alias.scope !2761
  store <4 x float> %i.v, ptr %i.e, align 1, !tbaa !222, !alias.scope !2762
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.010 ; 4 uses
  %.val = load i64, ptr %0, align 8, !tbaa !278   ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.010 ; 4 uses
  %.val9 = load i64, ptr %1, align 8, !tbaa !281  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %i.j = load <4 x float>, ptr %i.g, align 1, !tbaa !222, !alias.scope !2764, !noalias !2765 ; 2 uses
  %.idx.i.i = shl i64 %.val, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !222, !alias.scope !2764, !noalias !2765 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.val
  %i.n = load <4 x float>, ptr %i.m, align 1, !tbaa !222, !alias.scope !2766, !noalias !2765 ; 2 uses
  %.idx20.i.i = mul i64 %.val, 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx20.i.i
  %i.p = load <4 x float>, ptr %i.o, align 1, !tbaa !222, !alias.scope !2766, !noalias !2765
  %i.q = fadd <4 x float> %i.j, %i.l              ; 3 uses
  %i.r = fsub <4 x float> %i.j, %i.l              ; 3 uses
  %i.s = fadd <4 x float> %i.n, %i.p              ; 2 uses
  %i.t = fmul <4 x float> %i.n, splat (float f0x3FB504F3) ; 2 uses
  %i.u = fadd <4 x float> %i.t, %i.s              ; 2 uses
  %i.v = fsub <4 x float> %i.t, %i.s              ; 2 uses
  %i.w = fmul <4 x float> %i.u, splat (float f0x3F0A8BD4) ; 2 uses
  %i.x = fadd <4 x float> %i.q, %i.w
  %i.y = fsub <4 x float> %i.q, %i.w
  store <4 x float> %i.x, ptr %i.i, align 1, !tbaa !222, !alias.scope !2767, !noalias !2768
  %.idx.i12.i = mul i64 %.val9, 12
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i12.i
  store <4 x float> %i.y, ptr %i.z, align 1, !tbaa !222, !alias.scope !2769, !noalias !2768
  %i.aa = fmul <4 x float> %i.v, splat (float f0x3FA73D75) ; 2 uses
  %i.ab = fadd <4 x float> %i.r, %i.aa
  %i.ac = fsub <4 x float> %i.r, %i.aa
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.val9
  store <4 x float> %i.ab, ptr %i.ad, align 1, !tbaa !222, !alias.scope !2767, !noalias !2768
  %.idx29.i.i = shl i64 %.val9, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx29.i.i
  store <4 x float> %i.ac, ptr %i.ae, align 1, !tbaa !222, !alias.scope !2769, !noalias !2768
  %i.af = add nuw i64 %.010, 4                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %2
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !2758
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_113IDCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef captures(none) %3) #28 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.010
  %.val = load i64, ptr %0, align 8, !tbaa !278
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.010
  %.val9 = load i64, ptr %1, align 8, !tbaa !281
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_110IDCT1DImplILm16ELm4EEclEPKfmPfmS6_(ptr noundef %i.d, i64 noundef %.val, ptr noundef %i.f, i64 noundef %.val9, ptr noundef %3) #50
  %i.g = add i64 %.010, 4                         ; 2 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %bb.b, label %._crit_edge, !llvm.loop !2770
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_110IDCT1DImplILm16ELm4EEclEPKfmPfmS6_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2, i64 noundef %3, ptr noalias nofree noundef captures(none) initializes((0, 448)) %4) unnamed_addr #29 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2836)
  %i.a = load <4 x float>, ptr %0, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %.idx24.i = shl i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx24.i
  %i.c = load <4 x float>, ptr %i.b, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.idx.i = shl i64 %1, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.f = load <4 x float>, ptr %i.e, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.idx20.i = mul i64 %1, 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx20.i
  %i.i = load <4 x float>, ptr %i.h, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.idx21.i = shl i64 %1, 5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx21.i
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.idx22.i = mul i64 %1, 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx22.i
  %i.o = load <4 x float>, ptr %i.n, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx23.i = mul i64 %1, 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.idx23.i
  %i.r = load <4 x float>, ptr %i.q, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.idx25.i = mul i64 %1, 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.idx25.i
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !222, !alias.scope !2837, !noalias !2836
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.idx26.i = mul i64 %1, 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.idx26.i
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836
  %i.ab = getelementptr i8, ptr %4, i64 144       ; 3 uses
  store <4 x float> %i.aa, ptr %i.ab, align 16, !tbaa !222, !alias.scope !2839, !noalias !2835
  %.idx27.i = mul i64 %1, 20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.idx27.i
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836
  %i.ae = getelementptr i8, ptr %4, i64 160       ; 3 uses
  store <4 x float> %i.ad, ptr %i.ae, align 16, !tbaa !222, !alias.scope !2839, !noalias !2835
  %.idx28.i = mul i64 %1, 28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.idx28.i
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836
  %i.ah = getelementptr i8, ptr %4, i64 176       ; 3 uses
  store <4 x float> %i.ag, ptr %i.ah, align 16, !tbaa !222, !alias.scope !2839, !noalias !2835
  %.idx29.i = mul i64 %1, 36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.idx29.i
  %i.aj = load <4 x float>, ptr %i.ai, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836 ; 2 uses
  %i.ak = getelementptr i8, ptr %4, i64 192
  %.idx30.i = mul i64 %1, 44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.idx30.i
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836 ; 2 uses
  %i.an = getelementptr i8, ptr %4, i64 208
  %.idx31.i = mul i64 %1, 52
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.idx31.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836 ; 2 uses
  %i.aq = getelementptr i8, ptr %4, i64 224
  %.idx32.i = mul i64 %1, 60
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.idx32.i
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !222, !alias.scope !2838, !noalias !2836
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.az = getelementptr i8, ptr %4, i64 336
  %i.ba = getelementptr i8, ptr %4, i64 352
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 368
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 400
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.bg = fadd <4 x float> %i.a, %i.l             ; 2 uses
  %i.bh = fsub <4 x float> %i.a, %i.l             ; 2 uses
  %i.bi = fadd <4 x float> %i.f, %i.r             ; 2 uses
  %i.bj = fmul <4 x float> %i.f, splat (float f0x3FB504F3) ; 2 uses
  %i.bk = fadd <4 x float> %i.bj, %i.bi
  %i.bl = fsub <4 x float> %i.bj, %i.bi
  %i.bm = fmul <4 x float> %i.bk, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bn = fadd <4 x float> %i.bg, %i.bm           ; 2 uses
  %i.bo = fsub <4 x float> %i.bg, %i.bm           ; 2 uses
  %i.bp = fmul <4 x float> %i.bl, splat (float f0x3FA73D75) ; 2 uses
  %i.bq = fadd <4 x float> %i.bh, %i.bp           ; 2 uses
  %i.br = fsub <4 x float> %i.bh, %i.bp           ; 2 uses
  %i.bs = fadd <4 x float> %i.o, %i.u
  %i.bt = fadd <4 x float> %i.i, %i.o             ; 2 uses
  %i.bu = fadd <4 x float> %i.c, %i.i             ; 2 uses
  %i.bv = fmul <4 x float> %i.c, splat (float f0x3FB504F3) ; 2 uses
  %i.bw = fadd <4 x float> %i.bv, %i.bt           ; 2 uses
  %i.bx = fsub <4 x float> %i.bv, %i.bt           ; 2 uses
  %i.by = fadd <4 x float> %i.bu, %i.bs           ; 2 uses
  %i.bz = fmul <4 x float> %i.bu, splat (float f0x3FB504F3) ; 2 uses
  %i.ca = fadd <4 x float> %i.bz, %i.by
  %i.cb = fsub <4 x float> %i.bz, %i.by
  %i.cc = fmul <4 x float> %i.ca, splat (float f0x3F0A8BD4) ; 2 uses
  %i.cd = fadd <4 x float> %i.bw, %i.cc
  %i.ce = fsub <4 x float> %i.bw, %i.cc
  %i.cf = fmul <4 x float> %i.cb, splat (float f0x3FA73D75) ; 2 uses
  %i.cg = fadd <4 x float> %i.bx, %i.cf
  %i.ch = fsub <4 x float> %i.bx, %i.cf
  %i.ci = fmul <4 x float> %i.cd, splat (float f0x3F0281F7) ; 2 uses
  %i.cj = fadd <4 x float> %i.bn, %i.ci           ; 3 uses
  %i.ck = fsub <4 x float> %i.bn, %i.ci           ; 3 uses
  store <4 x float> %i.cj, ptr %4, align 16, !tbaa !222, !alias.scope !2840, !noalias !2841
  store <4 x float> %i.ck, ptr %i.v, align 16, !tbaa !222, !alias.scope !2842, !noalias !2841
  %i.cl = fmul <4 x float> %i.cg, splat (float f0x3F19F1BD) ; 2 uses
  %i.cm = fadd <4 x float> %i.bq, %i.cl           ; 3 uses
  %i.cn = fsub <4 x float> %i.bq, %i.cl           ; 3 uses
  store <4 x float> %i.cm, ptr %i.d, align 16, !tbaa !222, !alias.scope !2840, !noalias !2841
  store <4 x float> %i.cn, ptr %i.s, align 16, !tbaa !222, !alias.scope !2842, !noalias !2841
  %i.co = fmul <4 x float> %i.ch, splat (float f0x3F6664D7) ; 2 uses
  %i.cp = fadd <4 x float> %i.br, %i.co           ; 3 uses
  %i.cq = fsub <4 x float> %i.br, %i.co           ; 3 uses
  store <4 x float> %i.cp, ptr %i.g, align 16, !tbaa !222, !alias.scope !2840, !noalias !2841
  store <4 x float> %i.cq, ptr %i.p, align 16, !tbaa !222, !alias.scope !2842, !noalias !2841
  %i.cr = fmul <4 x float> %i.ce, splat (float f0x402406CF) ; 2 uses
  %i.cs = fadd <4 x float> %i.bo, %i.cr           ; 3 uses
  %i.ct = fsub <4 x float> %i.bo, %i.cr           ; 3 uses
  store <4 x float> %i.cs, ptr %i.j, align 16, !tbaa !222, !alias.scope !2840, !noalias !2841
  store <4 x float> %i.ct, ptr %i.m, align 16, !tbaa !222, !alias.scope !2842, !noalias !2841
  %i.cu = fadd <4 x float> %i.as, %i.ap
  %i.cv = fadd <4 x float> %i.ap, %i.am
  %i.cw = fadd <4 x float> %i.am, %i.aj           ; 2 uses
  %i.cx = load <4 x float>, ptr %i.ah, align 16, !tbaa !222, !alias.scope !2843 ; 2 uses
  %i.cy = fadd <4 x float> %i.aj, %i.cx           ; 2 uses
  %i.cz = load <4 x float>, ptr %i.ae, align 16, !tbaa !222, !alias.scope !2843 ; 2 uses
  %i.da = fadd <4 x float> %i.cx, %i.cz           ; 2 uses
  %i.db = load <4 x float>, ptr %i.ab, align 16, !tbaa !222, !alias.scope !2843 ; 2 uses
  %i.dc = fadd <4 x float> %i.cz, %i.db           ; 2 uses
  %i.dd = fadd <4 x float> %i.x, %i.db            ; 2 uses
  %i.de = fmul <4 x float> %i.x, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.df = fadd <4 x float> %i.de, %i.cy           ; 2 uses
  %i.dg = fsub <4 x float> %i.de, %i.cy           ; 2 uses
  %i.dh = fadd <4 x float> %i.cv, %i.dc           ; 2 uses
  %i.di = fmul <4 x float> %i.dc, splat (float f0x3FB504F3) ; 2 uses
  %i.dj = fadd <4 x float> %i.di, %i.dh
  %i.dk = fsub <4 x float> %i.di, %i.dh
  %i.dl = fmul <4 x float> %i.dj, splat (float f0x3F0A8BD4) ; 2 uses
  %i.dm = fadd <4 x float> %i.df, %i.dl           ; 3 uses
  %i.dn = fsub <4 x float> %i.df, %i.dl           ; 3 uses
  store <4 x float> %i.dm, ptr %i.au, align 16, !tbaa !222, !alias.scope !2845, !noalias !2846
  store <4 x float> %i.dn, ptr %i.ax, align 16, !tbaa !222, !alias.scope !2847, !noalias !2846
  %i.do = fmul <4 x float> %i.dk, splat (float f0x3FA73D75) ; 2 uses
  %i.dp = fadd <4 x float> %i.dg, %i.do           ; 3 uses
  %i.dq = fsub <4 x float> %i.dg, %i.do           ; 3 uses
  store <4 x float> %i.dp, ptr %i.av, align 16, !tbaa !222, !alias.scope !2845, !noalias !2846
  store <4 x float> %i.dq, ptr %i.aw, align 16, !tbaa !222, !alias.scope !2847, !noalias !2846
  %i.dr = fadd <4 x float> %i.cu, %i.cw
  %i.ds = fadd <4 x float> %i.cw, %i.da           ; 2 uses
  %i.dt = fadd <4 x float> %i.da, %i.dd           ; 2 uses
  %i.du = fmul <4 x float> %i.dd, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.dv = fadd <4 x float> %i.ds, %i.du           ; 3 uses
  store <4 x float> %i.dv, ptr %i.bc, align 16, !tbaa !222, !alias.scope !2849
  %i.dw = fsub <4 x float> %i.du, %i.ds           ; 3 uses
  store <4 x float> %i.dw, ptr %i.bd, align 16, !tbaa !222, !alias.scope !2850
  %i.dx = fadd <4 x float> %i.dr, %i.dt           ; 2 uses
  %i.dy = fmul <4 x float> %i.dt, splat (float f0x3FB504F3) ; 2 uses
  %i.dz = fadd <4 x float> %i.dy, %i.dx           ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3jxl6N_SSE212_GLOBAL__N_19TransposeILm8ELm16EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_:.preheader
  %i.cw = load <4 x float>, ptr %i.cv, align 1, !tbaa !222, !alias.scope !2881 ; 2 uses
  %i.cx = shufflevector <4 x float> %i.cq, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cz = shufflevector <4 x float> %i.cq, <4 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.da = shufflevector <4 x float> %i.cs, <4 x float> %i.cw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.db = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dc = shufflevector <4 x float> %i.cx, <4 x float> %i.cy, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.de = shufflevector <4 x float> %i.cz, <4 x float> %i.da, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ah
  store <4 x float> %i.db, ptr %gep.1.1, align 1, !tbaa !222, !alias.scope !2882
  %gep9.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ai
  store <4 x float> %i.dc, ptr %gep9.1.1, align 1, !tbaa !222, !alias.scope !2883
  %gep11.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aj
  store <4 x float> %i.dd, ptr %gep11.1.1, align 1, !tbaa !222, !alias.scope !2884
  %gep13.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ak
  store <4 x float> %i.de, ptr %gep13.1.1, align 1, !tbaa !222, !alias.scope !2885
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.dg = load <4 x float>, ptr %i.df, align 1, !tbaa !222, !alias.scope !2878 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.di = load <4 x float>, ptr %i.dh, align 1, !tbaa !222, !alias.scope !2879 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.dk = load <4 x float>, ptr %i.dj, align 1, !tbaa !222, !alias.scope !2880 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.dm = load <4 x float>, ptr %i.dl, align 1, !tbaa !222, !alias.scope !2881 ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dg, <4 x float> %i.dk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.do = shufflevector <4 x float> %i.di, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dg, <4 x float> %i.dk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.di, <4 x float> %i.dm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ds = shufflevector <4 x float> %i.dn, <4 x float> %i.do, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dt = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.du = shufflevector <4 x float> %i.dp, <4 x float> %i.dq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bb
  store <4 x float> %i.dr, ptr %gep.2.1, align 1, !tbaa !222, !alias.scope !2882
  %gep9.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bc
  store <4 x float> %i.ds, ptr %gep9.2.1, align 1, !tbaa !222, !alias.scope !2883
  %gep11.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bd
  store <4 x float> %i.dt, ptr %gep11.2.1, align 1, !tbaa !222, !alias.scope !2884
  %gep13.2.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.be
  store <4 x float> %i.du, ptr %gep13.2.1, align 1, !tbaa !222, !alias.scope !2885
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !222, !alias.scope !2878 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !222, !alias.scope !2879 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ea = load <4 x float>, ptr %i.dz, align 1, !tbaa !222, !alias.scope !2880 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ec = load <4 x float>, ptr %i.eb, align 1, !tbaa !222, !alias.scope !2881 ; 2 uses
  %i.ed = shufflevector <4 x float> %i.dw, <4 x float> %i.ea, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dy, <4 x float> %i.ec, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %i.dw, <4 x float> %i.ea, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eg = shufflevector <4 x float> %i.dy, <4 x float> %i.ec, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ei = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ek = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bv
  store <4 x float> %i.eh, ptr %gep.3.1, align 1, !tbaa !222, !alias.scope !2882
  %gep9.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bw
  store <4 x float> %i.ei, ptr %gep9.3.1, align 1, !tbaa !222, !alias.scope !2883
  %gep11.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.bx
  store <4 x float> %i.ej, ptr %gep11.3.1, align 1, !tbaa !222, !alias.scope !2884
  %gep13.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.by
  store <4 x float> %i.ek, ptr %gep13.3.1, align 1, !tbaa !222, !alias.scope !2885
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_113IDCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #27 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr i8, ptr %3, i64 80
  %i.h = getelementptr i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <4 x float> %i.an, ptr %3, align 1, !tbaa !222, !alias.scope !2929, !noalias !2930
  store <4 x float> %i.ao, ptr %i.e, align 1, !tbaa !222, !alias.scope !2931, !noalias !2930
  store <4 x float> %i.aq, ptr %i.c, align 1, !tbaa !222, !alias.scope !2929, !noalias !2930
  store <4 x float> %i.ar, ptr %i.d, align 1, !tbaa !222, !alias.scope !2931, !noalias !2930
  store <4 x float> %i.aw, ptr %i.j, align 1, !tbaa !222, !alias.scope !2932
  store <4 x float> %i.ax, ptr %i.k, align 1, !tbaa !222, !alias.scope !2933
  store <4 x float> %i.ba, ptr %i.l, align 1, !tbaa !222, !alias.scope !2934
  store <4 x float> %i.bb, ptr %i.m, align 1, !tbaa !222, !alias.scope !2935
  store <4 x float> %i.bd, ptr %i.f, align 1, !tbaa !222, !alias.scope !2936, !noalias !2937
  store <4 x float> %i.be, ptr %i.i, align 1, !tbaa !222, !alias.scope !2938, !noalias !2937
  store <4 x float> %i.bg, ptr %i.g, align 1, !tbaa !222, !alias.scope !2936, !noalias !2937
  store <4 x float> %i.bh, ptr %i.h, align 1, !tbaa !222, !alias.scope !2938, !noalias !2937
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.c ] ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.010 ; 8 uses
  %.val = load i64, ptr %0, align 8, !tbaa !278   ; 7 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !282
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.010 ; 8 uses
  %.val9 = load i64, ptr %1, align 8, !tbaa !281  ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2939)
  %i.r = load <4 x float>, ptr %i.o, align 1, !tbaa !222, !alias.scope !2940, !noalias !2941 ; 2 uses
  %.idx20.i.i = shl i64 %.val, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx20.i.i
  %i.t = load <4 x float>, ptr %i.s, align 1, !tbaa !222, !alias.scope !2940, !noalias !2941 ; 2 uses
  %.idx.i.i = shl i64 %.val, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !222, !alias.scope !2940, !noalias !2941 ; 2 uses
  %.idx21.i.i = mul i64 %.val, 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx21.i.i
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !222, !alias.scope !2940, !noalias !2941
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.val
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !222, !alias.scope !2942, !noalias !2941 ; 2 uses
  %.idx22.i.i = mul i64 %.val, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx22.i.i
  %i.ab = load <4 x float>, ptr %i.aa, align 1, !tbaa !222, !alias.scope !2942, !noalias !2941 ; 2 uses
  %.idx23.i.i = mul i64 %.val, 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx23.i.i
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !222, !alias.scope !2942, !noalias !2941 ; 2 uses
  %.idx24.i.i = mul i64 %.val, 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx24.i.i
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !222, !alias.scope !2942, !noalias !2941
  %i.ag = fadd <4 x float> %i.r, %i.v             ; 2 uses
  %i.ah = fsub <4 x float> %i.r, %i.v             ; 2 uses
  %i.ai = fadd <4 x float> %i.t, %i.x             ; 2 uses
  %i.aj = fmul <4 x float> %i.t, splat (float f0x3FB504F3) ; 2 uses
  %i.ak = fadd <4 x float> %i.aj, %i.ai
  %i.al = fsub <4 x float> %i.aj, %i.ai
  %i.am = fmul <4 x float> %i.ak, splat (float f0x3F0A8BD4) ; 2 uses
  %i.an = fadd <4 x float> %i.ag, %i.am           ; 3 uses
  %i.ao = fsub <4 x float> %i.ag, %i.am           ; 3 uses
  %i.ap = fmul <4 x float> %i.al, splat (float f0x3FA73D75) ; 2 uses
  %i.aq = fadd <4 x float> %i.ah, %i.ap           ; 3 uses
  %i.ar = fsub <4 x float> %i.ah, %i.ap           ; 3 uses
  %i.as = fadd <4 x float> %i.ad, %i.af
  %i.at = fadd <4 x float> %i.ab, %i.ad           ; 2 uses
  %i.au = fadd <4 x float> %i.z, %i.ab            ; 2 uses
  %i.av = fmul <4 x float> %i.z, splat (float f0x3FB504F3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  %i.aw = fadd <4 x float> %i.av, %i.at           ; 3 uses
  %i.ax = fsub <4 x float> %i.av, %i.at           ; 3 uses
  %i.ay = fadd <4 x float> %i.au, %i.as           ; 2 uses
  %i.az = fmul <4 x float> %i.au, splat (float f0x3FB504F3) ; 2 uses
  %i.ba = fadd <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bb = fsub <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bc = fmul <4 x float> %i.ba, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bd = fadd <4 x float> %i.aw, %i.bc           ; 2 uses
  %i.be = fsub <4 x float> %i.aw, %i.bc           ; 2 uses
  %i.bf = fmul <4 x float> %i.bb, splat (float f0x3FA73D75) ; 2 uses
  %i.bg = fadd <4 x float> %i.ax, %i.bf           ; 2 uses
  %i.bh = fsub <4 x float> %i.ax, %i.bf           ; 2 uses
  %i.bi = fmul <4 x float> %i.bd, splat (float f0x3F0281F7) ; 2 uses
  %i.bj = fadd <4 x float> %i.an, %i.bi
  %i.bk = fsub <4 x float> %i.an, %i.bi
  store <4 x float> %i.bj, ptr %i.q, align 1, !tbaa !222, !alias.scope !2944, !noalias !2945
  %.idx.i12.i = mul i64 %.val9, 28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i12.i
  store <4 x float> %i.bk, ptr %i.bl, align 1, !tbaa !222, !alias.scope !2946, !noalias !2945
  %i.bm = fmul <4 x float> %i.bg, splat (float f0x3F19F1BD) ; 2 uses
  %i.bn = fadd <4 x float> %i.aq, %i.bm
  %i.bo = fsub <4 x float> %i.aq, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.val9
  store <4 x float> %i.bn, ptr %i.bp, align 1, !tbaa !222, !alias.scope !2944, !noalias !2945
  %.idx29.i.i = mul i64 %.val9, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx29.i.i
  store <4 x float> %i.bo, ptr %i.bq, align 1, !tbaa !222, !alias.scope !2946, !noalias !2945
  %i.br = fmul <4 x float> %i.bh, splat (float f0x3F6664D7) ; 2 uses
  %i.bs = fadd <4 x float> %i.ar, %i.br
  %i.bt = fsub <4 x float> %i.ar, %i.br
  %.idx30.i.i = shl i64 %.val9, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx30.i.i
  store <4 x float> %i.bs, ptr %i.bu, align 1, !tbaa !222, !alias.scope !2944, !noalias !2945
  %.idx31.i.i = mul i64 %.val9, 20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx31.i.i
  store <4 x float> %i.bt, ptr %i.bv, align 1, !tbaa !222, !alias.scope !2946, !noalias !2945
  %i.bw = fmul <4 x float> %i.be, splat (float f0x402406CF) ; 2 uses
  %i.bx = fadd <4 x float> %i.ao, %i.bw
  %i.by = fsub <4 x float> %i.ao, %i.bw
  %.idx32.i.i = mul i64 %.val9, 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx32.i.i
  store <4 x float> %i.bx, ptr %i.bz, align 1, !tbaa !222, !alias.scope !2944, !noalias !2945
  %.idx33.i.i = shl i64 %.val9, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx33.i.i
  store <4 x float> %i.by, ptr %i.ca, align 1, !tbaa !222, !alias.scope !2946, !noalias !2945
  %i.cb = add nuw i64 %.010, 4                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %2
  br i1 %i.cc, label %bb.c, label %._crit_edge, !llvm.loop !2928
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_19TransposeILm16ELm8EvE3RunINS1_7DCTFromENS1_5DCTToEEEvRKT_RKT0_(i64 %.0.val, ptr nofree readonly captures(none) %.8.val, i64 %.0.val1, ptr nofree writeonly captures(none) initializes((0, 64)) %.8.val3) unnamed_addr #30 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %.8.val, i64 %.0.val ; 2 uses
  %.idx = shl i64 %.0.val, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx ; 2 uses
  %.idx19 = mul i64 %.0.val, 12
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx19 ; 2 uses
  %i.d = load <4 x float>, ptr %.8.val, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.e = load <4 x float>, ptr %i.a, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.f = load <4 x float>, ptr %i.b, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.g = load <4 x float>, ptr %i.c, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.h = shufflevector <4 x float> %i.d, <4 x float> %i.f, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.i = shufflevector <4 x float> %i.e, <4 x float> %i.g, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = shufflevector <4 x float> %i.d, <4 x float> %i.f, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.k = shufflevector <4 x float> %i.e, <4 x float> %i.g, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.l = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.m = shufflevector <4 x float> %i.h, <4 x float> %i.i, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.n = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.o = shufflevector <4 x float> %i.j, <4 x float> %i.k, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.l, ptr %.8.val3, align 1, !tbaa !222, !alias.scope !2967
  %gep9 = getelementptr [4 x i8], ptr %.8.val3, i64 %.0.val1
  store <4 x float> %i.m, ptr %gep9, align 1, !tbaa !222, !alias.scope !2968
  %i.p = shl i64 %.0.val1, 1                      ; 4 uses
  %gep11 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.p
  store <4 x float> %i.n, ptr %gep11, align 1, !tbaa !222, !alias.scope !2969
  %i.q = mul i64 %.0.val1, 3                      ; 4 uses
  %gep13 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.q
  store <4 x float> %i.o, ptr %gep13, align 1, !tbaa !222, !alias.scope !2970
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.s = load <4 x float>, ptr %i.r, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.z = shufflevector <4 x float> %i.s, <4 x float> %i.w, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = shufflevector <4 x float> %i.u, <4 x float> %i.y, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.s, <4 x float> %i.w, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.u, <4 x float> %i.y, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ae = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ag = shufflevector <4 x float> %i.ab, <4 x float> %i.ac, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ah = shl i64 %.0.val1, 2                     ; 4 uses
  %gep.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ah
  store <4 x float> %i.ad, ptr %gep.1, align 1, !tbaa !222, !alias.scope !2967
  %i.ai = mul i64 %.0.val1, 5                     ; 4 uses
  %gep9.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ai
  store <4 x float> %i.ae, ptr %gep9.1, align 1, !tbaa !222, !alias.scope !2968
  %i.aj = mul i64 %.0.val1, 6                     ; 4 uses
  %gep11.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.aj
  store <4 x float> %i.af, ptr %gep11.1, align 1, !tbaa !222, !alias.scope !2969
  %i.ak = mul i64 %.0.val1, 7                     ; 4 uses
  %gep13.1 = getelementptr [4 x i8], ptr %.8.val3, i64 %i.ak
  store <4 x float> %i.ag, ptr %gep13.1, align 1, !tbaa !222, !alias.scope !2970
  %.idx20 = shl i64 %.0.val, 4
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx20 ; 2 uses
  %.idx21 = mul i64 %.0.val, 20
  %i.am = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx21 ; 2 uses
  %.idx22 = mul i64 %.0.val, 24
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx22 ; 2 uses
  %.idx23 = mul i64 %.0.val, 28
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx23 ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %.8.val3, i64 16 ; 8 uses
  %i.ap = load <4 x float>, ptr %i.al, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.aq = load <4 x float>, ptr %i.am, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.ar = load <4 x float>, ptr %i.an, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.as = load <4 x float>, ptr %i.ao, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.av = shufflevector <4 x float> %i.ap, <4 x float> %i.ar, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> %i.as, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ay = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.az = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ba = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ax, ptr %invariant.gep.1, align 1, !tbaa !222, !alias.scope !2967
  %gep9.116 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %.0.val1
  store <4 x float> %i.ay, ptr %gep9.116, align 1, !tbaa !222, !alias.scope !2968
  %gep11.117 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.p
  store <4 x float> %i.az, ptr %gep11.117, align 1, !tbaa !222, !alias.scope !2969
  %gep13.118 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.q
  store <4 x float> %i.ba, ptr %gep13.118, align 1, !tbaa !222, !alias.scope !2970
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bg = load <4 x float>, ptr %i.bf, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bi = load <4 x float>, ptr %i.bh, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.bj = shufflevector <4 x float> %i.bc, <4 x float> %i.bg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.be, <4 x float> %i.bi, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bc, <4 x float> %i.bg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bm = shufflevector <4 x float> %i.be, <4 x float> %i.bi, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bn = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bo = shufflevector <4 x float> %i.bj, <4 x float> %i.bk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bp = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bq = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ah
  store <4 x float> %i.bn, ptr %gep.1.1, align 1, !tbaa !222, !alias.scope !2967
  %gep9.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ai
  store <4 x float> %i.bo, ptr %gep9.1.1, align 1, !tbaa !222, !alias.scope !2968
  %gep11.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.aj
  store <4 x float> %i.bp, ptr %gep11.1.1, align 1, !tbaa !222, !alias.scope !2969
  %gep13.1.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.ak
  store <4 x float> %i.bq, ptr %gep13.1.1, align 1, !tbaa !222, !alias.scope !2970
  %.idx24 = shl i64 %.0.val, 5
  %i.br = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx24 ; 2 uses
  %.idx25 = mul i64 %.0.val, 36
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx25 ; 2 uses
  %.idx26 = mul i64 %.0.val, 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx26 ; 2 uses
  %.idx27 = mul i64 %.0.val, 44
  %i.bu = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx27 ; 2 uses
  %invariant.gep.2 = getelementptr i8, ptr %.8.val3, i64 32 ; 8 uses
  %i.bv = load <4 x float>, ptr %i.br, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.bw = load <4 x float>, ptr %i.bs, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.bx = load <4 x float>, ptr %i.bt, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bu, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.bz = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ca = shufflevector <4 x float> %i.bw, <4 x float> %i.by, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cb = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bw, <4 x float> %i.by, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cd = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ce = shufflevector <4 x float> %i.bz, <4 x float> %i.ca, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cf = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cg = shufflevector <4 x float> %i.cb, <4 x float> %i.cc, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.cd, ptr %invariant.gep.2, align 1, !tbaa !222, !alias.scope !2967
  %gep9.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %.0.val1
  store <4 x float> %i.ce, ptr %gep9.2, align 1, !tbaa !222, !alias.scope !2968
  %gep11.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.p
  store <4 x float> %i.cf, ptr %gep11.2, align 1, !tbaa !222, !alias.scope !2969
  %gep13.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.q
  store <4 x float> %i.cg, ptr %gep13.2, align 1, !tbaa !222, !alias.scope !2970
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cm = load <4 x float>, ptr %i.cl, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.co = load <4 x float>, ptr %i.cn, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.cp = shufflevector <4 x float> %i.ci, <4 x float> %i.cm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cq = shufflevector <4 x float> %i.ck, <4 x float> %i.co, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cr = shufflevector <4 x float> %i.ci, <4 x float> %i.cm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cs = shufflevector <4 x float> %i.ck, <4 x float> %i.co, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cu = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.cw = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ah
  store <4 x float> %i.ct, ptr %gep.1.2, align 1, !tbaa !222, !alias.scope !2967
  %gep9.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ai
  store <4 x float> %i.cu, ptr %gep9.1.2, align 1, !tbaa !222, !alias.scope !2968
  %gep11.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.aj
  store <4 x float> %i.cv, ptr %gep11.1.2, align 1, !tbaa !222, !alias.scope !2969
  %gep13.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.ak
  store <4 x float> %i.cw, ptr %gep13.1.2, align 1, !tbaa !222, !alias.scope !2970
  %.idx28 = mul i64 %.0.val, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx28 ; 2 uses
  %.idx29 = mul i64 %.0.val, 52
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx29 ; 2 uses
  %.idx30 = mul i64 %.0.val, 56
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx30 ; 2 uses
  %.idx31 = mul i64 %.0.val, 60
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx31 ; 2 uses
  %invariant.gep.3 = getelementptr i8, ptr %.8.val3, i64 48 ; 8 uses
  %i.db = load <4 x float>, ptr %i.cx, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.dc = load <4 x float>, ptr %i.cy, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.dd = load <4 x float>, ptr %i.cz, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.de = load <4 x float>, ptr %i.da, align 1, !tbaa !222, !alias.scope !2966 ; 2 uses
  %i.df = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.db, <4 x float> %i.dd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.di = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dk = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dl = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dm = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.dj, ptr %invariant.gep.3, align 1, !tbaa !222, !alias.scope !2967
  %gep9.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %.0.val1
  store <4 x float> %i.dk, ptr %gep9.3, align 1, !tbaa !222, !alias.scope !2968
  %gep11.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.p
  store <4 x float> %i.dl, ptr %gep11.3, align 1, !tbaa !222, !alias.scope !2969
  %gep13.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.q
  store <4 x float> %i.dm, ptr %gep13.3, align 1, !tbaa !222, !alias.scope !2970
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.do = load <4 x float>, ptr %i.dn, align 1, !tbaa !222, !alias.scope !2963 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dq = load <4 x float>, ptr %i.dp, align 1, !tbaa !222, !alias.scope !2964 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ds = load <4 x float>, ptr %i.dr, align 1, !tbaa !222, !alias.scope !2965 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
end_hunk_4
begin_hunk_5_@_ZN3jxl6N_SSE412_GLOBAL__N_112DCT1DWrapperILm4ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf:bb.a
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3674
  %i.ae = load i64, ptr %1, align 8, !tbaa !269, !noalias !3674
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.011
  store <4 x float> %i.ac, ptr %i.ag, align 1, !tbaa !222, !noalias !3674
  %i.ah = fmul <4 x float> %i.q, splat (float 2.500000e-01)
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3674
  %i.aj = load i64, ptr %1, align 8, !tbaa !269, !noalias !3674
  %.idx.i = shl i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.011
  store <4 x float> %i.ah, ptr %i.al, align 1, !tbaa !222, !noalias !3674
  %i.am = fmul <4 x float> %i.w, splat (float 2.500000e-01)
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3674
  %i.ao = load i64, ptr %1, align 8, !tbaa !269, !noalias !3674
  %.idx9.i = mul i64 %i.ao, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx9.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.011
  store <4 x float> %i.am, ptr %i.aq, align 1, !tbaa !222, !noalias !3674
  %i.ar = add nuw i64 %.011, 4                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %2
  br i1 %i.as, label %bb.c, label %._crit_edge, !llvm.loop !3668
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_112DCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #13 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <4 x float> %i.aj, ptr %3, align 16, !tbaa !222
  store <4 x float> %i.bo, ptr %i.c, align 16, !tbaa !222
  store <4 x float> %i.as, ptr %i.d, align 16, !tbaa !222
  store <4 x float> %i.bp, ptr %i.e, align 16, !tbaa !222
  store <4 x float> %i.ak, ptr %i.f, align 16, !tbaa !222
  store <4 x float> %i.bq, ptr %i.g, align 16, !tbaa !222
  store <4 x float> %i.aq, ptr %i.h, align 16, !tbaa !222
  store <4 x float> %i.bk, ptr %i.i, align 16, !tbaa !222
  store <4 x float> %i.aj, ptr %i.j, align 16, !tbaa !222, !alias.scope !3703, !noalias !3704
  store <4 x float> %i.ak, ptr %i.l, align 16, !tbaa !222, !alias.scope !3703, !noalias !3704
  store <4 x float> %i.as, ptr %i.k, align 16, !tbaa !222, !alias.scope !3703, !noalias !3704
  store <4 x float> %i.aq, ptr %i.m, align 16, !tbaa !222, !alias.scope !3703, !noalias !3704
  store <4 x float> %i.bd, ptr %i.n, align 16, !tbaa !222, !alias.scope !3705, !noalias !3706
  store <4 x float> %i.be, ptr %i.o, align 16, !tbaa !222, !alias.scope !3705, !noalias !3706
  store <4 x float> %i.bk, ptr %i.q, align 16, !tbaa !222, !alias.scope !3707, !noalias !3706
  store <4 x float> %i.bm, ptr %i.p, align 16, !tbaa !222, !alias.scope !3708, !noalias !3706
  store <4 x float> %i.bk, ptr %i.u, align 16, !tbaa !222, !alias.scope !3709, !noalias !3710
  store <4 x float> %i.bo, ptr %i.r, align 16, !tbaa !222, !alias.scope !3711, !noalias !3712
  store <4 x float> %i.bp, ptr %i.s, align 16, !tbaa !222, !alias.scope !3711, !noalias !3712
  store <4 x float> %i.bq, ptr %i.t, align 16, !tbaa !222, !alias.scope !3711, !noalias !3712
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.c ] ; 10 uses
  %.val = load i64, ptr %0, align 8               ; 7 uses
  %.val10 = load ptr, ptr %i.a, align 8
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 8 uses
  %i.v = load <4 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.w = load <4 x float>, ptr %gep.1.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.x = load <4 x float>, ptr %gep.2.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.y = load <4 x float>, ptr %gep.3.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.z = load <4 x float>, ptr %gep.4.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.aa = load <4 x float>, ptr %gep.5.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.ab = load <4 x float>, ptr %gep.6.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.ac = load <4 x float>, ptr %gep.7.i, align 1, !tbaa !222, !noalias !3713 ; 2 uses
  %i.ad = fadd <4 x float> %i.v, %i.ac            ; 2 uses
  %i.ae = fadd <4 x float> %i.w, %i.ab            ; 2 uses
  %i.af = fadd <4 x float> %i.x, %i.aa            ; 2 uses
  %i.ag = fadd <4 x float> %i.y, %i.z             ; 2 uses
  %i.ah = fadd <4 x float> %i.ag, %i.ad           ; 2 uses
  %i.ai = fadd <4 x float> %i.af, %i.ae           ; 2 uses
  %i.aj = fadd <4 x float> %i.ai, %i.ah           ; 3 uses
  %i.ak = fsub <4 x float> %i.ah, %i.ai           ; 3 uses
  %i.al = fsub <4 x float> %i.ad, %i.ag
  %i.am = fsub <4 x float> %i.ae, %i.af
  %i.an = fmul <4 x float> %i.al, splat (float f0x3F0A8BD4) ; 2 uses
  %i.ao = fmul <4 x float> %i.am, splat (float f0x3FA73D75) ; 2 uses
  %i.ap = fadd <4 x float> %i.ao, %i.an
  %i.aq = fsub <4 x float> %i.an, %i.ao           ; 4 uses
  %i.ar = fmul <4 x float> %i.ap, splat (float f0x3FB504F3)
  %i.as = fadd <4 x float> %i.aq, %i.ar           ; 3 uses
  %i.at = fsub <4 x float> %i.v, %i.ac
  %i.au = fsub <4 x float> %i.w, %i.ab
  %i.av = fsub <4 x float> %i.x, %i.aa
  %i.aw = fsub <4 x float> %i.y, %i.z
  %i.ax = fmul <4 x float> %i.at, splat (float f0x3F0281F7) ; 2 uses
  %i.ay = fmul <4 x float> %i.au, splat (float f0x3F19F1BD) ; 2 uses
  %i.az = fmul <4 x float> %i.av, splat (float f0x3F6664D7) ; 2 uses
  %i.ba = fmul <4 x float> %i.aw, splat (float f0x402406CF) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  %i.bb = fadd <4 x float> %i.ba, %i.ax           ; 2 uses
  %i.bc = fadd <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bd = fadd <4 x float> %i.bc, %i.bb           ; 2 uses
  %i.be = fsub <4 x float> %i.bb, %i.bc           ; 3 uses
  %i.bf = fsub <4 x float> %i.ax, %i.ba
  %i.bg = fsub <4 x float> %i.ay, %i.az
  %i.bh = fmul <4 x float> %i.bf, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bi = fmul <4 x float> %i.bg, splat (float f0x3FA73D75) ; 2 uses
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fsub <4 x float> %i.bh, %i.bi           ; 6 uses
  %i.bl = fmul <4 x float> %i.bj, splat (float f0x3FB504F3)
  %i.bm = fadd <4 x float> %i.bk, %i.bl           ; 3 uses
  %i.bn = fmul <4 x float> %i.bd, splat (float f0x3FB504F3)
  %i.bo = fadd <4 x float> %i.bn, %i.bm           ; 3 uses
  %i.bp = fadd <4 x float> %i.be, %i.bm           ; 3 uses
  %i.bq = fadd <4 x float> %i.be, %i.bk           ; 3 uses
  %i.br = fmul <4 x float> %i.aj, splat (float 1.250000e-01)
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.011
  store <4 x float> %i.br, ptr %i.bt, align 1, !tbaa !222, !noalias !3716
  %i.bu = fmul <4 x float> %i.bo, splat (float 1.250000e-01)
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.bw = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.011
  store <4 x float> %i.bu, ptr %i.by, align 1, !tbaa !222, !noalias !3716
  %i.bz = fmul <4 x float> %i.as, splat (float 1.250000e-01)
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.cb = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx.i = shl i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.011
  store <4 x float> %i.bz, ptr %i.cd, align 1, !tbaa !222, !noalias !3716
  %i.ce = fmul <4 x float> %i.bp, splat (float 1.250000e-01)
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.cg = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx9.i = mul i64 %i.cg, 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx9.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011
  store <4 x float> %i.ce, ptr %i.ci, align 1, !tbaa !222, !noalias !3716
  %i.cj = fmul <4 x float> %i.ak, splat (float 1.250000e-01)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.cl = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx10.i = shl i64 %i.cl, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx10.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.011
  store <4 x float> %i.cj, ptr %i.cn, align 1, !tbaa !222, !noalias !3716
  %i.co = fmul <4 x float> %i.bq, splat (float 1.250000e-01)
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.cq = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx11.i = mul i64 %i.cq, 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx11.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.011
  store <4 x float> %i.co, ptr %i.cs, align 1, !tbaa !222, !noalias !3716
  %i.ct = fmul <4 x float> %i.aq, splat (float 1.250000e-01)
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.cv = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx12.i = mul i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx12.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.011
  store <4 x float> %i.ct, ptr %i.cx, align 1, !tbaa !222, !noalias !3716
  %i.cy = fmul <4 x float> %i.bk, splat (float 1.250000e-01)
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !270, !noalias !3716
  %i.da = load i64, ptr %1, align 8, !tbaa !269, !noalias !3716
  %.idx13.i = mul i64 %i.da, 28
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx13.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.011
  store <4 x float> %i.cy, ptr %i.dc, align 1, !tbaa !222, !noalias !3716
  %i.dd = add nuw i64 %.011, 4                    ; 2 uses
  %i.de = icmp ult i64 %i.dd, %2
  br i1 %i.de, label %bb.c, label %._crit_edge, !llvm.loop !3702
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE412_GLOBAL__N_112DCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef captures(none) %3) #13 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.b ] ; 18 uses
  %.val = load i64, ptr %0, align 8               ; 15 uses
  %.val10 = load ptr, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3722)
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 16 uses
  %i.s = load <4 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.s, ptr %3, align 16, !tbaa !222, !alias.scope !3722
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.t = load <4 x float>, ptr %gep.1.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.t, ptr %i.b, align 16, !tbaa !222, !alias.scope !3722
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.u = load <4 x float>, ptr %gep.2.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.u, ptr %i.c, align 16, !tbaa !222, !alias.scope !3722
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.v = load <4 x float>, ptr %gep.3.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.v, ptr %i.d, align 16, !tbaa !222, !alias.scope !3722
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.w = load <4 x float>, ptr %gep.4.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.w, ptr %i.e, align 16, !tbaa !222, !alias.scope !3722
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.x = load <4 x float>, ptr %gep.5.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.x, ptr %i.f, align 16, !tbaa !222, !alias.scope !3722
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.y = load <4 x float>, ptr %gep.6.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.y, ptr %i.g, align 16, !tbaa !222, !alias.scope !3722
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.z = load <4 x float>, ptr %gep.7.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.z, ptr %i.h, align 16, !tbaa !222, !alias.scope !3722
  %gep.8.idx.i = shl i64 %.val, 5
  %gep.8.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.8.idx.i
  %i.aa = load <4 x float>, ptr %gep.8.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.aa, ptr %i.i, align 16, !tbaa !222, !alias.scope !3722
  %gep.9.idx.i = mul i64 %.val, 36
  %gep.9.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.9.idx.i
  %i.ab = load <4 x float>, ptr %gep.9.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ab, ptr %i.j, align 16, !tbaa !222, !alias.scope !3722
  %gep.10.idx.i = mul i64 %.val, 40
  %gep.10.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.10.idx.i
  %i.ac = load <4 x float>, ptr %gep.10.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ac, ptr %i.k, align 16, !tbaa !222, !alias.scope !3722
  %gep.11.idx.i = mul i64 %.val, 44
  %gep.11.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.11.idx.i
  %i.ad = load <4 x float>, ptr %gep.11.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ad, ptr %i.l, align 16, !tbaa !222, !alias.scope !3722
  %gep.12.idx.i = mul i64 %.val, 48
  %gep.12.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.12.idx.i
  %i.ae = load <4 x float>, ptr %gep.12.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ae, ptr %i.m, align 16, !tbaa !222, !alias.scope !3722
  %gep.13.idx.i = mul i64 %.val, 52
  %gep.13.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.13.idx.i
  %i.af = load <4 x float>, ptr %gep.13.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.af, ptr %i.n, align 16, !tbaa !222, !alias.scope !3722
  %gep.14.idx.i = mul i64 %.val, 56
  %gep.14.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.14.idx.i
  %i.ag = load <4 x float>, ptr %gep.14.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ag, ptr %i.o, align 16, !tbaa !222, !alias.scope !3722
  %gep.15.idx.i = mul i64 %.val, 60
  %gep.15.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.15.idx.i
  %i.ah = load <4 x float>, ptr %gep.15.i, align 1, !tbaa !222, !noalias !3722
  store <4 x float> %i.ah, ptr %i.p, align 16, !tbaa !222, !alias.scope !3722
  tail call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_19DCT1DImplILm16ELm4EEclEPfS4_(ptr noundef nonnull %3, ptr noundef nonnull %i.q) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3723)
  %i.ai = load <4 x float>, ptr %3, align 16, !tbaa !222, !alias.scope !3723
  %i.aj = fmul <4 x float> %i.ai, splat (float 6.250000e-02)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.011
  store <4 x float> %i.aj, ptr %i.al, align 1, !tbaa !222, !noalias !3723
  %i.am = load <4 x float>, ptr %i.b, align 16, !tbaa !222, !alias.scope !3723
  %i.an = fmul <4 x float> %i.am, splat (float 6.250000e-02)
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.ap = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.011
  store <4 x float> %i.an, ptr %i.ar, align 1, !tbaa !222, !noalias !3723
  %i.as = load <4 x float>, ptr %i.c, align 16, !tbaa !222, !alias.scope !3723
  %i.at = fmul <4 x float> %i.as, splat (float 6.250000e-02)
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.av = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx.i = shl i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.011
  store <4 x float> %i.at, ptr %i.ax, align 1, !tbaa !222, !noalias !3723
  %i.ay = load <4 x float>, ptr %i.d, align 16, !tbaa !222, !alias.scope !3723
  %i.az = fmul <4 x float> %i.ay, splat (float 6.250000e-02)
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.bb = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx9.i = mul i64 %i.bb, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx9.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011
  store <4 x float> %i.az, ptr %i.bd, align 1, !tbaa !222, !noalias !3723
  %i.be = load <4 x float>, ptr %i.e, align 16, !tbaa !222, !alias.scope !3723
  %i.bf = fmul <4 x float> %i.be, splat (float 6.250000e-02)
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.bh = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx10.i = shl i64 %i.bh, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx10.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.011
  store <4 x float> %i.bf, ptr %i.bj, align 1, !tbaa !222, !noalias !3723
  %i.bk = load <4 x float>, ptr %i.f, align 16, !tbaa !222, !alias.scope !3723
  %i.bl = fmul <4 x float> %i.bk, splat (float 6.250000e-02)
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.bn = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx11.i = mul i64 %i.bn, 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx11.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.011
  store <4 x float> %i.bl, ptr %i.bp, align 1, !tbaa !222, !noalias !3723
  %i.bq = load <4 x float>, ptr %i.g, align 16, !tbaa !222, !alias.scope !3723
  %i.br = fmul <4 x float> %i.bq, splat (float 6.250000e-02)
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.bt = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx12.i = mul i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx12.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.011
  store <4 x float> %i.br, ptr %i.bv, align 1, !tbaa !222, !noalias !3723
  %i.bw = load <4 x float>, ptr %i.h, align 16, !tbaa !222, !alias.scope !3723
  %i.bx = fmul <4 x float> %i.bw, splat (float 6.250000e-02)
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.bz = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx13.i = mul i64 %i.bz, 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx13.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.011
  store <4 x float> %i.bx, ptr %i.cb, align 1, !tbaa !222, !noalias !3723
  %i.cc = load <4 x float>, ptr %i.i, align 16, !tbaa !222, !alias.scope !3723
  %i.cd = fmul <4 x float> %i.cc, splat (float 6.250000e-02)
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.cf = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx14.i = shl i64 %i.cf, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx14.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.011
  store <4 x float> %i.cd, ptr %i.ch, align 1, !tbaa !222, !noalias !3723
  %i.ci = load <4 x float>, ptr %i.j, align 16, !tbaa !222, !alias.scope !3723
  %i.cj = fmul <4 x float> %i.ci, splat (float 6.250000e-02)
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.cl = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx15.i = mul i64 %i.cl, 36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx15.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.011
  store <4 x float> %i.cj, ptr %i.cn, align 1, !tbaa !222, !noalias !3723
  %i.co = load <4 x float>, ptr %i.k, align 16, !tbaa !222, !alias.scope !3723
  %i.cp = fmul <4 x float> %i.co, splat (float 6.250000e-02)
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.cr = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx16.i = mul i64 %i.cr, 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx16.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.011
  store <4 x float> %i.cp, ptr %i.ct, align 1, !tbaa !222, !noalias !3723
  %i.cu = load <4 x float>, ptr %i.l, align 16, !tbaa !222, !alias.scope !3723
  %i.cv = fmul <4 x float> %i.cu, splat (float 6.250000e-02)
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.cx = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx17.i = mul i64 %i.cx, 44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx17.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.011
  store <4 x float> %i.cv, ptr %i.cz, align 1, !tbaa !222, !noalias !3723
  %i.da = load <4 x float>, ptr %i.m, align 16, !tbaa !222, !alias.scope !3723
  %i.db = fmul <4 x float> %i.da, splat (float 6.250000e-02)
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !270, !noalias !3723
  %i.dd = load i64, ptr %1, align 8, !tbaa !269, !noalias !3723
  %.idx18.i = mul i64 %i.dd, 48
end_hunk_5
begin_hunk_6_@_ZN3jxl6N_AVX212_GLOBAL__N_19DCT1DImplILm16ELm8EEclEPfS4_:bb.a
  %i.fd = fadd <8 x float> %i.dw, %i.ey           ; 2 uses
  store <8 x float> %i.fd, ptr %i.cy, align 32, !tbaa !222, !alias.scope !4400
  %i.fe = fadd <8 x float> %i.dw, %i.ez           ; 2 uses
  store <8 x float> %i.fe, ptr %i.da, align 32, !tbaa !222, !alias.scope !4400
  %i.ff = fadd <8 x float> %i.ec, %i.ez           ; 2 uses
  store <8 x float> %i.ff, ptr %i.dc, align 32, !tbaa !222, !alias.scope !4400
  %i.fg = fadd <8 x float> %i.ec, %i.ev           ; 2 uses
  store <8 x float> %i.fg, ptr %i.de, align 32, !tbaa !222, !alias.scope !4400
  store <8 x float> %i.bg, ptr %0, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.co, ptr %i.l, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.bq, ptr %i.x, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.cp, ptr %i.aj, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.bh, ptr %i.a, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.cq, ptr %i.af, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.bp, ptr %i.t, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.cm, ptr %i.h, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fa, ptr %i.f, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fb, ptr %i.r, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fc, ptr %i.ad, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fd, ptr %i.ap, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fe, ptr %i.al, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.ff, ptr %i.z, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.fg, ptr %i.n, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  store <8 x float> %i.ev, ptr %i.c, align 32, !tbaa !222, !alias.scope !4401, !noalias !4402
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_AVX212_GLOBAL__N_112DCT1DWrapperILm8ELm8ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #23 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 544
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 480
  store <8 x float> %i.aj, ptr %3, align 32, !tbaa !222
  store <8 x float> %i.bl, ptr %i.c, align 32, !tbaa !222
  store <8 x float> %i.ar, ptr %i.d, align 32, !tbaa !222
  store <8 x float> %i.bm, ptr %i.e, align 32, !tbaa !222
  store <8 x float> %i.ak, ptr %i.f, align 32, !tbaa !222
  store <8 x float> %i.bn, ptr %i.g, align 32, !tbaa !222
  store <8 x float> %i.aq, ptr %i.h, align 32, !tbaa !222
  store <8 x float> %i.bj, ptr %i.i, align 32, !tbaa !222
  store <8 x float> %i.aj, ptr %i.j, align 32, !tbaa !222, !alias.scope !4431, !noalias !4432
  store <8 x float> %i.ak, ptr %i.l, align 32, !tbaa !222, !alias.scope !4431, !noalias !4432
  store <8 x float> %i.ar, ptr %i.k, align 32, !tbaa !222, !alias.scope !4431, !noalias !4432
  store <8 x float> %i.aq, ptr %i.m, align 32, !tbaa !222, !alias.scope !4431, !noalias !4432
  store <8 x float> %i.bc, ptr %i.n, align 32, !tbaa !222, !alias.scope !4433, !noalias !4434
  store <8 x float> %i.bd, ptr %i.o, align 32, !tbaa !222, !alias.scope !4433, !noalias !4434
  store <8 x float> %i.bj, ptr %i.q, align 32, !tbaa !222, !alias.scope !4435, !noalias !4434
  store <8 x float> %i.bk, ptr %i.p, align 32, !tbaa !222, !alias.scope !4436, !noalias !4434
  store <8 x float> %i.bj, ptr %i.u, align 32, !tbaa !222, !alias.scope !4437, !noalias !4438
  store <8 x float> %i.bl, ptr %i.r, align 32, !tbaa !222, !alias.scope !4439, !noalias !4440
  store <8 x float> %i.bm, ptr %i.s, align 32, !tbaa !222, !alias.scope !4439, !noalias !4440
  store <8 x float> %i.bn, ptr %i.t, align 32, !tbaa !222, !alias.scope !4439, !noalias !4440
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.da, %bb.c ] ; 10 uses
  %.val = load i64, ptr %0, align 8               ; 7 uses
  %.val10 = load ptr, ptr %i.a, align 8
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 8 uses
  %i.v = load <8 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.w = load <8 x float>, ptr %gep.1.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.x = load <8 x float>, ptr %gep.2.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.y = load <8 x float>, ptr %gep.3.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.z = load <8 x float>, ptr %gep.4.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.aa = load <8 x float>, ptr %gep.5.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.ab = load <8 x float>, ptr %gep.6.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.ac = load <8 x float>, ptr %gep.7.i, align 1, !tbaa !222, !noalias !4441 ; 2 uses
  %i.ad = fadd <8 x float> %i.v, %i.ac            ; 2 uses
  %i.ae = fadd <8 x float> %i.w, %i.ab            ; 2 uses
  %i.af = fadd <8 x float> %i.x, %i.aa            ; 2 uses
  %i.ag = fadd <8 x float> %i.y, %i.z             ; 2 uses
  %i.ah = fadd <8 x float> %i.ag, %i.ad           ; 2 uses
  %i.ai = fadd <8 x float> %i.af, %i.ae           ; 2 uses
  %i.aj = fadd <8 x float> %i.ai, %i.ah           ; 3 uses
  %i.ak = fsub <8 x float> %i.ah, %i.ai           ; 3 uses
  %i.al = fsub <8 x float> %i.ad, %i.ag
  %i.am = fsub <8 x float> %i.ae, %i.af
  %i.an = fmul <8 x float> %i.al, splat (float f0x3F0A8BD4) ; 2 uses
  %i.ao = fmul <8 x float> %i.am, splat (float f0x3FA73D75) ; 2 uses
  %i.ap = fadd <8 x float> %i.ao, %i.an
  %i.aq = fsub <8 x float> %i.an, %i.ao           ; 4 uses
  %i.ar = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ap, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.aq) ; 3 uses
  %i.as = fsub <8 x float> %i.v, %i.ac
  %i.at = fsub <8 x float> %i.w, %i.ab
  %i.au = fsub <8 x float> %i.x, %i.aa
  %i.av = fsub <8 x float> %i.y, %i.z
  %i.aw = fmul <8 x float> %i.as, splat (float f0x3F0281F7) ; 2 uses
  %i.ax = fmul <8 x float> %i.at, splat (float f0x3F19F1BD) ; 2 uses
  %i.ay = fmul <8 x float> %i.au, splat (float f0x3F6664D7) ; 2 uses
  %i.az = fmul <8 x float> %i.av, splat (float f0x402406CF) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4443)
  %i.ba = fadd <8 x float> %i.az, %i.aw           ; 2 uses
  %i.bb = fadd <8 x float> %i.ay, %i.ax           ; 2 uses
  %i.bc = fadd <8 x float> %i.bb, %i.ba           ; 2 uses
  %i.bd = fsub <8 x float> %i.ba, %i.bb           ; 3 uses
  %i.be = fsub <8 x float> %i.aw, %i.az
  %i.bf = fsub <8 x float> %i.ax, %i.ay
  %i.bg = fmul <8 x float> %i.be, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bh = fmul <8 x float> %i.bf, splat (float f0x3FA73D75) ; 2 uses
  %i.bi = fadd <8 x float> %i.bh, %i.bg
  %i.bj = fsub <8 x float> %i.bg, %i.bh           ; 6 uses
  %i.bk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bi, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.bj) ; 3 uses
  %i.bl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bc, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.bk) ; 3 uses
  %i.bm = fadd <8 x float> %i.bd, %i.bk           ; 3 uses
  %i.bn = fadd <8 x float> %i.bd, %i.bj           ; 3 uses
  %i.bo = fmul <8 x float> %i.aj, splat (float 1.250000e-01)
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.011
  store <8 x float> %i.bo, ptr %i.bq, align 1, !tbaa !222, !noalias !4444
  %i.br = fmul <8 x float> %i.bl, splat (float 1.250000e-01)
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.bt = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.011
  store <8 x float> %i.br, ptr %i.bv, align 1, !tbaa !222, !noalias !4444
  %i.bw = fmul <8 x float> %i.ar, splat (float 1.250000e-01)
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.by = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx.i = shl i64 %i.by, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.011
  store <8 x float> %i.bw, ptr %i.ca, align 1, !tbaa !222, !noalias !4444
  %i.cb = fmul <8 x float> %i.bm, splat (float 1.250000e-01)
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.cd = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx9.i = mul i64 %i.cd, 12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx9.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.011
  store <8 x float> %i.cb, ptr %i.cf, align 1, !tbaa !222, !noalias !4444
  %i.cg = fmul <8 x float> %i.ak, splat (float 1.250000e-01)
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.ci = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx10.i = shl i64 %i.ci, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx10.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.011
  store <8 x float> %i.cg, ptr %i.ck, align 1, !tbaa !222, !noalias !4444
  %i.cl = fmul <8 x float> %i.bn, splat (float 1.250000e-01)
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.cn = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx11.i = mul i64 %i.cn, 20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx11.i
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.011
  store <8 x float> %i.cl, ptr %i.cp, align 1, !tbaa !222, !noalias !4444
  %i.cq = fmul <8 x float> %i.aq, splat (float 1.250000e-01)
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.cs = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx12.i = mul i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx12.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.011
  store <8 x float> %i.cq, ptr %i.cu, align 1, !tbaa !222, !noalias !4444
  %i.cv = fmul <8 x float> %i.bj, splat (float 1.250000e-01)
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !273, !noalias !4444
  %i.cx = load i64, ptr %1, align 8, !tbaa !272, !noalias !4444
  %.idx13.i = mul i64 %i.cx, 28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx13.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.011
  store <8 x float> %i.cv, ptr %i.cz, align 1, !tbaa !222, !noalias !4444
  %i.da = add nuw i64 %.011, 8                    ; 2 uses
  %i.db = icmp ult i64 %i.da, %2
  br i1 %i.db, label %bb.c, label %._crit_edge, !llvm.loop !4430
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_AVX212_GLOBAL__N_112DCT1DWrapperILm16ELm8ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef captures(none) %3) #23 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 288 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 352 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 448 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.b ] ; 18 uses
  %.val = load i64, ptr %0, align 8               ; 15 uses
  %.val10 = load ptr, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4450)
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 16 uses
  %i.s = load <8 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.s, ptr %3, align 32, !tbaa !222, !alias.scope !4450
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.t = load <8 x float>, ptr %gep.1.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.t, ptr %i.b, align 32, !tbaa !222, !alias.scope !4450
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.u = load <8 x float>, ptr %gep.2.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.u, ptr %i.c, align 32, !tbaa !222, !alias.scope !4450
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.v = load <8 x float>, ptr %gep.3.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.v, ptr %i.d, align 32, !tbaa !222, !alias.scope !4450
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.w = load <8 x float>, ptr %gep.4.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.w, ptr %i.e, align 32, !tbaa !222, !alias.scope !4450
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.x = load <8 x float>, ptr %gep.5.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.x, ptr %i.f, align 32, !tbaa !222, !alias.scope !4450
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.y = load <8 x float>, ptr %gep.6.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.y, ptr %i.g, align 32, !tbaa !222, !alias.scope !4450
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.z = load <8 x float>, ptr %gep.7.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.z, ptr %i.h, align 32, !tbaa !222, !alias.scope !4450
  %gep.8.idx.i = shl i64 %.val, 5
  %gep.8.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.8.idx.i
  %i.aa = load <8 x float>, ptr %gep.8.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.aa, ptr %i.i, align 32, !tbaa !222, !alias.scope !4450
  %gep.9.idx.i = mul i64 %.val, 36
  %gep.9.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.9.idx.i
  %i.ab = load <8 x float>, ptr %gep.9.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ab, ptr %i.j, align 32, !tbaa !222, !alias.scope !4450
  %gep.10.idx.i = mul i64 %.val, 40
  %gep.10.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.10.idx.i
  %i.ac = load <8 x float>, ptr %gep.10.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ac, ptr %i.k, align 32, !tbaa !222, !alias.scope !4450
  %gep.11.idx.i = mul i64 %.val, 44
  %gep.11.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.11.idx.i
  %i.ad = load <8 x float>, ptr %gep.11.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ad, ptr %i.l, align 32, !tbaa !222, !alias.scope !4450
  %gep.12.idx.i = mul i64 %.val, 48
  %gep.12.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.12.idx.i
  %i.ae = load <8 x float>, ptr %gep.12.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ae, ptr %i.m, align 32, !tbaa !222, !alias.scope !4450
  %gep.13.idx.i = mul i64 %.val, 52
  %gep.13.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.13.idx.i
  %i.af = load <8 x float>, ptr %gep.13.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.af, ptr %i.n, align 32, !tbaa !222, !alias.scope !4450
  %gep.14.idx.i = mul i64 %.val, 56
  %gep.14.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.14.idx.i
  %i.ag = load <8 x float>, ptr %gep.14.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ag, ptr %i.o, align 32, !tbaa !222, !alias.scope !4450
  %gep.15.idx.i = mul i64 %.val, 60
  %gep.15.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.15.idx.i
  %i.ah = load <8 x float>, ptr %gep.15.i, align 1, !tbaa !222, !noalias !4450
  store <8 x float> %i.ah, ptr %i.p, align 32, !tbaa !222, !alias.scope !4450
  tail call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_19DCT1DImplILm16ELm8EEclEPfS4_(ptr noundef nonnull %3, ptr noundef nonnull %i.q) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4451)
  %i.ai = load <8 x float>, ptr %3, align 32, !tbaa !222, !alias.scope !4451
  %i.aj = fmul <8 x float> %i.ai, splat (float 6.250000e-02)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.011
  store <8 x float> %i.aj, ptr %i.al, align 1, !tbaa !222, !noalias !4451
  %i.am = load <8 x float>, ptr %i.b, align 32, !tbaa !222, !alias.scope !4451
  %i.an = fmul <8 x float> %i.am, splat (float 6.250000e-02)
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.ap = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.011
  store <8 x float> %i.an, ptr %i.ar, align 1, !tbaa !222, !noalias !4451
  %i.as = load <8 x float>, ptr %i.c, align 32, !tbaa !222, !alias.scope !4451
  %i.at = fmul <8 x float> %i.as, splat (float 6.250000e-02)
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.av = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx.i = shl i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.011
  store <8 x float> %i.at, ptr %i.ax, align 1, !tbaa !222, !noalias !4451
  %i.ay = load <8 x float>, ptr %i.d, align 32, !tbaa !222, !alias.scope !4451
  %i.az = fmul <8 x float> %i.ay, splat (float 6.250000e-02)
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.bb = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx9.i = mul i64 %i.bb, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx9.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011
  store <8 x float> %i.az, ptr %i.bd, align 1, !tbaa !222, !noalias !4451
  %i.be = load <8 x float>, ptr %i.e, align 32, !tbaa !222, !alias.scope !4451
  %i.bf = fmul <8 x float> %i.be, splat (float 6.250000e-02)
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.bh = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx10.i = shl i64 %i.bh, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx10.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.011
  store <8 x float> %i.bf, ptr %i.bj, align 1, !tbaa !222, !noalias !4451
  %i.bk = load <8 x float>, ptr %i.f, align 32, !tbaa !222, !alias.scope !4451
  %i.bl = fmul <8 x float> %i.bk, splat (float 6.250000e-02)
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.bn = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx11.i = mul i64 %i.bn, 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx11.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.011
  store <8 x float> %i.bl, ptr %i.bp, align 1, !tbaa !222, !noalias !4451
  %i.bq = load <8 x float>, ptr %i.g, align 32, !tbaa !222, !alias.scope !4451
  %i.br = fmul <8 x float> %i.bq, splat (float 6.250000e-02)
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.bt = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx12.i = mul i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx12.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.011
  store <8 x float> %i.br, ptr %i.bv, align 1, !tbaa !222, !noalias !4451
  %i.bw = load <8 x float>, ptr %i.h, align 32, !tbaa !222, !alias.scope !4451
  %i.bx = fmul <8 x float> %i.bw, splat (float 6.250000e-02)
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.bz = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx13.i = mul i64 %i.bz, 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx13.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.011
  store <8 x float> %i.bx, ptr %i.cb, align 1, !tbaa !222, !noalias !4451
  %i.cc = load <8 x float>, ptr %i.i, align 32, !tbaa !222, !alias.scope !4451
  %i.cd = fmul <8 x float> %i.cc, splat (float 6.250000e-02)
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.cf = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx14.i = shl i64 %i.cf, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx14.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.011
  store <8 x float> %i.cd, ptr %i.ch, align 1, !tbaa !222, !noalias !4451
  %i.ci = load <8 x float>, ptr %i.j, align 32, !tbaa !222, !alias.scope !4451
  %i.cj = fmul <8 x float> %i.ci, splat (float 6.250000e-02)
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.cl = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx15.i = mul i64 %i.cl, 36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx15.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.011
  store <8 x float> %i.cj, ptr %i.cn, align 1, !tbaa !222, !noalias !4451
  %i.co = load <8 x float>, ptr %i.k, align 32, !tbaa !222, !alias.scope !4451
  %i.cp = fmul <8 x float> %i.co, splat (float 6.250000e-02)
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.cr = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx16.i = mul i64 %i.cr, 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx16.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.011
  store <8 x float> %i.cp, ptr %i.ct, align 1, !tbaa !222, !noalias !4451
  %i.cu = load <8 x float>, ptr %i.l, align 32, !tbaa !222, !alias.scope !4451
  %i.cv = fmul <8 x float> %i.cu, splat (float 6.250000e-02)
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.cx = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx17.i = mul i64 %i.cx, 44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx17.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.011
  store <8 x float> %i.cv, ptr %i.cz, align 1, !tbaa !222, !noalias !4451
  %i.da = load <8 x float>, ptr %i.m, align 32, !tbaa !222, !alias.scope !4451
  %i.db = fmul <8 x float> %i.da, splat (float 6.250000e-02)
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !273, !noalias !4451
  %i.dd = load i64, ptr %1, align 8, !tbaa !272, !noalias !4451
  %.idx18.i = mul i64 %i.dd, 48
end_hunk_6
begin_hunk_7_@_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm4ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf:bb.a
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5004
  %i.ae = load i64, ptr %1, align 8, !tbaa !281, !noalias !5004
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.011
  store <4 x float> %i.ac, ptr %i.ag, align 1, !tbaa !222, !alias.scope !5005, !noalias !5004
  %i.ah = fmul <4 x float> %i.q, splat (float 2.500000e-01)
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5004
  %i.aj = load i64, ptr %1, align 8, !tbaa !281, !noalias !5004
  %.idx.i = shl i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.011
  store <4 x float> %i.ah, ptr %i.al, align 1, !tbaa !222, !alias.scope !5005, !noalias !5004
  %i.am = fmul <4 x float> %i.w, splat (float 2.500000e-01)
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5004
  %i.ao = load i64, ptr %1, align 8, !tbaa !281, !noalias !5004
  %.idx9.i = mul i64 %i.ao, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx9.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.011
  store <4 x float> %i.am, ptr %i.aq, align 1, !tbaa !222, !alias.scope !5005, !noalias !5004
  %i.ar = add nuw i64 %.011, 4                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %2
  br i1 %i.as, label %bb.c, label %._crit_edge, !llvm.loop !4996
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm8ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #27 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <4 x float> %i.aj, ptr %3, align 16, !tbaa !222
  store <4 x float> %i.bo, ptr %i.c, align 16, !tbaa !222
  store <4 x float> %i.as, ptr %i.d, align 16, !tbaa !222
  store <4 x float> %i.bp, ptr %i.e, align 16, !tbaa !222
  store <4 x float> %i.ak, ptr %i.f, align 16, !tbaa !222
  store <4 x float> %i.bq, ptr %i.g, align 16, !tbaa !222
  store <4 x float> %i.aq, ptr %i.h, align 16, !tbaa !222
  store <4 x float> %i.bk, ptr %i.i, align 16, !tbaa !222
  store <4 x float> %i.aj, ptr %i.j, align 16, !tbaa !222, !alias.scope !5056, !noalias !5057
  store <4 x float> %i.ak, ptr %i.l, align 16, !tbaa !222, !alias.scope !5056, !noalias !5057
  store <4 x float> %i.as, ptr %i.k, align 16, !tbaa !222, !alias.scope !5058, !noalias !5057
  store <4 x float> %i.aq, ptr %i.m, align 16, !tbaa !222, !alias.scope !5058, !noalias !5057
  store <4 x float> %i.bd, ptr %i.n, align 16, !tbaa !222, !alias.scope !5059, !noalias !5060
  store <4 x float> %i.be, ptr %i.o, align 16, !tbaa !222, !alias.scope !5061, !noalias !5060
  store <4 x float> %i.bk, ptr %i.q, align 16, !tbaa !222, !alias.scope !5062, !noalias !5060
  store <4 x float> %i.bm, ptr %i.p, align 16, !tbaa !222, !alias.scope !5063, !noalias !5060
  store <4 x float> %i.bk, ptr %i.u, align 16, !tbaa !222, !alias.scope !5064, !noalias !5065
  store <4 x float> %i.bo, ptr %i.r, align 16, !tbaa !222, !alias.scope !5066, !noalias !5067
  store <4 x float> %i.bp, ptr %i.s, align 16, !tbaa !222, !alias.scope !5068, !noalias !5067
  store <4 x float> %i.bq, ptr %i.t, align 16, !tbaa !222, !alias.scope !5068, !noalias !5067
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %bb.c ] ; 10 uses
  %.val = load i64, ptr %0, align 8               ; 7 uses
  %.val10 = load ptr, ptr %i.a, align 8
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 8 uses
  %i.v = load <4 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.w = load <4 x float>, ptr %gep.1.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.x = load <4 x float>, ptr %gep.2.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.y = load <4 x float>, ptr %gep.3.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.z = load <4 x float>, ptr %gep.4.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.aa = load <4 x float>, ptr %gep.5.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.ab = load <4 x float>, ptr %gep.6.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.ac = load <4 x float>, ptr %gep.7.i, align 1, !tbaa !222, !alias.scope !5069, !noalias !5070 ; 2 uses
  %i.ad = fadd <4 x float> %i.v, %i.ac            ; 2 uses
  %i.ae = fadd <4 x float> %i.w, %i.ab            ; 2 uses
  %i.af = fadd <4 x float> %i.x, %i.aa            ; 2 uses
  %i.ag = fadd <4 x float> %i.y, %i.z             ; 2 uses
  %i.ah = fadd <4 x float> %i.ag, %i.ad           ; 2 uses
  %i.ai = fadd <4 x float> %i.af, %i.ae           ; 2 uses
  %i.aj = fadd <4 x float> %i.ai, %i.ah           ; 3 uses
  %i.ak = fsub <4 x float> %i.ah, %i.ai           ; 3 uses
  %i.al = fsub <4 x float> %i.ad, %i.ag
  %i.am = fsub <4 x float> %i.ae, %i.af
  %i.an = fmul <4 x float> %i.al, splat (float f0x3F0A8BD4) ; 2 uses
  %i.ao = fmul <4 x float> %i.am, splat (float f0x3FA73D75) ; 2 uses
  %i.ap = fadd <4 x float> %i.ao, %i.an
  %i.aq = fsub <4 x float> %i.an, %i.ao           ; 4 uses
  %i.ar = fmul <4 x float> %i.ap, splat (float f0x3FB504F3)
  %i.as = fadd <4 x float> %i.aq, %i.ar           ; 3 uses
  %i.at = fsub <4 x float> %i.v, %i.ac
  %i.au = fsub <4 x float> %i.w, %i.ab
  %i.av = fsub <4 x float> %i.x, %i.aa
  %i.aw = fsub <4 x float> %i.y, %i.z
  %i.ax = fmul <4 x float> %i.at, splat (float f0x3F0281F7) ; 2 uses
  %i.ay = fmul <4 x float> %i.au, splat (float f0x3F19F1BD) ; 2 uses
  %i.az = fmul <4 x float> %i.av, splat (float f0x3F6664D7) ; 2 uses
  %i.ba = fmul <4 x float> %i.aw, splat (float f0x402406CF) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.bb = fadd <4 x float> %i.ba, %i.ax           ; 2 uses
  %i.bc = fadd <4 x float> %i.az, %i.ay           ; 2 uses
  %i.bd = fadd <4 x float> %i.bc, %i.bb           ; 2 uses
  %i.be = fsub <4 x float> %i.bb, %i.bc           ; 3 uses
  %i.bf = fsub <4 x float> %i.ax, %i.ba
  %i.bg = fsub <4 x float> %i.ay, %i.az
  %i.bh = fmul <4 x float> %i.bf, splat (float f0x3F0A8BD4) ; 2 uses
  %i.bi = fmul <4 x float> %i.bg, splat (float f0x3FA73D75) ; 2 uses
  %i.bj = fadd <4 x float> %i.bi, %i.bh
  %i.bk = fsub <4 x float> %i.bh, %i.bi           ; 6 uses
  %i.bl = fmul <4 x float> %i.bj, splat (float f0x3FB504F3)
  %i.bm = fadd <4 x float> %i.bk, %i.bl           ; 3 uses
  %i.bn = fmul <4 x float> %i.bd, splat (float f0x3FB504F3)
  %i.bo = fadd <4 x float> %i.bn, %i.bm           ; 3 uses
  %i.bp = fadd <4 x float> %i.be, %i.bm           ; 3 uses
  %i.bq = fadd <4 x float> %i.be, %i.bk           ; 3 uses
  %i.br = fmul <4 x float> %i.aj, splat (float 1.250000e-01)
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.011
  store <4 x float> %i.br, ptr %i.bt, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.bu = fmul <4 x float> %i.bo, splat (float 1.250000e-01)
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.bw = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.011
  store <4 x float> %i.bu, ptr %i.by, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.bz = fmul <4 x float> %i.as, splat (float 1.250000e-01)
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.cb = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx.i = shl i64 %i.cb, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.011
  store <4 x float> %i.bz, ptr %i.cd, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.ce = fmul <4 x float> %i.bp, splat (float 1.250000e-01)
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.cg = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx9.i = mul i64 %i.cg, 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx9.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.011
  store <4 x float> %i.ce, ptr %i.ci, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.cj = fmul <4 x float> %i.ak, splat (float 1.250000e-01)
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.cl = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx10.i = shl i64 %i.cl, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx10.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.011
  store <4 x float> %i.cj, ptr %i.cn, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.co = fmul <4 x float> %i.bq, splat (float 1.250000e-01)
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.cq = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx11.i = mul i64 %i.cq, 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx11.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.011
  store <4 x float> %i.co, ptr %i.cs, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.ct = fmul <4 x float> %i.aq, splat (float 1.250000e-01)
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.cv = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx12.i = mul i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.idx12.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.011
  store <4 x float> %i.ct, ptr %i.cx, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.cy = fmul <4 x float> %i.bk, splat (float 1.250000e-01)
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !5073
  %i.da = load i64, ptr %1, align 8, !tbaa !281, !noalias !5073
  %.idx13.i = mul i64 %i.da, 28
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx13.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %.011
  store <4 x float> %i.cy, ptr %i.dc, align 1, !tbaa !222, !alias.scope !5074, !noalias !5073
  %i.dd = add nuw i64 %.011, 4                    ; 2 uses
  %i.de = icmp ult i64 %i.dd, %2
  br i1 %i.de, label %bb.c, label %._crit_edge, !llvm.loop !5055
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZN3jxl6N_SSE212_GLOBAL__N_112DCT1DWrapperILm16ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, ptr noalias nofree noundef captures(none) %3) #27 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.b ] ; 18 uses
  %.val = load i64, ptr %0, align 8               ; 15 uses
  %.val10 = load ptr, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5088)
  %invariant.gep.i = getelementptr [4 x i8], ptr %.val10, i64 %.011 ; 16 uses
  %i.s = load <4 x float>, ptr %invariant.gep.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.s, ptr %3, align 16, !tbaa !222, !alias.scope !5090
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.val
  %i.t = load <4 x float>, ptr %gep.1.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.t, ptr %i.b, align 16, !tbaa !222, !alias.scope !5090
  %gep.2.idx.i = shl i64 %.val, 3
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.2.idx.i
  %i.u = load <4 x float>, ptr %gep.2.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.u, ptr %i.c, align 16, !tbaa !222, !alias.scope !5090
  %gep.3.idx.i = mul i64 %.val, 12
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.3.idx.i
  %i.v = load <4 x float>, ptr %gep.3.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.v, ptr %i.d, align 16, !tbaa !222, !alias.scope !5090
  %gep.4.idx.i = shl i64 %.val, 4
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.4.idx.i
  %i.w = load <4 x float>, ptr %gep.4.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.w, ptr %i.e, align 16, !tbaa !222, !alias.scope !5090
  %gep.5.idx.i = mul i64 %.val, 20
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.5.idx.i
  %i.x = load <4 x float>, ptr %gep.5.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.x, ptr %i.f, align 16, !tbaa !222, !alias.scope !5090
  %gep.6.idx.i = mul i64 %.val, 24
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.6.idx.i
  %i.y = load <4 x float>, ptr %gep.6.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.y, ptr %i.g, align 16, !tbaa !222, !alias.scope !5090
  %gep.7.idx.i = mul i64 %.val, 28
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.7.idx.i
  %i.z = load <4 x float>, ptr %gep.7.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.z, ptr %i.h, align 16, !tbaa !222, !alias.scope !5090
  %gep.8.idx.i = shl i64 %.val, 5
  %gep.8.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.8.idx.i
  %i.aa = load <4 x float>, ptr %gep.8.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.aa, ptr %i.i, align 16, !tbaa !222, !alias.scope !5090
  %gep.9.idx.i = mul i64 %.val, 36
  %gep.9.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.9.idx.i
  %i.ab = load <4 x float>, ptr %gep.9.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ab, ptr %i.j, align 16, !tbaa !222, !alias.scope !5090
  %gep.10.idx.i = mul i64 %.val, 40
  %gep.10.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.10.idx.i
  %i.ac = load <4 x float>, ptr %gep.10.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ac, ptr %i.k, align 16, !tbaa !222, !alias.scope !5090
  %gep.11.idx.i = mul i64 %.val, 44
  %gep.11.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.11.idx.i
  %i.ad = load <4 x float>, ptr %gep.11.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ad, ptr %i.l, align 16, !tbaa !222, !alias.scope !5090
  %gep.12.idx.i = mul i64 %.val, 48
  %gep.12.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.12.idx.i
  %i.ae = load <4 x float>, ptr %gep.12.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ae, ptr %i.m, align 16, !tbaa !222, !alias.scope !5090
  %gep.13.idx.i = mul i64 %.val, 52
  %gep.13.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.13.idx.i
  %i.af = load <4 x float>, ptr %gep.13.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.af, ptr %i.n, align 16, !tbaa !222, !alias.scope !5090
  %gep.14.idx.i = mul i64 %.val, 56
  %gep.14.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.14.idx.i
  %i.ag = load <4 x float>, ptr %gep.14.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ag, ptr %i.o, align 16, !tbaa !222, !alias.scope !5090
  %gep.15.idx.i = mul i64 %.val, 60
  %gep.15.i = getelementptr i8, ptr %invariant.gep.i, i64 %gep.15.idx.i
  %i.ah = load <4 x float>, ptr %gep.15.i, align 1, !tbaa !222, !alias.scope !5089, !noalias !5088
  store <4 x float> %i.ah, ptr %i.p, align 16, !tbaa !222, !alias.scope !5090
  tail call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_19DCT1DImplILm16ELm4EEclEPfS4_(ptr noundef nonnull %3, ptr noundef nonnull %i.q) #50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5091)
  %i.ai = load <4 x float>, ptr %3, align 16, !tbaa !222, !alias.scope !5092
  %i.aj = fmul <4 x float> %i.ai, splat (float 6.250000e-02)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.011
  store <4 x float> %i.aj, ptr %i.al, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.am = load <4 x float>, ptr %i.b, align 16, !tbaa !222, !alias.scope !5092
  %i.an = fmul <4 x float> %i.am, splat (float 6.250000e-02)
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.ap = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.011
  store <4 x float> %i.an, ptr %i.ar, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.as = load <4 x float>, ptr %i.c, align 16, !tbaa !222, !alias.scope !5092
  %i.at = fmul <4 x float> %i.as, splat (float 6.250000e-02)
  %i.au = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.av = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx.i = shl i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.011
  store <4 x float> %i.at, ptr %i.ax, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.ay = load <4 x float>, ptr %i.d, align 16, !tbaa !222, !alias.scope !5092
  %i.az = fmul <4 x float> %i.ay, splat (float 6.250000e-02)
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.bb = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx9.i = mul i64 %i.bb, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx9.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.011
  store <4 x float> %i.az, ptr %i.bd, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.be = load <4 x float>, ptr %i.e, align 16, !tbaa !222, !alias.scope !5092
  %i.bf = fmul <4 x float> %i.be, splat (float 6.250000e-02)
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.bh = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx10.i = shl i64 %i.bh, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx10.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %.011
  store <4 x float> %i.bf, ptr %i.bj, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.bk = load <4 x float>, ptr %i.f, align 16, !tbaa !222, !alias.scope !5092
  %i.bl = fmul <4 x float> %i.bk, splat (float 6.250000e-02)
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.bn = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx11.i = mul i64 %i.bn, 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx11.i
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.011
  store <4 x float> %i.bl, ptr %i.bp, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.bq = load <4 x float>, ptr %i.g, align 16, !tbaa !222, !alias.scope !5092
  %i.br = fmul <4 x float> %i.bq, splat (float 6.250000e-02)
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.bt = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx12.i = mul i64 %i.bt, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx12.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.011
  store <4 x float> %i.br, ptr %i.bv, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.bw = load <4 x float>, ptr %i.h, align 16, !tbaa !222, !alias.scope !5092
  %i.bx = fmul <4 x float> %i.bw, splat (float 6.250000e-02)
  %i.by = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.bz = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx13.i = mul i64 %i.bz, 28
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx13.i
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.011
  store <4 x float> %i.bx, ptr %i.cb, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.cc = load <4 x float>, ptr %i.i, align 16, !tbaa !222, !alias.scope !5092
  %i.cd = fmul <4 x float> %i.cc, splat (float 6.250000e-02)
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.cf = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx14.i = shl i64 %i.cf, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx14.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.011
  store <4 x float> %i.cd, ptr %i.ch, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.ci = load <4 x float>, ptr %i.j, align 16, !tbaa !222, !alias.scope !5092
  %i.cj = fmul <4 x float> %i.ci, splat (float 6.250000e-02)
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.cl = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx15.i = mul i64 %i.cl, 36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx15.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.011
  store <4 x float> %i.cj, ptr %i.cn, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.co = load <4 x float>, ptr %i.k, align 16, !tbaa !222, !alias.scope !5092
  %i.cp = fmul <4 x float> %i.co, splat (float 6.250000e-02)
  %i.cq = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.cr = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx16.i = mul i64 %i.cr, 40
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx16.i
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.011
  store <4 x float> %i.cp, ptr %i.ct, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.cu = load <4 x float>, ptr %i.l, align 16, !tbaa !222, !alias.scope !5092
  %i.cv = fmul <4 x float> %i.cu, splat (float 6.250000e-02)
  %i.cw = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.cx = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx17.i = mul i64 %i.cx, 44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx17.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.011
  store <4 x float> %i.cv, ptr %i.cz, align 1, !tbaa !222, !alias.scope !5093, !noalias !5091
  %i.da = load <4 x float>, ptr %i.m, align 16, !tbaa !222, !alias.scope !5092
  %i.db = fmul <4 x float> %i.da, splat (float 6.250000e-02)
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !282, !noalias !5091
  %i.dd = load i64, ptr %1, align 8, !tbaa !281, !noalias !5091
  %.idx18.i = mul i64 %i.dd, 48
end_hunk_7
