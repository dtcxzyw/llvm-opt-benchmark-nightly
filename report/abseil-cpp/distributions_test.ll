Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/distributions_test?download=true
inline.NumInlined: 1834
inline.NumDeleted: 672
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_143RandomDistributionsTest_PoissonDefault_Test8TestBodyEv:bb.a
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.bl ], [ %.pn27.pn.pn, %bb.ay ], [ %.pn23.pn.pn, %bb.aj ], [ %.pn.pn.pn, %bb.v ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit87

_ZNSt6vectorIdSaIdEED2Ev.exit87:                  ; preds = %bb.bm, %bb.e, %bb.c
  %.pn36 = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %.pn31.pn.pn.pn, %bb.bm ], [ %i.ak, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 3200000) #20
  resume { ptr, i32 } %.pn36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052620poisson_distributionIlEclINS0_14InsecureBitGenEEElRT_RKNS2_10param_typeE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %.preheader55

.preheader55:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %.preheader55
  %.promoted58 = load i64, ptr %1, align 16
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !184
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted63 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %.narrow.i.i.i.i.i.i.lcssa64 = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted63, %.preheader.lr.ph ], [ %.narrow.i.i.i.i.i.i, %bb.d ]
  %.03462 = phi i32 [ %i.b, %.preheader.lr.ph ], [ %i.ab, %bb.d ] ; 2 uses
  %.03561 = phi i64 [ 0, %.preheader.lr.ph ], [ %.136, %bb.d ]
  %.lcssa565960 = phi i64 [ %.promoted58, %.preheader.lr.ph ], [ %i.m, %bb.d ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit
  %.narrow.i.i.i.i.i.i57 = phi i64 [ %.narrow.i.i.i.i.i.i, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit ], [ %.narrow.i.i.i.i.i.i.lcssa64, %.preheader ]
  %i.f = phi i64 [ %i.m, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit ], [ %.lcssa565960, %.preheader ]
  %.136 = phi i64 [ %i.z, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit ], [ %.03561, %.preheader ] ; 3 uses
  %.033 = phi double [ %i.y, %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit ], [ 1.000000e+00, %.preheader ]
  %i.g = zext i64 %.narrow.i.i.i.i.i.i57 to i128
  %i.h = shl nuw i128 %i.g, 64
  %i.i = zext i64 %i.f to i128
  %i.j = or disjoint i128 %i.h, %i.i
  %i.k = mul i128 %i.j, 47026247687942121848144207491837523525
  %i.l = add i128 %i.k, 1442695040888963407       ; 2 uses
  %i.m = trunc i128 %i.l to i64                   ; 5 uses
  %i.n = lshr i128 %i.l, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.n to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 6 uses
  %i.o = icmp eq i64 %.narrow.i.i.i.i.i.i, %i.m
  br i1 %i.o, label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = xor i64 %.narrow.i.i.i.i.i.i, %i.m       ; 2 uses
  %i.q = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.p, i64 %i.p, i64 %i.q) ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.s = shl i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = lshr i64 %i.s, 11
  %i.u = shl nuw nsw i64 %i.r, 52
  %i.v = and i64 %i.t, 4503599627370495
  %reass.sub = sub nsw i64 %i.v, %i.u
  %i.w = add nsw i64 %reass.sub, 4602678819172646912
  %i.x = bitcast i64 %i.w to double
  br label %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit

