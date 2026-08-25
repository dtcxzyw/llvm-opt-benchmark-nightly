Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ProbabilityTrigonometricFunctionsRegistration?download=true
inline.NumInlined: 54764
inline.NumDeleted: 11386
loop-unroll.NumCompletelyUnrolled: 843
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 896
begin_hunk_0_@_ZN5boost4math5tools6detail24bracket_root_towards_maxINS0_6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS6_13promote_floatILb0EEENS6_14promote_doubleILb0EEENS6_14default_policyESC_SC_SC_SC_SC_SC_SC_SC_SC_SC_EEEEeEET0_T_SF_RKSF_RSF_SJ_Rm:bb.a
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 64
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i32 %i.n, 5
  %i.q = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.p) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi x86_fp80 [ %i.q, %bb.d ], [ 2.000000e+00, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.s = load x86_fp80, ptr %2, align 16, !tbaa !182 ; 3 uses
  store x86_fp80 %i.s, ptr %i.c, align 16, !tbaa !182
  %i.t = load x86_fp80, ptr %3, align 16, !tbaa !182
  %i.u = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.t)
  %i.v = tail call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.f)
  %i.w = fcmp olt x86_fp80 %i.u, %i.v
  %i.x = add i64 %i.d, -1
  store i64 %i.x, ptr %5, align 8, !tbaa !260
  %i.y = icmp samesign ugt i32 %i.n, 1024
  %i.z = select i1 %i.y, i32 8, i32 2
  %i.aa = uitofp nneg i32 %i.z to x86_fp80        ; 2 uses
  %i.ab = load x86_fp80, ptr %0, align 16         ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i8, ptr %i.ac, align 16, !range !287
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load x86_fp80, ptr %i.af, align 16      ; 2 uses
  br i1 %i.w, label %.lr.ph93, label %.lr.ph

.lr.ph93:                                         ; preds = %bb.e, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit
  %i.ah = phi x86_fp80 [ %i.ar, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %i.s, %bb.e ] ; 2 uses
  %.092 = phi x86_fp80 [ %i.ap, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %i.r, %bb.e ] ; 4 uses
  %.06491 = phi x86_fp80 [ %i.am, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit ], [ %1, %bb.e ] ; 3 uses
  %i.ai = fcmp olt x86_fp80 %i.ah, 0.000000e+00
  %i.aj = load x86_fp80, ptr %2, align 16, !tbaa !182
  %i.ak = fcmp uge x86_fp80 %i.aj, 0.000000e+00
  %i.al = xor i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph93
  store x86_fp80 %.06491, ptr %3, align 16, !tbaa !182
  %i.am = fmul x86_fp80 %.06491, %.092            ; 3 uses
  %i.an = load x86_fp80, ptr %4, align 16, !tbaa !182 ; 2 uses
  %i.ao = fcmp ogt x86_fp80 %i.am, %i.an
  br i1 %i.ao, label %.critedge.sink.split, label %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit

_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit: ; preds = %bb.f
  %i.ap = fmul x86_fp80 %.092, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41, !noalias !9991
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !9991
  %i.aq = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.ab, x86_fp80 noundef %i.am, i1 noundef zeroext true, i1 noundef zeroext %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull %i.b), !noalias !9991
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !9991
  %i.ar = fsub x86_fp80 %i.aq, %i.ag              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41, !noalias !9991
  store x86_fp80 %i.ar, ptr %i.c, align 16, !tbaa !182
  %i.as = load i64, ptr %5, align 8, !tbaa !260
  %i.at = add i64 %i.as, -1                       ; 2 uses
  store i64 %i.at, ptr %5, align 8, !tbaa !260
  %.not39 = icmp eq i64 %i.at, 0
  br i1 %.not39, label %.critedge.thread, label %.lr.ph93, !llvm.loop !9994

