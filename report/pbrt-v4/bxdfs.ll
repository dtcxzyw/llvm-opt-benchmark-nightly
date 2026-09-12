Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE5FlagsEv:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load float, ptr %i.a, align 4, !tbaa !67
  %i.c = fcmp oeq float %i.b, 1.000000e+00
  %spec.select.i = select i1 %i.c, i32 2, i32 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !20 ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f
  %i.j = fcmp olt float %i.i, 1.000000e-03
  %i.k = select i1 %i.j, i32 16, i32 8
  %i.l = or disjoint i32 %i.k, %spec.select.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = load <4 x float>, ptr %i.n, align 4
  %.fr = freeze <4 x float> %i.o
  %i.p = fcmp une <4 x float> %.fr, zeroinitializer
  %i.q = bitcast <4 x i1> %i.p to i4
  %.not1 = icmp eq i4 %i.q, 0
  %i.r = select i1 %.not1, i32 0, i32 5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i32 [ %i.l, %bb.b ], [ %i.r, %bb.c ]
  ret i32 %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15HGPhaseFunction3PDFENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = fmul <2 x float> %1, %3                  ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul float %2, %4
  %i.d = fadd float %i.c, %i.b
  %i.e = load float, ptr %0, align 4, !tbaa !65   ; 2 uses
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = fcmp olt double %i.f, f0xBFEFAE147AE147AE
  %i.h = fcmp ogt double %i.f, f0x3FEFAE147AE147AE
  %spec.select.i.i.i = select i1 %i.h, float 9.900000e-01, float %i.e
  %.0.i.i.i = select i1 %i.g, float -9.900000e-01, float %spec.select.i.i.i ; 3 uses
  %i.i = fmul float %.0.i.i.i, %.0.i.i.i          ; 2 uses
  %i.j = fadd float %i.i, 1.000000e+00
  %i.k = fmul float %.0.i.i.i, 2.000000e+00
  %i.l = fmul float %i.d, %i.k
  %i.m = fadd float %i.j, %i.l                    ; 3 uses
  %i.n = fsub float 1.000000e+00, %i.i
  %i.o = fmul float %i.n, f0x3DA2F983
  %i.p = fcmp ogt float %i.m, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.p, float %i.m, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i)
  %i.q = fmul float %i.m, %sqrt.i.i.i
  %i.r = fdiv float %i.o, %i.q
  ret float %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15HGPhaseFunction1pENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(4) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = fmul <2 x float> %1, %3                  ; 2 uses
  %shift = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.a, %shift
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fmul float %2, %4
  %i.d = fadd float %i.c, %i.b
  %i.e = load float, ptr %0, align 4, !tbaa !65   ; 2 uses
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = fcmp olt double %i.f, f0xBFEFAE147AE147AE
  %i.h = fcmp ogt double %i.f, f0x3FEFAE147AE147AE
  %spec.select.i.i = select i1 %i.h, float 9.900000e-01, float %i.e
  %.0.i.i = select i1 %i.g, float -9.900000e-01, float %spec.select.i.i ; 3 uses
  %i.i = fmul float %.0.i.i, %.0.i.i              ; 2 uses
  %i.j = fadd float %i.i, 1.000000e+00
  %i.k = fmul float %.0.i.i, 2.000000e+00
  %i.l = fmul float %i.d, %i.k
  %i.m = fadd float %i.j, %i.l                    ; 3 uses
  %i.n = fsub float 1.000000e+00, %i.i
  %i.o = fmul float %i.n, f0x3DA2F983
  %i.p = fcmp ogt float %i.m, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.p, float %i.m, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.q = fmul float %i.m, %sqrt.i.i
  %i.r = fdiv float %i.o, %i.q
  ret float %i.r
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(60) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.pstd::optional", align 16   ; 15 uses
  %9 = alloca %"class.pstd::optional", align 8    ; 12 uses
  %i.b = icmp eq i32 %7, 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA39_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 659, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(39) @.str.5) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp olt float %3, 0.000000e+00          ; 5 uses
  %i.d = fneg <2 x float> %2
  %i.e = fneg float %3
  %.sroa.0421.0 = select i1 %i.c, <2 x float> %i.d, <2 x float> %2 ; 2 uses
  %.sroa.7425.0 = select i1 %i.c, float %i.e, float %3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %8, ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %.sroa.0421.0, float %.sroa.7425.0, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef 3)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.g = load i8, ptr %i.f, align 4, !tbaa !55, !range !56, !noundef !57
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load <4 x float>, ptr %8, align 16
  %.fr = freeze <4 x float> %i.j
  %i.k = fcmp une <4 x float> %.fr, zeroinitializer
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not582 = icmp eq i4 %i.l, 0
  br i1 %.not582, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.n = load float, ptr %i.m, align 4, !tbaa !62 ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !63 ; 4 uses
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197, %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = load i32, ptr %i.s, align 16, !tbaa !68  ; 2 uses
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = load <2 x float>, ptr %i.v, align 16, !tbaa !20
  %i.x = fneg <2 x float> %i.w
  %i.y = fneg float %i.q
  store <2 x float> %i.x, ptr %i.v, align 16
  store float %i.y, ptr %i.p, align 8
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit: ; preds = %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 1, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.aa, align 4, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %0, ptr noundef nonnull align 16 dereferenceable(45) %8, i64 44, i1 false)
  br label %.thread480

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0401.0.copyload = load <2 x float>, ptr %i.ab, align 16
  %i.ac = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !53
  %i.ae = tail call noundef i64 @_ZN4pbrt4HashIJiNS_7Vector3IfEEEEEmDpT_(i32 noundef %i.ad, <2 x float> %.sroa.0421.0, float %.sroa.7425.0)
  %i.af = tail call noundef i64 @_ZN4pbrt4HashIJfNS_6Point2IfEEEEEmDpT_(float noundef %4, <2 x float> %5)
  %i.ag = shl i64 %i.ae, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !31
  %.not191540 = icmp sgt i32 %i.am, 0
  br i1 %.not191540, label %.lr.ph, label %.critedge195

.lr.ph:                                           ; preds = %bb.i
  %i.an = add i64 %i.ah, %i.af
  %i.ao = load float, ptr %i.ai, align 4, !tbaa !28
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.q)
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %i.i, align 8, !tbaa !21
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fmul <2 x float> %i.ar, %.sroa.6.0.copyload.i
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 16
  %i.at = fmul <2 x float> %i.ar, %.sroa.0.0.copyload.i
  %10 = trunc i32 %i.t to i8
  %11 = lshr i8 %10, 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.an
  %.pn532538.pn.in = phi i64 [ %i.an, %.lr.ph ], [ %.pn.in, %bb.an ]
  %.0152548 = phi i8 [ %11, %.lr.ph ], [ %.5157520, %bb.an ]
  %.0158547 = phi float [ %i.n, %.lr.ph ], [ %.7165519, %bb.an ] ; 3 uses
  %.0166546 = phi float [ %i.ao, %.lr.ph ], [ %.4170518, %bb.an ] ; 3 uses
  %.0171545 = phi i32 [ 0, %.lr.ph ], [ %i.ja, %bb.an ] ; 2 uses
  %.sroa.17.0544 = phi float [ %i.q, %.lr.ph ], [ %.sroa.17.6516, %bb.an ] ; 7 uses
  %.sroa.0401.0543 = phi <2 x float> [ %.sroa.0401.0.copyload, %.lr.ph ], [ %.sroa.0401.6515, %bb.an ] ; 2 uses
  %.sroa.0331.0542 = phi <2 x float> [ %i.at, %.lr.ph ], [ %.sroa.0331.5514, %bb.an ] ; 6 uses
  %.sroa.23.0541 = phi <2 x float> [ %i.as, %.lr.ph ], [ %.sroa.23.5513, %bb.an ] ; 6 uses
  %.pn532538.pn = mul i64 %.pn532538.pn.in, 6364136223846793005
  %.sroa.0.0549 = add i64 %.pn532538.pn, %i.ah    ; 5 uses
  %.sroa.0331.0.vec.extract = extractelement <2 x float> %.sroa.0331.0542, i64 0 ; 2 uses
  %.sroa.0331.4.vec.extract = extractelement <2 x float> %.sroa.0331.0542, i64 1 ; 2 uses
  %i.az = fcmp olt float %.sroa.0331.0.vec.extract, %.sroa.0331.4.vec.extract
  %.sroa.speculated.i = select i1 %i.az, float %.sroa.0331.4.vec.extract, float %.sroa.0331.0.vec.extract ; 2 uses
  %.sroa.23.8.vec.extract = extractelement <2 x float> %.sroa.23.0541, i64 0 ; 2 uses
  %i.ba = fcmp olt float %.sroa.speculated.i, %.sroa.23.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.ba, float %.sroa.23.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %.sroa.23.12.vec.extract = extractelement <2 x float> %.sroa.23.0541, i64 1 ; 2 uses
  %i.bb = fcmp olt float %.sroa.speculated.1.i, %.sroa.23.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.bb, float %.sroa.23.12.vec.extract, float %.sroa.speculated.1.i
  %i.bc = fdiv float %.sroa.speculated.2.i, %.0158547 ; 2 uses
  %i.bd = icmp samesign ugt i32 %.0171545, 3
  %i.be = fcmp olt float %i.bc, 2.500000e-01
  %or.cond = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bf = fsub float 1.000000e+00, %i.bc          ; 2 uses
  %i.bg = fcmp ogt float %i.bf, 0.000000e+00
  %.sroa.speculated = select i1 %i.bg, float %i.bf, float 0.000000e+00 ; 2 uses
  %i.bh = lshr i64 %.sroa.0.0549, 45
  %i.bi = lshr i64 %.sroa.0.0549, 27
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = lshr i64 %.sroa.0.0549, 59
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = call noundef i32 @llvm.fshr.i32(i32 %i.bk, i32 %i.bk, i32 %i.bm)
  %i.bo = uitofp i32 %i.bn to float
  %i.bp = fmul nnan float %i.bo, f0x2F800000      ; 2 uses
  %i.bq = fcmp olt float %i.bp, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.bq, float %i.bp, float f0x3F7FFFFF
  %i.br = fcmp uge float %.sroa.speculated.i.i, %.sroa.speculated
  br i1 %i.br, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bs = mul i64 %.sroa.0.0549, 6364136223846793005
  %i.bt = add i64 %i.bs, %i.ah
  %i.bu = fsub nnan float 1.000000e+00, %.sroa.speculated
  %i.bv = fmul float %.0158547, %i.bu
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