_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi double [ %i.x, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.y = fmul double %.033, %.0.i                 ; 2 uses
  %i.z = add nsw i64 %.136, 1
  %i.aa = fcmp ogt double %i.y, %i.e
  br i1 %i.aa, label %bb.b, label %bb.d, !llvm.loop !185

bb.d:                                             ; preds = %_ZN4absl12lts_2026052615random_internal20GenerateRealFromBitsIdNS1_19GeneratePositiveTagELb1EEET_mi.exit
  %i.ab = add nsw i32 %.03462, -1
  %i.ac = icmp sgt i32 %.03462, 1
  br i1 %i.ac, label %.preheader, label %..thread.loopexit_crit_edge, !llvm.loop !186

bb.e:                                             ; preds = %bb.a
  %i.ad = load double, ptr %2, align 8, !tbaa !187
  %i.ae = fadd double %i.ad, 5.000000e-01
  %.sroa.22.0..sroa_idx.i.i.i.i42 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load double, ptr %i.af, align 8, !tbaa !188
  %.promoted = load i64, ptr %1, align 16, !tbaa !12
  %.sroa.22.0..sroa_idx.i.i.i.i42.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i42, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load double, ptr %i.aj, align 8
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.narrow.i.i.i.i.i.i5166 = phi i64 [ %.sroa.22.0..sroa_idx.i.i.i.i42.promoted, %bb.e ], [ %.narrow.i.i.i.i.i.i51, %.backedge ]
  %i.al = phi i64 [ %.promoted, %bb.e ], [ %i.bk, %.backedge ]
  %i.am = zext i64 %.narrow.i.i.i.i.i.i5166 to i128
  %i.an = shl nuw i128 %i.am, 64
  %i.ao = zext i64 %i.al to i128
  %i.ap = or disjoint i128 %i.an, %i.ao
  %i.aq = mul i128 %i.ap, 47026247687942121848144207491837523525
  %i.ar = add i128 %i.aq, 1442695040888963407     ; 3 uses
  %i.as = trunc i128 %i.ar to i64
  %i.at = lshr i128 %i.ar, 64
  %.tr.i.i.i.i.i.i44 = trunc nuw i128 %i.at to i64
  %.narrow.i.i.i.i.i.i45 = add i64 %.tr.i.i.i.i.i.i44, 6364136223846793005 ; 3 uses
  %i.au = lshr i64 %.narrow.i.i.i.i.i.i45, 58
  %i.av = xor i64 %.narrow.i.i.i.i.i.i45, %i.as   ; 2 uses
  %.0.i.i.i.i.i.i.i46 = tail call noundef i64 @llvm.fshr.i64(i64 %i.av, i64 %i.av, i64 %i.au) ; 2 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i46, i1 false) ; 2 uses
  %i.ax = and i64 %i.aw, 63
  %i.ay = shl i64 %.0.i.i.i.i.i.i.i46, %i.ax
  %i.az = lshr i64 %i.ay, 11
  %i.ba = shl nuw nsw i64 %i.aw, 52
  %i.bb = and i64 %i.az, 4503599627370495
  %reass.sub67 = sub nsw i64 %i.bb, %i.ba
  %i.bc = add nsw i64 %reass.sub67, 4602678819172646912
  %i.bd = bitcast i64 %i.bc to double             ; 2 uses
  %i.be = zext i64 %.narrow.i.i.i.i.i.i45 to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = and i128 %i.ar, 18446744073709551615
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = mul i128 %i.bh, 47026247687942121848144207491837523525
  %i.bj = add i128 %i.bi, 1442695040888963407     ; 2 uses
  %i.bk = trunc i128 %i.bj to i64                 ; 3 uses
  %i.bl = lshr i128 %i.bj, 64
  %.tr.i.i.i.i.i.i50 = trunc nuw i128 %i.bl to i64
  %.narrow.i.i.i.i.i.i51 = add i64 %.tr.i.i.i.i.i.i50, 6364136223846793005 ; 4 uses
  %i.bm = lshr i64 %.narrow.i.i.i.i.i.i51, 58
  %i.bn = xor i64 %.narrow.i.i.i.i.i.i51, %i.bk   ; 2 uses
  %.0.i.i.i.i.i.i.i52 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bn, i64 %i.bn, i64 %i.bm) ; 3 uses
  %i.bo = and i64 %.0.i.i.i.i.i.i.i52, -9223372036854775808
  %i.bp = and i64 %.0.i.i.i.i.i.i.i52, 9223372036854775807
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false) ; 2 uses
  %i.br = and i64 %i.bq, 63
  %i.bs = shl i64 %.0.i.i.i.i.i.i.i52, %i.br
  %i.bt = lshr i64 %i.bs, 11
  %i.bu = shl nuw nsw i64 %i.bq, 52
  %i.bv = or disjoint i64 %i.bu, %i.bo
  %i.bw = and i64 %i.bt, 4503599627370495
  %i.bx = or disjoint i64 %i.bw, %i.bv
  %i.by = xor i64 %i.bx, 4607182418800017408
  %i.bz = bitcast i64 %i.by to double
  %i.ca = fmul double %i.ag, %i.bz
  %i.cb = fdiv double %i.ca, %i.bd
  %i.cc = fadd double %i.ae, %i.cb
  %i.cd = tail call double @llvm.floor.f64(double %i.cc) ; 10 uses
  %i.ce = fcmp olt double %i.cd, 0.000000e+00
  br i1 %i.ce, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = fmul double %i.cd, %i.ai
  %i.cg = fcmp ugt double %i.cd, 1.000000e+00
  br i1 %i.cg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ch = fcmp oeq double %i.cd, 2.000000e+00
  br i1 %i.ch, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = tail call double @llvm.log.f64(double %i.cd) ; 2 uses
  %i.cj = fdiv double 1.000000e+00, %i.cd         ; 4 uses
  %i.ck = fneg double %i.cd
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ci, double %i.ck)
  %i.cm = fadd double %i.ci, f0x3FFD67F1C864BEB5
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double 5.000000e-01, double %i.cl)
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double f0x3FB5555555555555, double %i.cn)
  %i.cp = fmul double %i.cj, f0x3F66C16C16C16C17
  %i.cq = fneg double %i.cj
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.cr, double %i.cj, double %i.co)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ct = phi double [ 0.000000e+00, %bb.g ], [ %i.cs, %bb.i ], [ f0x3FE62E42FEFA39EC, %bb.h ]
  %i.cu = tail call double @llvm.log.f64(double %i.bd)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double 2.000000e+00, double %i.ak)
  %i.cw = fadd double %i.ct, %i.cv
  %i.cx = fcmp olt double %i.cw, %i.cf
  br i1 %i.cx, label %bb.k, label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.f
  br label %bb.f, !llvm.loop !189

