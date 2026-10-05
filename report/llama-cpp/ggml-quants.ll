Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 329
begin_hunk_0_@quantize_iq1_s:bb.a
  %i.abp = or i16 %i.abk, %i.abo
  %i.abq = trunc i16 %i.abb to i8
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abe, i64 3
  store i8 %i.abq, ptr %i.abr, align 1, !tbaa !34, !alias.scope !779, !noalias !782
  %i.abs = shl i16 %i.abb, 1
  %i.abt = and i16 %i.abs, -512
  %i.abu = or i16 %i.abp, %i.abt
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv489.i.us
  store i16 %i.abu, ptr %i.abv, align 2, !tbaa !58, !alias.scope !779, !noalias !782
  %i.abw = fcmp ult float %.6.i.us, 0.000000e+00
  br i1 %i.abw, label %.split32.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float %.6.i.us, ptr %i.abx, align 4, !tbaa !36, !noalias !781
  %i.aby = trunc nsw i32 %.4.i.us to i8
  %i.abz = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 %i.aby, ptr %i.abz, align 1, !tbaa !34, !noalias !781
  %i.aca = fcmp ogt float %.0355419.i.us, %.6.i.us
  %i.acb = select i1 %i.aca, float %.0355419.i.us, float %.6.i.us
  br label %bb.ab

bb.z:                                             ; preds = %bb.r
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.acc, align 4, !tbaa !36, !noalias !781
  %i.acd = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.acd, align 1, !tbaa !34, !noalias !781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !781
  br label %bb.ab

bb.aa:                                            ; preds = %bb.h
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv489.i.us
  store float 0.000000e+00, ptr %i.ace, align 4, !tbaa !36, !noalias !781
  %i.acf = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv489.i.us
  store i8 1, ptr %i.acf, align 1, !tbaa !34, !noalias !781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 1, i64 32, i1 false), !noalias !781
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.2357.i.us = phi float [ %.0355419.i.us, %bb.aa ], [ %.0355419.i.us, %bb.z ], [ %i.acb, %bb.y ] ; 3 uses
  %indvars.iv.next490.i.us = add nuw nsw i64 %indvars.iv489.i.us, 1 ; 2 uses
  %exitcond492.not.i.us = icmp eq i64 %indvars.iv.next490.i.us, 8
  br i1 %exitcond492.not.i.us, label %bb.ac, label %bb.h, !llvm.loop !775

bb.ac:                                            ; preds = %bb.ab
  %i.acg = fcmp une float %.2357.i.us, 0.000000e+00
  br i1 %i.acg, label %.loopexit.loopexit.i.us, label %.loopexit.i.us

