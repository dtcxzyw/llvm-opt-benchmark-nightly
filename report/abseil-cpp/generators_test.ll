Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generators_test?download=true
inline.NumInlined: 3433
inline.NumDeleted: 1213
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN4absl12lts_2026052617zipf_distributionINS0_6int128EEclINS0_14InsecureBitGenEEES2_RT_RKNS3_10param_typeE:bb.a
  %i.aw = fcmp ogt double %i.av, %i.j
  br i1 %i.aw, label %.split.i.i.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type4hinvEd.exit
  %i.ax = fsub double %i.av, %i.au
  %i.ay = fcmp ugt double %i.ax, %i.n
  br i1 %i.ay, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.az = fadd double %i.av, 5.000000e-01
  %i.ba = fadd double %i.f, %i.az                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = fdiv double -1.000000e+00, %i.ba
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = tail call double @log(double noundef %i.ba) #17
  %i.bd = fmul double %i.h, %i.bc
  %i.be = tail call double @exp(double noundef %i.bd) #17
  %i.bf = fmul double %i.be, %i.l
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.bg = phi double [ %i.bb, %bb.f ], [ %i.bf, %bb.g ]
  %i.bh = fadd double %i.f, %i.av                 ; 3 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fdiv double 1.000000e+00, %i.bi
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type1hEd.exit
  %i.bk = tail call double @log(double noundef %i.bh) #17
  %i.bl = fmul double %i.bk, %i.r
  %i.bm = tail call double @exp(double noundef %i.bl) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.bn = phi double [ %i.bj, %bb.h ], [ %i.bm, %bb.i ]
  %i.bo = fsub double %i.bg, %i.bn
  %i.bp = fcmp ult double %i.an, %i.bo
  br i1 %i.bp, label %.split.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_6int128EE10param_type14pow_negative_qEd.exit, %bb.d
  store i64 %i.z, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !34
  %i.bq = fptosi double %i.av to i128
  ret i128 %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052617zipf_distributionINS0_7uint128EEclINS0_14InsecureBitGenEEES2_RT_RKNS3_10param_typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(72) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::uint128", align 16 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load double, ptr %i.a, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load double, ptr %i.c, align 16, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !184 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load double, ptr %i.g, align 16, !tbaa !185 ; 3 uses
  %i.i = fcmp oeq double %i.h, -1.000000e+00      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load double, ptr %i.j, align 16          ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load double, ptr %i.n, align 16          ; 2 uses
  %i.p = fcmp oeq double %i.o, 2.000000e+00
  %i.q = fneg double %i.o
  %.promoted.i.i.pre = load i64, ptr %1, align 16, !tbaa !34
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i.i.pre = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !34
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.backedge, %bb.a
  %.narrow.i.i.i.i.i.i19.i.i = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted.i.i.pre, %bb.a ], [ %.narrow.i.i.i.i.i.i.i.i, %.split.i.i.backedge ]
  %i.r = phi i64 [ %.promoted.i.i.pre, %bb.a ], [ %i.y, %.split.i.i.backedge ]
  %i.s = zext i64 %.narrow.i.i.i.i.i.i19.i.i to i128
  %i.t = shl nuw i128 %i.s, 64
  %i.u = zext i64 %i.r to i128
  %i.v = or disjoint i128 %i.t, %i.u
  %i.w = mul i128 %i.v, 47026247687942121848144207491837523525
  %i.x = add i128 %i.w, 1442695040888963407       ; 2 uses
  %i.y = trunc i128 %i.x to i64                   ; 4 uses
  %i.z = lshr i128 %i.x, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.z to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.aa = icmp eq i64 %.narrow.i.i.i.i.i.i.i.i, %i.y
  br i1 %i.aa, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %.split.i.i
  %i.ab = xor i64 %.narrow.i.i.i.i.i.i.i.i, %i.y  ; 2 uses
  %i.ac = lshr i64 %.narrow.i.i.i.i.i.i.i.i, 58
  %.0.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ab, i64 %i.ab, i64 %i.ac) ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.ae = shl i64 %.0.i.i.i.i.i.i.i.i.i, %i.ad
  %i.af = lshr i64 %i.ae, 11
  %i.ag = and i64 %i.af, 4503599627370495
  %i.ah = shl nuw nsw i64 %i.ad, 52
  %reass.sub = sub nsw i64 %i.ag, %i.ah
  %i.ai = add nsw i64 %reass.sub, 4602678819172646912
  %i.aj = bitcast i64 %i.ai to double             ; 2 uses
  %i.ak = fadd double %i.aj, 0.000000e+00
  %i.al = fcmp uge double %i.aj, 1.000000e+00
  br i1 %i.al, label %.split.i.i.backedge, label %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit

