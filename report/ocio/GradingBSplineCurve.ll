inline.NumInlined: 1490
inline.NumDeleted: 467
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_:bb.a

_ZNSt6vectorIfSaIfEE9push_backERKf.exit142:       ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141
  %i.jc = load ptr, ptr %1, align 8, !tbaa !56
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.an
  %i.je = load float, ptr %i.jd, align 4, !tbaa !60
  %i.jf = fsub float %i.je, %i.eu
  %i.jg = fmul float %i.jf, 5.000000e-01
  %i.jh = extractelement <2 x float> %i.aq, i64 0
  %i.ji = fsub float %i.jh, %.0195
  %i.jj = fdiv float %i.jg, %i.ji                 ; 2 uses
  %i.jk = load ptr, ptr %i.aj, align 8, !tbaa !62 ; 4 uses
  %i.jl = load ptr, ptr %i.ak, align 8, !tbaa !59
  %.not.i.i143 = icmp eq ptr %i.jk, %i.jl
  br i1 %.not.i.i143, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  store float %i.jj, ptr %i.jk, align 4, !tbaa !60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  store ptr %i.jm, ptr %i.aj, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  %i.jn = load ptr, ptr %3, align 8, !tbaa !56    ; 4 uses
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp                    ; 6 uses
  %i.jr = icmp eq i64 %i.jq, 9223372036854775804
  br i1 %i.jr, label %bb.be, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144: ; preds = %bb.bd
  %i.js = ashr exact i64 %i.jq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i145 = tail call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %i.jt = add nsw i64 %.sroa.speculated.i.i.i.i145, %i.js ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.js
  %i.jv = tail call i64 @llvm.umin.i64(i64 %i.jt, i64 2305843009213693951)
  %i.jw = select i1 %i.ju, i64 2305843009213693951, i64 %i.jv ; 3 uses
  %.not.i.i.i.i146 = icmp ne i64 %i.jw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i146)
  %i.jx = shl nuw nsw i64 %i.jw, 2
  %i.jy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #23 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jq ; 2 uses
  store float %i.jj, ptr %i.jz, align 4, !tbaa !60
  %i.ka = icmp sgt i64 %i.jq, 0
  br i1 %i.ka, label %bb.bf, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

bb.bf:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jy, ptr align 4 %i.jn, i64 %i.jq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147: ; preds = %bb.bf, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %.not.i17.i.i.i148 = icmp eq ptr %i.jn, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.jq) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149: ; preds = %bb.bg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  store ptr %i.jy, ptr %3, align 8, !tbaa !56
  store ptr %i.kb, ptr %i.aj, align 8, !tbaa !62
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jw
  store ptr %i.kc, ptr %i.ak, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

_ZNSt6vectorIfSaIfEE9push_backEOf.exit150:        ; preds = %bb.bc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149
  %i.kd = load ptr, ptr %i.h, align 8, !tbaa !62  ; 4 uses
  %i.ke = load ptr, ptr %i.j, align 8, !tbaa !59
  %.not.i151 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i151, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  store float %.0195, ptr %i.kd, align 4, !tbaa !60
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store ptr %i.kf, ptr %i.h, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bi:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  %i.kg = load ptr, ptr %2, align 8, !tbaa !56    ; 4 uses
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 6 uses
  %i.kk = icmp eq i64 %i.kj, 9223372036854775804
  br i1 %i.kk, label %bb.bj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152: ; preds = %bb.bi
  %i.kl = ashr exact i64 %i.kj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i153 = tail call i64 @llvm.umax.i64(i64 %i.kl, i64 1)
  %i.km = add nsw i64 %.sroa.speculated.i.i.i153, %i.kl ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kl
  %i.ko = tail call i64 @llvm.umin.i64(i64 %i.km, i64 2305843009213693951)
  %i.kp = select i1 %i.kn, i64 2305843009213693951, i64 %i.ko ; 3 uses
  %.not.i.i.i154 = icmp ne i64 %i.kp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i154)
  %i.kq = shl nuw nsw i64 %i.kp, 2
  %i.kr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #23 ; 4 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kj ; 2 uses
  store float %.0195, ptr %i.ks, align 4, !tbaa !60
  %i.kt = icmp sgt i64 %i.kj, 0
  br i1 %i.kt, label %bb.bk, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

bb.bk:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kr, ptr align 4 %i.kg, i64 %i.kj, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155: ; preds = %bb.bk, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %.not.i17.i.i156 = icmp eq ptr %i.kg, null
  br i1 %.not.i17.i.i156, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kj) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157: ; preds = %bb.bl, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  store ptr %i.kr, ptr %2, align 8, !tbaa !56
  store ptr %i.ku, ptr %i.h, align 8, !tbaa !62
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.kp
  store ptr %i.kv, ptr %i.j, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, %bb.bh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.s
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !62  ; 4 uses
  %i.kx = load ptr, ptr %i.j, align 8, !tbaa !59
  %.not.i159 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i159, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.ky = extractelement <2 x float> %i.aq, i64 0
  store float %i.ky, ptr %i.kw, align 4, !tbaa !60
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.kz, ptr %i.h, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.la = load ptr, ptr %2, align 8, !tbaa !56    ; 4 uses
  %i.lb = ptrtoint ptr %i.kw to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc                    ; 6 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775804
  br i1 %i.le, label %bb.bo, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.bn
  %i.lf = ashr exact i64 %i.ld, 2                 ; 3 uses
  %.sroa.speculated.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.lf, i64 1)
  %i.lg = add nsw i64 %.sroa.speculated.i.i.i161, %i.lf ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.lf
  %i.li = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 2305843009213693951)
  %i.lj = select i1 %i.lh, i64 2305843009213693951, i64 %i.li ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.lj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i162)
  %i.lk = shl nuw nsw i64 %i.lj, 2
  %i.ll = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #23 ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.ld ; 2 uses
  %i.ln = extractelement <2 x float> %i.aq, i64 0
  store float %i.ln, ptr %i.lm, align 4, !tbaa !60
  %i.lo = icmp sgt i64 %i.ld, 0
  br i1 %i.lo, label %bb.bp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

bb.bp:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ll, ptr align 4 %i.la, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163: ; preds = %bb.bp, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %.not.i17.i.i164 = icmp eq ptr %i.la, null
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.ld) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  store ptr %i.ll, ptr %2, align 8, !tbaa !56
  store ptr %i.lp, ptr %i.h, align 8, !tbaa !62
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lj
  store ptr %i.lq, ptr %i.j, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

_ZNSt6vectorIfSaIfEE9push_backERKf.exit166:       ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165
  %exitcond.not = icmp eq i64 %i.an, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !126
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingControlPoint", align 4 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 27 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 38 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 9
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10isIdentityEv(ptr noundef nonnull align 8 dereferenceable(60) %0)
  br i1 %i.j, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = shl nsw i32 %2, 1                        ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -1, ptr %i.o, align 4, !tbaa !22
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !109  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  store i32 -1, ptr %i.u, align 4, !tbaa !22
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  store i32 0, ptr %i.v, align 4, !tbaa !22
  br label %bb.fx

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !118  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = shl nsw i32 %2, 1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !22
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 2, ptr %i.ah, align 4, !tbaa !22
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !109 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 3, ptr %i.am, align 4, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !125
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aq, align 4, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !125
  %i.at = sext i32 %i.z to i64
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !63 ; 3 uses
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, float 1.000000e+00, float 0.000000e+00
  %i.ba = getelementptr i8, ptr %i.au, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !60
  %i.bb = icmp eq i32 %i.aw, 3
  %i.bc = icmp eq i32 %i.aw, 5
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  %i.bf = getelementptr i8, ptr %i.au, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !60
  %i.bg = load <2 x i32>, ptr %i.y, align 8, !tbaa !22
  %i.bh = add nsw <2 x i32> %i.bg, <i32 3, i32 2>
  store <2 x i32> %i.bh, ptr %i.y, align 8, !tbaa !22
  br label %bb.fx