.loopexit.loopexit.i.us:                          ; preds = %bb.ac
  %i.ach = fdiv float %.2357.i.us, 1.500000e+01   ; 2 uses
  %i.aci = fmul float %i.ach, 1.125000e+00        ; 2 uses
  %i.acj = call float @llvm.fabs.f32(float %i.aci)
  %i.ack = fmul float %i.acj, f0x77800000
  %i.acl = fmul float %i.ack, f0x08800000
  %i.acm = bitcast float %i.aci to i32            ; 2 uses
  %i.acn = shl i32 %i.acm, 1                      ; 2 uses
  %i.aco = call i32 @llvm.umax.i32(i32 %i.acn, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.aco, 1
  %i.acp = and i32 %spec.store.select.i.i.us, 2139095040
  %i.acq = add nuw i32 %i.acp, 125829120
  %i.acr = bitcast i32 %i.acq to float
  %i.acs = fadd float %i.acl, %i.acr
  %i.act = bitcast float %i.acs to i32            ; 2 uses
  %i.acu = lshr i32 %i.act, 13
  %i.acv = and i32 %i.acu, 31744
  %i.acw = and i32 %i.act, 4095
  %i.acx = add nuw nsw i32 %i.acv, %i.acw
  %i.acy = lshr i32 %i.acm, 16
  %i.acz = and i32 %i.acy, 32768
  %i.ada = icmp ugt i32 %i.acn, -16777216
  %i.adb = select i1 %i.ada, i32 32256, i32 %i.acx
  %i.adc = or i32 %i.adb, %i.acz
  %i.add = trunc nuw i32 %i.adc to i16
  store i16 %i.add, ptr %i.dc, align 2, !tbaa !64, !alias.scope !779, !noalias !782
  %i.ade = fdiv float 1.000000e+00, %i.ach
  %i.adf = load <8 x float>, ptr %i.a, align 16, !tbaa !36, !noalias !781
  %i.adg = insertelement <8 x float> poison, float %i.ade, i64 0
  %i.adh = shufflevector <8 x float> %i.adg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.adi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.adh, <8 x float> %i.adf, <8 x float> splat (float -1.000000e+00))
  %i.adj = fmul <8 x float> %i.adi, splat (float 5.000000e-01)
  %i.adk = fadd <8 x float> %i.adj, splat (float f0x4B400000)
  %i.adl = bitcast <8 x float> %i.adk to <8 x i32>
  %i.adm = and <8 x i32> %i.adl, splat (i32 8388607)
  %i.adn = call <8 x i32> @llvm.usub.sat.v8i32(<8 x i32> %i.adm, <8 x i32> splat (i32 4194304))
  %i.ado = call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.adn, <8 x i32> splat (i32 7)) ; 2 uses
  %i.adp = load <8 x i8>, ptr %i.h, align 8, !tbaa !34, !noalias !781
  %i.adq = icmp eq <8 x i8> %i.adp, splat (i8 -1)
  %i.adr = trunc nuw nsw <8 x i32> %i.ado to <8 x i8>
  %i.ads = or disjoint <8 x i8> %i.adr, splat (i8 8)
  %i.adt = trunc nuw nsw <8 x i32> %i.ado to <8 x i8>
  %i.adu = select <8 x i1> %i.adq, <8 x i8> %i.ads, <8 x i8> %i.adt
  %i.adv = load <8 x i16>, ptr %i.dv, align 2, !tbaa !58, !alias.scope !779, !noalias !782
  %i.adw = zext nneg <8 x i8> %i.adu to <8 x i16>
  %i.adx = shl nuw <8 x i16> %i.adw, splat (i16 12)
  %i.ady = or <8 x i16> %i.adx, %i.adv
  store <8 x i16> %i.ady, ptr %i.dv, align 2, !tbaa !58, !alias.scope !779, !noalias !782
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %bb.ac
  %indvars.iv.next498.i.us = add nuw nsw i64 %indvars.iv497.i.us, 1 ; 2 uses
  %exitcond500.not.i.us = icmp eq i64 %indvars.iv.next498.i.us, %i.k
  br i1 %exitcond500.not.i.us, label %quantize_row_iq1_s_impl.exit.loopexit.us, label %.lr.ph424.i.us, !llvm.loop !776

quantize_row_iq1_s_impl.exit.loopexit.us:         ; preds = %.loopexit.i.us
  %i.adz = getelementptr inbounds [4 x i8], ptr %.01620.us25, i64 %3
  %i.aea = getelementptr inbounds nuw i8, ptr %.01521.us24, i64 %i.cx
  %i.aeb = add nuw nsw i64 %.022.us23, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.aeb, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !777

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.aec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 48), align 16, !tbaa !74, !noalias !781
  %i.aed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 64), align 16, !tbaa !79, !noalias !781
  %.not370.i = icmp eq ptr %i.aec, null
  %.not372.i = icmp eq ptr %i.aed, null
  br i1 %.not370.i, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  br label %.split.us26

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.aee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iq2_data, i64 56), align 8, !tbaa !77, !noalias !781
  %.not371.i = icmp eq ptr %i.aee, null
  br i1 %.not371.i, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  br label %.split28.us

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %.not372.i, label %.lr.ph.split.split.split.split.split.us, label %._crit_edge

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  br label %.split30.us

._crit_edge:                                      ; preds = %quantize_row_iq1_s_impl.exit.loopexit.us, %.lr.ph.split.split.split.split, %bb.c
  %i.aef = mul i64 %2, 50
  %i.aeg = mul i64 %i.aef, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %i.aeg

.split.us26:                                      ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.split.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4525, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #24, !noalias !781
  unreachable

.split28.us:                                      ; preds = %bb.d, %.lr.ph.split.split.split.split.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4526, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13) #24, !noalias !781
  unreachable