.lr.ph:                                           ; preds = %bb.e, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44
  %i.au = phi x86_fp80 [ %i.be, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %i.s, %bb.e ] ; 2 uses
  %.189 = phi x86_fp80 [ %i.bc, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %i.r, %bb.e ] ; 4 uses
  %.16588 = phi x86_fp80 [ %i.az, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44 ], [ %1, %bb.e ] ; 3 uses
  %i.av = fcmp olt x86_fp80 %i.au, 0.000000e+00
  %i.aw = load x86_fp80, ptr %2, align 16, !tbaa !182
  %i.ax = fcmp uge x86_fp80 %i.aw, 0.000000e+00
  %i.ay = xor i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph
  store x86_fp80 %.16588, ptr %3, align 16, !tbaa !182
  %i.az = fdiv x86_fp80 %.16588, %.189            ; 3 uses
  %i.ba = load x86_fp80, ptr %4, align 16, !tbaa !182 ; 2 uses
  %i.bb = fcmp ogt x86_fp80 %i.az, %i.ba
  br i1 %i.bb, label %.critedge.sink.split, label %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44

_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44: ; preds = %bb.g
  %i.bc = fmul x86_fp80 %.189, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41, !noalias !9995
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !9995
  %i.bd = call noundef x86_fp80 @_ZN5boost4math6detail20gamma_incomplete_impIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEET_SB_SB_bbRKT0_PSB_(x86_fp80 noundef %i.ab, x86_fp80 noundef %i.az, i1 noundef zeroext true, i1 noundef zeroext %i.ae, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull %i.a), !noalias !9995
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !9995
  %i.be = fsub x86_fp80 %i.bd, %i.ag              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41, !noalias !9995
  store x86_fp80 %i.be, ptr %i.c, align 16, !tbaa !182
  %i.bf = load i64, ptr %5, align 8, !tbaa !260
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !260
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !9998