bb.m:                                             ; preds = %.thread, %bb.j
  %.sroa.0.1 = phi i64 [ %i.bt, %.thread ], [ %.sroa.0.0549, %bb.j ] ; 5 uses
  %.2160 = phi float [ %i.bv, %.thread ], [ %.0158547, %bb.j ] ; 2 uses
  %i.bw = fcmp oeq float %.sroa.17.0544, 0.000000e+00
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

bb.o:                                             ; preds = %bb.m
  %i.bx = load <4 x float>, ptr %i.au, align 4
  %.fr583 = freeze <4 x float> %i.bx
  %i.by = fcmp une <4 x float> %.fr583, zeroinitializer
  %i.bz = bitcast <4 x i1> %i.by to i4
  %.not584 = icmp eq i4 %i.bz, 0
  br i1 %.not584, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = mul i64 %.sroa.0.1, 6364136223846793005
  %i.cb = add i64 %i.ca, %i.ah                    ; 4 uses
  %i.cc = lshr i64 %.sroa.0.1, 45
  %i.cd = lshr i64 %.sroa.0.1, 27
  %i.ce = xor i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = lshr i64 %.sroa.0.1, 59
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = call noundef i32 @llvm.fshr.i32(i32 %i.cf, i32 %i.cf, i32 %i.ch)
  %i.cj = uitofp i32 %i.ci to float
  %i.ck = fmul nnan float %i.cj, f0x2F800000      ; 2 uses
  %i.cl = fcmp olt float %i.ck, f0x3F7FFFFF
  %.sroa.speculated.i.i234 = select i1 %i.cl, float %i.ck, float f0x3F7FFFFF
  %i.cm = call noundef float @llvm.fabs.f32(float %.sroa.17.0544)
  %i.cn = fdiv float 1.000000e+00, %i.cm
  %i.co = fsub float 1.000000e+00, %.sroa.speculated.i.i234
  %i.cp = call noundef float @logf(float noundef %i.co) #31
  %i.cq = fneg float %i.cp
  %i.cr = fdiv float %i.cq, %i.cn                 ; 2 uses
  %i.cs = fcmp ogt float %.sroa.17.0544, 0.000000e+00
  %i.ct = fneg float %i.cr
  %.p = select i1 %i.cs, float %i.cr, float %i.ct
  %i.cu = fadd float %.0166546, %.p               ; 7 uses
  %i.cv = load atomic i8, ptr @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.q, label %bb.t, !prof !70

bb.q:                                             ; preds = %bb.p
  %i.cx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  %.not = icmp eq i32 %i.cx, 0
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg, ptr noundef nonnull @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeESB_, ptr noundef null)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p
  %i.cy = load i64, ptr %i.aw, align 8, !tbaa !71
  %i.cz = add nsw i64 %i.cy, 1
  store i64 %i.cz, ptr %i.aw, align 8, !tbaa !71
  %i.da = fcmp oeq float %i.cu, %.0166546
  br i1 %i.da, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.db = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !71
  %i.dd = add nsw i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

bb.v:                                             ; preds = %bb.r
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %i.de

.critedge:                                        ; preds = %bb.t
  %i.df = fcmp ogt float %i.cu, 0.000000e+00
  %.pre = load float, ptr %i.ai, align 4, !tbaa !28 ; 3 uses
  %i.dg = fcmp olt float %i.cu, %.pre
  %or.cond573 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond573, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.critedge
  %i.dh = fneg <2 x float> %.sroa.0401.0543
  %i.di = fneg float %.sroa.17.0544
  %i.dj = mul i64 %i.cb, 6364136223846793005
  %i.dk = add i64 %i.dj, %i.ah                    ; 2 uses
  %i.dl = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.dm = insertelement <2 x i64> %i.dl, i64 %i.dk, i64 1 ; 3 uses
  %i.dn = lshr <2 x i64> %i.dm, splat (i64 45)
  %i.do = lshr <2 x i64> %i.dm, splat (i64 27)
  %i.dp = xor <2 x i64> %i.dn, %i.do
  %i.dq = trunc <2 x i64> %i.dp to <2 x i32>      ; 2 uses
  %i.dr = lshr <2 x i64> %i.dm, splat (i64 59)
  %i.ds = trunc nuw nsw <2 x i64> %i.dr to <2 x i32>
  %i.dt = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dq, <2 x i32> %i.dq, <2 x i32> %i.ds)
  %i.du = uitofp <2 x i32> %i.dt to <2 x float>
  %i.dv = fmul nnan <2 x float> %i.du, splat (float f0x2F800000) ; 2 uses
  %i.dw = fcmp olt <2 x float> %i.dv, splat (float f0x3F7FFFFF)
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.dv, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !239
  %i.dy = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %i.dh, float %i.di, float noundef %i.ak, <2 x float> %i.dx, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.dy, 1 ; 2 uses
  %i.dz = load float, ptr %i.a, align 4, !tbaa !20, !noalias !239 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !239
  %i.ea = fcmp oeq float %i.dz, 0.000000e+00
  %i.eb = fcmp oeq float %.fca.1.extract.i, 0.000000e+00
  %or.cond530 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond530, label %bb.x, label %.thread439.thread501

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

.thread439.thread501:                             ; preds = %bb.w
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.dy, 0
  %.sroa.0.0.copyload.i248 = load <2 x float>, ptr %i.au, align 4
  %.sroa.6.0.copyload.i250 = load <2 x float>, ptr %i.av, align 4, !tbaa !21
  %i.ec = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = fmul <2 x float> %i.ed, %.sroa.0.0.copyload.i248
  %i.ef = fmul <2 x float> %.sroa.0331.0542, %i.ee
  %i.eg = fmul <2 x float> %i.ed, %.sroa.6.0.copyload.i250
  %i.eh = fmul <2 x float> %.sroa.23.0541, %i.eg
  %i.ei = fmul float %.2160, %i.dz
  br label %bb.an

bb.y:                                             ; preds = %.critedge
  %i.ej = fcmp olt float %i.cu, 0.000000e+00
  %i.ek = fcmp ogt float %i.cu, %.pre
  %..i265 = select i1 %i.ek, float %.pre, float %i.cu
  br i1 %i.ej, label %.thread451, label %bb.ad

