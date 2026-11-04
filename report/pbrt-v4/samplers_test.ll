Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/samplers_test?download=true
inline.NumInlined: 1273
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN29Sampler_ConsistentValues_Test8TestBodyEv:bb.a
  br i1 %.not11.i32.i758, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i28.i754
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i29.i755
  %i.bvu = load i32, ptr %i.bvt, align 4, !tbaa !49
  %i.bvv = xor i32 %i.bvu, %.0914.i30.i756
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.lr.ph.i28.i754
  %.1.i33.i759 = phi i32 [ %i.bvv, %bb.eo ], [ %.0914.i30.i756, %.lr.ph.i28.i754 ] ; 2 uses
  %i.bvw = lshr i64 %.01013.i31.i757, 1           ; 2 uses
  %indvars.iv.next.i34.i760 = add nuw nsw i64 %indvars.iv.i29.i755, 1
  %.not.i35.i761 = icmp eq i64 %i.bvw, 0
  br i1 %.not.i35.i761, label %._crit_edge.loopexit.i36.i762, label %.lr.ph.i28.i754, !llvm.loop !6

_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit.i763: ; preds = %._crit_edge.loopexit.i36.i762, %bb.en
  %.09.lcssa.i37.i764 = phi i32 [ 0, %bb.en ], [ %i.bvr, %._crit_edge.loopexit.i36.i762 ] ; 2 uses
  %i.bvx = mul i32 %.09.lcssa.i37.i764, 1025551850
  %i.bvy = xor i32 %i.bvx, %.09.lcssa.i37.i764
  %i.bvz = add i32 %i.bvy, %i.bta
  %i.bwa = or i32 %i.btm, 1
  %i.bwb = mul i32 %i.bvz, %i.bwa                 ; 2 uses
  %i.bwc = mul i32 %i.bwb, 89287766
  %i.bwd = xor i32 %i.bwc, %i.bwb                 ; 2 uses
  %i.bwe = mul i32 %i.bwd, 1403136100
  %i.bwf = xor i32 %i.bwe, %i.bwd
  %i.bwg = call noundef i32 @llvm.bitreverse.i32(i32 %i.bwf)
  %i.bwh = uitofp i32 %i.bwg to float
  %i.bwi = fmul nnan float %i.bwh, f0x2F800000
  br label %.noexc602

bb.eq:                                            ; preds = %_ZN4pbrt18PermutationElementEjjj.exit.i599
  br i1 %.not12.i39.i752, label %._crit_edge.i.i798, label %.lr.ph.preheader.i40.i789

.lr.ph.preheader.i40.i789:                        ; preds = %bb.eq
  %i.bwj = zext i32 %i.buv to i64
  br label %.lr.ph.i41.i790

._crit_edge.i.i798:                               ; preds = %bb.eu, %bb.eq
  %.09.lcssa.i49.i799 = phi i32 [ 0, %bb.eq ], [ %.1.i46.i795, %bb.eu ]
  %i.bwk = shl i32 %i.bta, 31
  %spec.select.i.i.i800 = xor i32 %.09.lcssa.i49.i799, %i.bwk
  br label %bb.er