.lr.ph.i:                                         ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %.off = add i32 %i.bj, -2
  %switch = icmp ult i32 %.off, 3                 ; 5 uses
  %i.bk = add i32 %i.bj, -3
  %switch114 = icmp ult i32 %i.bk, -2             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 3                 ; 4 uses
  %.not.i = icmp ne ptr %i.bl, %i.bm
  tail call void @llvm.assume(i1 %.not.i)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i, %.lr.ph.i
  %i.bt = phi ptr [ null, %.lr.ph.i ], [ %i.gg, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ] ; 17 uses
  %i.bu = phi i64 [ 0, %.lr.ph.i ], [ %i.gi, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %.095166.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gh, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !60 ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %or.cond.i = select i1 %switch, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cb = fadd float %i.bz, 1.000000e+00          ; 2 uses
  %i.cc = fadd float %i.by, 1.000000e+00
  %i.cd = select i1 %switch114, float %i.by, float %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.bt, %i.ce
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.cb, ptr %i.bt, align 4
  %.sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.cd, ptr %.sroa_idx154.i, align 4
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.ci = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.r, %bb.n, %bb.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.cont unwind label %.loopexit.split-lp325

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23
          to label %.noexc116 unwind label %.loopexit324 ; 8 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store float %i.cb, ptr %i.ct, align 4
  %.sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cd, ptr %.sroa_idx156.i, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc116
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %i.cv = add i64 %i.ci, -8
  %i.cw = sub i64 %i.cv, %i.cj                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 24
  %i.cz = sub i64 %i.cj, %i.cu
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond1264 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1264, label %.lr.ph.i.i.i.i.i.i.i.preheader1467, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cy, 4611686018427387900     ; 3 uses
  %i.da = shl i64 %n.vec, 3                       ; 2 uses
  %i.db = getelementptr i8, ptr %i.cs, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ch, i64 %i.da
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.dd ; 2 uses
  %next.gep1200 = getelementptr i8, ptr %i.ch, i64 %i.dd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #23
          to label %.noexc118 unwind label %.loopexit324 ; 8 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store float %i.dn, ptr %i.ef, align 4
  %.sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store float %i.dp, ptr %.sroa_idx149.i, align 4
  %.not10.i.i.i.i.i.i108.i = icmp eq ptr %i.dt, %i.bt
  br i1 %.not10.i.i.i.i.i.i108.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader

.lr.ph.i.i.i.i.i.i109.i.preheader:                ; preds = %.noexc118
  %i.eg = ptrtoaddr ptr %i.ee to i64
  %i.eh = add i64 %i.du, -8
  %i.ei = sub i64 %i.eh, %i.dv                    ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check1206 = icmp ult i64 %i.ei, 24
  %i.el = sub i64 %i.dv, %i.eg
  %diff.check1204 = icmp ugt i64 %i.el, -32
  %or.cond1265 = or i1 %min.iters.check1206, %diff.check1204
  br i1 %or.cond1265, label %.lr.ph.i.i.i.i.i.i109.i.preheader1468, label %vector.ph1207

vector.ph1207:                                    ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader
  %n.vec1208 = and i64 %i.ek, 4611686018427387900 ; 3 uses
  %i.em = shl i64 %n.vec1208, 3                   ; 2 uses
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dt, i64 %i.em
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1215, %vector.body1209 ] ; 2 uses
  %i.ep = shl i64 %index1210, 3                   ; 2 uses
  %next.gep1211 = getelementptr i8, ptr %i.ee, i64 %i.ep ; 2 uses
  %next.gep1212 = getelementptr i8, ptr %i.dt, i64 %i.ep ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.eq = getelementptr i8, ptr %next.gep1212, i64 16
  %wide.load1213 = load <2 x i64>, ptr %next.gep1212, align 4, !alias.scope !137, !noalias !134
  %wide.load1214 = load <2 x i64>, ptr %i.eq, align 4, !alias.scope !137, !noalias !134
  %i.er = getelementptr i8, ptr %next.gep1211, i64 16
  store <2 x i64> %wide.load1213, ptr %next.gep1211, align 4, !alias.scope !134, !noalias !137
  store <2 x i64> %wide.load1214, ptr %i.er, align 4, !alias.scope !134, !noalias !137
  %index.next1215 = add nuw i64 %index1210, 4     ; 2 uses
  %i.es = icmp eq i64 %index.next1215, %n.vec1208
  br i1 %i.es, label %middle.block1216, label %vector.body1209, !llvm.loop !139

middle.block1216:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %i.ek, %n.vec1208
  br i1 %cmp.n1217, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader1468

.lr.ph.i.i.i.i.i.i109.i.preheader1468:            ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader, %middle.block1216
  %.012.i.i.i.i.i.i110.i.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.en, %middle.block1216 ]
  %.0911.i.i.i.i.i.i111.i.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.eo, %middle.block1216 ]
  br label %.lr.ph.i.i.i.i.i.i109.i

.lr.ph.i.i.i.i.i.i109.i:                          ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader1468, %.lr.ph.i.i.i.i.i.i109.i
  %.012.i.i.i.i.i.i110.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ], [ %.012.i.i.i.i.i.i110.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1468 ] ; 2 uses
  %.0911.i.i.i.i.i.i111.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i109.i ], [ %.0911.i.i.i.i.i.i111.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1468 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.et = load i64, ptr %.0911.i.i.i.i.i.i111.i, align 4, !alias.scope !137, !noalias !134
  store i64 %i.et, ptr %.012.i.i.i.i.i.i110.i, align 4, !alias.scope !134, !noalias !137
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112.i = icmp eq ptr %i.eu, %i.bt
  br i1 %.not.i.i.i.i.i.i112.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i, !llvm.loop !140

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i: ; preds = %.lr.ph.i.i.i.i.i.i109.i, %middle.block1216, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114.i = phi ptr [ %i.ee, %.noexc118 ], [ %i.en, %middle.block1216 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %.not.i23.i.i.i115.i = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.i115.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i: ; preds = %bb.o, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  store ptr %i.ee, ptr %5, align 8, !tbaa !51
  store ptr %i.ew, ptr %i.br, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ex, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.p:                                             ; preds = %bb.k
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !54
  %.not.i.i118.i = icmp eq ptr %i.bt, %i.ey
  br i1 %.not.i.i118.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bx, ptr %i.bt, align 4
  %i.ez = load ptr, ptr %i.br, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.br, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.fb = load ptr, ptr %5, align 8, !tbaa !51    ; 7 uses
  %i.fc = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.fd = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 4 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775800
  br i1 %i.ff, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i: ; preds = %bb.r
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i.i120.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i.i121.i = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i121.i)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #23
          to label %.noexc120 unwind label %.loopexit324 ; 8 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store <2 x float> %i.bx, ptr %i.fn, align 4
  %.not10.i.i.i.i.i.i122.i = icmp eq ptr %i.fb, %i.bt
  br i1 %.not10.i.i.i.i.i.i122.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader

.lr.ph.i.i.i.i.i.i123.i.preheader:                ; preds = %.noexc120
  %i.fo = ptrtoaddr ptr %i.fm to i64
  %i.fp = add i64 %i.fc, -8
  %i.fq = sub i64 %i.fp, %i.fd                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check1223 = icmp ult i64 %i.fq, 24
  %i.ft = sub i64 %i.fd, %i.fo
  %diff.check1221 = icmp ugt i64 %i.ft, -32
  %or.cond1266 = or i1 %min.iters.check1223, %diff.check1221
  br i1 %or.cond1266, label %.lr.ph.i.i.i.i.i.i123.i.preheader1469, label %vector.ph1224

vector.ph1224:                                    ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader
  %n.vec1225 = and i64 %i.fs, 4611686018427387900 ; 3 uses
  %i.fu = shl i64 %n.vec1225, 3                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fm, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fb, i64 %i.fu
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1232, %vector.body1226 ] ; 2 uses
  %i.fx = shl i64 %index1227, 3                   ; 2 uses
  %next.gep1228 = getelementptr i8, ptr %i.fm, i64 %i.fx ; 2 uses
  %next.gep1229 = getelementptr i8, ptr %i.fb, i64 %i.fx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.fy = getelementptr i8, ptr %next.gep1229, i64 16
  %wide.load1230 = load <2 x i64>, ptr %next.gep1229, align 4, !alias.scope !144, !noalias !141
  %wide.load1231 = load <2 x i64>, ptr %i.fy, align 4, !alias.scope !144, !noalias !141
  %i.fz = getelementptr i8, ptr %next.gep1228, i64 16
  store <2 x i64> %wide.load1230, ptr %next.gep1228, align 4, !alias.scope !141, !noalias !144
  store <2 x i64> %wide.load1231, ptr %i.fz, align 4, !alias.scope !141, !noalias !144
  %index.next1232 = add nuw i64 %index1227, 4     ; 2 uses
  %i.ga = icmp eq i64 %index.next1232, %n.vec1225
  br i1 %i.ga, label %middle.block1233, label %vector.body1226, !llvm.loop !146

middle.block1233:                                 ; preds = %vector.body1226
  %cmp.n1234 = icmp eq i64 %i.fs, %n.vec1225
  br i1 %cmp.n1234, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader1469

.lr.ph.i.i.i.i.i.i123.i.preheader1469:            ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader, %middle.block1233
  %.012.i.i.i.i.i.i124.i.ph = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fv, %middle.block1233 ]
  %.0911.i.i.i.i.i.i125.i.ph = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fw, %middle.block1233 ]
  br label %.lr.ph.i.i.i.i.i.i123.i