bb.z:                                             ; preds = %bb.o
  %i.el = load float, ptr %i.ai, align 4, !tbaa !28 ; 4 uses
  %i.em = fcmp oeq float %.0166546, %i.el
  %spec.select = select i1 %i.em, float 0.000000e+00, float %i.el
  %i.en = call noundef float @llvm.fabs.f32(float %i.el)
  %i.eo = fcmp ugt float %i.en, f0x00800000
  br i1 %i.eo, label %bb.aa, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ep = fdiv float %i.el, %.sroa.17.0544
  %i.eq = call noundef float @llvm.fabs.f32(float %i.ep)
  %i.er = fmul float %i.eq, f0xBFB8AA3B           ; 2 uses
  %i.es = call noundef float @llvm.floor.f32(float %i.er) ; 2 uses
  %i.et = fsub float %i.er, %i.es                 ; 3 uses
  %i.eu = fptosi float %i.es to i32
  %i.ev = call noundef float @llvm.fma.f32(float %i.et, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ew = call noundef float @llvm.fma.f32(float %i.et, float %i.ev, float f0x3F321004)
  %i.ex = call noundef float @llvm.fma.f32(float %i.et, float %i.ew, float 1.000000e+00)
  %i.ey = bitcast float %i.ex to i32              ; 2 uses
  %i.ez = lshr i32 %i.ey, 23
  %i.fa = add i32 %i.eu, -127
  %i.fb = add i32 %i.fa, %i.ez                    ; 3 uses
  %i.fc = icmp slt i32 %i.fb, -126
  br i1 %i.fc, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = icmp sgt i32 %i.fb, 127
  br i1 %i.fd, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fe = and i32 %i.ey, -2139095041
  %i.ff = shl nsw i32 %i.fb, 23
  %i.fg = add nsw i32 %i.ff, 1065353216
  %i.fh = or i32 %i.fg, %i.fe
  %i.fi = bitcast i32 %i.fh to float
  br label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.0.i266 = phi float [ 1.000000e+00, %bb.z ], [ %i.fi, %bb.ac ], [ 0.000000e+00, %bb.aa ], [ +inf, %bb.ab ]
  %i.fj = insertelement <2 x float> poison, float %.0.i266, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fl = fmul <2 x float> %.sroa.0331.0542, %i.fk
  %i.fm = fmul <2 x float> %.sroa.23.0541, %i.fk
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit
  %.sroa.0.3 = phi i64 [ %i.cb, %bb.y ], [ %.sroa.0.1, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.sroa.23.3 = phi <2 x float> [ %.sroa.23.0541, %bb.y ], [ %i.fm, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.sroa.0331.3 = phi <2 x float> [ %.sroa.0331.0542, %bb.y ], [ %i.fl, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.3169 = phi float [ %..i265, %bb.y ], [ %spec.select, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 2 uses
  %i.fn = fcmp oeq float %.3169, 0.000000e+00     ; 2 uses
  %spec.select574 = select i1 %i.fn, ptr null, ptr %1
  %spec.select575 = select i1 %i.fn, ptr %i.ax, ptr null
  br label %.thread451

.thread451:                                       ; preds = %bb.ad, %bb.y
  %.3169473 = phi float [ %.3169, %bb.ad ], [ 0.000000e+00, %bb.y ]
  %.sroa.0331.3465 = phi <2 x float> [ %.sroa.0331.3, %bb.ad ], [ %.sroa.0331.0542, %bb.y ]
  %.sroa.23.3463 = phi <2 x float> [ %.sroa.23.3, %bb.ad ], [ %.sroa.23.0541, %bb.y ]
  %.sroa.0.3461 = phi i64 [ %.sroa.0.3, %bb.ad ], [ %i.cb, %bb.y ] ; 4 uses
  %.sroa.0312.0 = phi ptr [ %spec.select574, %bb.ad ], [ null, %bb.y ] ; 2 uses
  %.sroa.7313.0 = phi ptr [ %spec.select575, %bb.ad ], [ %i.ax, %bb.y ] ; 2 uses
  %i.fo = mul i64 %.sroa.0.3461, 6364136223846793005
  %i.fp = add i64 %i.fo, %i.ah                    ; 2 uses
  %i.fq = mul i64 %i.fp, 6364136223846793005
  %i.fr = add i64 %i.fq, %i.ah                    ; 2 uses
  %i.fs = insertelement <2 x i64> poison, i64 %i.fp, i64 0
  %i.ft = insertelement <2 x i64> %i.fs, i64 %i.fr, i64 1 ; 3 uses
  %i.fu = lshr <2 x i64> %i.ft, splat (i64 45)
  %i.fv = lshr <2 x i64> %i.ft, splat (i64 27)
  %i.fw = xor <2 x i64> %i.fu, %i.fv
  %i.fx = trunc <2 x i64> %i.fw to <2 x i32>      ; 2 uses
  %i.fy = lshr <2 x i64> %i.ft, splat (i64 59)
  %i.fz = trunc nuw nsw <2 x i64> %i.fy to <2 x i32>
  %i.ga = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.fx, <2 x i32> %i.fx, <2 x i32> %i.fz)
  %i.gb = uitofp <2 x i32> %i.ga to <2 x float>
  %i.gc = fmul nnan <2 x float> %i.gb, splat (float f0x2F800000) ; 2 uses
  %i.gd = fcmp olt <2 x float> %i.gc, splat (float f0x3F7FFFFF)
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.gc, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %.not.i = icmp eq ptr %.sroa.0312.0, null
  br i1 %.not.i, label %bb.ae, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

bb.ae:                                            ; preds = %.thread451
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.gf = fmul nnan <2 x float> %i.ge, splat (float 2.000000e+00)
  %i.gg = fadd <2 x float> %i.gf, splat (float -1.000000e+00) ; 3 uses
  %i.gh = extractelement <2 x float> %i.gg, i64 0 ; 4 uses
  %i.gi = fcmp oeq float %i.gh, 0.000000e+00
  %i.gj = extractelement <2 x float> %i.gg, i64 1 ; 4 uses
  %i.gk = fcmp oeq float %i.gj, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %i.gi, i1 %i.gk, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gg) ; 2 uses
  %shift = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gm = fcmp ogt <2 x float> %i.gl, %shift
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  br i1 %i.gn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = fdiv float %i.gj, %i.gh
  %i.gp = fmul float %i.go, f0x3F490FDB
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gq = fdiv float %i.gh, %i.gj
  %i.gr = fmul float %i.gq, f0x3F490FDB
  %i.gs = fsub float f0x3FC90FDB, %i.gr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.024.i.i.i.i = phi float [ %i.gp, %bb.ag ], [ %i.gs, %bb.ah ] ; 2 uses
  %.0.i.i.i.i = phi float [ %i.gh, %bb.ag ], [ %i.gj, %bb.ah ] ; 2 uses
  %i.gt = call noundef float @cosf(float noundef %.024.i.i.i.i) #31, !noalias !242
  %i.gu = call noundef float @sinf(float noundef %.024.i.i.i.i) #31, !noalias !242
  %i.gv = fmul float %.0.i.i.i.i, %i.gt
  %i.gw = fmul float %.0.i.i.i.i, %i.gu
  %.sroa.0.0.vec.insert.i.i29.i.i.i.i = insertelement <2 x float> poison, float %i.gv, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i.i.i, float %i.gw, i64 1
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread: ; preds = %bb.ae, %bb.ai
  %.sroa.035.0.i.i.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i.i.i, %bb.ai ], [ zeroinitializer, %bb.ae ] ; 3 uses
  %i.gx = fmul <2 x float> %.sroa.035.0.i.i.i.i, %.sroa.035.0.i.i.i.i ; 2 uses
  %i.gy = extractelement <2 x float> %i.gx, i64 0
  %i.gz = fsub float 1.000000e+00, %i.gy
  %i.ha = extractelement <2 x float> %i.gx, i64 1
  %i.hb = fsub float %i.gz, %i.ha                 ; 2 uses
  %i.hc = fcmp ogt float %i.hb, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.hc, float %i.hb, float 0.000000e+00
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i.i) ; 3 uses
  %i.hd = fcmp ogt float %.sroa.17.0544, 0.000000e+00
  %i.he = fneg float %sqrt.i.i.i.i
  %spec.select.i.i = select i1 %i.hd, float %i.he, float %sqrt.i.i.i.i
  %i.hf = call float @llvm.fabs.f32(float %sqrt.i.i.i.i)
  %i.hg = fmul float %i.hf, f0x3EA2F983
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %.sroa.7313.0, align 4, !noalias !242
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7313.0, i64 8
  %.sroa.6.0.copyload.i.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !tbaa !21, !noalias !242
  %i.hh = fmul <2 x float> %.sroa.0.0.copyload.i.i.i, splat (float f0x3EA2F983)
  %i.hi = fmul <2 x float> %.sroa.6.0.copyload.i.i.i, splat (float f0x3EA2F983)
  store i8 1, ptr %i.ay, align 4, !tbaa !55, !alias.scope !242
  store <2 x float> %i.hh, ptr %9, align 8, !alias.scope !242
  store <2 x float> %i.hi, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !242
  store <2 x float> %.sroa.035.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !242
  store float %spec.select.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !242
  store float %i.hg, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !242
  store i32 5, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !242
  br label %bb.aj

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %.thread451
  %i.hj = fneg float %.sroa.17.0544
  %i.hk = fneg <2 x float> %.sroa.0401.0543
  %i.hl = lshr i64 %.sroa.0.3461, 45
  %i.hm = lshr i64 %.sroa.0.3461, 27
  %i.hn = xor i64 %i.hl, %i.hm
  %i.ho = trunc i64 %i.hn to i32                  ; 2 uses
  %i.hp = lshr i64 %.sroa.0.3461, 59
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = call noundef i32 @llvm.fshr.i32(i32 %i.ho, i32 %i.ho, i32 %i.hq)
  %i.hs = uitofp i32 %i.hr to float
  %i.ht = fmul nnan float %i.hs, f0x2F800000      ; 2 uses
  %i.hu = fcmp olt float %i.ht, f0x3F7FFFFF
  %.sroa.speculated.i.i267 = select i1 %i.hu, float %i.ht, float f0x3F7FFFFF
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0312.0, <2 x float> %i.hk, float %i.hj, float noundef %.sroa.speculated.i.i267, <2 x float> %i.ge, i32 noundef %6, i32 noundef 3)
  %.pre557 = load i8, ptr %i.ay, align 4, !tbaa !55, !range !56
  %i.hv = trunc nuw i8 %.pre557 to i1
  br i1 %i.hv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  %i.hw = load <2 x float>, ptr %9, align 8       ; 2 uses
  %i.hx = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.hy = shufflevector <2 x float> %i.hw, <2 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr585 = freeze <4 x float> %i.hy
  %i.hz = fcmp une <4 x float> %.fr585, zeroinitializer
  %i.ia = bitcast <4 x i1> %i.hz to i4
  %.not586 = icmp eq i4 %i.ia, 0
  br i1 %.not586, label %bb.ak, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit283

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit283: ; preds = %bb.aj
  %i.ib = load float, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !62 ; 2 uses
  %i.ic = fcmp oeq float %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.ak, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit286

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit286: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit283
  %i.id = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !63 ; 6 uses
  %i.ie = fcmp oeq float %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit286, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit283, %bb.aj, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_11DiffuseBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread439.thread522