.split.i.i.backedge:                              ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  br label %.split.i.i, !llvm.loop !426

_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit: ; preds = %.split.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %.0.i.i.i33 = phi double [ %i.ak, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ 0.000000e+00, %.split.i.i ]
  store i64 %i.y, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !34
  %i.am = tail call double @llvm.fmuladd.f64(double %.0.i.i.i33, double %i.d, double %i.b) ; 3 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.an = fdiv double -1.000000e+00, %i.am
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052625uniform_real_distributionIdEclINS0_14InsecureBitGenEEEdRT_.exit
  %i.ao = fmul double %i.am, %i.h
  %i.ap = tail call double @log(double noundef %i.ao) #17
  %i.aq = fmul double %i.k, %i.ap
  %i.ar = tail call double @exp(double noundef %i.aq) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit: ; preds = %bb.b, %bb.c
  %i.as = phi double [ %i.an, %bb.b ], [ %i.ar, %bb.c ]
  %i.at = fsub double %i.as, %i.f                 ; 2 uses
  %i.au = tail call double @llvm.rint.f64(double %i.at) ; 5 uses
  %i.av = load <2 x i64>, ptr %2, align 16, !tbaa !34
  %i.aw = uitofp <2 x i64> %i.av to <2 x double>  ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double f0x43F0000000000000, double %i.ax)
  %i.ba = fcmp ogt double %i.au, %i.az
  br i1 %i.ba, label %.split.i.i.backedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type4hinvEd.exit
  %i.bb = fsub double %i.au, %i.at
  %i.bc = fcmp ugt double %i.bb, %i.m
  br i1 %i.bc, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.bd = fadd double %i.au, 5.000000e-01
  %i.be = fadd double %i.f, %i.bd                 ; 2 uses
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = fdiv double -1.000000e+00, %i.be
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

bb.g:                                             ; preds = %bb.e
  %i.bg = tail call double @log(double noundef %i.be) #17
  %i.bh = fmul double %i.h, %i.bg
  %i.bi = tail call double @exp(double noundef %i.bh) #17
  %i.bj = fmul double %i.bi, %i.k
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit: ; preds = %bb.f, %bb.g
  %i.bk = phi double [ %i.bf, %bb.f ], [ %i.bj, %bb.g ]
  %i.bl = fadd double %i.f, %i.au                 ; 3 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bm = fmul double %i.bl, %i.bl
  %i.bn = fdiv double 1.000000e+00, %i.bm
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type1hEd.exit
  %i.bo = tail call double @log(double noundef %i.bl) #17
  %i.bp = fmul double %i.bo, %i.q
  %i.bq = tail call double @exp(double noundef %i.bp) #17
  br label %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit

_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit: ; preds = %bb.h, %bb.i
  %i.br = phi double [ %i.bn, %bb.h ], [ %i.bq, %bb.i ]
  %i.bs = fsub double %i.bk, %i.br
  %i.bt = fcmp ult double %i.am, %i.bs
  br i1 %i.bt, label %.split.i.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052617zipf_distributionINS0_7uint128EE10param_type14pow_negative_qEd.exit, %bb.d
  call void @_ZN4absl12lts_202605267uint128C1Ed(ptr noundef nonnull align 16 dereferenceable(16) %3, double noundef %i.au)
  %.fca.0.load = load i64, ptr %3, align 16
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_14InsecureBitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 16, !tbaa !34
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.narrow.i.i.i.i.i.i2742 = phi i64 [ %.narrow.i.i.i.i.i.i27, %bb.d ], [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted, %bb.a ]
  %i.a = phi i64 [ %i.cm, %bb.d ], [ %.promoted, %bb.a ]
  %i.b = zext i64 %.narrow.i.i.i.i.i.i2742 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %i.a to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = mul i128 %i.e, 47026247687942121848144207491837523525
  %i.g = add i128 %i.f, 1442695040888963407       ; 3 uses
  %i.h = trunc i128 %i.g to i64                   ; 3 uses
  %i.i = lshr i128 %i.g, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.i to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  %i.j = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.k = xor i64 %.narrow.i.i.i.i.i.i, %i.h       ; 2 uses
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.k, i64 %i.k, i64 %i.j) ; 5 uses
  %i.l = trunc i64 %.0.i.i.i.i.i.i.i to i32
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = and i64 %.0.i.i.i.i.i.i.i, -9223372036854775808
  %i.o = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775807
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl i64 %.0.i.i.i.i.i.i.i, %i.q
  %i.s = lshr i64 %i.r, 11
  %i.t = shl nuw nsw i64 %i.p, 52
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = and i64 %i.s, 4503599627370495
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = xor i64 %i.w, 4607182418800017408
  %i.y = bitcast i64 %i.x to double               ; 2 uses
  %i.z = and i64 %.0.i.i.i.i.i.i.i, 127           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !43
  %i.ac = fmul double %i.ab, %i.y                 ; 4 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = add nuw nsw i32 %i.m, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !43
  %i.ai = fcmp olt double %i.ad, %i.ah
  br i1 %i.ai, label %select.unfold.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.narrow.i.i.i.i.i.i1316.i = phi i64 [ %.narrow.i.i.i.i.i.i13.i, %.preheader ], [ %.narrow.i.i.i.i.i.i, %bb.c ]
  %i.ak = phi i64 [ %i.bl, %.preheader ], [ %i.h, %bb.c ]
  %i.al = zext i64 %.narrow.i.i.i.i.i.i1316.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %i.ak to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = mul i128 %i.ao, 47026247687942121848144207491837523525
  %i.aq = add i128 %i.ap, 1442695040888963407     ; 3 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.as to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.at = lshr i64 %.narrow.i.i.i.i.i.i.i, 58
  %i.au = xor i64 %.narrow.i.i.i.i.i.i.i, %i.ar   ; 2 uses
  %.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.au, i64 %i.at) ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl i64 %.0.i.i.i.i.i.i.i.i, %i.aw
  %i.ay = lshr i64 %i.ax, 11
  %i.az = and i64 %i.ay, 4503599627370495
  %i.ba = shl nuw nsw i64 %i.av, 52
  %reass.sub44 = sub nsw i64 %i.az, %i.ba
  %i.bb = add nsw i64 %reass.sub44, 4602678819172646912
  %i.bc = bitcast i64 %i.bb to double
  %i.bd = tail call nnan double @llvm.log.f64(double %i.bc)
  %i.be = fmul nnan double %i.bd, f0x3FD2972A8AFC6175 ; 4 uses
  %i.bf = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = and i128 %i.aq, 18446744073709551615
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i.i12.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i13.i = add i64 %.tr.i.i.i.i.i.i12.i, 6364136223846793005 ; 4 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i.i13.i, 58
  %i.bo = xor i64 %.narrow.i.i.i.i.i.i13.i, %i.bl ; 2 uses
  %.0.i.i.i.i.i.i.i14.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bn) ; 2 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i14.i, i1 false) ; 2 uses
  %i.bq = and i64 %i.bp, 63
  %i.br = shl i64 %.0.i.i.i.i.i.i.i14.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bp, 52
  %reass.sub45 = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub45, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  %i.bx = tail call double @llvm.log.f64(double %i.bw) ; 2 uses
  %i.by = fneg double %i.bx
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.be, %i.be
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %.preheader, label %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit, !llvm.loop !427

_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit: ; preds = %.preheader
  %i.cc = fcmp olt double %i.y, 0.000000e+00
  store i64 %i.bl, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i13.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !34
  %i.cd = fadd double %i.be, f0xC00B8A7C476D2BE8
  %i.ce = fsub double f0x400B8A7C476D2BE8, %i.be
  %i.cf = select i1 %i.cc, double %i.cd, double %i.ce
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.cg = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = and i128 %i.g, 18446744073709551615
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %i.ck = mul i128 %i.cj, 47026247687942121848144207491837523525
  %i.cl = add i128 %i.ck, 1442695040888963407     ; 2 uses
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = lshr i128 %i.cl, 64
  %.tr.i.i.i.i.i.i26 = trunc nuw i128 %i.cn to i64
  %.narrow.i.i.i.i.i.i27 = add i64 %.tr.i.i.i.i.i.i26, 6364136223846793005 ; 4 uses
  %i.co = lshr i64 %.narrow.i.i.i.i.i.i27, 58
  %i.cp = xor i64 %.narrow.i.i.i.i.i.i27, %i.cm   ; 2 uses
  %.0.i.i.i.i.i.i.i28 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cp, i64 %i.cp, i64 %i.co) ; 2 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i28, i1 false) ; 2 uses
  %i.cr = and i64 %i.cq, 63
  %i.cs = shl i64 %.0.i.i.i.i.i.i.i28, %i.cr
  %i.ct = lshr i64 %i.cs, 11
  %i.cu = shl nuw nsw i64 %i.cq, 52
  %i.cv = and i64 %i.ct, 4503599627370495
  %reass.sub = sub nsw i64 %i.cv, %i.cu
  %i.cw = add nsw i64 %reass.sub, 4602678819172646912
  %i.cx = bitcast i64 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.af
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !43 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.z
  %i.db = load double, ptr %i.da, align 8, !tbaa !43
  %i.dc = fsub double %i.db, %i.cz
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dc, double %i.cz)
  %i.de = fmul double %i.ac, -5.000000e-01
  %i.df = fmul double %i.ac, %i.de
  %i.dg = tail call double @exp(double noundef %i.df) #17
  %i.dh = fcmp olt double %i.dd, %i.dg
  br i1 %i.dh, label %select.unfold.loopexit, label %bb.b