.lr.ph.i.i.i.i.i.i123.i:                          ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader1469, %.lr.ph.i.i.i.i.i.i123.i
  %.012.i.i.i.i.i.i124.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ], [ %.012.i.i.i.i.i.i124.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1469 ] ; 2 uses
  %.0911.i.i.i.i.i.i125.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i123.i ], [ %.0911.i.i.i.i.i.i125.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1469 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i125.i, align 4, !alias.scope !144, !noalias !141
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i124.i, align 4, !alias.scope !141, !noalias !144
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i125.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i124.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i126.i = icmp eq ptr %i.gc, %i.bt
  br i1 %.not.i.i.i.i.i.i126.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i, !llvm.loop !147

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i: ; preds = %.lr.ph.i.i.i.i.i.i123.i, %middle.block1233, %.noexc120
  %.0.lcssa.i.i.i.i.i.i128.i = phi ptr [ %i.fm, %.noexc120 ], [ %i.fv, %middle.block1233 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i128.i, i64 8 ; 2 uses
  %.not.i23.i.i.i129.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i.i129.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i: ; preds = %bb.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  store ptr %i.fm, ptr %5, align 8, !tbaa !51
  store ptr %i.ge, ptr %i.br, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gf, ptr %i.bs, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, %bb.q, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, %bb.m, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.gg = phi ptr [ %i.ge, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i ], [ %i.fa, %bb.q ], [ %i.ew, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i ], [ %i.ds, %bb.m ], [ %i.dk, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.cg, %bb.h ] ; 2 uses
  %i.gh = add i32 %.095166.i, 1                   ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp ugt i64 %i.bq, %i.gi
  br i1 %i.gj, label %bb.f, label %.lr.ph172.i.preheader, !llvm.loop !148

.lr.ph172.i.preheader:                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i
  %i.gk = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.gl = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.gl, label %.lr.ph170.preheader.i, label %._crit_edge173.i

._crit_edge173.i.loopexit:                        ; preds = %._crit_edge.i
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !55
  br label %._crit_edge173.i

._crit_edge173.i:                                 ; preds = %._crit_edge173.i.loopexit, %.lr.ph172.i.preheader
  %i.gm = phi ptr [ %.pre, %._crit_edge173.i.loopexit ], [ %i.gg, %.lr.ph172.i.preheader ]
  %i.gn = phi ptr [ %i.hg, %._crit_edge173.i.loopexit ], [ %i.gk, %.lr.ph172.i.preheader ] ; 9 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.bp  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 -8     ; 2 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !99
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !99
  %i.gs = fsub float %i.gq, %i.gr                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %7 = ptrtoint ptr %i.gm to i64
  %i.gu = ptrtoint ptr %i.gn to i64
  %i.gv = sub i64 %7, %i.gu
  %i.gw = ashr exact i64 %i.gv, 3                 ; 3 uses
  %i.gx = icmp ugt i64 %i.gw, 1
  br i1 %i.gx, label %.lr.ph176.i, label %.loopexit.i

.lr.ph176.i:                                      ; preds = %._crit_edge173.i
  %8 = fmul float %i.gs, 2.000000e-03
  br label %bb.t

.lr.ph170.preheader.i:                            ; preds = %.lr.ph172.i.preheader, %._crit_edge.i
  %i.gy = phi i64 [ %10, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ]
  %indvars.iv.next.i496 = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 4 uses
  %i.gz = phi ptr [ %i.hh, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 3 uses
  %i.ha = phi ptr [ %i.hg, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 2 uses
  %indvars.iv.i495 = phi i64 [ %indvars.iv.next.i496, %._crit_edge.i ], [ 0, %.lr.ph172.i.preheader ]
  %9 = trunc nuw i64 %indvars.iv.i495 to i32
  %indvars.i = trunc i64 %indvars.iv.next.i496 to i32
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !99
  br label %.lr.ph170.i

._crit_edge.i:                                    ; preds = %.lr.ph170.i
  %i.hc = zext i32 %.193.i to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hc ; 2 uses
  %i.he = load i64, ptr %i.gz, align 4
  %i.hf = load i64, ptr %i.hd, align 4
  store i64 %i.hf, ptr %i.gz, align 4
  store i64 %i.he, ptr %i.hd, align 4
  %i.hg = load ptr, ptr %5, align 8, !tbaa !51    ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i496
  %indvars.iv.next.i = add i64 %indvars.iv.next.i496, 1 ; 2 uses
  %10 = and i64 %indvars.iv.next.i, 4294967295    ; 2 uses
  %i.hi = icmp samesign ugt i64 %i.bq, %10
  br i1 %i.hi, label %.lr.ph170.preheader.i, label %._crit_edge173.i.loopexit

.lr.ph170.i:                                      ; preds = %.lr.ph170.i, %.lr.ph170.preheader.i
  %i.hj = phi i64 [ %i.ho, %.lr.ph170.i ], [ %i.gy, %.lr.ph170.preheader.i ]
  %.090169.i = phi i32 [ %i.hn, %.lr.ph170.i ], [ %indvars.i, %.lr.ph170.preheader.i ] ; 2 uses
  %.091168.i = phi float [ %.1.i, %.lr.ph170.i ], [ %i.hb, %.lr.ph170.preheader.i ] ; 2 uses
  %.092167.i = phi i32 [ %.193.i, %.lr.ph170.i ], [ %9, %.lr.ph170.preheader.i ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !99 ; 2 uses
  %i.hm = fcmp olt float %i.hl, %.091168.i        ; 2 uses
  %.193.i = select i1 %i.hm, i32 %.090169.i, i32 %.092167.i ; 2 uses
  %.1.i = select i1 %i.hm, float %i.hl, float %.091168.i
  %i.hn = add i32 %.090169.i, 1                   ; 2 uses
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = icmp ugt i64 %i.bq, %i.ho
  br i1 %i.hp, label %.lr.ph170.i, label %._crit_edge.i, !llvm.loop !149

._crit_edge177.i:                                 ; preds = %bb.v
  br i1 %switch114, label %.loopexit.i, label %bb.w

bb.t:                                             ; preds = %bb.v, %.lr.ph176.i
  %i.hq = phi i64 [ 1, %.lr.ph176.i ], [ %i.ib, %bb.v ]
  %.089174.i = phi i32 [ 1, %.lr.ph176.i ], [ %i.ia, %bb.v ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !99
  %i.ht = add i32 %.089174.i, -1
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !99 ; 2 uses
  %i.hx = fsub float %i.hs, %i.hw
  %i.hy = fcmp olt float %i.hx, %8
  br i1 %i.hy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.gs, float 2.000000e-03, float %i.hw)
  store float %i.hz, ptr %i.hr, align 4, !tbaa !99
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ia = add i32 %.089174.i, 1                   ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = icmp ugt i64 %i.gw, %i.ib
  br i1 %i.ic, label %bb.t, label %._crit_edge177.i, !llvm.loop !150

bb.w:                                             ; preds = %._crit_edge177.i
  %i.id = getelementptr i8, ptr %i.go, i64 -4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !102
  %i.if = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !102
  %i.ih = fsub float %i.ie, %i.ig                 ; 2 uses
  %i.ii = fmul float %i.ih, 2.000000e-03
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ij = phi i64 [ 1, %bb.w ], [ %i.iw, %bb.z ]
  %.0179.i = phi i32 [ 1, %bb.w ], [ %i.iv, %bb.z ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !102
  %i.in = add i32 %.0179.i, -1
  %i.io = zext i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !102 ; 2 uses
  %i.is = fsub float %i.im, %i.ir
  %i.it = fcmp olt float %i.is, %i.ii
  br i1 %i.it, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.ih, float 2.000000e-03, float %i.ir)
  store float %i.iu, ptr %i.il, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.iv = add i32 %.0179.i, 1                     ; 2 uses
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = icmp ugt i64 %i.gw, %i.iw
  br i1 %i.ix, label %bb.x, label %.loopexit.i, !llvm.loop !151

.loopexit.i:                                      ; preds = %bb.z, %._crit_edge177.i, %._crit_edge173.i
  br i1 %switch, label %bb.aa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

bb.aa:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.iy = load i64, ptr %i.gp, align 4            ; 2 uses
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = bitcast i32 %i.iz to float
  %i.jb = fadd float %i.ja, -1.000000e+00
  store float %i.jb, ptr %4, align 4, !tbaa !99
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jd = lshr i64 %i.iy, 32
  %i.je = trunc nuw i64 %i.jd to i32
  %i.jf = bitcast i32 %i.je to float              ; 2 uses
  %i.jg = fadd float %i.jf, -1.000000e+00
  %i.jh = select i1 %switch114, float %i.jf, float %i.jg
  store float %i.jh, ptr %i.jc, align 4, !tbaa !102
  %i.ji = invoke ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %i.gn, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc121 unwind label %.loopexit.split-lp325 ; 0 uses

.noexc121:                                        ; preds = %bb.aa
  %i.jj = load ptr, ptr %5, align 8, !tbaa !51    ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load float, ptr %i.jk, align 4
  %.sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jm = load float, ptr %.sroa_idx135.i, align 4 ; 2 uses
  %i.jn = fadd float %i.jl, 1.000000e+00          ; 2 uses
  %i.jo = fadd float %i.jm, 1.000000e+00
  %i.jp = select i1 %switch114, float %i.jm, float %i.jo ; 2 uses
  %i.jq = load ptr, ptr %i.gt, align 8, !tbaa !55 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.jq, %i.js
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc121
  store float %i.jn, ptr %i.jq, align 4
  %.sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  store float %i.jp, ptr %.sroa_idx132.i, align 4
  %i.jt = load ptr, ptr %i.gt, align 8, !tbaa !55
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr %i.ju, ptr %i.gt, align 8, !tbaa !55
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc121
  %i.jv = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.jw = ptrtoint ptr %i.jj to i64               ; 3 uses
  %i.jx = sub i64 %i.jv, %i.jw                    ; 4 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775800
  br i1 %i.jy, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.jz = ashr exact i64 %i.jx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = call i64 @llvm.umin.i64(i64 %i.ka, i64 1152921504606846975)
  %i.kd = select i1 %i.kb, i64 1152921504606846975, i64 %i.kc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ke = shl nuw nsw i64 %i.kd, 3
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #23
          to label %.noexc123 unwind label %.loopexit.split-lp325 ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.jx ; 2 uses
  store float %i.jn, ptr %i.kg, align 4
  %.sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store float %i.jp, ptr %.sroa_idx134.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.jj, %i.jq
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc123
  %i.kh = ptrtoaddr ptr %i.kf to i64
  %i.ki = add i64 %i.jv, -8
  %i.kj = sub i64 %i.ki, %i.jw                    ; 2 uses
  %i.kk = lshr i64 %i.kj, 3
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check1240 = icmp ult i64 %i.kj, 72
  %i.km = sub i64 %i.jw, %i.kh
  %diff.check1238 = icmp ugt i64 %i.km, -32
  %or.cond1267 = or i1 %min.iters.check1240, %diff.check1238
  br i1 %or.cond1267, label %.lr.ph.i.i.i.i.i.i.preheader1464, label %vector.ph1241

vector.ph1241:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1242 = and i64 %i.kl, 4611686018427387900 ; 3 uses
  %i.kn = shl i64 %n.vec1242, 3                   ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kf, i64 %i.kn  ; 2 uses
  %i.kp = getelementptr i8, ptr %i.jj, i64 %i.kn
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1241
  %index1244 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1249, %vector.body1243 ] ; 2 uses
  %i.kq = shl i64 %index1244, 3                   ; 2 uses
  %next.gep1245 = getelementptr i8, ptr %i.kf, i64 %i.kq ; 2 uses
  %next.gep1246 = getelementptr i8, ptr %i.jj, i64 %i.kq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.kr = getelementptr i8, ptr %next.gep1246, i64 16
  %wide.load1247 = load <2 x i64>, ptr %next.gep1246, align 4, !alias.scope !155, !noalias !152
  %wide.load1248 = load <2 x i64>, ptr %i.kr, align 4, !alias.scope !155, !noalias !152
  %i.ks = getelementptr i8, ptr %next.gep1245, i64 16
  store <2 x i64> %wide.load1247, ptr %next.gep1245, align 4, !alias.scope !152, !noalias !155
  store <2 x i64> %wide.load1248, ptr %i.ks, align 4, !alias.scope !152, !noalias !155
  %index.next1249 = add nuw i64 %index1244, 4     ; 2 uses
  %i.kt = icmp eq i64 %index.next1249, %n.vec1242
  br i1 %i.kt, label %middle.block1250, label %vector.body1243, !llvm.loop !157

middle.block1250:                                 ; preds = %vector.body1243
  %cmp.n1251 = icmp eq i64 %i.kl, %n.vec1242
  br i1 %cmp.n1251, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1464

.lr.ph.i.i.i.i.i.i.preheader1464:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1250
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ko, %middle.block1250 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kp, %middle.block1250 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1464, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1464 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1464 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ku = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !155, !noalias !152
  store i64 %i.ku, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !152, !noalias !155
  %i.kv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kv, %i.jq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !158

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1250, %.noexc123
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kf, %.noexc123 ], [ %i.ko, %middle.block1250 ], [ %i.kw, %.lr.ph.i.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jx) #24
  store ptr %i.kf, ptr %5, align 8, !tbaa !51
  store ptr %i.kx, ptr %i.gt, align 8, !tbaa !55
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.ky, ptr %i.jr, align 8, !tbaa !54
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i, %.loopexit.i
  %i.kz = load i32, ptr %i.bi, align 8, !tbaa !63
  %i.la = icmp eq i32 %i.kz, 2
  %narrow = or i1 %i.la, %switch114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.lb = load ptr, ptr %0, align 8, !tbaa !26
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.ad unwind label %bb.an

.loopexit324:                                     ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp325:                            ; preds = %.invoke, %bb.aa, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  br i1 %i.le, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !62
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !56
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = ashr exact i64 %i.ll, 2
  %i.ln = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.lo = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = ashr exact i64 %i.lr, 3
  %i.lt = icmp eq i64 %i.lm, %i.ls
  br i1 %i.lt, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.lu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.lf)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %switch, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !125
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 -4
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !60
  store float %i.ly, ptr %i.a, align 4, !tbaa !60
  %i.lz = load ptr, ptr %6, align 8, !tbaa !125
  %i.ma = invoke ptr @_ZNSt6vectorIfSaIfEE6insertEN9__gnu_cxx17__normal_iteratorIPKfS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.lz, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ai unwind label %bb.ao     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.mb = load ptr, ptr %6, align 8, !tbaa !125   ; 4 uses
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !60 ; 2 uses
  %i.md = load ptr, ptr %i.lv, align 8, !tbaa !62 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !59
  %.not.i124 = icmp eq ptr %i.md, %i.mf
  br i1 %.not.i124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store float %i.mc, ptr %i.md, align 4, !tbaa !60
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store ptr %i.mg, ptr %i.lv, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  store ptr %i.rn, ptr %i.nm, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i

_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i, %bb.bn
  %i.ro = phi ptr [ %i.rn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.nn, %bb.bn ] ; 4 uses
  %i.rp = phi ptr [ %i.rm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.qx, %bb.bn ] ; 4 uses
  br i1 %narrow, label %.preheader.i135, label %.preheader301.i

.preheader301.i:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.rq = add nsw i64 %i.ni, -3
  %i.rr = add nsw i64 %i.ni, -2                   ; 4 uses
  br label %bb.cd

.preheader.i135:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.rs = icmp samesign ugt i64 %i.ni, 2
  br i1 %i.rs, label %.lr.ph383.i, label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i, %.preheader.i135
  %i.rt = phi ptr [ %i.ro, %.preheader.i135 ], [ %i.uf, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 2 uses
  %i.ru = phi ptr [ %i.rp, %.preheader.i135 ], [ %i.ug, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 3 uses
  %i.rv = add nsw i64 %i.ni, -2                   ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !60
  %i.ry = load ptr, ptr %6, align 8, !tbaa !56    ; 5 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %i.rv
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !60
  %i.sb = fneg float %i.sa
  %i.sc = call float @llvm.fmuladd.f32(float %i.rx, float 3.000000e+00, float %i.sb)
  %i.sd = fmul float %i.sc, 5.000000e-01          ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.ru, %i.rt
  br i1 %.not.i.i180.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge384.i
  store float %i.sd, ptr %i.ru, align 4, !tbaa !60
  %i.se = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store ptr %i.se, ptr %i.na, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bt:                                            ; preds = %._crit_edge384.i
  %i.sf = ptrtoint ptr %i.rt to i64
  %i.sg = ptrtoint ptr %i.ry to i64
  %i.sh = sub i64 %i.sf, %i.sg                    ; 6 uses
  %i.si = icmp eq i64 %i.sh, 9223372036854775804
  br i1 %i.si, label %bb.bu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc187.i unwind label %bb.cc

.noexc187.i:                                      ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i: ; preds = %bb.bt
  %i.sj = ashr exact i64 %i.sh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i182.i = call i64 @llvm.umax.i64(i64 %i.sj, i64 1)
  %i.sk = add nsw i64 %.sroa.speculated.i.i.i.i182.i, %i.sj ; 2 uses
  %i.sl = icmp ult i64 %i.sk, %i.sj
  %i.sm = call i64 @llvm.umin.i64(i64 %i.sk, i64 2305843009213693951)
  %i.sn = select i1 %i.sl, i64 2305843009213693951, i64 %i.sm ; 3 uses
  %.not.i.i.i.i183.i = icmp ne i64 %i.sn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183.i)
  %i.so = shl nuw nsw i64 %i.sn, 2
  %i.sp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.so) #23
          to label %.noexc188.i unwind label %bb.cc ; 5 uses

.noexc188.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 %i.sh ; 2 uses
  store float %i.sd, ptr %i.sq, align 4, !tbaa !60
  %i.sr = icmp sgt i64 %i.sh, 0
  br i1 %i.sr, label %bb.bv, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

bb.bv:                                            ; preds = %.noexc188.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sp, ptr nonnull align 4 %i.ry, i64 %i.sh, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i: ; preds = %bb.bv, %.noexc188.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sh) #24
  store ptr %i.sp, ptr %6, align 8, !tbaa !56
  store ptr %i.ss, ptr %i.na, align 8, !tbaa !62
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sn
  store ptr %i.st, ptr %i.nm, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bw:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i, %bb.bp
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph383.i:                                      ; preds = %.preheader.i135, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i
  %i.sv = phi ptr [ %i.uf, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.ro, %.preheader.i135 ] ; 3 uses
  %i.sw = phi ptr [ %i.ug, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.rp, %.preheader.i135 ] ; 3 uses
  %i.sx = phi i64 [ %i.ui, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ]
  %.0125382.i = phi i32 [ %i.uh, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i135 ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.sx
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !60 ; 3 uses
  %i.ta = add i32 %.0125382.i, -1
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.tb
  %i.td = load float, ptr %i.tc, align 4, !tbaa !60 ; 3 uses
  %i.te = fadd float %i.sz, %i.td                 ; 3 uses
  %i.tf = call float @llvm.fabs.f32(float %i.te)
  %i.tg = fcmp olt float %i.tf, 1.000000e-03
  %i.th = fcmp olt float %i.te, 0.000000e+00
  %i.ti = select i1 %i.th, float -1.000000e-03, float 1.000000e-03
  %.sink485.i = select i1 %i.tg, float %i.ti, float %i.te
  %i.tj = fmul float %i.sz, 2.000000e+00
  %i.tk = fmul float %i.tj, %i.td
  %i.tl = fdiv float %i.tk, %.sink485.i
  %i.tm = fmul float %i.sz, %i.td
  %i.tn = fcmp ugt float %i.tm, 0.000000e+00
  %.0283.i = select i1 %i.tn, float %i.tl, float 0.000000e+00 ; 2 uses
  %.not.i190.i = icmp eq ptr %i.sw, %i.sv
  br i1 %.not.i190.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph383.i
  store float %.0283.i, ptr %i.sw, align 4, !tbaa !60
  %i.to = getelementptr inbounds nuw i8, ptr %i.sw, i64 4 ; 2 uses
  store ptr %i.to, ptr %i.na, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

bb.by:                                            ; preds = %.lr.ph383.i
  %i.tp = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  %i.tq = ptrtoint ptr %i.sv to i64
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = sub i64 %i.tq, %i.tr                    ; 6 uses
  %i.tt = icmp eq i64 %i.ts, 9223372036854775804
  br i1 %i.tt, label %bb.bz, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc197.i unwind label %.loopexit.split-lp.i

.noexc197.i:                                      ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i: ; preds = %bb.by
  %i.tu = ashr exact i64 %i.ts, 2                 ; 3 uses
  %.sroa.speculated.i.i.i192.i = call i64 @llvm.umax.i64(i64 %i.tu, i64 1)
  %i.tv = add nsw i64 %.sroa.speculated.i.i.i192.i, %i.tu ; 2 uses
  %i.tw = icmp ult i64 %i.tv, %i.tu
  %i.tx = call i64 @llvm.umin.i64(i64 %i.tv, i64 2305843009213693951)
  %i.ty = select i1 %i.tw, i64 2305843009213693951, i64 %i.tx ; 3 uses
  %.not.i.i.i193.i = icmp ne i64 %i.ty, 0
  call void @llvm.assume(i1 %.not.i.i.i193.i)
  %i.tz = shl nuw nsw i64 %i.ty, 2
  %i.ua = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tz) #23
          to label %.noexc198.i unwind label %.loopexit.i136 ; 4 uses

.noexc198.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 %i.ts ; 2 uses
  store float %.0283.i, ptr %i.ub, align 4, !tbaa !60
  %i.uc = icmp sgt i64 %i.ts, 0
  br i1 %i.uc, label %bb.ca, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

bb.ca:                                            ; preds = %.noexc198.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ua, ptr align 4 %i.tp, i64 %i.ts, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i: ; preds = %bb.ca, %.noexc198.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 4 ; 2 uses
  %.not.i17.i.i195.i = icmp eq ptr %i.tp, null
  br i1 %.not.i17.i.i195.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef %i.ts) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i: ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  store ptr %i.ua, ptr %6, align 8, !tbaa !56
  store ptr %i.ud, ptr %i.na, align 8, !tbaa !62
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.ty ; 2 uses
  store ptr %i.ue, ptr %i.nm, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, %bb.bx
  %i.uf = phi ptr [ %i.ue, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.sv, %bb.bx ] ; 2 uses
  %i.ug = phi ptr [ %i.ud, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.to, %bb.bx ] ; 2 uses
  %i.uh = add i32 %.0125382.i, 1                  ; 2 uses
  %i.ui = zext i32 %i.uh to i64                   ; 2 uses
  %i.uj = icmp ugt i64 %i.nj, %i.ui
  br i1 %i.uj, label %.lr.ph383.i, label %._crit_edge384.i, !llvm.loop !160