.critedge.sink.split:                             ; preds = %bb.g, %bb.f
  %.lcssa130.sink = phi x86_fp80 [ %i.ah, %bb.f ], [ %i.au, %bb.g ]
  %.266.ph.ph = phi x86_fp80 [ %i.an, %bb.f ], [ %i.ba, %bb.g ]
  %.2.ph.ph = phi x86_fp80 [ %.092, %bb.f ], [ %.189, %bb.g ]
  %i.bh = fneg x86_fp80 %.lcssa130.sink
  store x86_fp80 %i.bh, ptr %i.c, align 16, !tbaa !182
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph93, %.critedge.sink.split
  %.266.ph = phi x86_fp80 [ %.266.ph.ph, %.critedge.sink.split ], [ %.06491, %.lr.ph93 ], [ %.16588, %.lr.ph ] ; 3 uses
  %.2.ph = phi x86_fp80 [ %.2.ph.ph, %.critedge.sink.split ], [ %.092, %.lr.ph93 ], [ %.189, %.lr.ph ]
  store x86_fp80 %.266.ph, ptr %4, align 16, !tbaa !182
  %i.bi = fcmp ogt x86_fp80 %.2.ph, 1.600000e+01
  br i1 %i.bi, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %.critedge
  %i.bj = fsub x86_fp80 %1, %.266.ph
  %i.bk = call noundef x86_fp80 @_ZN5boost4math5tools6detail24bracket_root_towards_minINS0_6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS6_13promote_floatILb0EEENS6_14promote_doubleILb0EEENS6_14default_policyESC_SC_SC_SC_SC_SC_SC_SC_SC_SC_EEEEeEET0_T_SF_RKSF_RSF_SJ_Rm(ptr noundef nonnull byval(%"struct.boost::math::detail::gamma_p_inverse_func") align 16 %0, x86_fp80 noundef %.266.ph, ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.bl = fadd x86_fp80 %i.bj, %i.bk
  br label %bb.i

.critedge.thread:                                 ; preds = %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit44, %_ZNK5boost4math6detail20gamma_p_inverse_funcIeNS0_8policies6policyINS3_13promote_floatILb0EEENS3_14promote_doubleILb0EEENS3_14default_policyES9_S9_S9_S9_S9_S9_S9_S9_S9_S9_EEEclERKe.exit, %.critedge
  %i.bm = load x86_fp80, ptr %4, align 16, !tbaa !182
  %i.bn = load x86_fp80, ptr %3, align 16, !tbaa !182
  %i.bo = fadd x86_fp80 %i.bm, %i.bn
  %i.bp = fmul x86_fp80 %i.bo, 5.000000e-01
  %i.bq = fsub x86_fp80 %1, %i.bp
  br label %bb.i

bb.i:                                             ; preds = %.critedge.thread, %bb.h
  %.034 = phi x86_fp80 [ %i.bl, %bb.h ], [ %i.bq, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.135 = phi x86_fp80 [ %i.j, %bb.b ], [ %.034, %bb.i ]
  ret x86_fp80 %.135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math14float_distanceIeeEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS4_RKS5_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %2 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %3 = alloca %"class.boost::math::policies::policy", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.c = load x86_fp80, ptr %0, align 16, !tbaa !182
  store x86_fp80 %i.c, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.d = load x86_fp80, ptr %1, align 16, !tbaa !182
  store x86_fp80 %i.d, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.e = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret x86_fp80 %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.c = load x86_fp80, ptr %0, align 16, !tbaa !182
  store x86_fp80 %i.c, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.d = load x86_fp80, ptr %1, align 16, !tbaa !182
  store x86_fp80 %i.d, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.e = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret x86_fp80 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %4 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca x86_fp80, align 16                ; 4 uses
  %i.j = alloca x86_fp80, align 16                ; 4 uses
  %5 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca x86_fp80, align 16                ; 4 uses
  %i.n = alloca x86_fp80, align 16                ; 4 uses
  %6 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.o = alloca x86_fp80, align 16                ; 4 uses
  %i.p = alloca x86_fp80, align 16                ; 4 uses
  %i.q = alloca x86_fp80, align 16                ; 4 uses
  %i.r = alloca x86_fp80, align 16                ; 4 uses
  %i.s = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 11 uses
  %i.t = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.s) ; 2 uses
  %i.u = fcmp ueq x86_fp80 %i.t, +inf
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr @_ZZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.v, ptr noundef nonnull @.str.356, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.w = load x86_fp80, ptr %1, align 16, !tbaa !182 ; 12 uses
  %i.x = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.w)
  %i.y = fcmp ueq x86_fp80 %i.x, +inf
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @_ZZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.z, ptr noundef nonnull @.str.357, ptr noundef nonnull align 16 dereferenceable(16) %1)
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.aa = fcmp ogt x86_fp80 %i.s, %i.w
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store x86_fp80 %i.w, ptr %i.m, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store x86_fp80 %i.s, ptr %i.n, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ab = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #41
  %i.ac = fneg x86_fp80 %i.ab
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.ad = fcmp oeq x86_fp80 %i.s, %i.w
  br i1 %i.ad, label %bb.ag, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = fcmp oeq x86_fp80 %i.s, 0.000000e+00
  br i1 %i.ae, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.af = fcmp olt x86_fp80 %i.w, 0.000000e+00
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.l)
  %i.ag = load i32, ptr %i.l, align 4
  %i.ah = and i32 %i.ag, 32832
  %.not.i.i = icmp eq i32 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ai = select i1 %.not.i.i, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.k)
  %i.aj = load i32, ptr %i.k, align 4
  %i.ak = and i32 %i.aj, 32832
  %.not.i.i78 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not.i.i78, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = phi x86_fp80 [ %i.ai, %bb.j ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #41
  store x86_fp80 %i.am, ptr %i.i, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #41
  store x86_fp80 %i.w, ptr %i.j, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.an = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  %i.ao = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.an)
  %i.ap = fadd x86_fp80 %i.ao, 1.000000e+00
  br label %bb.ag