bb.er:                                            ; preds = %bb.es, %._crit_edge.i.i798
  %.013.i.i.i801 = phi i32 [ 1, %._crit_edge.i.i798 ], [ %i.bxu, %bb.es ] ; 8 uses
  %.112.i.i.i802 = phi i32 [ %spec.select.i.i.i800, %._crit_edge.i.i798 ], [ %.2.i.i.i804.1, %bb.es ] ; 2 uses
  %i.bwl = sub nuw nsw i32 32, %.013.i.i.i801
  %i.bwm = shl nsw i32 -1, %i.bwl
  %i.bwn = and i32 %i.bwm, %.112.i.i.i802
  %i.bwo = xor i32 %i.bwn, %i.bta
  %i.bwp = zext i32 %i.bwo to i64                 ; 2 uses
  %i.bwq = lshr i64 %i.bwp, 31
  %i.bwr = xor i64 %i.bwq, %i.bwp
  %i.bws = mul i64 %i.bwr, 9202493588570546565    ; 2 uses
  %i.bwt = lshr i64 %i.bws, 27
  %i.bwu = xor i64 %i.bwt, %i.bws
  %i.bwv = mul i64 %i.bwu, -9089707755183418291   ; 2 uses
  %i.bww = lshr i64 %i.bwv, 33
  %i.bwx = xor i64 %i.bww, %i.bwv
  %i.bwy = trunc i64 %i.bwx to i32
  %i.bwz = shl nuw i32 1, %.013.i.i.i801
  %i.bxa = and i32 %i.bwz, %i.bwy
  %.not11.i.i.i803 = icmp eq i32 %i.bxa, 0
  %i.bxb = lshr exact i32 -2147483648, %.013.i.i.i801
  %i.bxc = select i1 %.not11.i.i.i803, i32 0, i32 %i.bxb
  %.2.i.i.i804 = xor i32 %i.bxc, %.112.i.i.i802   ; 3 uses
  %exitcond.not.i.i.i805 = icmp eq i32 %.013.i.i.i801, 31
  br i1 %exitcond.not.i.i.i805, label %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit.i806, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.bxd = ashr exact i32 -2147483648, %.013.i.i.i801
  %i.bxe = and i32 %i.bxd, %.2.i.i.i804
  %i.bxf = xor i32 %i.bxe, %i.bta
  %i.bxg = zext i32 %i.bxf to i64                 ; 2 uses
  %i.bxh = lshr i64 %i.bxg, 31
  %i.bxi = xor i64 %i.bxh, %i.bxg
  %i.bxj = mul i64 %i.bxi, 9202493588570546565    ; 2 uses
  %i.bxk = lshr i64 %i.bxj, 27
  %i.bxl = xor i64 %i.bxk, %i.bxj
  %i.bxm = mul i64 %i.bxl, -9089707755183418291   ; 2 uses
  %i.bxn = lshr i64 %i.bxm, 33
  %i.bxo = xor i64 %i.bxn, %i.bxm
  %i.bxp = trunc i64 %i.bxo to i32
  %i.bxq = shl nuw i32 2, %.013.i.i.i801
  %i.bxr = and i32 %i.bxq, %i.bxp
  %.not11.i.i.i803.1 = icmp eq i32 %i.bxr, 0
  %i.bxs = lshr exact i32 1073741824, %.013.i.i.i801
  %i.bxt = select i1 %.not11.i.i.i803.1, i32 0, i32 %i.bxs
  %.2.i.i.i804.1 = xor i32 %i.bxt, %.2.i.i.i804
  %i.bxu = add nuw nsw i32 %.013.i.i.i801, 2
  br label %bb.er

.lr.ph.i41.i790:                                  ; preds = %bb.eu, %.lr.ph.preheader.i40.i789
  %indvars.iv.i42.i791 = phi i64 [ 0, %.lr.ph.preheader.i40.i789 ], [ %indvars.iv.next.i47.i796, %bb.eu ] ; 2 uses
  %.0914.i43.i792 = phi i32 [ 0, %.lr.ph.preheader.i40.i789 ], [ %.1.i46.i795, %bb.eu ] ; 2 uses
  %.01013.i44.i793 = phi i64 [ %i.bwj, %.lr.ph.preheader.i40.i789 ], [ %i.bxz, %bb.eu ] ; 2 uses
  %i.bxv = and i64 %.01013.i44.i793, 1
  %.not11.i45.i794 = icmp eq i64 %i.bxv, 0
  br i1 %.not11.i45.i794, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.lr.ph.i41.i790
  %i.bxw = getelementptr inbounds nuw [4 x i8], ptr @_ZN4pbrt15SobolMatrices32E, i64 %indvars.iv.i42.i791
  %i.bxx = load i32, ptr %i.bxw, align 4, !tbaa !49
  %i.bxy = xor i32 %i.bxx, %.0914.i43.i792
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.lr.ph.i41.i790
  %.1.i46.i795 = phi i32 [ %i.bxy, %bb.et ], [ %.0914.i43.i792, %.lr.ph.i41.i790 ] ; 2 uses
  %i.bxz = lshr i64 %.01013.i44.i793, 1           ; 2 uses
  %indvars.iv.next.i47.i796 = add nuw nsw i64 %indvars.iv.i42.i791, 1
  %.not.i48.i797 = icmp eq i64 %i.bxz, 0
  br i1 %.not.i48.i797, label %._crit_edge.i.i798, label %.lr.ph.i41.i790, !llvm.loop !7

_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit.i806: ; preds = %bb.er
  %i.bya = uitofp i32 %.2.i.i.i804 to float
  %i.byb = fmul nnan float %i.bya, f0x2F800000
  br label %.noexc602