.split30.us:                                      ; preds = %bb.e, %.lr.ph.split.split.split.split.split.us
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4527, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #24, !noalias !781
  unreachable

.split32.us:                                      ; preds = %bb.x
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4650, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.20) #24, !noalias !781
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @iq1_sort_helper(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !36   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !36   ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = fcmp ogt float %i.a, %i.b
  %i.e = zext i1 %i.d to i32
  %i.f = select i1 %i.c, i32 -1, i32 %i.e
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -2147483648) i32 @iq1_find_best_neighbour2(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, float noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, ptr noalias nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !58     ; 2 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader118.preheader

.preheader118.preheader:                          ; preds = %bb.a
  %i.c = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !36
  %.phi.trans.insert160 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.d = load float, ptr %.phi.trans.insert170, align 4, !tbaa !36
  %7 = load <2 x float>, ptr %.phi.trans.insert162, align 4, !tbaa !36
  %8 = load <2 x float>, ptr %3, align 4, !tbaa !36
  %i.e = load <4 x float>, ptr %2, align 4, !tbaa !36
  %i.f = fneg <4 x float> %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !36 ; 2 uses
  %9 = load <4 x float>, ptr %.phi.trans.insert168, align 4, !tbaa !36
  %10 = fneg <4 x float> %9
  %i.i = insertelement <4 x float> poison, float %4, i64 0
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %11 = shufflevector <2 x float> %8, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.preheader118

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %.preheader118
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = icmp slt i32 %.195, 0
  br i1 %i.l, label %.preheader.preheader, label %.thread109

.preheader.preheader:                             ; preds = %bb.c
  %.pre175 = load float, ptr %.phi.trans.insert, align 4, !tbaa !36
  %.pre176 = load float, ptr %.phi.trans.insert170, align 4, !tbaa !36
  %12 = load <2 x float>, ptr %.phi.trans.insert162, align 4, !tbaa !36
  %13 = load <2 x float>, ptr %3, align 4, !tbaa !36
  %14 = shufflevector <2 x float> %13, <2 x float> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %.preheader

.preheader118:                                    ; preds = %.preheader118.preheader, %.preheader118
  %indvars.iv = phi i64 [ 1, %.preheader118.preheader ], [ %indvars.iv.next, %.preheader118 ] ; 2 uses
  %.089123 = phi float [ f0x7F7FFFFF, %.preheader118.preheader ], [ %.1, %.preheader118 ] ; 2 uses
  %.094122 = phi i32 [ -1, %.preheader118.preheader ], [ %.195, %.preheader118 ]
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i16, ptr %i.m, align 2, !tbaa !58   ; 2 uses
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o
  %i.q = load <8 x i8>, ptr %i.p, align 1, !tbaa !34
  %i.r = sext <8 x i8> %i.q to <8 x i16>
  %i.s = add nsw <8 x i16> %i.r, splat (i16 -1)
  %i.t = sdiv <8 x i16> %i.s, splat (i16 2)       ; 8 uses
  %i.u = extractelement <8 x i16> %i.t, i64 0
  %i.v = sext i16 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %5, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !36
  %i.y = extractelement <8 x i16> %i.t, i64 1
  %i.z = sext i16 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %5, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !36
  %i.ac = extractelement <8 x i16> %i.t, i64 2
  %i.ad = sext i16 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !36
  %i.ag = extractelement <8 x i16> %i.t, i64 3
  %i.ah = sext i16 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !36
  %i.ak = insertelement <4 x float> poison, float %i.x, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ab, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.af, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.an, <4 x float> %i.f) ; 5 uses
  %i.ap = extractelement <4 x float> %i.ao, i64 0
  %15 = extractelement <4 x float> %i.ao, i64 1
  %i.aq = extractelement <4 x float> %i.ao, i64 2 ; 2 uses
  %i.ar = fmul float %.pre, %i.aq
  %i.as = extractelement <4 x float> %i.ao, i64 3
  %16 = extractelement <8 x i16> %i.t, i64 4
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %5, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !36
  %i.at = extractelement <8 x i16> %i.t, i64 5
  %i.au = sext i16 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !36
  %20 = extractelement <8 x i16> %i.t, i64 6
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %5, i64 %21
  %23 = load float, ptr %22, align 4, !tbaa !36
  %i.ax = extractelement <8 x i16> %i.t, i64 7
  %i.ay = sext i16 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !36
  %24 = insertelement <4 x float> poison, float %19, i64 0
  %25 = insertelement <4 x float> %24, float %i.aw, i64 1
  %26 = insertelement <4 x float> %25, float %23, i64 2
  %27 = insertelement <4 x float> %26, float %i.ba, i64 3
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %27, <4 x float> %10) ; 6 uses
  %29 = extractelement <4 x float> %28, i64 0
  %30 = shufflevector <4 x float> %i.ao, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %31 = fmul <4 x float> %11, %30                 ; 4 uses
  %32 = extractelement <4 x float> %31, i64 0
  %33 = tail call float @llvm.fmuladd.f32(float %32, float %i.ap, float 0.000000e+00)
  %34 = extractelement <4 x float> %31, i64 1
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %15, float %33)
  %36 = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.aq, float %35)
  %37 = extractelement <4 x float> %31, i64 2
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %i.as, float %36)
  %i.bb = extractelement <4 x float> %31, i64 3
  %39 = tail call float @llvm.fmuladd.f32(float %i.bb, float %29, float %38)
  %i.bc = extractelement <4 x float> %28, i64 1   ; 2 uses
  %40 = fmul float %i.d, %i.bc
  %i.bd = tail call float @llvm.fmuladd.f32(float %40, float %i.bc, float %39)
  %41 = extractelement <4 x float> %28, i64 2
  %42 = extractelement <4 x float> %28, i64 3
  %43 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %44 = fmul <2 x float> %i.h, %43                ; 2 uses
  %i.be = extractelement <2 x float> %44, i64 0
  %45 = tail call float @llvm.fmuladd.f32(float %i.be, float %41, float %i.bd)
  %i.bf = extractelement <2 x float> %44, i64 1
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %42, float %45) ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.089123          ; 2 uses
  %i.bi = zext i16 %i.n to i32
  %.195 = select i1 %i.bh, i32 %i.bi, i32 %.094122 ; 3 uses
  %.1 = select i1 %i.bh, float %i.bg, float %.089123 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %.preheader118, !llvm.loop !785

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv143 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next144, %.preheader ] ; 4 uses
  %.2128 = phi float [ %.1, %.preheader.preheader ], [ %.3, %.preheader ] ; 2 uses
  %.296127 = phi i32 [ -1, %.preheader.preheader ], [ %.397, %.preheader ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv143
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv143
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !36
  %i.bm = fneg float %i.bl
  %i.bn = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bp = load <8 x i8>, ptr %i.bj, align 1, !tbaa !34
  %i.bq = sext <8 x i8> %i.bp to <8 x i16>
  %i.br = add nsw <8 x i16> %i.bq, splat (i16 -1)
  %i.bs = sdiv <8 x i16> %i.br, splat (i16 2)     ; 8 uses
  %i.bt = extractelement <8 x i16> %i.bs, i64 0
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !36
  %i.bx = extractelement <8 x i16> %i.bs, i64 1
  %i.by = sext i16 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %5, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !36
  %i.cb = extractelement <8 x i16> %i.bs, i64 2
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !36
  %i.cf = extractelement <8 x i16> %i.bs, i64 3
  %i.cg = sext i16 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !36
  %i.cj = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.ca, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ce, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.cm, <4 x float> %i.bo) ; 5 uses
  %46 = extractelement <4 x float> %i.cn, i64 0
  %i.co = extractelement <4 x float> %i.cn, i64 1
  %47 = extractelement <4 x float> %i.cn, i64 2   ; 2 uses
  %48 = fmul float %.pre175, %47
  %i.cp = extractelement <4 x float> %i.cn, i64 3
  %49 = extractelement <8 x i16> %i.bs, i64 4
  %50 = sext i16 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr %5, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !36
  %53 = extractelement <8 x i16> %i.bs, i64 5
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %5, i64 %54
  %56 = load float, ptr %55, align 4, !tbaa !36
  %i.cq = extractelement <8 x i16> %i.bs, i64 6
  %i.cr = sext i16 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %5, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !36
  %57 = extractelement <8 x i16> %i.bs, i64 7
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds [4 x i8], ptr %5, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !36
  %61 = insertelement <4 x float> poison, float %52, i64 0
  %62 = insertelement <4 x float> %61, float %56, i64 1
  %63 = insertelement <4 x float> %62, float %i.ct, i64 2
  %64 = insertelement <4 x float> %63, float %60, i64 3
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %64, <4 x float> %i.bo) ; 6 uses
  %66 = extractelement <4 x float> %65, i64 0
  %67 = shufflevector <4 x float> %i.cn, <4 x float> %65, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %68 = fmul <4 x float> %14, %67                 ; 4 uses
  %69 = extractelement <4 x float> %68, i64 0
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %46, float 0.000000e+00)
  %71 = extractelement <4 x float> %68, i64 1
  %72 = tail call float @llvm.fmuladd.f32(float %71, float %i.co, float %70)
  %73 = tail call float @llvm.fmuladd.f32(float %48, float %47, float %72)
  %74 = extractelement <4 x float> %68, i64 2
  %75 = tail call float @llvm.fmuladd.f32(float %74, float %i.cp, float %73)
  %76 = extractelement <4 x float> %68, i64 3
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %66, float %75)
  %78 = extractelement <4 x float> %65, i64 1     ; 2 uses
  %79 = fmul float %.pre176, %78
  %80 = tail call float @llvm.fmuladd.f32(float %79, float %78, float %77)
  %i.cu = extractelement <4 x float> %65, i64 2
  %i.cv = extractelement <4 x float> %65, i64 3
  %81 = shufflevector <4 x float> %65, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %82 = fmul <2 x float> %i.h, %81                ; 2 uses
  %i.cw = extractelement <2 x float> %82, i64 0
  %83 = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cu, float %80)
  %i.cx = extractelement <2 x float> %82, i64 1
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cv, float %83) ; 2 uses
  %i.cz = fcmp olt float %i.cy, %.2128            ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv143 to i32
  %.397 = select i1 %i.cz, i32 %i.da, i32 %.296127 ; 3 uses
  %.3 = select i1 %i.cz, float %i.cy, float %.2128
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 2048
  br i1 %exitcond146.not, label %bb.d, label %.preheader, !llvm.loop !786

