Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/examples_test?download=true
inline.NumInlined: 934
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2026052615random_internal18DistributionCallerINS0_6BitGenEE4ImplINS1_26UniformDistributionWrapperIfEEJRfS8_EEENT_11result_typeESt17integral_constantIbLb0EEPS3_DpOT0_:bb.a
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.n, ptr noundef nonnull %i.f)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us: ; preds = %bb.d, %bb.c, %.split.us
  %i.o = load i64, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.o
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true) ; 2 uses
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = shl i64 %i.r, %i.t
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 8388607
  %i.z = shl nuw nsw i32 %i.u, 23
  %reass.sub = sub nsw i32 %i.y, %i.z
  %i.aa = add nsw i32 %reass.sub, 1056964608
  %i.ab = bitcast i32 %i.aa to float
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us: ; preds = %bb.e, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us
  %.0.i.i.i.us = phi float [ %i.ab, %bb.e ], [ 0.000000e+00, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i.us ]
  %i.ac = tail call float @llvm.fmuladd.f32(float %.0.i.i.i.us, float %.fr3, float %i.a)
  br label %_ZN4absl12lts_2026052625uniform_real_distributionIfEclINS0_6BitGenEEEfRT_.exit

.split:                                           ; preds = %bb.a, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i
  %i.ad = phi i64 [ %i.aj, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ], [ %.pre.i.i, %bb.a ]
  %i.ae = icmp ugt i64 %i.ad, 31
  br i1 %i.ae, label %bb.f, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.f:                                             ; preds = %.split
  store i64 2, ptr %i.g, align 8, !tbaa !25
  %i.af = load i8, ptr %i.i, align 8, !tbaa !32, !range !33, !noundef !34
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !35  ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.ah, ptr noundef nonnull %i.f)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ah, ptr noundef nonnull %i.f)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i

_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i: ; preds = %bb.h, %bb.g, %.split
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.aj, ptr %i.g, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true) ; 2 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = shl i64 %i.al, %i.an
  %i.aq = lshr i64 %i.ap, 40
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 8388607
  %i.at = shl nuw nsw i32 %i.ao, 23
  %reass.sub6 = sub nsw i32 %i.as, %i.at
  %i.au = add nsw i32 %reass.sub6, 1056964608
  %i.av = bitcast i32 %i.au to float
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i: ; preds = %bb.i, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i
  %.0.i.i.i = phi float [ %i.av, %bb.i ], [ 0.000000e+00, %_ZN4absl12lts_2026052615random_internal15FastUniformBitsImEclINS0_6BitGenEEEmRT_.exit.i.i ]
  %i.aw = tail call float @llvm.fmuladd.f32(float %.0.i.i.i, float %.fr3, float %i.a) ; 2 uses
  %i.ax = fcmp uge float %i.aw, %i.b
  br i1 %i.ax, label %.split, label %_ZN4absl12lts_2026052625uniform_real_distributionIfEclINS0_6BitGenEEEfRT_.exit

_ZN4absl12lts_2026052625uniform_real_distributionIfEclINS0_6BitGenEEEfRT_.exit: ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us
  %.us-phi = phi float [ %i.ac, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i.us ], [ %i.aw, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIfNS1_19GeneratePositiveTagELb1EEET_mi.exit.i.i ]
  ret float %.us-phi
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052628log_uniform_int_distributionImE8GenerateINS0_6BitGenEEEmRT_RKNS2_10param_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::random_internal::FastUniformBits.61", align 1 ; 3 uses
  %4 = alloca %"class.absl::lts_20260526::uniform_int_distribution", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %.sroa.4.0.insert.ext = zext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp ugt i64 %i.g, 31
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.f, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.k = load i8, ptr %i.j, align 8, !tbaa !32, !range !33, !noundef !34
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.m, ptr noundef nonnull %i.e)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.m, ptr noundef nonnull %i.e)
  br label %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i