bb.al:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit286
  %i.if = fmul <2 x float> %.sroa.0331.3465, %i.hw ; 2 uses
  %i.ig = fmul <2 x float> %.sroa.23.3463, %i.hx  ; 2 uses
  %i.ih = fmul float %.2160, %i.ib                ; 2 uses
  %i.ii = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !68 ; 2 uses
  %i.ij = and i32 %i.ii, 16
  %i.ik = icmp ne i32 %i.ij, 0
  %12 = trunc i8 %.0152548 to i1
  %i.il = select i1 %i.ik, i1 %12, i1 false       ; 2 uses
  %.sroa.0401.0.copyload410 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.im = and i32 %i.ii, 2
  %.not531 = icmp eq i32 %i.im, 0
  br i1 %.not531, label %.thread439, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = fmul float %.sroa.7425.0, %i.id
  %i.io = fcmp ogt float %i.in, 0.000000e+00
  %i.ip = select i1 %i.io, i32 1, i32 2
  %i.iq = select i1 %i.il, i32 16, i32 8
  %i.ir = or disjoint i32 %i.ip, %i.iq
  %i.is = fneg <2 x float> %.sroa.0401.0.copyload410
  %i.it = fneg float %i.id
  %.sroa.0401.4 = select i1 %i.c, <2 x float> %i.is, <2 x float> %.sroa.0401.0.copyload410
  %.sroa.17.4 = select i1 %i.c, float %i.it, float %i.id
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.iu, align 4, !tbaa !55
  store <2 x float> %i.if, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.ig, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0401.4, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.17.4, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ih, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ir, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 4
  br label %.thread439.thread522

.thread439.thread522:                             ; preds = %bb.ak, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.thread480

.thread439:                                       ; preds = %bb.al
  %13 = zext i1 %i.il to i8
  %i.iv = call noundef float @llvm.fabs.f32(float %i.id)
  %i.iw = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = fmul <2 x float> %i.if, %i.ix
  %i.iz = fmul <2 x float> %i.ig, %i.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.an

bb.an:                                            ; preds = %.thread439, %.thread439.thread501
  %.5157520 = phi i8 [ 0, %.thread439.thread501 ], [ %13, %.thread439 ]
  %.7165519 = phi float [ %i.ei, %.thread439.thread501 ], [ %i.ih, %.thread439 ]
  %.4170518 = phi float [ %i.cu, %.thread439.thread501 ], [ %.3169473, %.thread439 ]
  %.sroa.17.6516 = phi float [ %.fca.1.extract.i, %.thread439.thread501 ], [ %i.id, %.thread439 ]
  %.sroa.0401.6515 = phi <2 x float> [ %.fca.0.extract.i, %.thread439.thread501 ], [ %.sroa.0401.0.copyload410, %.thread439 ]
  %.sroa.0331.5514 = phi <2 x float> [ %i.ef, %.thread439.thread501 ], [ %i.iy, %.thread439 ]
  %.sroa.23.5513 = phi <2 x float> [ %i.eh, %.thread439.thread501 ], [ %i.iz, %.thread439 ]
  %.pn.in = phi i64 [ %i.dk, %.thread439.thread501 ], [ %i.fr, %.thread439 ]
  %i.ja = add nuw nsw i32 %.0171545, 1            ; 2 uses
  %i.jb = load i32, ptr %i.al, align 4, !tbaa !31
  %.not191 = icmp slt i32 %i.ja, %i.jb
  br i1 %.not191, label %bb.j, label %.critedge195, !llvm.loop !238

.critedge195:                                     ; preds = %bb.an, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread480

.thread480:                                       ; preds = %bb.u, %bb.x, %.thread439.thread522, %bb.l, %bb.n, %.critedge195, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA39_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(39) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !36, !alias.scope !245
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !245
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !245
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA39_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(39) %4)
          to label %_ZN4pbrt12StringPrintfIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !40, !alias.scope !245 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !245
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !40
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 4 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !67   ; 4 uses
  %i.b = fcmp oeq float %i.a, 1.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !20 ; 2 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.g = fcmp olt float %i.e, %i.f
  %i.h = select i1 %i.g, float %i.f, float %i.e
  %i.i = fcmp olt float %i.h, 1.000000e-03
  br i1 %i.i, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = fcmp olt float %3, -1.000000e+00
  %i.k = fcmp ogt float %3, 1.000000e+00
  %..i.i = select i1 %i.k, float 1.000000e+00, float %3
  %.0.i.i = select i1 %i.j, float -1.000000e+00, float %..i.i ; 3 uses
  %i.l = fcmp olt float %.0.i.i, 0.000000e+00     ; 2 uses
  %i.m = fdiv float 1.000000e+00, %i.a            ; 2 uses
  %i.n = fneg float %.0.i.i
  %.025.i = select i1 %i.l, float %i.m, float %i.a ; 4 uses
  %.024.i = select i1 %i.l, float %i.n, float %.0.i.i ; 5 uses
  %i.o = fmul float %.024.i, %.024.i
  %i.p = fsub float 1.000000e+00, %i.o
  %i.q = fmul float %.025.i, %.025.i
  %i.r = fdiv float %i.p, %i.q                    ; 2 uses
  %i.s = fcmp ult float %i.r, 1.000000e+00
  br i1 %i.s, label %bb.d, label %_ZN4pbrt12FrDielectricEff.exit

bb.d:                                             ; preds = %bb.c
  %i.t = fsub float 1.000000e+00, %i.r            ; 2 uses
  %i.u = fcmp ogt float %i.t, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.u, float %i.t, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.v = fmul float %.024.i, %.025.i              ; 2 uses
  %i.w = fsub float %i.v, %sqrt.i.i
  %i.x = fadd float %i.v, %sqrt.i.i
  %i.y = fdiv float %i.w, %i.x                    ; 2 uses
  %i.z = fmul float %.025.i, %sqrt.i.i            ; 2 uses
  %i.aa = fsub float %.024.i, %i.z
  %i.ab = fadd float %.024.i, %i.z
  %i.ac = fdiv float %i.aa, %i.ab                 ; 2 uses
  %i.ad = fmul float %i.y, %i.y
  %i.ae = fmul float %i.ac, %i.ac
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.af, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.ag, %bb.d ], [ 1.000000e+00, %bb.c ] ; 3 uses
  %i.ah = fsub float 1.000000e+00, %.0.i          ; 2 uses
  %i.ai = and i32 %7, 1
  %.not304 = icmp eq i32 %i.ai, 0
  %spec.select = select i1 %.not304, float 0.000000e+00, float %.0.i ; 3 uses
  %i.aj = and i32 %7, 2
  %.not305 = icmp eq i32 %i.aj, 0
  %.0295 = select i1 %.not305, float 0.000000e+00, float %i.ah ; 3 uses
  %i.ak = fcmp oeq float %spec.select, 0.000000e+00
  %i.al = fcmp oeq float %.0295, 0.000000e+00
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.as

bb.f:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  %i.am = fadd float %spec.select, %.0295         ; 2 uses
  %i.an = fdiv float %spec.select, %i.am          ; 2 uses
  %i.ao = fcmp olt float %4, %i.an
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = fneg <2 x float> %2
  %i.aq = tail call noundef float @llvm.fabs.f32(float %3)
  %i.ar = fdiv float %.0.i, %i.aq
  %.sroa.0465.0.vec.insert = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.0465.4.vec.insert = shufflevector <2 x float> %.sroa.0465.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.as, align 4, !tbaa !55
  store <2 x float> %.sroa.0465.4.vec.insert, ptr %0, align 4
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0465.4.vec.insert, ptr %.sroa.4457.0..sroa_idx, align 4
  %.sroa.5458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.ap, ptr %.sroa.5458.0..sroa_idx, align 4
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.6459.0..sroa_idx, align 4
  %.sroa.7460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.an, ptr %.sroa.7460.0..sroa_idx, align 4
  %.sroa.8461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 17, ptr %.sroa.8461.0..sroa_idx, align 4
  %.sroa.9462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9462.0..sroa_idx, align 4
  %.sroa.10463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10463.0..sroa_idx, align 4
  br label %bb.as