.loopexit.i136:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp.i:                             ; preds = %bb.bz
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i, %bb.bs
  %i.uk = phi ptr [ %i.sp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i ], [ %i.ry, %bb.bs ] ; 3 uses
  %i.ul = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !60
  %i.um = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.un = load float, ptr %i.um, align 4, !tbaa !60
  %i.uo = fneg float %i.un
  %i.up = call float @llvm.fmuladd.f32(float %i.ul, float 3.000000e+00, float %i.uo)
  %i.uq = fmul float %i.up, 5.000000e-01
  store float %i.uq, ptr %i.uk, align 4, !tbaa !60
  br label %bb.cn

bb.cc:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i, %bb.bu
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cd:                                            ; preds = %._crit_edge378.i, %.preheader301.i
  %.0124.i = phi i32 [ %i.wf, %._crit_edge378.i ], [ 0, %.preheader301.i ] ; 13 uses
  %i.us = zext i32 %.0124.i to i64                ; 5 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !60 ; 3 uses
  %i.uv = icmp ugt i64 %i.rr, %i.us
  br i1 %i.uv, label %.lr.ph365.preheader.i, label %.critedge.i

.lr.ph365.preheader.i:                            ; preds = %bb.cd
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.us
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !60
  %i.uw = add i32 %.0124.i, 1                     ; 2 uses
  %i.ux = zext i32 %i.uw to i64                   ; 2 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.ux
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !60 ; 2 uses
  %i.va = fsub float %i.uz, %.pre.i
  %i.vb = call float @llvm.fabs.f32(float %i.va)
  %i.vc = fcmp olt float %i.vb, f0x358637BD
  br i1 %i.vc, label %.lr.ph, label %.critedge.i