.noexc602:                                        ; preds = %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit.i806, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit.i763, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.i777, %._crit_edge.loopexit.i.i788, %bb.eh
  %.sink59.i765 = phi float [ %i.byb, %_ZN4pbrt11SobolSampleINS_13OwenScramblerEEEfliT_.exit.i806 ], [ %i.bwi, %_ZN4pbrt11SobolSampleINS_17FastOwenScramblerEEEfliT_.exit.i763 ], [ %i.bvp, %_ZN4pbrt11SobolSampleINS_22BinaryPermuteScramblerEEEfliT_.exit.i777 ], [ 0.000000e+00, %bb.eh ], [ %i.bvb, %._crit_edge.loopexit.i.i788 ] ; 2 uses
  %i.byc = lshr i64 %i.bsu, 32
  %i.byd = trunc nuw i64 %i.byc to i32
  %i.bye = invoke noundef float @_ZNK4pbrt18PaddedSobolSampler15SampleDimensionEijj(ptr noundef nonnull align 4 dereferenceable(28) %i.bkz, i32 noundef 1, i32 noundef %i.buv, i32 noundef %i.byd)
          to label %.noexc501 unwind label %bb.ff

.noexc501:                                        ; preds = %.noexc602
  %i.byf = fcmp ogt float %.sink59.i765, f0x3F7FFFFF
  %.sroa.speculated.i50.i766 = select i1 %i.byf, float f0x3F7FFFFF, float %.sink59.i765
  %.sroa.0.0.vec.insert.i600 = insertelement <2 x float> poison, float %.sroa.speculated.i50.i766, i64 0
  %.sroa.0.4.vec.insert.i601 = insertelement <2 x float> %.sroa.0.0.vec.insert.i600, float %i.bye, i64 1
  br label %_ZN4pbrt7Sampler5Get2DEv.exit419

bb.ev:                                            ; preds = %bb.du
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bkz, i64 24 ; 5 uses
  %i.byh = load i32, ptr %i.byg, align 8, !tbaa !74 ; 2 uses
  %i.byi = icmp sgt i32 %i.byh, 1022
  br i1 %i.byi, label %bb.ew, label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i485

bb.ew:                                            ; preds = %bb.ev
  store i32 2, ptr %i.byg, align 8, !tbaa !74
  br label %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i485

_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i485: ; preds = %bb.ew, %bb.ev
  %i.byj = phi i32 [ 2, %bb.ew ], [ %i.byh, %bb.ev ]
  %i.byk = invoke noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bkz, i32 noundef %i.byj)
          to label %.noexc502 unwind label %bb.ff

.noexc502:                                        ; preds = %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i485
  %i.byl = load i32, ptr %i.byg, align 8, !tbaa !74
  %i.bym = add nsw i32 %i.byl, 1
  %i.byn = invoke noundef float @_ZNK4pbrt12SobolSampler15SampleDimensionEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bkz, i32 noundef %i.bym)
          to label %.noexc503 unwind label %bb.ff

.noexc503:                                        ; preds = %.noexc502
  %.sroa.0.0.vec.insert.i.i21.i486 = insertelement <2 x float> poison, float %i.byk, i64 0
  %.sroa.0.4.vec.insert.i.i22.i487 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i21.i486, float %i.byn, i64 1
  %i.byo = load i32, ptr %i.byg, align 8, !tbaa !74
  %i.byp = add nsw i32 %i.byo, 2
  store i32 %i.byp, ptr %i.byg, align 8, !tbaa !74
  br label %_ZN4pbrt7Sampler5Get2DEv.exit419

bb.ex:                                            ; preds = %bb.du
  %i.byq = invoke <2 x float> @_ZN4pbrt13ZSobolSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(28) %i.bkz)
          to label %_ZN4pbrt7Sampler5Get2DEv.exit419 unwind label %bb.ff

bb.ey:                                            ; preds = %bb.du
  %i.byr = invoke <2 x float> @_ZN4pbrt10MLTSampler5Get2DEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bkz)
          to label %_ZN4pbrt7Sampler5Get2DEv.exit419 unwind label %bb.ff

bb.ez:                                            ; preds = %bb.du
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bkz, i64 96
  %i.byt = load i32, ptr %i.bys, align 8, !tbaa !80 ; 2 uses
  %i.byu = getelementptr inbounds nuw i8, ptr %i.bkz, i64 32
  %i.byv = load i32, ptr %i.byu, align 8, !tbaa !81 ; 2 uses
  %i.byw = getelementptr inbounds nuw i8, ptr %i.bkz, i64 100 ; 2 uses
  %i.byx = load i32, ptr %i.byw, align 4, !tbaa !82 ; 3 uses
  %i.byy = add nsw i32 %i.byx, 1
  %i.byz = mul nsw i32 %i.byx, %i.byv
  %i.bza = add nsw i32 %i.byz, %i.byt
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bkz, i64 104
  %i.bzc = sext i32 %i.bza to i64
  %i.bzd = load ptr, ptr %i.bzb, align 8, !tbaa !85 ; 2 uses
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.bzd, i64 %i.bzc
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !86
  %i.bzg = add nsw i32 %i.byx, 2
  store i32 %i.bzg, ptr %i.byw, align 4, !tbaa !82
  %i.bzh = mul nsw i32 %i.byy, %i.byv
  %i.bzi = add nsw i32 %i.bzh, %i.byt
  %i.bzj = sext i32 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bzd, i64 %i.bzj
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !86
  %.sroa.0.0.vec.insert.i.i.i.i495 = insertelement <2 x float> poison, float %i.bzf, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i496 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i495, float %i.bzl, i64 1
  br label %_ZN4pbrt7Sampler5Get2DEv.exit419