bb.h:                                             ; preds = %bb.f
  %.sroa.0277.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %2, i64 1
  %i.at = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i, float 0.000000e+00, float %3)
  %i.au = fsub float %3, %3
  %i.av = fadd float %i.at, %i.au
  %i.aw = tail call noundef float @llvm.fma.f32(float %.sroa.0277.0.vec.extract, float 0.000000e+00, float %i.av) ; 3 uses
  %i.ax = fcmp olt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = fneg float %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.084.0.i = phi <2 x float> [ splat (float -0.000000e+00), %bb.i ], [ zeroinitializer, %bb.h ]
  %.sroa.586.0.i = phi float [ -1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.h ]
  %.061.i = phi float [ %i.ay, %bb.i ], [ %i.aw, %bb.h ] ; 3 uses
  %.060.i = phi float [ %i.m, %bb.i ], [ %i.a, %bb.h ] ; 6 uses
  %i.az = fmul float %.061.i, %.061.i
  %i.ba = fsub float 1.000000e+00, %i.az          ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv float %0, %2
  %i.d = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.e = fmul float %i.d, f0xBFB8AA3B             ; 2 uses
  %i.f = tail call noundef float @llvm.floor.f32(float %i.e) ; 2 uses
  %i.g = fsub float %i.e, %i.f                    ; 3 uses
  %i.h = fptosi float %i.f to i32
  %i.i = tail call noundef float @llvm.fma.f32(float %i.g, float f0x3DA00AC9, float f0x3E679A0B)
  %i.j = tail call noundef float @llvm.fma.f32(float %i.g, float %i.i, float f0x3F321004)
  %i.k = tail call noundef float @llvm.fma.f32(float %i.g, float %i.j, float 1.000000e+00)
  %i.l = bitcast float %i.k to i32                ; 2 uses
  %i.m = lshr i32 %i.l, 23
  %i.n = add i32 %i.h, -127
  %i.o = add i32 %i.n, %i.m                       ; 3 uses
  %i.p = icmp slt i32 %i.o, -126
  br i1 %i.p, label %_ZN4pbrt7FastExpEf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp sgt i32 %i.o, 127
  br i1 %i.q, label %_ZN4pbrt7FastExpEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.l, -2139095041
  %i.s = shl nsw i32 %i.o, 23
  %i.t = add nsw i32 %i.s, 1065353216
  %i.u = or i32 %i.t, %i.r
  %i.v = bitcast i32 %i.u to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.v, %bb.d ], [ 0.000000e+00, %bb.b ], [ +inf, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE5FlagsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load float, ptr %i.a, align 4, !tbaa !67
  %i.c = fcmp oeq float %i.b, 1.000000e+00
  %spec.select.i = select i1 %i.c, i32 2, i32 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !20 ; 2 uses
  %i.h = fcmp olt float %i.f, %i.g
  %i.i = select i1 %i.h, float %i.g, float %i.f
  %i.j = fcmp olt float %i.i, 1.000000e-03
  %i.k = select i1 %i.j, i32 16, i32 8
  %i.l = or disjoint i32 %i.k, %spec.select.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.n, align 4, !tbaa !20 ; 2 uses
  %i.q = load float, ptr %i.o, align 4, !tbaa !20 ; 2 uses
  %i.r = fcmp olt float %i.p, %i.q
  %i.s = select i1 %i.r, float %i.q, float %i.p
  %i.t = fcmp olt float %i.s, 1.000000e-03
  %i.u = select i1 %i.t, i32 17, i32 9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = phi i32 [ %i.l, %bb.b ], [ %i.u, %bb.c ]
  ret i32 %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12) %i.a, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 poison, i32 noundef %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = tail call noundef float @_ZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(40) %i.d, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi float [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret float %i.f
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(84) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %"class.pstd::optional", align 16   ; 15 uses
  %9 = alloca %"class.pstd::optional", align 8    ; 12 uses
  %i.b = icmp eq i32 %7, 3
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA39_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 659, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(39) @.str.5) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp olt float %3, 0.000000e+00          ; 5 uses
  %i.d = fneg <2 x float> %2
  %i.e = fneg float %3
  %.sroa.0422.0 = select i1 %i.c, <2 x float> %i.d, <2 x float> %2 ; 2 uses
  %.sroa.7426.0 = select i1 %i.c, float %i.e, float %3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %8, ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %.sroa.0422.0, float %.sroa.7426.0, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef 3)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.g = load i8, ptr %i.f, align 4, !tbaa !55, !range !56, !noundef !57
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load <4 x float>, ptr %8, align 16
  %.fr = freeze <4 x float> %i.j
  %i.k = fcmp une <4 x float> %.fr, zeroinitializer
  %i.l = bitcast <4 x i1> %i.k to i4
  %.not581 = icmp eq i4 %i.l, 0
  br i1 %.not581, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.n = load float, ptr %i.m, align 4, !tbaa !62 ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !63 ; 4 uses
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit197, %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit199
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = load i32, ptr %i.s, align 16, !tbaa !68  ; 2 uses
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.w = load <2 x float>, ptr %i.v, align 16, !tbaa !20
  %i.x = fneg <2 x float> %i.w
  %i.y = fneg float %i.q
  store <2 x float> %i.x, ptr %i.v, align 16
  store float %i.y, ptr %i.p, align 8
  br label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit: ; preds = %bb.g, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 1, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.aa, align 4, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %0, ptr noundef nonnull align 16 dereferenceable(45) %8, i64 44, i1 false)
  br label %.thread481

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0402.0.copyload = load <2 x float>, ptr %i.ab, align 16
  %i.ac = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !53
  %i.ae = tail call noundef i64 @_ZN4pbrt4HashIJiNS_7Vector3IfEEEEEmDpT_(i32 noundef %i.ad, <2 x float> %.sroa.0422.0, float %.sroa.7426.0)
  %i.af = tail call noundef i64 @_ZN4pbrt4HashIJfNS_6Point2IfEEEEEmDpT_(float noundef %4, <2 x float> %5)
  %i.ag = shl i64 %i.ae, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !76
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !77
  %.not191541 = icmp sgt i32 %i.am, 0
  br i1 %.not191541, label %.lr.ph, label %.critedge195

.lr.ph:                                           ; preds = %bb.i
  %i.an = add i64 %i.ah, %i.af
  %i.ao = load float, ptr %i.ai, align 4, !tbaa !75
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.q)
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %i.i, align 8, !tbaa !21
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fmul <2 x float> %i.ar, %.sroa.6.0.copyload.i
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %8, align 16
  %i.at = fmul <2 x float> %i.ar, %.sroa.0.0.copyload.i
  %10 = trunc i32 %i.t to i8
  %11 = lshr i8 %10, 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.ak
  %.pn533539.pn.in = phi i64 [ %i.an, %.lr.ph ], [ %.pn.in, %bb.ak ]
  %.0152549 = phi i8 [ %11, %.lr.ph ], [ %.5157521, %bb.ak ]
  %.0158548 = phi float [ %i.n, %.lr.ph ], [ %.7165520, %bb.ak ] ; 3 uses
  %.0166547 = phi float [ %i.ao, %.lr.ph ], [ %.4170519, %bb.ak ] ; 3 uses
  %.0171546 = phi i32 [ 0, %.lr.ph ], [ %i.ic, %bb.ak ] ; 2 uses
  %.sroa.17.0545 = phi float [ %i.q, %.lr.ph ], [ %.sroa.17.6517, %bb.ak ] ; 6 uses
  %.sroa.0402.0544 = phi <2 x float> [ %.sroa.0402.0.copyload, %.lr.ph ], [ %.sroa.0402.6516, %bb.ak ] ; 2 uses
  %.sroa.0332.0543 = phi <2 x float> [ %i.at, %.lr.ph ], [ %.sroa.0332.5515, %bb.ak ] ; 6 uses
  %.sroa.23.0542 = phi <2 x float> [ %i.as, %.lr.ph ], [ %.sroa.23.5514, %bb.ak ] ; 6 uses
  %.pn533539.pn = mul i64 %.pn533539.pn.in, 6364136223846793005
  %.sroa.0.0550 = add i64 %.pn533539.pn, %i.ah    ; 5 uses
  %.sroa.0332.0.vec.extract = extractelement <2 x float> %.sroa.0332.0543, i64 0 ; 2 uses
  %.sroa.0332.4.vec.extract = extractelement <2 x float> %.sroa.0332.0543, i64 1 ; 2 uses
  %i.be = fcmp olt float %.sroa.0332.0.vec.extract, %.sroa.0332.4.vec.extract
  %.sroa.speculated.i = select i1 %i.be, float %.sroa.0332.4.vec.extract, float %.sroa.0332.0.vec.extract ; 2 uses
  %.sroa.23.8.vec.extract = extractelement <2 x float> %.sroa.23.0542, i64 0 ; 2 uses
  %i.bf = fcmp olt float %.sroa.speculated.i, %.sroa.23.8.vec.extract
  %.sroa.speculated.1.i = select i1 %i.bf, float %.sroa.23.8.vec.extract, float %.sroa.speculated.i ; 2 uses
  %.sroa.23.12.vec.extract = extractelement <2 x float> %.sroa.23.0542, i64 1 ; 2 uses
  %i.bg = fcmp olt float %.sroa.speculated.1.i, %.sroa.23.12.vec.extract
  %.sroa.speculated.2.i = select i1 %i.bg, float %.sroa.23.12.vec.extract, float %.sroa.speculated.1.i
  %i.bh = fdiv float %.sroa.speculated.2.i, %.0158548 ; 2 uses
  %i.bi = icmp samesign ugt i32 %.0171546, 3
  %i.bj = fcmp olt float %i.bh, 2.500000e-01
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = fsub float 1.000000e+00, %i.bh          ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 0.000000e+00
  %.sroa.speculated = select i1 %i.bl, float %i.bk, float 0.000000e+00 ; 2 uses
  %i.bm = lshr i64 %.sroa.0.0550, 45
  %i.bn = lshr i64 %.sroa.0.0550, 27
  %i.bo = xor i64 %i.bm, %i.bn
  %i.bp = trunc i64 %i.bo to i32                  ; 2 uses
  %i.bq = lshr i64 %.sroa.0.0550, 59
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = call noundef i32 @llvm.fshr.i32(i32 %i.bp, i32 %i.bp, i32 %i.br)
  %i.bt = uitofp i32 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x2F800000      ; 2 uses
  %i.bv = fcmp olt float %i.bu, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.bv, float %i.bu, float f0x3F7FFFFF
  %i.bw = fcmp uge float %.sroa.speculated.i.i, %.sroa.speculated
  br i1 %i.bw, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bx = mul i64 %.sroa.0.0550, 6364136223846793005
  %i.by = add i64 %i.bx, %i.ah
  %i.bz = fsub nnan float 1.000000e+00, %.sroa.speculated
  %i.ca = fmul float %.0158548, %i.bz
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