select.unfold.loopexit:                           ; preds = %bb.b, %bb.d
  %.narrow.i.i.i.i.i.i2744 = phi i64 [ %.narrow.i.i.i.i.i.i, %bb.b ], [ %.narrow.i.i.i.i.i.i27, %bb.d ]
  %2 = phi i64 [ %i.h, %bb.b ], [ %i.cm, %bb.d ]
  store i64 %2, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i2744, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !34
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.loopexit, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit
  %.2.ph = phi double [ %i.cf, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit ], [ %i.ac, %select.unfold.loopexit ]
  ret double %.2.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl12lts_2026052628log_uniform_int_distributionIiE8GenerateINS0_14InsecureBitGenEEEjRT_RKNS2_10param_typeE(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(20) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92   ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 16, !tbaa !34
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.c = zext i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i to i128
  %i.d = shl nuw i128 %i.c, 64
  %i.e = zext i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i to i128
  %i.f = or disjoint i128 %i.d, %i.e
  %i.g = mul i128 %i.f, 47026247687942121848144207491837523525
  %i.h = add i128 %i.g, 1442695040888963407       ; 2 uses
  %i.i = trunc i128 %i.h to i64                   ; 6 uses
  %i.j = lshr i128 %i.h, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.j to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005 ; 7 uses
  store i64 %i.i, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.k = lshr i64 %.narrow.i.i.i.i.i.i.i.i.i, 58
  %i.l = xor i64 %.narrow.i.i.i.i.i.i.i.i.i, %i.i ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.l, i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = add i32 %i.b, 1                          ; 4 uses
  %i.n = and i32 %i.m, %i.b
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.455.0.insert.ext = zext i32 %i.b to i64
  %i.p = and i64 %.0.i.i.i.i.i.i.i.i.i.i, %.sroa.455.0.insert.ext
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = and i64 %.0.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.r = zext i32 %i.m to i64                     ; 2 uses
  %i.s = mul nuw i64 %i.q, %i.r                   ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp ugt i32 %i.m, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit.i.i.i, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.v = xor i32 %i.b, -1
  %i.w = urem i32 %i.v, %i.m                      ; 2 uses
  %i.x = icmp ugt i32 %i.w, %i.t
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.y = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %i.i, %bb.d ]
  %.sroa.22.0.copyload.i.i.i.i222627.i.i.i = phi i64 [ %.narrow.i.i.i.i.i.i24.i.i.i, %.lr.ph.i.i.i ], [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.d ]
  %i.z = zext i64 %.sroa.22.0.copyload.i.i.i.i222627.i.i.i to i128
  %i.aa = shl nuw i128 %i.z, 64
  %i.ab = zext i64 %i.y to i128
  %i.ac = or disjoint i128 %i.aa, %i.ab
  %i.ad = mul i128 %i.ac, 47026247687942121848144207491837523525
  %i.ae = add i128 %i.ad, 1442695040888963407     ; 2 uses
  %i.af = trunc i128 %i.ae to i64                 ; 4 uses
  %i.ag = lshr i128 %i.ae, 64
  %.tr.i.i.i.i.i.i23.i.i.i = trunc nuw i128 %i.ag to i64
  %.narrow.i.i.i.i.i.i24.i.i.i = add i64 %.tr.i.i.i.i.i.i23.i.i.i, 6364136223846793005 ; 5 uses
  %i.ah = lshr i64 %.narrow.i.i.i.i.i.i24.i.i.i, 58
  %i.ai = xor i64 %.narrow.i.i.i.i.i.i24.i.i.i, %i.af ; 2 uses
  %.0.i.i.i.i.i.i.i25.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.ai, i64 %i.ai, i64 %i.ah)
  %i.aj = and i64 %.0.i.i.i.i.i.i.i25.i.i.i, 4294967295
  %i.ak = mul nuw i64 %i.aj, %i.r                 ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp ugt i32 %i.w, %i.al
  br i1 %i.am, label %.lr.ph.i.i.i, label %..loopexit_crit_edge.i.i.i, !llvm.loop !7