bb.m:                                             ; preds = %bb.h
  %i.aq = fcmp oeq x86_fp80 %i.w, 0.000000e+00
  br i1 %i.aq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  %i.ar = fcmp olt x86_fp80 %i.s, 0.000000e+00
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.h)
  %i.as = load i32, ptr %i.h, align 4
  %i.at = and i32 %i.as, 32832
  %.not.i.i79 = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = select i1 %.not.i.i79, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.av = load i32, ptr %i.g, align 4
  %i.aw = and i32 %i.av, 32832
  %.not.i.i80 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i.i80, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = phi x86_fp80 [ %i.au, %bb.o ], [ %i.ax, %bb.p ]
  store x86_fp80 %i.ay, ptr %i.o, align 16, !tbaa !182
  %i.az = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ba = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.az)
  %i.bb = fadd x86_fp80 %i.ba, 1.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #41
  br label %bb.ag

bb.r:                                             ; preds = %bb.m
  %i.bc = bitcast x86_fp80 %i.s to i80
  %i.bd = bitcast x86_fp80 %i.w to i80
  %i.be = xor i80 %i.bd, %i.bc
  %.not = icmp sgt i80 %i.be, -1
  br i1 %.not, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #41
  %i.bf = fcmp olt x86_fp80 %i.w, 0.000000e+00
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.f)
  %i.bg = load i32, ptr %i.f, align 4
  %i.bh = and i32 %i.bg, 32832
  %.not.i.i82 = icmp eq i32 %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = select i1 %.not.i.i82, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.bj = load i32, ptr %i.e, align 4
  %i.bk = and i32 %i.bj, 32832
  %.not.i.i83 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not.i.i83, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = phi x86_fp80 [ %i.bi, %bb.t ], [ %i.bl, %bb.u ]
  store x86_fp80 %i.bm, ptr %i.p, align 16, !tbaa !182
  %i.bn = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bo = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.bn)
  %i.bp = fadd x86_fp80 %i.bo, 2.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #41
  %i.bq = load x86_fp80, ptr %0, align 16, !tbaa !182
  %i.br = fcmp olt x86_fp80 %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.d)
  %i.bs = load i32, ptr %i.d, align 4
  %i.bt = and i32 %i.bs, 32832
  %.not.i.i84 = icmp eq i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bu = select i1 %.not.i.i84, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = and i32 %i.bv, 32832
  %.not.i.i85 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not.i.i85, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.by = phi x86_fp80 [ %i.bu, %bb.w ], [ %i.bx, %bb.x ]
  store x86_fp80 %i.by, ptr %i.q, align 16, !tbaa !182
  %i.bz = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeNS0_8policies6policyINS2_14default_policyES4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_S4_EEEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS8_RKS9_RKT1_(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.ca = call noundef x86_fp80 @llvm.fabs.f80(x86_fp80 %i.bz)
  %i.cb = fadd x86_fp80 %i.bp, %i.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #41
  br label %bb.ag

bb.z:                                             ; preds = %bb.r
  %i.cc = fcmp olt x86_fp80 %i.s, 0.000000e+00
  br i1 %i.cc, label %bb.aa, label %_ZN5boost4math10fpclassifyIeEEiT_.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = fneg x86_fp80 %i.w
  %i.ce = fneg x86_fp80 %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store x86_fp80 %i.cd, ptr %i.a, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store x86_fp80 %i.ce, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.cf = call noundef x86_fp80 @_ZN5boost4math6detail18float_distance_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_S9_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !9999
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ag

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.z
  %i.cg = fcmp uge x86_fp80 %i.t, f0x00018000000000000000
  %i.ch = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.s)
  %i.ci = extractvalue { x86_fp80, i32 } %i.ch, 1
  %i.cj = select i1 %i.cg, i32 %i.ci, i32 -16381  ; 3 uses
  %i.ck = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.cj) #41 ; 4 uses
  %i.cl = fcmp ogt x86_fp80 %i.w, %i.ck
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit
  %i.cm = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.w)
  %i.cn = extractvalue { x86_fp80, i32 } %i.cm, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #41
  %i.co = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 5.000000e-01, i32 noundef %i.cn) #41
  store x86_fp80 %i.co, ptr %i.r, align 16, !tbaa !182
  %i.cp = call noundef x86_fp80 @_ZN5boost4math14float_distanceIeeEENS0_5tools12promote_argsIT_T0_ffffE4typeERKS4_RKS5_(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %1)
  %i.cq = xor i32 %i.cj, -1
  %i.cr = add i32 %i.cn, %i.cq
  %i.cs = sitofp i32 %i.cr to x86_fp80
  %i.ct = call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef 63) #41
  %i.cu = fmul x86_fp80 %i.ct, %i.cs
  %i.cv = fadd x86_fp80 %i.cp, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #41
  %.pre = load x86_fp80, ptr %0, align 16, !tbaa !182
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost4math10fpclassifyIeEEiT_.exit
  %i.cw = phi x86_fp80 [ %.pre, %bb.ab ], [ %i.s, %_ZN5boost4math10fpclassifyIeEEiT_.exit ] ; 7 uses
  %.072 = phi x86_fp80 [ %i.cv, %bb.ab ], [ 0.000000e+00, %_ZN5boost4math10fpclassifyIeEEiT_.exit ]
  %or.cond111 = fcmp ueq x86_fp80 %i.cw, 0.000000e+00
  br i1 %or.cond111, label %.select.unfold110_crit_edge, label %bb.ad