bb.k:                                             ; preds = %bb.j
  store i64 %i.bk, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i51, ptr %.sroa.22.0..sroa_idx.i.i.i.i42, align 8, !tbaa !12
  %i.cy = fcmp ogt double %i.cd, f0x43E0000000000000
  br i1 %i.cy, label %.thread, label %3

3:                                                ; preds = %bb.k
  %4 = fptosi double %i.cd to i64
  br label %.thread

..thread.loopexit_crit_edge:                      ; preds = %bb.d
  store i64 %.narrow.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  store i64 %i.m, ptr %1, align 16, !tbaa !12
  br label %.thread

.thread:                                          ; preds = %.preheader55, %..thread.loopexit_crit_edge, %bb.k, %3
  %.3 = phi i64 [ %4, %3 ], [ 9223372036854775807, %bb.k ], [ %.136, %..thread.loopexit_crit_edge ], [ 0, %.preheader55 ]
  ret i64 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141RandomDistributionsTest_PoissonLarge_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141RandomDistributionsTest_PoissonLarge_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_141RandomDistributionsTest_PoissonLarge_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_141RandomDistributionsTest_PoissonLarge_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_141RandomDistributionsTest_PoissonLarge_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::poisson_distribution", align 8 ; 8 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %2 = alloca %"class.absl::lts_20260526::InsecureBitGen", align 16 ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::random_internal::DistributionMoments", align 8 ; 8 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(3200000) ptr @_Znwm(i64 noundef 3200000) #21 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3200000) %i.c, i8 0, i64 3200000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit unwind label %bb.c

_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit:  ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 16, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = zext i32 %i.d to i128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  %i.l = zext i32 %i.k to i64
  %i.m = or disjoint i64 %i.h, %i.l
  %i.n = zext i64 %i.m to i128
  %i.o = shl nuw i128 %i.i, 96
  %i.p = shl nuw nsw i128 %i.n, 32                ; 2 uses
  %i.q = trunc i128 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = zext i32 %i.s to i64
  %i.u = or disjoint i64 %i.q, %i.t
  %.masked.i.i.i.i.i.i = and i128 %i.p, 79228162495817593519834398720
  %i.v = or disjoint i128 %.masked.i.i.i.i.i.i, %i.o
  %i.w = zext i64 %i.u to i128
  %i.x = add nuw nsw i128 %i.w, 1442695040888963407 ; 2 uses
  %i.y = add i128 %i.v, %i.x
  %i.z = lshr i128 %i.y, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.z to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005
  %i.aa = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.ab = shl nuw i128 %i.aa, 64
  %i.ac = and i128 %i.x, 18446744073709551615
  %i.ad = or disjoint i128 %i.ab, %i.ac
  %i.ae = mul i128 %i.ad, 47026247687942121848144207491837523525
  %i.af = add i128 %i.ae, 1442695040888963407     ; 2 uses
  %i.ag = trunc i128 %i.af to i64
  %i.ah = lshr i128 %i.af, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ah to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i64 %i.ag, ptr %2, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.noexc

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %3, ptr nonnull %i.c, i64 400000)
          to label %bb.f unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit87