bb.m:                                             ; preds = %.thread, %bb.j
  %.sroa.0.1 = phi i64 [ %i.by, %.thread ], [ %.sroa.0.0550, %bb.j ] ; 5 uses
  %.2160 = phi float [ %i.ca, %.thread ], [ %.0158548, %bb.j ] ; 2 uses
  %i.cb = fcmp oeq float %.sroa.17.0545, 0.000000e+00
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

bb.o:                                             ; preds = %bb.m
  %i.cc = load <4 x float>, ptr %i.au, align 4
  %.fr582 = freeze <4 x float> %i.cc
  %i.cd = fcmp une <4 x float> %.fr582, zeroinitializer
  %i.ce = bitcast <4 x i1> %i.cd to i4
  %.not583 = icmp eq i4 %i.ce, 0
  br i1 %.not583, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = mul i64 %.sroa.0.1, 6364136223846793005
  %i.cg = add i64 %i.cf, %i.ah                    ; 4 uses
  %i.ch = lshr i64 %.sroa.0.1, 45
  %i.ci = lshr i64 %.sroa.0.1, 27
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = lshr i64 %.sroa.0.1, 59
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = call noundef i32 @llvm.fshr.i32(i32 %i.ck, i32 %i.ck, i32 %i.cm)
  %i.co = uitofp i32 %i.cn to float
  %i.cp = fmul nnan float %i.co, f0x2F800000      ; 2 uses
  %i.cq = fcmp olt float %i.cp, f0x3F7FFFFF
  %.sroa.speculated.i.i234 = select i1 %i.cq, float %i.cp, float f0x3F7FFFFF
  %i.cr = call noundef float @llvm.fabs.f32(float %.sroa.17.0545)
  %i.cs = fdiv float 1.000000e+00, %i.cr
  %i.ct = fsub float 1.000000e+00, %.sroa.speculated.i.i234
  %i.cu = call noundef float @logf(float noundef %i.ct) #31
  %i.cv = fneg float %i.cu
  %i.cw = fdiv float %i.cv, %i.cs                 ; 2 uses
  %i.cx = fcmp ogt float %.sroa.17.0545, 0.000000e+00
  %i.cy = fneg float %i.cw
  %.p = select i1 %i.cx, float %i.cw, float %i.cy
  %i.cz = fadd float %.0166547, %.p               ; 7 uses
  %i.da = load atomic i8, ptr @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.q, label %bb.t, !prof !70

bb.q:                                             ; preds = %bb.p
  %i.dc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg, ptr noundef nonnull @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeESB_, ptr noundef null)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.p
  %i.dd = load i64, ptr %i.aw, align 8, !tbaa !71
  %i.de = add nsw i64 %i.dd, 1
  store i64 %i.de, ptr %i.aw, align 8, !tbaa !71
  %i.df = fcmp oeq float %i.cz, %.0166547
  br i1 %i.df, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !71
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

bb.v:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  resume { ptr, i32 } %i.dj

.critedge:                                        ; preds = %bb.t
  %i.dk = fcmp ogt float %i.cz, 0.000000e+00
  %.pre = load float, ptr %i.ai, align 4, !tbaa !75 ; 3 uses
  %i.dl = fcmp olt float %i.cz, %.pre
  %or.cond573 = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond573, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.critedge
  %i.dm = fneg <2 x float> %.sroa.0402.0544
  %i.dn = fneg float %.sroa.17.0545
  %i.do = mul i64 %i.cg, 6364136223846793005
  %i.dp = add i64 %i.do, %i.ah                    ; 2 uses
  %i.dq = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.dr = insertelement <2 x i64> %i.dq, i64 %i.dp, i64 1 ; 3 uses
  %i.ds = lshr <2 x i64> %i.dr, splat (i64 45)
  %i.dt = lshr <2 x i64> %i.dr, splat (i64 27)
  %i.du = xor <2 x i64> %i.ds, %i.dt
  %i.dv = trunc <2 x i64> %i.du to <2 x i32>      ; 2 uses
  %i.dw = lshr <2 x i64> %i.dr, splat (i64 59)
  %i.dx = trunc nuw nsw <2 x i64> %i.dw to <2 x i32>
  %i.dy = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.dv, <2 x i32> %i.dv, <2 x i32> %i.dx)
  %i.dz = uitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = fmul nnan <2 x float> %i.dz, splat (float f0x2F800000) ; 2 uses
  %i.eb = fcmp olt <2 x float> %i.ea, splat (float f0x3F7FFFFF)
  %i.ec = select <2 x i1> %i.eb, <2 x float> %i.ea, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !282
  %i.ed = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %i.dm, float %i.dn, float noundef %i.ak, <2 x float> %i.ec, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.ed, 1 ; 2 uses
  %i.ee = load float, ptr %i.a, align 4, !tbaa !20, !noalias !282 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !282
  %i.ef = fcmp oeq float %i.ee, 0.000000e+00
  %i.eg = fcmp oeq float %.fca.1.extract.i, 0.000000e+00
  %or.cond531 = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond531, label %bb.x, label %.thread440.thread502

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

.thread440.thread502:                             ; preds = %bb.w
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.ed, 0
  %.sroa.0.0.copyload.i248 = load <2 x float>, ptr %i.au, align 4
  %.sroa.6.0.copyload.i250 = load <2 x float>, ptr %i.av, align 4, !tbaa !21
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = fmul <2 x float> %i.ei, %.sroa.0.0.copyload.i248
  %i.ek = fmul <2 x float> %.sroa.0332.0543, %i.ej
  %i.el = fmul <2 x float> %i.ei, %.sroa.6.0.copyload.i250
  %i.em = fmul <2 x float> %.sroa.23.0542, %i.el
  %i.en = fmul float %.2160, %i.ee
  br label %bb.ak

bb.y:                                             ; preds = %.critedge
  %i.eo = fcmp olt float %i.cz, 0.000000e+00
  %i.ep = fcmp ogt float %i.cz, %.pre
  %..i265 = select i1 %i.ep, float %.pre, float %i.cz
  br i1 %i.eo, label %.thread452, label %bb.ad

bb.z:                                             ; preds = %bb.o
  %i.eq = load float, ptr %i.ai, align 4, !tbaa !75 ; 4 uses
  %i.er = fcmp oeq float %.0166547, %i.eq
  %spec.select = select i1 %i.er, float 0.000000e+00, float %i.eq
  %i.es = call noundef float @llvm.fabs.f32(float %i.eq)
  %i.et = fcmp ugt float %i.es, f0x00800000
  br i1 %i.et, label %bb.aa, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.eu = fdiv float %i.eq, %.sroa.17.0545
  %i.ev = call noundef float @llvm.fabs.f32(float %i.eu)
  %i.ew = fmul float %i.ev, f0xBFB8AA3B           ; 2 uses
  %i.ex = call noundef float @llvm.floor.f32(float %i.ew) ; 2 uses
  %i.ey = fsub float %i.ew, %i.ex                 ; 3 uses
  %i.ez = fptosi float %i.ex to i32
  %i.fa = call noundef float @llvm.fma.f32(float %i.ey, float f0x3DA00AC9, float f0x3E679A0B)
  %i.fb = call noundef float @llvm.fma.f32(float %i.ey, float %i.fa, float f0x3F321004)
  %i.fc = call noundef float @llvm.fma.f32(float %i.ey, float %i.fb, float 1.000000e+00)
  %i.fd = bitcast float %i.fc to i32              ; 2 uses
  %i.fe = lshr i32 %i.fd, 23
  %i.ff = add i32 %i.ez, -127
  %i.fg = add i32 %i.ff, %i.fe                    ; 3 uses
  %i.fh = icmp slt i32 %i.fg, -126
  br i1 %i.fh, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = icmp sgt i32 %i.fg, 127
  br i1 %i.fi, label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fj = and i32 %i.fd, -2139095041
  %i.fk = shl nsw i32 %i.fg, 23
  %i.fl = add nsw i32 %i.fk, 1065353216
  %i.fm = or i32 %i.fl, %i.fj
  %i.fn = bitcast i32 %i.fm to float
  br label %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit

_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.0.i266 = phi float [ 1.000000e+00, %bb.z ], [ %i.fn, %bb.ac ], [ 0.000000e+00, %bb.aa ], [ +inf, %bb.ab ]
  %i.fo = insertelement <2 x float> poison, float %.0.i266, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fq = fmul <2 x float> %.sroa.0332.0543, %i.fp
  %i.fr = fmul <2 x float> %.sroa.23.0542, %i.fp
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit
  %.sroa.0.3 = phi i64 [ %i.cg, %bb.y ], [ %.sroa.0.1, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.sroa.23.3 = phi <2 x float> [ %.sroa.23.0542, %bb.y ], [ %i.fr, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.sroa.0332.3 = phi <2 x float> [ %.sroa.0332.0543, %bb.y ], [ %i.fq, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ]
  %.3169 = phi float [ %..i265, %bb.y ], [ %spec.select, %_ZN4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE2TrEfNS_7Vector3IfEE.exit ] ; 2 uses
  %i.fs = fcmp oeq float %.3169, 0.000000e+00
  %spec.select574 = select i1 %i.fs, ptr null, ptr %1
  br label %.thread452

.thread452:                                       ; preds = %bb.ad, %bb.y
  %.3169474 = phi float [ %.3169, %bb.ad ], [ 0.000000e+00, %bb.y ]
  %.sroa.0332.3466 = phi <2 x float> [ %.sroa.0332.3, %bb.ad ], [ %.sroa.0332.0543, %bb.y ]
  %.sroa.23.3464 = phi <2 x float> [ %.sroa.23.3, %bb.ad ], [ %.sroa.23.0542, %bb.y ]
  %.sroa.0.3462 = phi i64 [ %.sroa.0.3, %bb.ad ], [ %i.cg, %bb.y ] ; 4 uses
  %.sroa.0313.0 = phi ptr [ %spec.select574, %bb.ad ], [ null, %bb.y ] ; 2 uses
  %i.ft = mul i64 %.sroa.0.3462, 6364136223846793005
  %i.fu = lshr i64 %.sroa.0.3462, 45
  %i.fv = lshr i64 %.sroa.0.3462, 27
  %i.fw = xor i64 %i.fu, %i.fv
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %i.fy = lshr i64 %.sroa.0.3462, 59
  %i.fz = trunc nuw nsw i64 %i.fy to i32
  %i.ga = call noundef i32 @llvm.fshr.i32(i32 %i.fx, i32 %i.fx, i32 %i.fz)
  %i.gb = uitofp i32 %i.ga to float
  %i.gc = fmul nnan float %i.gb, f0x2F800000      ; 2 uses
  %i.gd = fcmp olt float %i.gc, f0x3F7FFFFF
  %.sroa.speculated.i.i267 = select i1 %i.gd, float %i.gc, float f0x3F7FFFFF ; 2 uses
  %i.ge = add i64 %i.ft, %i.ah                    ; 2 uses
  %i.gf = mul i64 %i.ge, 6364136223846793005
  %i.gg = add i64 %i.gf, %i.ah                    ; 2 uses
  %i.gh = insertelement <2 x i64> poison, i64 %i.ge, i64 0
  %i.gi = insertelement <2 x i64> %i.gh, i64 %i.gg, i64 1 ; 3 uses
  %i.gj = lshr <2 x i64> %i.gi, splat (i64 45)
  %i.gk = lshr <2 x i64> %i.gi, splat (i64 27)
  %i.gl = xor <2 x i64> %i.gj, %i.gk
  %i.gm = trunc <2 x i64> %i.gl to <2 x i32>      ; 2 uses
  %i.gn = lshr <2 x i64> %i.gi, splat (i64 59)
  %i.go = trunc nuw nsw <2 x i64> %i.gn to <2 x i32>
  %i.gp = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.gm, <2 x i32> %i.gm, <2 x i32> %i.go)
  %i.gq = uitofp <2 x i32> %i.gp to <2 x float>
  %i.gr = fmul nnan <2 x float> %i.gq, splat (float f0x2F800000) ; 2 uses
  %i.gs = fcmp olt <2 x float> %i.gr, splat (float f0x3F7FFFFF)
  %i.gt = select <2 x i1> %i.gs, <2 x float> %i.gr, <2 x float> splat (float f0x3F7FFFFF) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.gu = fneg <2 x float> %.sroa.0402.0544       ; 2 uses
  %i.gv = fneg float %.sroa.17.0545               ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0313.0, null
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread452
  call void @_ZNK4pbrt14DielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0313.0, <2 x float> %i.gu, float %i.gv, float noundef %.sroa.speculated.i.i267, <2 x float> %i.gt, i32 noundef %6, i32 noundef 3)
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

bb.af:                                            ; preds = %.thread452
  call void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 4 dereferenceable(40) %i.ax, <2 x float> %i.gu, float %i.gv, float noundef %.sroa.speculated.i.i267, <2 x float> %i.gt, i32 noundef %6, i32 noundef 3)
  br label %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit

_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit: ; preds = %bb.ae, %bb.af
  %i.gw = load i8, ptr %i.ay, align 4, !tbaa !55, !range !56, !noundef !57
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  %i.gy = load <2 x float>, ptr %9, align 8       ; 2 uses
  %i.gz = load <2 x float>, ptr %i.az, align 8    ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gy, <2 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr584 = freeze <4 x float> %i.ha
  %i.hb = fcmp une <4 x float> %.fr584, zeroinitializer
  %i.hc = bitcast <4 x i1> %i.hb to i4
  %.not585 = icmp eq i4 %i.hc, 0
  br i1 %.not585, label %bb.ah, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit284

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit284: ; preds = %bb.ag
  %i.hd = load float, ptr %i.ba, align 4, !tbaa !62 ; 2 uses
  %i.he = fcmp oeq float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.ah, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit287

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit287: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit284
  %i.hf = load float, ptr %i.bb, align 8, !tbaa !63 ; 6 uses
  %i.hg = fcmp oeq float %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit287, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit284, %bb.ag, %_ZNK4pbrt15TopOrBottomBxDFINS_14DielectricBxDFENS_13ConductorBxDFEE8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread440.thread523

bb.ai:                                            ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit287
  %i.hh = fmul <2 x float> %.sroa.0332.3466, %i.gy ; 2 uses
  %i.hi = fmul <2 x float> %.sroa.23.3464, %i.gz  ; 2 uses
  %i.hj = fmul float %.2160, %i.hd                ; 2 uses
  %i.hk = load i32, ptr %i.bc, align 8, !tbaa !68 ; 2 uses
  %i.hl = and i32 %i.hk, 16
  %i.hm = icmp ne i32 %i.hl, 0
  %12 = trunc i8 %.0152549 to i1
  %i.hn = select i1 %i.hm, i1 %12, i1 false       ; 2 uses
  %.sroa.0402.0.copyload411 = load <2 x float>, ptr %i.bd, align 8 ; 3 uses
  %i.ho = and i32 %i.hk, 2
  %.not532 = icmp eq i32 %i.ho, 0
  br i1 %.not532, label %.thread440, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = fmul float %.sroa.7426.0, %i.hf
  %i.hq = fcmp ogt float %i.hp, 0.000000e+00
  %i.hr = select i1 %i.hq, i32 1, i32 2
  %i.hs = select i1 %i.hn, i32 16, i32 8
  %i.ht = or disjoint i32 %i.hr, %i.hs
  %i.hu = fneg <2 x float> %.sroa.0402.0.copyload411
  %i.hv = fneg float %i.hf
  %.sroa.0402.4 = select i1 %i.c, <2 x float> %i.hu, <2 x float> %.sroa.0402.0.copyload411
  %.sroa.17.4 = select i1 %i.c, float %i.hv, float %i.hf
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.hw, align 4, !tbaa !55
  store <2 x float> %i.hh, ptr %0, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.hi, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0402.4, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.17.4, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.hj, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ht, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 4
  br label %.thread440.thread523

.thread440.thread523:                             ; preds = %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.thread481

.thread440:                                       ; preds = %bb.ai
  %13 = zext i1 %i.hn to i8
  %i.hx = call noundef float @llvm.fabs.f32(float %i.hf)
  %i.hy = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ia = fmul <2 x float> %i.hh, %i.hz
  %i.ib = fmul <2 x float> %i.hi, %i.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.ak

bb.ak:                                            ; preds = %.thread440, %.thread440.thread502
  %.5157521 = phi i8 [ 0, %.thread440.thread502 ], [ %13, %.thread440 ]
  %.7165520 = phi float [ %i.en, %.thread440.thread502 ], [ %i.hj, %.thread440 ]
  %.4170519 = phi float [ %i.cz, %.thread440.thread502 ], [ %.3169474, %.thread440 ]
  %.sroa.17.6517 = phi float [ %.fca.1.extract.i, %.thread440.thread502 ], [ %i.hf, %.thread440 ]
  %.sroa.0402.6516 = phi <2 x float> [ %.fca.0.extract.i, %.thread440.thread502 ], [ %.sroa.0402.0.copyload411, %.thread440 ]
  %.sroa.0332.5515 = phi <2 x float> [ %i.ek, %.thread440.thread502 ], [ %i.ia, %.thread440 ]
  %.sroa.23.5514 = phi <2 x float> [ %i.em, %.thread440.thread502 ], [ %i.ib, %.thread440 ]
  %.pn.in = phi i64 [ %i.dp, %.thread440.thread502 ], [ %i.gg, %.thread440 ]
  %i.ic = add nuw nsw i32 %.0171546, 1            ; 2 uses
  %i.id = load i32, ptr %i.al, align 4, !tbaa !77
  %.not191 = icmp slt i32 %i.ic, %i.id
  br i1 %.not191, label %bb.j, label %.critedge195, !llvm.loop !281