.lr.ph365.i:                                      ; preds = %.lr.ph
  %i.vd = add i32 %i.vm, 1                        ; 2 uses
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.ve
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !60 ; 2 uses
  %i.vh = fsub float %i.vg, %i.vk
  %i.vi = call float @llvm.fabs.f32(float %i.vh)
  %i.vj = fcmp olt float %i.vi, f0x358637BD
  br i1 %i.vj, label %.lr.ph, label %.critedge.i, !llvm.loop !161

.lr.ph:                                           ; preds = %.lr.ph365.preheader.i, %.lr.ph365.i
  %i.vk = phi float [ %i.vg, %.lr.ph365.i ], [ %i.uz, %.lr.ph365.preheader.i ]
  %i.vl = phi i64 [ %i.ve, %.lr.ph365.i ], [ %i.ux, %.lr.ph365.preheader.i ] ; 4 uses
  %i.vm = phi i32 [ %i.vd, %.lr.ph365.i ], [ %i.uw, %.lr.ph365.preheader.i ] ; 3 uses
  %.0122363.i497 = phi float [ %i.vp, %.lr.ph365.i ], [ %i.uu, %.lr.ph365.preheader.i ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.vl
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !60
  %i.vp = fadd float %.0122363.i497, %i.vo        ; 3 uses
  %i.vq = icmp ugt i64 %i.rr, %i.vl
  br i1 %i.vq, label %.lr.ph365.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !161

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !161

.critedge.i:                                      ; preds = %.lr.ph365.i, %.lr.ph365.preheader.i, %..critedge.i.loopexit_crit_edge, %bb.cd
  %.0123.lcssa.i = phi i32 [ %.0124.i, %bb.cd ], [ %.0124.i, %.lr.ph365.preheader.i ], [ %i.vm, %..critedge.i.loopexit_crit_edge ], [ %i.vm, %.lr.ph365.i ] ; 5 uses
  %.0122.lcssa.i = phi float [ %i.uu, %bb.cd ], [ %i.uu, %.lr.ph365.preheader.i ], [ %i.vp, %..critedge.i.loopexit_crit_edge ], [ %i.vp, %.lr.ph365.i ] ; 2 uses
  %.lcssa312.i = phi i64 [ %i.us, %bb.cd ], [ %i.us, %.lr.ph365.preheader.i ], [ %i.vl, %..critedge.i.loopexit_crit_edge ], [ %i.vl, %.lr.ph365.i ]
  %.not375.i = icmp ugt i32 %.0124.i, %.0123.lcssa.i
  br i1 %.not375.i, label %._crit_edge378.i, label %.lr.ph377.i.preheader

.lr.ph377.i.preheader:                            ; preds = %.critedge.i
  %i.vr = add i32 %.0123.lcssa.i, 1
  %i.vs = add i32 %.0124.i, 1
  %i.vt = call i32 @llvm.umax.i32(i32 %i.vr, i32 %i.vs)
  %i.vu = sub i32 %i.vt, %.0124.i                 ; 3 uses
  %min.iters.check1255 = icmp ult i32 %i.vu, 20
  br i1 %min.iters.check1255, label %.lr.ph377.i.preheader1437, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph377.i.preheader
  %i.vv = add i32 %.0123.lcssa.i, 1
  %i.vw = add i32 %.0124.i, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.vv, i32 %i.vw)
  %i.vx = add i32 %umax, -1
  %i.vy = icmp ult i32 %i.vx, %.0124.i
  br i1 %i.vy, label %.lr.ph377.i.preheader1437, label %vector.ph1256