bb.d:                                             ; preds = %.preheader
  %i.db = icmp slt i32 %.397, 0
  br i1 %i.db, label %bb.e, label %.thread109

bb.e:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %i.b) ; 0 uses
  %i.dd = load <2 x float>, ptr %.phi.trans.insert160, align 4, !tbaa !36 ; 2 uses
  %i.de = load <2 x float>, ptr %.phi.trans.insert168, align 4, !tbaa !36 ; 2 uses
  %i.df = load <2 x float>, ptr %i.k, align 4, !tbaa !36 ; 2 uses
  %i.dg = load <8 x float>, ptr %3, align 4, !tbaa !36
  %i.dh = load <2 x float>, ptr %2, align 4, !tbaa !36 ; 2 uses
  %i.di = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dj = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dl = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.f
  %indvars.iv155 = phi i64 [ 1, %bb.e ], [ %indvars.iv.next156, %bb.f ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv155
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !58
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do
  %i.dq = load <8 x i8>, ptr %i.dp, align 1, !tbaa !34
  %i.dr = sext <8 x i8> %i.dq to <8 x i16>
  %i.ds = add nsw <8 x i16> %i.dr, splat (i16 -1)
  %i.dt = sdiv <8 x i16> %i.ds, splat (i16 2)     ; 8 uses
  %i.du = extractelement <8 x i16> %i.dt, i64 0
  %i.dv = sext i16 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !36 ; 2 uses
  %i.dy = extractelement <8 x i16> %i.dt, i64 1
  %i.dz = sext i16 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %5, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !36 ; 2 uses
  %i.ec = extractelement <8 x i16> %i.dt, i64 2
  %i.ed = sext i16 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !36 ; 2 uses
  %i.eg = extractelement <8 x i16> %i.dt, i64 3
  %i.eh = sext i16 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %5, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !36 ; 2 uses
  %i.ek = extractelement <8 x i16> %i.dt, i64 4
  %i.el = sext i16 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %5, i64 %i.el
  %i.en = load float, ptr %i.em, align 4, !tbaa !36 ; 2 uses
  %i.eo = extractelement <8 x i16> %i.dt, i64 5
  %i.ep = sext i16 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !36 ; 2 uses
  %i.es = extractelement <8 x i16> %i.dt, i64 6
  %i.et = sext i16 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %5, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !36 ; 2 uses
  %i.ew = extractelement <8 x i16> %i.dt, i64 7
  %i.ex = sext i16 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !36 ; 2 uses
  %i.fa = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.fb = insertelement <8 x float> %i.fa, float %i.eb, i64 1
  %i.fc = insertelement <8 x float> %i.fb, float %i.ef, i64 2
  %i.fd = insertelement <8 x float> %i.fc, float %i.ej, i64 3
  %i.fe = insertelement <8 x float> %i.fd, float %i.en, i64 4
  %i.ff = insertelement <8 x float> %i.fe, float %i.er, i64 5
  %i.fg = insertelement <8 x float> %i.ff, float %i.ev, i64 6
  %i.fh = insertelement <8 x float> %i.fg, float %i.ez, i64 7
  %i.fi = fmul <8 x float> %i.fh, %i.dg           ; 8 uses
  %i.fj = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> zeroinitializer
  %i.fk = insertelement <2 x float> %i.dh, float %i.dx, i64 1
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.fk, <2 x float> zeroinitializer)
  %i.fm = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fn = insertelement <2 x float> %i.dl, float %i.eb, i64 1
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fq = insertelement <2 x float> %i.dd, float %i.ef, i64 1
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fq, <2 x float> %i.fo)
  %i.fs = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ft = insertelement <2 x float> %i.dk, float %i.ej, i64 1
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fr)
  %i.fv = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 4, i32 4>
  %i.fw = insertelement <2 x float> %i.de, float %i.en, i64 1
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fu)
  %i.fy = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 5, i32 5>
  %i.fz = insertelement <2 x float> %i.dj, float %i.er, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.fx)
  %i.gb = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 6, i32 6>
  %i.gc = insertelement <2 x float> %i.df, float %i.ev, i64 1
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.gc, <2 x float> %i.ga)
  %i.ge = shufflevector <8 x float> %i.fi, <8 x float> poison, <2 x i32> <i32 7, i32 7>
  %i.gf = insertelement <2 x float> %i.di, float %i.ez, i64 1
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gf, <2 x float> %i.gd)
  %i.gh = fpext <2 x float> %i.gg to <2 x double> ; 2 uses
  %i.gi = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.gj = extractelement <2 x double> %i.gh, i64 0
  %i.gk = extractelement <2 x double> %i.gh, i64 1
  %i.gl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.gi, double noundef %i.gj, double noundef %i.gk) ; 0 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count
  br i1 %exitcond159.not, label %bb.g, label %bb.f, !llvm.loop !787

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4494, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.22) #24
  unreachable