_ZN4pbrt7Sampler5Get2DEv.exit419:                 ; preds = %bb.ey, %bb.ex, %bb.dx, %bb.dv, %bb.dw, %.noexc500, %.noexc501, %.noexc503, %bb.ez
  %.sroa.0.0.i484 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i.i496, %bb.ez ], [ %i.byq, %bb.ex ], [ %i.blx, %bb.dw ], [ %i.blc, %bb.dv ], [ %.sroa.0.4.vec.insert.i.i20.i490, %.noexc500 ], [ %.sroa.0.4.vec.insert.i601, %.noexc501 ], [ %.sroa.0.4.vec.insert.i.i22.i487, %.noexc503 ], [ %i.bly, %bb.dx ], [ %i.byr, %bb.ey ] ; 2 uses
  store <2 x float> %.sroa.0.0.i484, ptr %17, align 8
  %i.bzm = load <2 x float>, ptr %i.bkw, align 4, !noalias !187
  %i.bzn = fcmp oeq <2 x float> %i.bzm, %.sroa.0.0.i484
  %23 = freeze <2 x i1> %i.bzn
  %24 = bitcast <2 x i1> %23 to i2
  %25 = icmp eq i2 %24, -1
  br i1 %25, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZN4pbrt7Sampler5Get2DEv.exit419
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt6Point2IfEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit unwind label %bb.ff

bb.fb:                                            ; preds = %_ZN4pbrt7Sampler5Get2DEv.exit419
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !187
  invoke void @_ZN7testing13PrintToStringIN4pbrt6Point2IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(8) %i.bkw)
          to label %.noexc508 unwind label %bb.ff

.noexc508:                                        ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !187
  invoke void @_ZN7testing13PrintToStringIN4pbrt6Point2IfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt6Point2IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.fd, !noalias !187

_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt6Point2IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc508
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.fc unwind label %bb.fe