vector.ph1256:                                    ; preds = %vector.scevcheck
  %n.vec1257 = and i32 %i.vu, -8                  ; 3 uses
  %i.vz = add i32 %.0124.i, %n.vec1257
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0122.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1256
  %index1259 = phi i32 [ 0, %vector.ph1256 ], [ %index.next1260, %vector.body1258 ] ; 2 uses
  %i.wa = add i32 %.0124.i, %index1259
  %i.wb = zext i32 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.wb ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store <4 x float> %broadcast.splat, ptr %i.wc, align 4, !tbaa !60
  store <4 x float> %broadcast.splat, ptr %i.wd, align 4, !tbaa !60
  %index.next1260 = add nuw i32 %index1259, 8     ; 2 uses
  %i.we = icmp eq i32 %index.next1260, %n.vec1257
  br i1 %i.we, label %middle.block1261, label %vector.body1258, !llvm.loop !162

middle.block1261:                                 ; preds = %vector.body1258
  %cmp.n1262 = icmp eq i32 %i.vu, %n.vec1257
  br i1 %cmp.n1262, label %._crit_edge378.i, label %.lr.ph377.i.preheader1437

.lr.ph377.i.preheader1437:                        ; preds = %vector.scevcheck, %.lr.ph377.i.preheader, %middle.block1261
  %.0121376.i.ph = phi i32 [ %.0124.i, %vector.scevcheck ], [ %.0124.i, %.lr.ph377.i.preheader ], [ %i.vz, %middle.block1261 ]
  br label %.lr.ph377.i

._crit_edge378.i:                                 ; preds = %.lr.ph377.i, %middle.block1261, %.critedge.i
  %.not141.i = icmp ugt i64 %i.rq, %.lcssa312.i
  %i.wf = add nuw i32 %.0123.lcssa.i, 1
  br i1 %.not141.i, label %bb.cd, label %.preheader297.i

.preheader297.i:                                  ; preds = %._crit_edge378.i
  %i.wg = icmp ugt i64 %i.nj, 1
  br i1 %i.wg, label %.lr.ph380.i, label %._crit_edge381.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader1437, %.lr.ph377.i
  %.0121376.i = phi i32 [ %i.wj, %.lr.ph377.i ], [ %.0121376.i.ph, %.lr.ph377.i.preheader1437 ] ; 2 uses
  %i.wh = zext i32 %.0121376.i to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.wh
  store float %.0122.lcssa.i, ptr %i.wi, align 4, !tbaa !60
  %i.wj = add i32 %.0121376.i, 1                  ; 2 uses
  %.not.i132 = icmp ugt i32 %i.wj, %.0123.lcssa.i
  br i1 %.not.i132, label %._crit_edge378.i, label %.lr.ph377.i, !llvm.loop !163

._crit_edge381.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i, %.preheader297.i
  %i.wk = phi ptr [ %i.ro, %.preheader297.i ], [ %i.yt, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 2 uses
  %i.wl = phi ptr [ %i.rp, %.preheader297.i ], [ %i.yu, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rr
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !60
  %i.wo = load ptr, ptr %6, align 8, !tbaa !56    ; 5 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.rr
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !60
  %i.wr = fneg float %i.wq
  %i.ws = call float @llvm.fmuladd.f32(float %i.wn, float 3.000000e+00, float %i.wr)
  %i.wt = fmul float %i.ws, 5.000000e-01          ; 3 uses
  %i.wu = fcmp ogt float %i.wt, f0x3C23D70A       ; 2 uses
  %.not.i200.i = icmp eq ptr %i.wl, %i.wk
  br i1 %.not.i200.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge381.i
  %.sroa.speculated232.i = select i1 %i.wu, float %i.wt, float f0x3C23D70A
  store float %.sroa.speculated232.i, ptr %i.wl, align 4, !tbaa !60
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  store ptr %i.wv, ptr %i.na, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

bb.cf:                                            ; preds = %._crit_edge381.i
  %i.ww = ptrtoint ptr %i.wk to i64
  %i.wx = ptrtoint ptr %i.wo to i64
  %i.wy = sub i64 %i.ww, %i.wx                    ; 6 uses
  %i.wz = icmp eq i64 %i.wy, 9223372036854775804
  br i1 %i.wz, label %bb.cg, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc207.i unwind label %.thread455.i

.noexc207.i:                                      ; preds = %bb.cg
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i: ; preds = %bb.cf
  %i.xa = ashr exact i64 %i.wy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i202.i = call i64 @llvm.umax.i64(i64 %i.xa, i64 1)
  %i.xb = add nsw i64 %.sroa.speculated.i.i.i202.i, %i.xa ; 2 uses
  %i.xc = icmp ult i64 %i.xb, %i.xa
  %i.xd = call i64 @llvm.umin.i64(i64 %i.xb, i64 2305843009213693951)
  %i.xe = select i1 %i.xc, i64 2305843009213693951, i64 %i.xd ; 3 uses
  %.not.i.i.i203.i = icmp ne i64 %i.xe, 0
  call void @llvm.assume(i1 %.not.i.i.i203.i)
  %i.xf = shl nuw nsw i64 %i.xe, 2
  %i.xg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xf) #23
          to label %.noexc208.i unwind label %.thread455.i ; 5 uses

.noexc208.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i
  %i.xh = getelementptr inbounds i8, ptr %i.xg, i64 %i.wy ; 2 uses
  %.sroa.speculated229.i = select i1 %i.wu, float %i.wt, float f0x3C23D70A
  store float %.sroa.speculated229.i, ptr %i.xh, align 4, !tbaa !60
  %i.xi = icmp sgt i64 %i.wy, 0
  br i1 %i.xi, label %bb.ch, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

bb.ch:                                            ; preds = %.noexc208.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xg, ptr nonnull align 4 %i.wo, i64 %i.wy, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i: ; preds = %bb.ch, %.noexc208.i
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.wo, i64 noundef %i.wy) #24
  store ptr %i.xg, ptr %6, align 8, !tbaa !56
  store ptr %i.xj, ptr %i.na, align 8, !tbaa !62
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xg, i64 %i.xe
  store ptr %i.xk, ptr %i.nm, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