.noexc:                                           ; preds = %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store double 1.000000e+08, ptr %1, align 8, !tbaa !187
  store i32 0, ptr %i.aj, align 8, !tbaa !178
  store <2 x double> <double f0x40326BB1BBB55516, double f0x40C0C10B4E5E7707>, ptr %i.ak, align 8, !tbaa !41
  store double f0x4197D783D77B9E51, ptr %i.al, align 8, !tbaa !41
  %i.an = invoke noundef i64 @_ZN4absl12lts_2026052620poisson_distributionIlEclINS0_14InsecureBitGenEEElRT_RKNS2_10param_typeE(ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ao = sitofp i64 %i.an to double
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ao, ptr %i.ap, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 400000
  br i1 %exitcond.not, label %bb.b, label %.noexc, !llvm.loop !190

bb.e:                                             ; preds = %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit87

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.105, double noundef 1.000000e+08, double noundef %i.as, double noundef 1.500000e+06)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.at = load i8, ptr %4, align 8, !tbaa !14, !range !25, !noundef !26
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.i:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !28
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.ba = phi ptr [ %i.az, %bb.l ], [ @.str.50, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 422, ptr noundef %i.ba)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.bb = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_Test8TestBodyEv:bb.a
bb.q:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bk, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.bj, %bb.q ] ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !32    ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i21, label %_ZN7testing7MessageD2Ev.exit23, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22: ; preds = %bb.u
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit23

_ZN7testing7MessageD2Ev.exit23:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22, %bb.u, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  br label %bb.x

bb.v:                                             ; preds = %bb.h, %_ZN7testing7MessageD2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27 ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.br, null
  br i1 %.not.i.i24, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !35
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 32) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 3200000) #20
  ret void

bb.x:                                             ; preds = %_ZN7testing7MessageD2Ev.exit23, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit23 ], [ %i.aw, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.x ], [ %i.av, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

_ZNSt6vectorIdSaIdEED2Ev.exit26:                  ; preds = %bb.y, %bb.f, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %.pn.pn.pn.pn.pn, %bb.y ], [ %i.am, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 3200000) #20
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052628log_uniform_int_distributionIlE8GenerateINS0_14InsecureBitGenEEEmRT_RKNS2_10param_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !238  ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 16, !tbaa !12
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !12
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
  store i64 %i.i, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !12
  %i.k = lshr i64 %.narrow.i.i.i.i.i.i.i.i.i, 58
  %i.l = xor i64 %.narrow.i.i.i.i.i.i.i.i.i, %i.i ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.l, i64 %i.l, i64 %i.k) ; 2 uses
  %i.m = add i32 %i.b, 1                          ; 4 uses
  %i.n = and i32 %i.m, %i.b
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.443.0.insert.ext = zext i32 %i.b to i64
  %i.p = and i64 %.0.i.i.i.i.i.i.i.i.i.i, %.sroa.443.0.insert.ext
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit

bb.c:                                             ; preds = %bb.a
  %i.q = and i64 %.0.i.i.i.i.i.i.i.i.i.i, 4294967295
  %i.r = zext i32 %i.m to i64                     ; 2 uses
  %i.s = mul nuw i64 %i.q, %i.r                   ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = icmp ugt i32 %i.m, %i.t
  br i1 %i.u, label %bb.d, label %.loopexit.i.i.i, !prof !171

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
  br i1 %i.am, label %.lr.ph.i.i.i, label %..loopexit_crit_edge.i.i.i, !llvm.loop !240

..loopexit_crit_edge.i.i.i:                       ; preds = %.lr.ph.i.i.i
  store i64 %i.af, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i24.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !12
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %..loopexit_crit_edge.i.i.i, %bb.d, %bb.c
  %.sroa.22.0.copyload.i.i.i.i.i.i.i3653 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.c ], [ %.narrow.i.i.i.i.i.i24.i.i.i, %..loopexit_crit_edge.i.i.i ], [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.d ]
  %.sroa.01.0.copyload.i.i.i.i.i.i.i3451 = phi i64 [ %i.i, %bb.c ], [ %i.af, %..loopexit_crit_edge.i.i.i ], [ %i.i, %bb.d ]
  %.1.i.i.i = phi i64 [ %i.s, %bb.c ], [ %i.ak, %..loopexit_crit_edge.i.i.i ], [ %i.s, %bb.d ]
  %i.an = lshr i64 %.1.i.i.i, 32
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit

_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit: ; preds = %bb.b, %.loopexit.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i36 = phi i64 [ %.narrow.i.i.i.i.i.i.i.i.i, %bb.b ], [ %.sroa.22.0.copyload.i.i.i.i.i.i.i3653, %.loopexit.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i.i.i.i34 = phi i64 [ %i.i, %bb.b ], [ %.sroa.01.0.copyload.i.i.i.i.i.i.i3451, %.loopexit.i.i.i ]
  %.018.i.i.in.i = phi i64 [ %i.p, %bb.b ], [ %i.an, %.loopexit.i.i.i ] ; 3 uses
  %.018.i.i.i = trunc nuw i64 %.018.i.i.in.i to i32 ; 2 uses
  %i.ao = icmp eq i64 %.018.i.i.in.i, 0
  br i1 %i.ao, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit
  %i.ap = add nsw i32 %.018.i.i.i, -1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !236 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = zext nneg i32 %i.ap to i64
  %i.au = shl nuw i64 1, %i.at                    ; 2 uses
  %i.av = icmp sgt i32 %.018.i.i.i, 63
  br i1 %i.av, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %notmask = shl nsw i64 -1, %.018.i.i.in.i
  %i.aw = xor i64 %notmask, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ax = sitofp i64 %i.ar to double              ; 2 uses
  %i.ay = sitofp i32 %i.ap to double
  %i.az = tail call noundef double @pow(double noundef %i.ax, double noundef %i.ay) #19 ; 3 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ax, double -1.000000e+00) ; 2 uses
  %i.bb = fcmp ogt double %i.az, f0x43F0000000000000
  %i.bc = fptoui double %i.az to i64
  %i.bd = select i1 %i.bb, i64 -1, i64 %i.bc      ; 2 uses
  %i.be = fcmp ogt double %i.ba, f0x43F0000000000000
  br i1 %i.be, label %bb.i, label %3

3:                                                ; preds = %bb.h
  %4 = fptoui double %i.ba to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %3, %bb.g
  %.027 = phi i64 [ %i.au, %bb.f ], [ %i.au, %bb.g ], [ %i.bd, %3 ], [ %i.bd, %bb.h ]
  %.0 = phi i64 [ -1, %bb.f ], [ %i.aw, %bb.g ], [ %4, %3 ], [ -1, %bb.h ]
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !237 ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.027, i64 %i.bg) ; 2 uses
  %i.bh = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.bg)
  %i.bi = sub i64 %i.bh, %spec.select             ; 4 uses
  %i.bj = zext i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i36 to i128
  %i.bk = shl nuw i128 %i.bj, 64
  %i.bl = zext i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i34 to i128
  %i.bm = or disjoint i128 %i.bk, %i.bl
  %i.bn = mul i128 %i.bm, 47026247687942121848144207491837523525
  %i.bo = add i128 %i.bn, 1442695040888963407     ; 2 uses
  %i.bp = trunc i128 %i.bo to i64                 ; 3 uses
  %i.bq = lshr i128 %i.bo, 64
  %.tr.i.i.i.i.i.i.i.i.i37 = trunc nuw i128 %i.bq to i64
  %.narrow.i.i.i.i.i.i.i.i.i38 = add i64 %.tr.i.i.i.i.i.i.i.i.i37, 6364136223846793005 ; 4 uses
  store i64 %i.bp, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i.i.i.i38, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !12
  %i.br = lshr i64 %.narrow.i.i.i.i.i.i.i.i.i38, 58
  %i.bs = xor i64 %.narrow.i.i.i.i.i.i.i.i.i38, %i.bp ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i39 = tail call noundef i64 @llvm.fshr.i64(i64 %i.bs, i64 %i.bs, i64 %i.br) ; 2 uses
  %i.bt = add i64 %i.bi, 1                        ; 4 uses
  %i.bu = and i64 %i.bt, %i.bi
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = and i64 %.0.i.i.i.i.i.i.i.i.i.i39, %i.bi
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bx = zext i64 %.0.i.i.i.i.i.i.i.i.i.i39 to i128
  %i.by = zext i64 %i.bt to i128                  ; 2 uses
  %i.bz = mul nuw i128 %i.bx, %i.by               ; 2 uses
  %i.ca = trunc i128 %i.bz to i64                 ; 2 uses
  %i.cb = lshr i128 %i.bz, 64
  %i.cc = trunc nuw i128 %i.cb to i64             ; 2 uses
  %i.cd = icmp ugt i64 %i.bt, %i.ca
  br i1 %i.cd, label %bb.l, label %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit, !prof !171