.thread109:                                       ; preds = %bb.c, %bb.d
  %.4108111 = phi i32 [ %.195, %bb.c ], [ %.397, %bb.d ] ; 2 uses
  %i.gm = zext nneg i32 %.4108111 to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gm
  %i.go = load <8 x i8>, ptr %i.gn, align 1, !tbaa !34
  %i.gp = sext <8 x i8> %i.go to <8 x i16>
  %i.gq = add nsw <8 x i16> %i.gp, splat (i16 -1)
  %i.gr = sdiv <8 x i16> %i.gq, splat (i16 2)
  %i.gs = trunc nsw <8 x i16> %i.gr to <8 x i8>
  store <8 x i8> %i.gs, ptr %6, align 1, !tbaa !34
  ret i32 %.4108111
}

; Function Attrs: nounwind uwtable
define i64 @quantize_iq1_m(ptr noalias nofree noundef readonly %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 6 uses
  %i.b = alloca [16 x float], align 16            ; 16 uses
  %i.c = alloca [16 x i8], align 16               ; 28 uses
  %i.d = alloca [32 x float], align 16            ; 35 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = and i64 %3, 255
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4947, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.8) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.h = ashr exact i64 %3, 8                     ; 4 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 19 uses
  %i.k = icmp sgt i64 %i.h, 0
  %.not573.i = icmp eq ptr %4, null               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %.phi.trans.insert852.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.phi.trans.insert854.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %.phi.trans.insert856.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert858.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.av = mul nsw i64 %i.h, 56
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

end_hunk_0