..loopexit_crit_edge.i.i.i:                       ; preds = %.lr.ph.i.i.i
  store i64 %i.af, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i24.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !34
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %..loopexit_crit_edge.i.i.i, %bb.d, %bb.c
  %.sroa.22.0.copyload.i.i.i.i.i.i.i3870 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.c ], [ %.narrow.i.i.i.i.i.i24.i.i.i, %..loopexit_crit_edge.i.i.i ], [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.d ]
  %.sroa.01.0.copyload.i.i.i.i.i.i.i3668 = phi i64 [ %i.i, %bb.c ], [ %i.af, %..loopexit_crit_edge.i.i.i ], [ %i.i, %bb.d ]
  %.1.i.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ak, %..loopexit_crit_edge.i.i.i ], [ %i.s, %bb.d ]
  %i.an = lshr i64 %.1.i.i.i, 32
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit

_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit: ; preds = %bb.b, %.loopexit.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i38 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.sroa.22.0.copyload.i.i.i.i.i.i.i3870, %.loopexit.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i.i.i.i36 = phi i64 [ %i.i, %bb.b ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i3668, %.loopexit.i.i.i ]
  %.018.i.i.in.i = phi i64 [ %i.p, %bb.b ], [ %i.an, %.loopexit.i.i.i ] ; 2 uses
  %.018.i.i.i = trunc nuw i64 %.018.i.i.in.i to i32 ; 3 uses
  %i.ao = icmp eq i64 %.018.i.i.in.i, 0
  br i1 %i.ao, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit
  %i.ap = add nsw i32 %.018.i.i.i, -1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !186 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = shl nuw i32 1, %i.ap                    ; 2 uses
  %i.au = icmp sgt i32 %.018.i.i.i, 31
  br i1 %i.au, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask = shl nsw i32 -1, %.018.i.i.i
  %i.av = xor i32 %notmask, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aw = sitofp i32 %i.ar to double              ; 2 uses
  %i.ax = sitofp i32 %i.ap to double
  %i.ay = tail call noundef double @pow(double noundef %i.aw, double noundef %i.ax) #17 ; 3 uses
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.aw, double -1.000000e+00) ; 2 uses
  %.inv = fcmp oge double %i.ay, f0x41EFFFFFFFE00000
  %spec.select58 = select i1 %.inv, double f0x41EFFFFFFFE00000, double %i.ay
  %spec.select = fptoui double %spec.select58 to i32
  %.inv60 = fcmp oge double %i.az, f0x41EFFFFFFFE00000
  %spec.select5759 = select i1 %.inv60, double f0x41EFFFFFFFE00000, double %i.az
  %spec.select57 = fptoui double %spec.select5759 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.g
  %.027 = phi i32 [ %i.at, %bb.f ], [ %i.at, %bb.g ], [ %spec.select, %bb.h ]
  %.0 = phi i32 [ -1, %bb.f ], [ %i.av, %bb.g ], [ %spec.select57, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !187 ; 2 uses
  %spec.select56 = tail call i32 @llvm.umin.i32(i32 %.027, i32 %i.bb) ; 2 uses
  %i.bc = tail call i32 @llvm.umin.i32(i32 %.0, i32 %i.bb)
  %i.bd = sub i32 %i.bc, %spec.select56           ; 4 uses
  %i.be = zext i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i38 to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = zext i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i36 to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = mul i128 %i.bh, 47026247687942121848144207491837523525
  %i.bj = add i128 %i.bi, 1442695040888963407     ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 3 uses
  %i.bl = lshr i128 %i.bj, 64
  %.tr.i.i.i.i.i.i.i.i.i39 = trunc nuw i128 %i.bl to i64
  %.narrow.i.i.i.i.i.i.i.i.i40 = add i64 %.tr.i.i.i.i.i.i.i.i.i39, 6364136223846793005 ; 4 uses
  store i64 %i.bk, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i.i.i.i40, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.bm = lshr i64 %.narrow.i.i.i.i.i.i.i.i.i40, 58
  %i.bn = xor i64 %.narrow.i.i.i.i.i.i.i.i.i40, %i.bk ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i41 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bn, i64 %i.bn, i64 %i.bm) ; 2 uses
  %i.bo = add i32 %i.bd, 1                        ; 4 uses
  %i.bp = and i32 %i.bo, %i.bd
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.4.0.insert.ext = zext i32 %i.bd to i64
  %i.br = and i64 %.0.i.i.i.i.i.i.i.i.i.i41, %.sroa.4.0.insert.ext
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit53