bb.l:                                             ; preds = %bb.k
  %i.ce = xor i64 %i.bi, -1
  %i.cf = urem i64 %i.ce, %i.bt                   ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, %i.ca
  br i1 %i.cg, label %.lr.ph.i.i.i40, label %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit

.lr.ph.i.i.i40:                                   ; preds = %bb.l, %.lr.ph.i.i.i40
  %i.ch = phi i64 [ %i.co, %.lr.ph.i.i.i40 ], [ %i.bp, %bb.l ]
  %.sroa.22.0.copyload.i.i.i.i283435.i.i.i = phi i64 [ %.narrow.i.i.i.i.i.i30.i.i.i, %.lr.ph.i.i.i40 ], [ %.narrow.i.i.i.i.i.i.i.i.i38, %bb.l ]
  %i.ci = zext i64 %.sroa.22.0.copyload.i.i.i.i283435.i.i.i to i128
  %i.cj = shl nuw i128 %i.ci, 64
  %i.ck = zext i64 %i.ch to i128
  %i.cl = or disjoint i128 %i.cj, %i.ck
  %i.cm = mul i128 %i.cl, 47026247687942121848144207491837523525
  %i.cn = add i128 %i.cm, 1442695040888963407     ; 2 uses
  %i.co = trunc i128 %i.cn to i64                 ; 3 uses
  %i.cp = lshr i128 %i.cn, 64
  %.tr.i.i.i.i.i.i29.i.i.i = trunc nuw i128 %i.cp to i64
  %.narrow.i.i.i.i.i.i30.i.i.i = add i64 %.tr.i.i.i.i.i.i29.i.i.i, 6364136223846793005 ; 4 uses
  %i.cq = lshr i64 %.narrow.i.i.i.i.i.i30.i.i.i, 58
  %i.cr = xor i64 %.narrow.i.i.i.i.i.i30.i.i.i, %i.co ; 2 uses
  %.0.i.i.i.i.i.i.i31.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.cr, i64 %i.cr, i64 %i.cq)
  %i.cs = zext i64 %.0.i.i.i.i.i.i.i31.i.i.i to i128
  %i.ct = mul nuw i128 %i.cs, %i.by               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = icmp ugt i64 %i.cf, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i.i40, label %..loopexit_crit_edge.i.i.i41, !llvm.loop !172

..loopexit_crit_edge.i.i.i41:                     ; preds = %.lr.ph.i.i.i40
  store i64 %i.co, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i30.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !12
  %i.cw = lshr i128 %i.ct, 64
  %i.cx = trunc nuw i128 %i.cw to i64
  br label %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit

_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit: ; preds = %bb.j, %bb.k, %bb.l, %..loopexit_crit_edge.i.i.i41
  %.0.i.i.i = phi i64 [ %i.bw, %bb.j ], [ %i.cc, %bb.k ], [ %i.cx, %..loopexit_crit_edge.i.i.i41 ], [ %i.cc, %bb.l ]
  %i.cy = add i64 %.0.i.i.i, %spec.select
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit, %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit
  %.028 = phi i64 [ %i.cy, %_ZN4absl12lts_2026052624uniform_int_distributionIlEclINS0_14InsecureBitGenEEElRT_.exit ], [ 0, %_ZN4absl12lts_2026052624uniform_int_distributionIiEclINS0_14InsecureBitGenEEEiRT_.exit ]
  ret i64 %.028
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #8

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_distributions_test.cc() #15 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %22 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %31 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ac = alloca i64, align 8                     ; 5 uses
  %i.ad = alloca i64, align 8                     ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  %i.ae = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  store ptr %i.ae, ptr %42, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #19
  store i64 23, ptr %i.ad, align 8, !tbaa !12
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %42, align 8, !tbaa !28
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !12 ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.af, ptr noundef nonnull align 1 dereferenceable(23) @.str, i64 23, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !58
  %i.ai = load ptr, ptr %42, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 11 uses
  store ptr %i.ak, ptr %44, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #19
  store i64 71, ptr %i.ac, align 8, !tbaa !12
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef 0)
          to label %.noexc9.i unwind label %bb.g  ; 3 uses

.noexc9.i:                                        ; preds = %bb.a
  store ptr %i.al, ptr %44, align 8, !tbaa !28
  %i.am = load i64, ptr %i.ac, align 8, !tbaa !12 ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !35
end_hunk_1