_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.n = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.f, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %i.r = add i32 %i.b, 1                          ; 4 uses
  %i.s = and i32 %i.r, %i.b
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i
  %i.u = and i64 %i.q, %.sroa.4.0.insert.ext
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_.exit.i.i.i
  %i.v = and i64 %i.q, 4294967295
  %i.w = zext i32 %i.r to i64                     ; 2 uses
  %i.x = mul nuw i64 %i.v, %i.w                   ; 3 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp ugt i32 %i.r, %i.y
  br i1 %i.z, label %bb.g, label %.loopexit.i.i.i, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.aa = xor i32 %i.b, -1
  %i.ab = urem i32 %i.aa, %i.r                    ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.y
  br i1 %i.ac, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.ad = call noundef i32 @_ZN4absl12lts_2026052615random_internal15FastUniformBitsIjEclINS0_6BitGenEEEjRT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(288) %1)
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw i64 %i.ae, %i.w                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ugt i32 %i.ab, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !38

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %bb.g, %bb.f
  %.1.i.i.i = phi i64 [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ai = lshr i64 %.1.i.i.i, 32
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit

_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit: ; preds = %bb.e, %.loopexit.i.i.i
  %.018.i.i.in.i = phi i64 [ %i.u, %bb.e ], [ %i.ai, %.loopexit.i.i.i ] ; 3 uses
  %.018.i.i.i = trunc nuw i64 %.018.i.i.in.i to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.aj = icmp eq i64 %.018.i.i.in.i, 0
  br i1 %i.aj, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit
  %i.ak = add nsw i32 %.018.i.i.i, -1             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !48 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i32 %.018.i.i.i, 63
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %notmask = shl nsw i64 -1, %.018.i.i.in.i
  %i.ar = xor i64 %notmask, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.as = uitofp i64 %i.am to double              ; 2 uses
  %i.at = sitofp i32 %i.ak to double
  %i.au = call noundef double @pow(double noundef %i.as, double noundef %i.at) #18 ; 3 uses
  %i.av = call double @llvm.fmuladd.f64(double %i.au, double %i.as, double -1.000000e+00) ; 2 uses
  %i.aw = fcmp ogt double %i.au, f0x43F0000000000000
  %i.ax = fptoui double %i.au to i64
  %i.ay = select i1 %i.aw, i64 -1, i64 %i.ax      ; 2 uses
  %i.az = fcmp ogt double %i.av, f0x43F0000000000000
  br i1 %i.az, label %bb.l, label %5

5:                                                ; preds = %bb.k
  %6 = fptoui double %i.av to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %5, %bb.j
  %.027 = phi i64 [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %i.ay, %5 ], [ %i.ay, %bb.k ]
  %.0 = phi i64 [ -1, %bb.i ], [ %i.ar, %bb.j ], [ %6, %5 ], [ -1, %bb.k ]
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !49 ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.027, i64 %i.bb) ; 2 uses
  %i.bc = call i64 @llvm.umin.i64(i64 %.0, i64 %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 %spec.select, ptr %4, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = sub i64 %i.bc, %spec.select
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !31
  %i.bf = call noundef i64 @_ZN4absl12lts_2026052624uniform_int_distributionImEclINS0_6BitGenEEEmRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(288) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit, %bb.l
  %.028 = phi i64 [ %i.bf, %bb.l ], [ 0, %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_6BitGenEEEiRT_.exit ]
  ret i64 %.028
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt24uniform_int_distributionImE5_S_ndIoN4absl12lts_202605266BitGenEmEET1_RT0_S5_(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp ugt i64 %i.e, 31
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %i.d, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load i8, ptr %i.h, align 8, !tbaa !32, !range !33, !noundef !34
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.k, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit

_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = load i64, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.l
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  %i.p = zext i64 %i.o to i128
  %i.q = zext i64 %1 to i128                      ; 2 uses
  %i.r = mul nuw i128 %i.p, %i.q                  ; 2 uses
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = icmp ugt i64 %1, %i.s
  %extract15 = lshr i128 %i.r, 64
  %extract.t16 = trunc nuw i128 %extract15 to i64 ; 2 uses
  br i1 %i.t, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit
  %i.u = sub i64 0, %1
  %i.v = urem i64 %i.u, %1                        ; 2 uses
  %i.w = icmp ugt i64 %i.v, %i.s
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21
  %i.z = phi i64 [ %i.m, %.lr.ph ], [ %i.af, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21 ]
  %i.aa = icmp ugt i64 %i.z, 31
  br i1 %i.aa, label %bb.g, label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21

bb.g:                                             ; preds = %bb.f
  store i64 2, ptr %i.d, align 8, !tbaa !25
  %i.ab = load i8, ptr %i.y, align 8, !tbaa !32, !range !33, !noundef !34
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !35  ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4absl12lts_2026052615random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.ad, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4absl12lts_2026052615random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.ad, ptr noundef nonnull %i.c)
  br label %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21

_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21: ; preds = %bb.f, %bb.h, %bb.i
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.d, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = zext i64 %i.ah to i128
  %i.aj = mul nuw i128 %i.ai, %i.q                ; 2 uses
  %i.ak = trunc i128 %i.aj to i64
  %i.al = icmp ugt i64 %i.v, %i.ak
  br i1 %i.al, label %bb.f, label %..loopexit_crit_edge, !llvm.loop !154

..loopexit_crit_edge:                             ; preds = %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit21
  %extract19.le = lshr i128 %i.aj, 64
  %extract.t20.le = trunc nuw i128 %extract19.le to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %..loopexit_crit_edge, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit
  %.1.off64 = phi i64 [ %extract.t16, %_ZN4absl12lts_2026052615random_internal17NonsecureURBGBaseINS1_13randen_engineImEENS1_17RandenPoolSeedSeqEEclEv.exit ], [ %extract.t20.le, %..loopexit_crit_edge ], [ %extract.t16, %bb.e ]
  ret i64 %.1.off64
}

declare void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN7testing13PrintToStringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN7testing13PrintToStringIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !77
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.f = load ptr, ptr %5, align 8, !tbaa !70     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !77
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !70     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !77
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.r = load ptr, ptr %5, align 8, !tbaa !70     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !77
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
end_hunk_0