.lr.ph380.i:                                      ; preds = %.preheader297.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i
  %i.xl = phi ptr [ %i.yt, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.ro, %.preheader297.i ] ; 3 uses
  %i.xm = phi ptr [ %i.yu, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.rp, %.preheader297.i ] ; 3 uses
  %i.xn = phi i64 [ %i.yw, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %.0120379.i = phi i32 [ %i.yv, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xn
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !60 ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xn
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !60
  %i.xs = add i32 %.0120379.i, -1
  %i.xt = zext i32 %i.xs to i64                   ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xt
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !60 ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xt
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !60
  %i.xy = fmul float %i.xv, %i.xx
  %i.xz = call float @llvm.fmuladd.f32(float %i.xp, float %i.xr, float %i.xy)
  %i.ya = fadd float %i.xp, %i.xv
  %i.yb = fdiv float %i.xz, %i.ya                 ; 2 uses
  %.not.i210.i = icmp eq ptr %i.xm, %i.xl
  br i1 %.not.i210.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph380.i
  store float %i.yb, ptr %i.xm, align 4, !tbaa !60
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xm, i64 4 ; 2 uses
  store ptr %i.yc, ptr %i.na, align 8, !tbaa !62
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

bb.cj:                                            ; preds = %.lr.ph380.i
  %i.yd = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  %i.ye = ptrtoint ptr %i.xl to i64
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = sub i64 %i.ye, %i.yf                    ; 6 uses
  %i.yh = icmp eq i64 %i.yg, 9223372036854775804
  br i1 %i.yh, label %bb.ck, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.noexc217.i unwind label %.thread285.loopexit.split-lp.i

.noexc217.i:                                      ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i: ; preds = %bb.cj
  %i.yi = ashr exact i64 %i.yg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i212.i = call i64 @llvm.umax.i64(i64 %i.yi, i64 1)
  %i.yj = add nsw i64 %.sroa.speculated.i.i.i212.i, %i.yi ; 2 uses
  %i.yk = icmp ult i64 %i.yj, %i.yi
  %i.yl = call i64 @llvm.umin.i64(i64 %i.yj, i64 2305843009213693951)
  %i.ym = select i1 %i.yk, i64 2305843009213693951, i64 %i.yl ; 3 uses
  %.not.i.i.i213.i = icmp ne i64 %i.ym, 0
  call void @llvm.assume(i1 %.not.i.i.i213.i)
  %i.yn = shl nuw nsw i64 %i.ym, 2
  %i.yo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #23
          to label %.noexc218.i unwind label %.thread285.loopexit.i ; 4 uses

.noexc218.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %i.yp = getelementptr inbounds i8, ptr %i.yo, i64 %i.yg ; 2 uses
  store float %i.yb, ptr %i.yp, align 4, !tbaa !60
  %i.yq = icmp sgt i64 %i.yg, 0
  br i1 %i.yq, label %bb.cl, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

bb.cl:                                            ; preds = %.noexc218.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yo, ptr align 4 %i.yd, i64 %i.yg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i: ; preds = %bb.cl, %.noexc218.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 4 ; 2 uses
  %.not.i17.i.i215.i = icmp eq ptr %i.yd, null
  br i1 %.not.i17.i.i215.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yg) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i: ; preds = %bb.cm, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  store ptr %i.yo, ptr %6, align 8, !tbaa !56
  store ptr %i.yr, ptr %i.na, align 8, !tbaa !62
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %i.ym ; 2 uses
  store ptr %i.ys, ptr %i.nm, align 8, !tbaa !59
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, %bb.ci
  %i.yt = phi ptr [ %i.ys, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.xl, %bb.ci ] ; 2 uses
  %i.yu = phi ptr [ %i.yr, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.yc, %bb.ci ] ; 2 uses
  %i.yv = add i32 %.0120379.i, 1                  ; 2 uses
  %i.yw = zext i32 %i.yv to i64                   ; 2 uses
  %i.yx = icmp ugt i64 %i.nj, %i.yw
  br i1 %i.yx, label %.lr.ph380.i, label %._crit_edge381.i, !llvm.loop !164

.thread285.loopexit.i:                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %lpad.loopexit298.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

.thread285.loopexit.split-lp.i:                   ; preds = %bb.ck
  %lpad.loopexit.split-lp299.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i, %bb.ce
  %i.yy = phi ptr [ %i.xg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i ], [ %i.wo, %bb.ce ] ; 3 uses
  %i.yz = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !60
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 4
  %i.zb = load float, ptr %i.za, align 4, !tbaa !60
  %i.zc = fneg float %i.zb
  %i.zd = call float @llvm.fmuladd.f32(float %i.yz, float 3.000000e+00, float %i.zc)
  %i.ze = fmul float %i.zd, 5.000000e-01          ; 2 uses
  %i.zf = fcmp ogt float %i.ze, f0x3C23D70A
  %.sroa.speculated.i = select i1 %i.zf, float %i.ze, float f0x3C23D70A
  store float %.sroa.speculated.i, ptr %i.yy, align 4, !tbaa !60
  br label %bb.cn

.thread455.i:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i, %bb.cg
  %i.zg = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i
  %i.zh = phi ptr [ %i.yy, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i ], [ %i.uk, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i ] ; 6 uses
  br i1 %.not389.i, label %._crit_edge388.i, label %.lr.ph387.i

._crit_edge388.i:                                 ; preds = %.thread.i, %bb.cn
  br i1 %switch, label %bb.cq, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

.lr.ph387.i:                                      ; preds = %bb.cn, %.thread.i
  %indvars.iv.i133 = phi i64 [ %indvars.iv.next.i134, %.thread.i ], [ 0, %bb.cn ] ; 3 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv.i133 ; 2 uses
  %12 = load float, ptr %11, align 4, !tbaa !60   ; 4 uses
  %i.zi = call float @llvm.fabs.f32(float %12)
  %indvars.iv.next.i134 = add i64 %indvars.iv.i133, 1 ; 2 uses
  %13 = and i64 %indvars.iv.next.i134, 4294967295 ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %13 ; 2 uses
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !60 ; 3 uses
  %i.zl = call float @llvm.fabs.f32(float %i.zk)
  %i.zm = fcmp ogt float %i.zi, %i.zl
  %.0118.i = select i1 %i.zm, float 8.000000e-01, float 2.000000e-01
  %i.zn = fsub float %i.zk, %12
  %i.zo = call float @llvm.fmuladd.f32(float %.0118.i, float %i.zn, float %12) ; 2 uses
  %i.zp = fcmp une float %i.zo, 0.000000e+00
  br i1 %i.zp, label %bb.co, label %.thread.i

bb.co:                                            ; preds = %.lr.ph387.i
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %indvars.iv.i133
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !60
  %i.zs = fmul float %i.zr, 1.500000e+00
  %i.zt = fdiv float %i.zs, %i.zo                 ; 3 uses
  %i.zu = fcmp olt float %i.zt, 1.000000e+00
  br i1 %i.zu, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %bb.co
  %i.zv = fmul float %12, %i.zt
  store float %i.zv, ptr %11, align 4, !tbaa !60
  %i.zw = fmul float %i.zk, %i.zt
  store float %i.zw, ptr %i.zj, align 4, !tbaa !60
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cp, %bb.co, %.lr.ph387.i
  %i.zx = icmp ugt i64 %i.nj, %13
  br i1 %i.zx, label %.lr.ph387.i, label %._crit_edge388.i, !llvm.loop !165

bb.cq:                                            ; preds = %._crit_edge388.i
  %i.zy = getelementptr [4 x i8], ptr %i.zh, i64 %i.ni
  %i.zz = getelementptr i8, ptr %i.zy, i64 -8
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !60
  store float %i.aaa, ptr %i.zh, align 4, !tbaa !60
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !60
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.nj
  store float %i.aac, ptr %i.aad, align 4, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i:     ; preds = %bb.cq, %._crit_edge388.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i, %bb.bh
  %.not.i.i.i221.i = icmp eq ptr %.sroa.0.0.lcssa.i, null
  br i1 %.not.i.i.i221.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %i.aae = ptrtoint ptr %.sroa.18.0.lcssa.i to i64
  %i.aaf = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aag = sub i64 %i.aae, %i.aaf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %i.aag) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %.not.i.i.i222.i = icmp eq ptr %.sroa.0259.0.lcssa.i, null
  br i1 %.not.i.i.i222.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.aah = ptrtoint ptr %.sroa.30.0.lcssa.i to i64
  %i.aai = ptrtoint ptr %.sroa.0259.0.lcssa.i to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0.lcssa.i, i64 noundef %i.aaj) #24
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155

bb.ct:                                            ; preds = %bb.cc, %.loopexit.split-lp.i, %.loopexit.i136, %bb.bw, %bb.bl, %.loopexit.split-lp308.i, %.loopexit307.i, %.loopexit.split-lp303.i, %.loopexit302.i
  %.sroa.0.0336.i = phi ptr [ %.sroa.0.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.0.0353.i, %.loopexit.split-lp303.i ], [ %.sroa.0.0.lcssa.i, %bb.bl ], [ %.sroa.0.0.lcssa.i, %bb.bw ], [ %.sroa.0.0353.i, %.loopexit.split-lp308.i ], [ %.sroa.0.0.lcssa.i, %bb.cc ], [ %.sroa.0.0353.i, %.loopexit302.i ], [ %.sroa.0.0353.i, %.loopexit307.i ], [ %.sroa.0.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.18.0328.i = phi ptr [ %.sroa.18.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.18.0355.i, %.loopexit.split-lp303.i ], [ %.sroa.18.0.lcssa.i, %bb.bl ], [ %.sroa.18.0.lcssa.i, %bb.bw ], [ %.sroa.18.0355.i, %.loopexit.split-lp308.i ], [ %.sroa.18.0.lcssa.i, %bb.cc ], [ %.sroa.18.0355.i, %.loopexit302.i ], [ %.sroa.18.0355.i, %.loopexit307.i ], [ %.sroa.18.0.lcssa.i, %.loopexit.split-lp.i ]
  %.sroa.30.1.i = phi ptr [ %.sroa.30.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.30.0352.i, %.loopexit.split-lp303.i ], [ %.sroa.30.0.lcssa.i, %bb.bl ], [ %.sroa.30.0.lcssa.i, %bb.bw ], [ %.sroa.30.2.i, %.loopexit.split-lp308.i ], [ %.sroa.30.0.lcssa.i, %bb.cc ], [ %.sroa.30.0352.i, %.loopexit302.i ], [ %.sroa.30.2.i, %.loopexit307.i ], [ %.sroa.30.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0259.1.i = phi ptr [ %.sroa.0259.0.lcssa.i, %.loopexit.i136 ], [ %.sroa.0259.0356.i, %.loopexit.split-lp303.i ], [ %.sroa.0259.0.lcssa.i, %bb.bl ], [ %.sroa.0259.0.lcssa.i, %bb.bw ], [ %.sroa.0259.2.i, %.loopexit.split-lp308.i ], [ %.sroa.0259.0.lcssa.i, %bb.cc ], [ %.sroa.0259.0356.i, %.loopexit302.i ], [ %.sroa.0259.2.i, %.loopexit307.i ], [ %.sroa.0259.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn143.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i136 ], [ %lpad.loopexit.split-lp305.i, %.loopexit.split-lp303.i ], [ %i.qw, %bb.bl ], [ %i.su, %bb.bw ], [ %lpad.loopexit.split-lp310.i, %.loopexit.split-lp308.i ], [ %i.ur, %bb.cc ], [ %lpad.loopexit304.i, %.loopexit302.i ], [ %lpad.loopexit309.i, %.loopexit307.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i224.i = icmp eq ptr %.sroa.0.0336.i, null
  br i1 %.not.i.i.i224.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i, label %.thread285.i

.thread285.i:                                     ; preds = %bb.ct, %.thread455.i, %.thread285.loopexit.split-lp.i, %.thread285.loopexit.i
  %.sroa.0.0339.i = phi ptr [ %.sroa.0.0336.i, %bb.ct ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0.0.lcssa.i, %.thread455.i ] ; 2 uses
  %.sroa.18.0327.i = phi ptr [ %.sroa.18.0328.i, %bb.ct ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.18.0.lcssa.i, %.thread455.i ]
  %.pn143.pn294.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %lpad.loopexit.split-lp299.i, %.thread285.loopexit.split-lp.i ], [ %lpad.loopexit298.i, %.thread285.loopexit.i ], [ %i.zg, %.thread455.i ]
  %.sroa.0259.1292.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0259.0.lcssa.i, %.thread455.i ]
  %.sroa.30.1290.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.30.0.lcssa.i, %.thread455.i ]
  %i.aak = ptrtoint ptr %.sroa.18.0327.i to i64
  %i.aal = ptrtoint ptr %.sroa.0.0339.i to i64
  %i.aam = sub i64 %i.aak, %i.aal
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0339.i, i64 noundef %i.aam) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i