.select.unfold110_crit_edge:                      ; preds = %bb.ac
  %.pre116 = load x86_fp80, ptr %1, align 16, !tbaa !182
  br label %select.unfold110

bb.ad:                                            ; preds = %bb.ac
  %or.cond112 = call i1 @llvm.is.fpclass.f80(x86_fp80 %i.cw, /* (inf norm) */ i32 780)
  %.pre117 = load x86_fp80, ptr %1, align 16, !tbaa !182 ; 2 uses
  br i1 %or.cond112, label %select.unfold110, label %_ZN5boost4math10fpclassifyIeEEiT_.exit86

select.unfold110:                                 ; preds = %.select.unfold110_crit_edge, %bb.ad
  %i.cx = phi x86_fp80 [ %.pre116, %.select.unfold110_crit_edge ], [ %.pre117, %bb.ad ] ; 4 uses
  %i.cy = fsub x86_fp80 %i.cx, %i.cw
  %i.cz = fcmp olt x86_fp80 %i.cy, f0x00018000000000000000
  br i1 %i.cz, label %_ZN5boost4math10fpclassifyIeEEiT_.exit86, label %bb.ae

_ZN5boost4math10fpclassifyIeEEiT_.exit86:         ; preds = %bb.ad, %select.unfold110
  %i.da = phi x86_fp80 [ %i.cx, %select.unfold110 ], [ %.pre117, %bb.ad ]
  %i.db = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.cw, i32 noundef 64) #41 ; 3 uses
  %i.dc = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.da, i32 noundef 64) #41 ; 2 uses
  %i.dd = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.ck, i32 noundef 64) #41 ; 2 uses
  %i.de = fcmp olt x86_fp80 %i.dc, %i.dd
  %i.df = select i1 %i.de, x86_fp80 %i.dc, x86_fp80 %i.dd ; 2 uses
  %i.dg = fneg x86_fp80 %i.df
  %i.dh = fsub x86_fp80 %i.db, %i.df              ; 3 uses
  %i.di = fsub x86_fp80 %i.dh, %i.db              ; 2 uses
  %i.dj = fsub x86_fp80 %i.dh, %i.di
  %i.dk = fsub x86_fp80 %i.db, %i.dj
  %i.dl = fsub x86_fp80 %i.dg, %i.di
  %i.dm = fadd x86_fp80 %i.dl, %i.dk
  br label %bb.af