bb.fc:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt6Point2IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bzo = load ptr, ptr %4, align 8, !tbaa !101, !noalias !187 ; 2 uses
  %i.bzp = icmp eq ptr %i.bzo, %i.ta
  br i1 %i.bzp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.fc
  %i.bzq = load i64, ptr %i.ta, align 8, !tbaa !34, !noalias !187
  %i.bzr = add i64 %i.bzq, 1
  call void @_ZdlPvm(ptr noundef %i.bzo, i64 noundef %i.bzr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !187
  %i.bzs = load ptr, ptr %3, align 8, !tbaa !101, !noalias !187 ; 2 uses
  %i.bzt = icmp eq ptr %i.bzs, %i.tb
  br i1 %i.bzt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bzu = load i64, ptr %i.tb, align 8, !tbaa !34, !noalias !187
  %i.bzv = add i64 %i.bzu, 1
  call void @_ZdlPvm(ptr noundef %i.bzs, i64 noundef %i.bzv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !187
  br label %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt6Point2IfEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit

bb.fd:                                            ; preds = %.noexc508
  %i.bzw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

bb.fe:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4pbrt6Point2IfEES4_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.bzx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bzy = load ptr, ptr %4, align 8, !tbaa !101, !noalias !187 ; 2 uses
  %i.bzz = icmp eq ptr %i.bzy, %i.ta
  br i1 %i.bzz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %bb.fe
  %i.caa = load i64, ptr %i.ta, align 8, !tbaa !34, !noalias !187
  %i.cab = add i64 %i.caa, 1
  call void @_ZdlPvm(ptr noundef %i.bzy, i64 noundef %i.cab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i, %bb.fd
  %.pn.i = phi { ptr, i32 } [ %i.bzw, %bb.fd ], [ %i.bzx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i ], [ %i.bzx, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !187
  %i.cac = load ptr, ptr %3, align 8, !tbaa !101, !noalias !187 ; 2 uses
  %i.cad = icmp eq ptr %i.cac, %i.tb
  br i1 %i.cad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.cae = load i64, ptr %i.tb, align 8, !tbaa !34, !noalias !187
  %i.caf = add i64 %i.cae, 1
  call void @_ZdlPvm(ptr noundef %i.cac, i64 noundef %i.caf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !187
  br label %.body

_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt6Point2IfEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit: ; preds = %bb.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.cag = load i8, ptr %16, align 8, !tbaa !105, !range !96, !noundef !97
  %i.cah = trunc nuw i8 %i.cag to i1
  br i1 %i.cah, label %bb.gb, label %bb.fg

bb.ff:                                            ; preds = %.noexc602, %bb.fb, %bb.fa, %bb.ey, %bb.ex, %.noexc502, %_ZZN4pbrt7Sampler5Get2DEvENKUlT_E_clIPNS_12SobolSamplerEEEDaS1_.exit.i485, %.noexc499, %bb.dx, %bb.dv
  %i.cai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %bb.ff
  %eh.lpad-body = phi { ptr, i32 } [ %i.cai, %bb.ff ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.fg:                                            ; preds = %_ZN7testing8internal8EqHelperILb0EE7CompareIN4pbrt6Point2IfEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.fh unwind label %bb.fp

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.caj = load ptr, ptr %i.tc, align 8, !tbaa !106 ; 2 uses
  %.not.i.i421 = icmp eq ptr %i.caj, null
  br i1 %.not.i.i421, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !101
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.fi, %bb.fh
  %i.cal = phi ptr [ %i.cak, %bb.fi ], [ @.str.45, %bb.fh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 67, ptr noundef %i.cal)
          to label %bb.fj unwind label %bb.fq

bb.fj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.fk unwind label %bb.fr

bb.fk:                                            ; preds = %bb.fj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.cam = load ptr, ptr %18, align 8, !tbaa !109
  %.not.i.i.i422 = icmp eq ptr %i.cam, null
  br i1 %.not.i.i.i422, label %_ZN7testing7MessageD2Ev.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.can = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.fo

.noexc.i.i:                                       ; preds = %bb.fl
  br i1 %i.can, label %bb.fm, label %_ZN7testing7MessageD2Ev.exit

bb.fm:                                            ; preds = %.noexc.i.i
  %i.cao = load ptr, ptr %18, align 8, !tbaa !109 ; 3 uses
  %i.cap = icmp eq ptr %i.cao, null
  br i1 %i.cap, label %_ZN7testing7MessageD2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.caq = load ptr, ptr %i.cao, align 8, !tbaa !111
  %i.car = getelementptr inbounds nuw i8, ptr %i.caq, i64 8
  %i.cas = load ptr, ptr %i.car, align 8
  call void %i.cas(ptr noundef nonnull align 8 dereferenceable(128) %i.cao) #24, !inline_history !8
  br label %_ZN7testing7MessageD2Ev.exit

bb.fo:                                            ; preds = %bb.fl
  %i.cat = landingpad { ptr, i32 }
          catch ptr null
  %i.cau = extractvalue { ptr, i32 } %i.cat, 0
  call void @__clang_call_terminate(ptr %i.cau) #27
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.fk, %.noexc.i.i, %bb.fm, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.gb

bb.fp:                                            ; preds = %bb.fg
  %i.cav = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit425

bb.fq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.caw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fj
  %i.cax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #24
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.pn111 = phi { ptr, i32 } [ %i.cax, %bb.fr ], [ %i.caw, %bb.fq ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.cay = load ptr, ptr %18, align 8, !tbaa !109
  %.not.i.i.i423 = icmp eq ptr %i.cay, null
  br i1 %.not.i.i.i423, label %_ZN7testing7MessageD2Ev.exit425, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.caz = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i424 unwind label %bb.fw

.noexc.i.i424:                                    ; preds = %bb.ft
  br i1 %i.caz, label %bb.fu, label %_ZN7testing7MessageD2Ev.exit425

bb.fu:                                            ; preds = %.noexc.i.i424
  %i.cba = load ptr, ptr %18, align 8, !tbaa !109 ; 3 uses
  %i.cbb = icmp eq ptr %i.cba, null
  br i1 %i.cbb, label %_ZN7testing7MessageD2Ev.exit425, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.cbc = load ptr, ptr %i.cba, align 8, !tbaa !111
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 8
  %i.cbe = load ptr, ptr %i.cbd, align 8
  call void %i.cbe(ptr noundef nonnull align 8 dereferenceable(128) %i.cba) #24, !inline_history !8
  br label %_ZN7testing7MessageD2Ev.exit425
end_hunk_0