_ZNSt6vectorIfSaIfEED2Ev.exit225.i:               ; preds = %.thread285.i, %bb.ct
  %.pn143.pn295.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %.pn143.pn294.i, %.thread285.i ] ; 2 uses
  %.sroa.0259.1293.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.1292.i, %.thread285.i ] ; 3 uses
  %.sroa.30.1291.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.1290.i, %.thread285.i ]
  %.not.i.i.i226.i = icmp eq ptr %.sroa.0259.1293.i, null
  br i1 %.not.i.i.i226.i, label %.body, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit225.i
  %i.aan = ptrtoint ptr %.sroa.30.1291.i to i64
  %i.aao = ptrtoint ptr %.sroa.0259.1293.i to i64
  %i.aap = sub i64 %i.aan, %i.aao
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.1293.i, i64 noundef %i.aap) #24
  br label %.body

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155: ; preds = %bb.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.ag, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.aaq = load ptr, ptr %5, align 8, !tbaa !51   ; 2 uses
  %i.aar = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #23
          to label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 unwind label %.loopexit.split-lp ; 4 uses

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142:     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i155
  %i.aas = load float, ptr %i.aaq, align 4, !tbaa !60
  store float %i.aas, ptr %i.aar, align 4, !tbaa !60
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aar, i64 4 ; 4 uses
  %i.aau = load ptr, ptr %i.gt, align 8, !tbaa !55
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = ptrtoint ptr %i.aaq to i64
  %i.aax = sub i64 %i.aav, %i.aaw
  %i.aay = ashr exact i64 %i.aax, 3
  %i.aaz = add nsw i64 %i.aay, -1                 ; 2 uses
  %.not.i143 = icmp eq i64 %i.aaz, 0
  br i1 %.not.i143, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitHueSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_.exit, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i
  %.sroa.0261.3 = phi ptr [ %.sroa.0261.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aar, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 25 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aat, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 8 uses
  %.sroa.25.3 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aat, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 21 uses
  %.sroa.0244.2 = phi ptr [ %.sroa.0244.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 21 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 12 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 11 uses
  %.sroa.0229.2 = phi ptr [ %.sroa.0229.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 17 uses
  %.sroa.13235.0 = phi ptr [ %.sroa.13235.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 12 uses
  %.sroa.23239.2 = phi ptr [ %.sroa.23239.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 7 uses
  %.sroa.0216.2 = phi ptr [ %.sroa.0216.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 13 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 11 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 4 uses
  %i.aba = phi i64 [ %i.abe, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ] ; 6 uses
  %.0167.i = phi i32 [ %i.abd, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i142 ]
  %i.abb = load ptr, ptr %5, align 8, !tbaa !51   ; 2 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.aba ; 3 uses
  %i.abd = add i32 %.0167.i, 1                    ; 2 uses
  %i.abe = zext i32 %i.abd to i64                 ; 6 uses
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abe ; 5 uses
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !99 ; 2 uses
  %i.abh = load float, ptr %i.abc, align 4, !tbaa !99 ; 4 uses
  %i.abi = fsub float %i.abg, %i.abh              ; 6 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 4
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !102
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abc, i64 4 ; 4 uses
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !102 ; 3 uses
  %i.abn = fsub float %i.abk, %i.abm
  %i.abo = fdiv float %i.abn, %i.abi              ; 5 uses
  %i.abp = load ptr, ptr %6, align 8, !tbaa !56   ; 6 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.aba
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !60 ; 5 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abp, i64 %i.abe
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !60 ; 4 uses
  %i.abu = fadd float %i.abr, %i.abt
  %i.abv = call float @llvm.fmuladd.f32(float %i.abo, float -2.000000e+00, float %i.abu)
  %i.abw = call float @llvm.fabs.f32(float %i.abv)
  %i.abx = fcmp ugt float %i.abw, f0x3727C5AC
  br i1 %i.abx, label %bb.dk, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i144
  %.not.i71.i = icmp eq ptr %.sroa.13.0, %.sroa.23.2
  br i1 %.not.i71.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store float %i.abm, ptr %.sroa.13.0, align 4, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

bb.cx:                                            ; preds = %bb.cv
  %i.aby = ptrtoint ptr %.sroa.13.0 to i64
  %i.abz = ptrtoint ptr %.sroa.0216.2 to i64
  %i.aca = sub i64 %i.aby, %i.abz                 ; 6 uses
  %i.acb = icmp eq i64 %i.aca, 9223372036854775804
  br i1 %i.acb, label %.invoke1268, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i

.invoke1268:                                      ; preds = %bb.dr, %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #22
          to label %.cont1269 unwind label %.loopexit.split-lp

.cont1269:                                        ; preds = %.invoke1268
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i: ; preds = %bb.cx
  %i.acc = ashr exact i64 %i.aca, 2               ; 3 uses
  %.sroa.speculated.i.i.i73.i = call i64 @llvm.umax.i64(i64 %i.acc, i64 1)
  %i.acd = add nsw i64 %.sroa.speculated.i.i.i73.i, %i.acc ; 2 uses
  %i.ace = icmp ult i64 %i.acd, %i.acc
  %i.acf = call i64 @llvm.umin.i64(i64 %i.acd, i64 2305843009213693951)
  %i.acg = select i1 %i.ace, i64 2305843009213693951, i64 %i.acf ; 3 uses
  %.not.i.i.i74.i = icmp ne i64 %i.acg, 0
  call void @llvm.assume(i1 %.not.i.i.i74.i)
  %i.ach = shl nuw nsw i64 %i.acg, 2
  %i.aci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ach) #23
          to label %.noexc165.a unwind label %.loopexit ; 4 uses

.noexc165.a:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 %i.aca ; 2 uses
  %i.ack = load float, ptr %i.abl, align 4, !tbaa !60
  store float %i.ack, ptr %i.acj, align 4, !tbaa !60
  %i.acl = icmp sgt i64 %i.aca, 0
  br i1 %i.acl, label %bb.cy, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

bb.cy:                                            ; preds = %.noexc165.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aci, ptr align 4 %.sroa.0216.2, i64 %i.aca, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i: ; preds = %bb.cy, %.noexc165.a
  %.not.i17.i.i76.i = icmp eq ptr %.sroa.0216.2, null
  br i1 %.not.i17.i.i76.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.2, i64 noundef %i.aca) #24
  %.pre168.i.pre = load ptr, ptr %6, align 8, !tbaa !56
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i: ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  %.pre168.i = phi ptr [ %.pre168.i.pre, %bb.cz ], [ %i.abp, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i ]
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.acg
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, %bb.cw
  %.sroa.0216.3 = phi ptr [ %i.aci, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.0216.2, %bb.cw ] ; 6 uses
  %.pn310.a = phi ptr [ %i.acj, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.13.0, %bb.cw ]
  %.sroa.23.3 = phi ptr [ %i.acm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.23.2, %bb.cw ] ; 6 uses
  %i.acn = phi ptr [ %.pre168.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %i.abp, %bb.cw ] ; 3 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn310.a, i64 4 ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.aba ; 2 uses
  %.not.i79.i = icmp eq ptr %.sroa.13235.0, %.sroa.23239.2
  br i1 %.not.i79.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !60 ; 2 uses
end_hunk_2