bb.ae:                                            ; preds = %select.unfold110
  %i.dn = fcmp olt x86_fp80 %i.cx, %i.ck
  %7 = select i1 %i.dn, x86_fp80 %i.cx, x86_fp80 %i.ck ; 2 uses
  %i.do = fneg x86_fp80 %7
  %i.dp = fsub x86_fp80 %i.cw, %7                 ; 3 uses
  %i.dq = fsub x86_fp80 %i.dp, %i.cw              ; 2 uses
  %i.dr = fsub x86_fp80 %i.dp, %i.dq
  %i.ds = fsub x86_fp80 %i.cw, %i.dr
  %i.dt = fsub x86_fp80 %i.do, %i.dq
  %i.du = fadd x86_fp80 %i.dt, %i.ds
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN5boost4math10fpclassifyIeEEiT_.exit86
  %.pn = phi i32 [ 0, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ 64, %bb.ae ]
  %.074 = phi x86_fp80 [ %i.dh, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ %i.dp, %bb.ae ] ; 3 uses
  %.073 = phi x86_fp80 [ %i.dm, %_ZN5boost4math10fpclassifyIeEEiT_.exit86 ], [ %i.du, %bb.ae ] ; 2 uses
  %.0109 = sub i32 %.pn, %i.cj                    ; 2 uses
  %i.dv = fcmp olt x86_fp80 %.074, 0.000000e+00   ; 2 uses
  %i.dw = fneg x86_fp80 %.074
  %i.dx = fneg x86_fp80 %.073
  %.175 = select i1 %i.dv, x86_fp80 %i.dw, x86_fp80 %.074
  %.1 = select i1 %i.dv, x86_fp80 %i.dx, x86_fp80 %.073
  %i.dy = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.175, i32 noundef %.0109) #41
  %i.dz = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.1, i32 noundef %.0109) #41
  %i.ea = fadd x86_fp80 %i.dy, %i.dz
  %i.eb = fadd x86_fp80 %.072, %i.ea
  br label %bb.ag

bb.ag:                                            ; preds = %bb.g, %bb.af, %bb.aa, %bb.y, %bb.q, %bb.l, %bb.f, %bb.d, %bb.b
  %.0 = phi x86_fp80 [ %i.ac, %bb.f ], [ +qnan, %bb.b ], [ %i.ap, %bb.l ], [ %i.bb, %bb.q ], [ %i.cb, %bb.y ], [ %i.cf, %bb.aa ], [ %i.eb, %bb.af ], [ +qnan, %bb.d ], [ 0.000000e+00, %bb.g ]
  ret x86_fp80 %.0
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #37

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 6 uses
  %i.e = fcmp oeq x86_fp80 %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN5boost4math10fpclassifyIeEEiT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno x86_fp80 %i.d, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 3 uses
  %i.h = fcmp oeq x86_fp80 %i.g, +inf
  br i1 %i.h, label %bb.d, label %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = fcmp olt x86_fp80 %i.d, 0.000000e+00
  br i1 %i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @_ZZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.j, ptr noundef nonnull @.str.359, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30:  ; preds = %bb.c
  %i.k = fcmp ult x86_fp80 %i.d, f0x7FFEFFFFFFFFFFFFFFFF
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30
  %i.l = load ptr, ptr @_ZZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.l, ptr noundef nonnull @.str.251)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.m = load i32, ptr %i.c, align 4
  %i.n = and i32 %i.m, 32832
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not.i.i, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.g:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread30
  %i.p = fcmp uge x86_fp80 %i.g, f0x00018000000000000000
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef f0x00018000000000000000, i32 noundef 65) #41
  store x86_fp80 %i.t, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  br label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit

_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.v = load x86_fp80, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.w = fcmp olt x86_fp80 %i.g, %i.v
  %.pre = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 3 uses
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit
  %i.x = fcmp une x86_fp80 %.pre, f0x80018000000000000000
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef %.pre, i32 noundef 128) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store x86_fp80 %i.y, ptr %i.b, align 16, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.z = call noundef x86_fp80 @_ZN5boost4math6detail14float_next_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2), !inline_history !9980
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.aa = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.z, i32 noundef -128) #41
  br label %bb.p