.critedge195:                                     ; preds = %bb.ak, %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %.thread481

.thread481:                                       ; preds = %bb.u, %bb.x, %.thread440.thread523, %bb.l, %bb.n, %.critedge195, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt13ConductorBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(40) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load float, ptr %1, align 4, !tbaa !20   ; 2 uses
  %i.d = load float, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.e = fcmp olt float %i.c, %i.d
  %i.f = select i1 %i.e, float %i.d, float %i.c
  %i.g = fcmp olt float %i.f, 1.000000e-03
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = fneg <2 x float> %2
  %i.i = tail call noundef float @llvm.fabs.f32(float %3) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0107.0.copyload = load <2 x float>, ptr %i.j, align 4 ; 2 uses
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2108.0.copyload = load <2 x float>, ptr %.sroa.2108.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0105.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2106.0.copyload = load <2 x float>, ptr %.sroa.2106.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %.sroa.0107.0.copyload, <2 x float> %.sroa.0105.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.l = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.i, <2 x float> %.sroa.0.4.vec.insert.i)
  %.sroa.0.4.vec.insert.1.i = shufflevector <2 x float> %.sroa.0107.0.copyload, <2 x float> %.sroa.0105.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.m = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.i, <2 x float> %.sroa.0.4.vec.insert.1.i)
  %.sroa.0.4.vec.insert.2.i = shufflevector <2 x float> %.sroa.2108.0.copyload, <2 x float> %.sroa.2106.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.n = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.i, <2 x float> %.sroa.0.4.vec.insert.2.i)
  %.sroa.0.4.vec.insert.3.i = shufflevector <2 x float> %.sroa.2108.0.copyload, <2 x float> %.sroa.2106.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.o = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.i, <2 x float> %.sroa.0.4.vec.insert.3.i)
  %i.p = insertelement <2 x float> poison, float %i.l, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.m, i64 1
  %i.r = insertelement <2 x float> poison, float %i.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fdiv <2 x float> %i.q, %i.s
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = insertelement <2 x float> %i.u, float %i.o, i64 1
  %i.w = fdiv <2 x float> %i.v, %i.s
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.x, align 4, !tbaa !55
  store <2 x float> %i.t, ptr %0, align 4
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.w, ptr %.sroa.4178.0..sroa_idx, align 4
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.h, ptr %.sroa.5179.0..sroa_idx, align 4
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.6180.0..sroa_idx, align 4
  %.sroa.7181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 17, ptr %.sroa.8182.0..sroa_idx, align 4
  tail call void @llvm.masked.store.v3f32.p0(<3 x float> <float 1.000000e+00, float poison, float 1.000000e+00>, ptr align 4 %.sroa.7181.0..sroa_idx, <3 x i1> <i1 true, i1 false, i1 true>)
  %.sroa.10184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10184.0..sroa_idx, align 4
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.y = fcmp oeq float %3, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.z = tail call { <2 x float>, float } @_ZNK4pbrt27TrowbridgeReitzDistribution9Sample_wmENS_7Vector3IfEENS_6Point2IfEE(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %2, float %3, <2 x float> %5) ; 2 uses
  %.fca.0.extract81 = extractvalue { <2 x float>, float } %i.z, 0 ; 5 uses
  %.fca.1.extract82 = extractvalue { <2 x float>, float } %i.z, 1 ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract81, i64 0
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.fca.0.extract81, i64 1
  %i.aa = fmul <2 x float> %2, %.fca.0.extract81  ; 2 uses
  %shift = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aa, %shift
  %i.ab = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ac = fmul float %3, %.fca.1.extract82
  %i.ad = fadd float %i.ac, %i.ab                 ; 2 uses
  %i.ae = fmul float %i.ad, 2.000000e+00          ; 2 uses
  %i.af = fmul float %.fca.1.extract82, %i.ae
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %.fca.0.extract81, %i.ah
  %i.aj = fsub <2 x float> %i.ai, %2              ; 2 uses
  %i.ak = fsub float %i.af, %3                    ; 5 uses
  %i.al = fmul float %3, %i.ak
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.an = tail call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %2, float %3, <2 x float> %.fca.0.extract81, float %.fca.1.extract82)
  %i.ao = tail call noundef float @llvm.fabs.f32(float %3)
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ak)
  %i.aq = fcmp oeq float %i.ak, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.ad) ; 5 uses
  %i.as = fmul float %i.ar, 4.000000e+00
  %i.at = fdiv float %i.an, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.au, align 4 ; 2 uses
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.222.0.copyload = load <2 x float>, ptr %.sroa.222.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.av, align 4 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.220.0.copyload = load <2 x float>, ptr %.sroa.220.0..sroa_idx, align 4, !tbaa !21 ; 2 uses
  %.sroa.0.4.vec.insert.i140 = shufflevector <2 x float> %.sroa.021.0.copyload, <2 x float> %.sroa.019.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.aw = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ar, <2 x float> %.sroa.0.4.vec.insert.i140)
  %.sroa.0.4.vec.insert.1.i142 = shufflevector <2 x float> %.sroa.021.0.copyload, <2 x float> %.sroa.019.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ax = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ar, <2 x float> %.sroa.0.4.vec.insert.1.i142)
  %.sroa.0.4.vec.insert.2.i144 = shufflevector <2 x float> %.sroa.222.0.copyload, <2 x float> %.sroa.220.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ay = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ar, <2 x float> %.sroa.0.4.vec.insert.2.i144)
  %.sroa.0.4.vec.insert.3.i146 = shufflevector <2 x float> %.sroa.222.0.copyload, <2 x float> %.sroa.220.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.az = tail call noundef float @_ZN4pbrt9FrComplexEfN4pstd7complexIfEE(float noundef %i.ar, <2 x float> %.sroa.0.4.vec.insert.3.i146)
  %i.ba = fmul float %.fca.1.extract82, %.fca.1.extract82 ; 4 uses
  %i.bb = fsub float 1.000000e+00, %i.ba          ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.bc, float %i.bb, float 0.000000e+00 ; 2 uses
  %i.bd = fdiv float %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.be = tail call float @llvm.fabs.f32(float %i.bd)
  %i.bf = fcmp oeq float %i.be, +inf
  br i1 %i.bf, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = fmul float %i.ba, %i.ba                 ; 2 uses
  %i.bh = fcmp olt float %i.bg, 1.000000e-16
  br i1 %i.bh, label %_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = tail call noundef float @sqrtf(float noundef %.sroa.speculated.i.i.i) #31 ; 3 uses
  %i.bj = fcmp oeq float %i.bi, 0.000000e+00
  br i1 %i.bj, label %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i, label %bb.n

_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i:    ; preds = %bb.m
  %i.bk = load float, ptr %1, align 4, !tbaa !41  ; 2 uses
  %i.bl = fdiv float 1.000000e+00, %i.bk          ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bn = fdiv float %.sroa.01.0.vec.extract.i.i, %i.bi ; 3 uses
  %i.bo = fcmp olt float %i.bn, -1.000000e+00
  %i.bp = fcmp ogt float %i.bn, 1.000000e+00
  %..i.i.i = select i1 %i.bp, float 1.000000e+00, float %i.bn
  %.0.i.i.i = select i1 %i.bo, float -1.000000e+00, float %..i.i.i
  %i.bq = load float, ptr %1, align 4, !tbaa !41  ; 2 uses
  %i.br = fdiv float %.0.i.i.i, %i.bq             ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = fdiv float %.sroa.01.4.vec.extract.i.i, %i.bi ; 3 uses
  %i.bu = fcmp olt float %i.bt, -1.000000e+00
  %i.bv = fcmp ogt float %i.bt, 1.000000e+00
  %..i.i29.i = select i1 %i.bv, float 1.000000e+00, float %i.bt
  %.0.i.i30.i = select i1 %i.bu, float -1.000000e+00, float %..i.i29.i
  br label %_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i

_ZN4pbrt6SinPhiENS_7Vector3IfEE.exit.i:           ; preds = %bb.n, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i
  %i.bw = phi float [ %i.bs, %bb.n ], [ %i.bm, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bx = phi float [ %i.bq, %bb.n ], [ %i.bk, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.by = phi float [ %.0.i.i30.i, %bb.n ], [ 0.000000e+00, %_ZN4pbrt6CosPhiENS_7Vector3IfEE.exit.thread.i ]
  %i.bz = load float, ptr %i.b, align 4, !tbaa !42 ; 2 uses
  %i.ca = fdiv float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = fadd float %i.bw, %i.cb
end_hunk_1