bb.k:                                             ; preds = %bb.i
  %i.bs = and i64 %.0.i.i.i.i.i.i.i.i.i.i41, 4294967295
  %i.bt = zext i32 %i.bo to i64                   ; 2 uses
  %i.bu = mul nuw i64 %i.bs, %i.bt                ; 3 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = icmp ugt i32 %i.bo, %i.bv
  br i1 %i.bw, label %bb.l, label %.loopexit.i.i.i42, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.bx = xor i32 %i.bd, -1
  %i.by = urem i32 %i.bx, %i.bo                   ; 2 uses
  %i.bz = icmp ugt i32 %i.by, %i.bv
  br i1 %i.bz, label %.lr.ph.i.i.i47, label %.loopexit.i.i.i42

.lr.ph.i.i.i47:                                   ; preds = %bb.l, %.lr.ph.i.i.i47
  %i.ca = phi i64 [ %i.ch, %.lr.ph.i.i.i47 ], [ %i.bk, %bb.l ]
  %.sroa.22.0.copyload.i.i.i.i222627.i.i.i48 = phi i64 [ %.narrow.i.i.i.i.i.i24.i.i.i50, %.lr.ph.i.i.i47 ], [ %.narrow.i.i.i.i.i.i.i.i.i40, %bb.l ]
  %i.cb = zext i64 %.sroa.22.0.copyload.i.i.i.i222627.i.i.i48 to i128
  %i.cc = shl nuw i128 %i.cb, 64
  %i.cd = zext i64 %i.ca to i128
  %i.ce = or disjoint i128 %i.cc, %i.cd
  %i.cf = mul i128 %i.ce, 47026247687942121848144207491837523525
  %i.cg = add i128 %i.cf, 1442695040888963407     ; 2 uses
  %i.ch = trunc i128 %i.cg to i64                 ; 3 uses
  %i.ci = lshr i128 %i.cg, 64
  %.tr.i.i.i.i.i.i23.i.i.i49 = trunc nuw i128 %i.ci to i64
  %.narrow.i.i.i.i.i.i24.i.i.i50 = add i64 %.tr.i.i.i.i.i.i23.i.i.i49, 6364136223846793005 ; 4 uses
  %i.cj = lshr i64 %.narrow.i.i.i.i.i.i24.i.i.i50, 58
  %i.ck = xor i64 %.narrow.i.i.i.i.i.i24.i.i.i50, %i.ch ; 2 uses
  %.0.i.i.i.i.i.i.i25.i.i.i51 = tail call noundef i64 @llvm.fshr.i64(i64 %i.ck, i64 %i.ck, i64 %i.cj)
  %i.cl = and i64 %.0.i.i.i.i.i.i.i25.i.i.i51, 4294967295
  %i.cm = mul nuw i64 %i.cl, %i.bt                ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = icmp ugt i32 %i.by, %i.cn
  br i1 %i.co, label %.lr.ph.i.i.i47, label %..loopexit_crit_edge.i.i.i52, !llvm.loop !7

..loopexit_crit_edge.i.i.i52:                     ; preds = %.lr.ph.i.i.i47
  store i64 %i.ch, ptr %1, align 16, !tbaa !34
  store i64 %.narrow.i.i.i.i.i.i24.i.i.i50, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !34
  br label %.loopexit.i.i.i42

.loopexit.i.i.i42:                                ; preds = %..loopexit_crit_edge.i.i.i52, %bb.l, %bb.k
  %.1.i.i.i43 = phi i64 [ %i.bu, %bb.k ], [ %i.cm, %..loopexit_crit_edge.i.i.i52 ], [ %i.bu, %bb.l ]
  %i.cp = lshr i64 %.1.i.i.i43, 32
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit53
end_hunk_0