bb.m:                                             ; preds = %bb.k, %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, %bb.g
  %i.ab = phi x86_fp80 [ f0x80018000000000000000, %bb.k ], [ %.pre, %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit ], [ %i.d, %bb.g ] ; 2 uses
  %i.ac = tail call { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80 %i.ab) ; 2 uses
  %i.ad = extractvalue { x86_fp80, i32 } %i.ac, 1
  %i.ae = extractvalue { x86_fp80, i32 } %i.ac, 0
  %i.af = fcmp oeq x86_fp80 %i.ae, -5.000000e-01
  %i.ag = sext i1 %i.af to i32
  %.028 = add i32 %i.ad, -64
  %i.ah = add i32 %.028, %i.ag
  %i.ai = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef 1.000000e+00, i32 noundef %i.ah) #41 ; 2 uses
  %i.aj = fcmp oeq x86_fp80 %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = and i32 %i.ak, 32832
  %.not.i.i26 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i.i26, x86_fp80 3.645200e-4951, x86_fp80 f0x00018000000000000000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi x86_fp80 [ %i.am, %bb.n ], [ %i.ai, %bb.m ]
  %i.an = fadd x86_fp80 %i.ab, %.0
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o, %bb.l, %_ZN5boost4math10fpclassifyIeEEiT_.exit, %bb.f, %bb.e
  %.022 = phi x86_fp80 [ %i.an, %bb.o ], [ +qnan, %bb.e ], [ +inf, %bb.f ], [ %i.o, %_ZN5boost4math10fpclassifyIeEEiT_.exit ], [ %i.aa, %bb.l ], [ f0xFFFEFFFFFFFFFFFFFFFF, %bb.d ]
  ret x86_fp80 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef x86_fp80 @_ZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca x86_fp80, align 16                ; 4 uses
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load x86_fp80, ptr %0, align 16, !tbaa !182 ; 6 uses
  %i.e = fcmp oeq x86_fp80 %i.d, 0.000000e+00
  br i1 %i.e, label %_ZN5boost4math10fpclassifyIeEEiT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp uno x86_fp80 %i.d, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %i.d) ; 3 uses
  %i.h = fcmp oeq x86_fp80 %i.g, +inf
  br i1 %i.h, label %bb.d, label %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = fcmp ogt x86_fp80 %i.d, 0.000000e+00
  br i1 %i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @_ZZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt12domain_erroreEEvPKcS6_RKT0_(ptr noundef %i.j, ptr noundef nonnull @.str.359, ptr noundef nonnull align 16 dereferenceable(16) %0)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31:  ; preds = %bb.c
  %i.k = fcmp ugt x86_fp80 %i.d, f0xFFFEFFFFFFFFFFFFFFFF
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31
  %i.l = load ptr, ptr @_ZZN5boost4math6detail15float_prior_impIeNS0_8policies6policyINS3_14default_policyES5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_EEEET_RKS7_RKSt17integral_constantIbLb1EERKT0_E8function, align 8, !tbaa !893
  tail call void @_ZN5boost4math8policies6detail11raise_errorISt14overflow_erroreEEvPKcS6_(ptr noundef %i.l, ptr noundef nonnull @.str.251)
  br label %bb.p

_ZN5boost4math10fpclassifyIeEEiT_.exit:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.m = load i32, ptr %i.c, align 4
  %i.n = and i32 %i.m, 32832
  %.not.i.i = icmp eq i32 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = select i1 %.not.i.i, x86_fp80 -3.645200e-4951, x86_fp80 f0x80018000000000000000
  br label %bb.p

bb.g:                                             ; preds = %_ZN5boost4math10fpclassifyIeEEiT_.exit.thread31
  %i.p = fcmp uge x86_fp80 %i.g, f0x00018000000000000000
  br i1 %i.p, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.q = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %_ZN5boost4math6detail19get_min_shift_valueIeEET_v.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef x86_fp80 @ldexpl(x86_fp80 noundef f0x00018000000000000000, i32 noundef 65) #41
  store x86_fp80 %i.t, ptr @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val, align 16, !tbaa !182
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIeEET_vE3val) #41
end_hunk_0
