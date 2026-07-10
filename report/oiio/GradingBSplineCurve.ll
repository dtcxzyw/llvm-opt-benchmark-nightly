inline.NumInlined: 1486
inline.NumDeleted: 467
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitRGBSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_:bb.a
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.iq
  store ptr %i.iw, ptr %i.ai, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142

_ZNSt6vectorIfSaIfEE9push_backERKf.exit142:       ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i141
  %i.ix = load ptr, ptr %1, align 8, !tbaa !54
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.ao
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !58
  %i.ja = fsub float %i.iz, %i.es
  %i.jb = fmul float %i.ja, 5.000000e-01
  %i.jc = fsub float %i.aq, %.0195
  %i.jd = fdiv float %i.jb, %i.jc                 ; 2 uses
  %i.je = load ptr, ptr %i.aj, align 8, !tbaa !60 ; 4 uses
  %i.jf = load ptr, ptr %i.ak, align 8, !tbaa !57
  %.not.i.i143 = icmp eq ptr %i.je, %i.jf
  br i1 %.not.i.i143, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  store float %i.jd, ptr %i.je, align 4, !tbaa !58
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store ptr %i.jg, ptr %i.aj, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

bb.bd:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit142
  %i.jh = load ptr, ptr %3, align 8, !tbaa !54    ; 4 uses
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 6 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775804
  br i1 %i.jl, label %bb.be, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144: ; preds = %bb.bd
  %i.jm = ashr exact i64 %i.jk, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i145 = tail call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i145, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = tail call i64 @llvm.umin.i64(i64 %i.jn, i64 2305843009213693951)
  %i.jq = select i1 %i.jo, i64 2305843009213693951, i64 %i.jp ; 3 uses
  %.not.i.i.i.i146 = icmp ne i64 %i.jq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i146)
  %i.jr = shl nuw nsw i64 %i.jq, 2
  %i.js = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #23 ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jk ; 2 uses
  store float %i.jd, ptr %i.jt, align 4, !tbaa !58
  %i.ju = icmp sgt i64 %i.jk, 0
  br i1 %i.ju, label %bb.bf, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

bb.bf:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.js, ptr align 4 %i.jh, i64 %i.jk, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147: ; preds = %bb.bf, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i144
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %.not.i17.i.i.i148 = icmp eq ptr %i.jh, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jk) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149: ; preds = %bb.bg, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i147
  store ptr %i.js, ptr %3, align 8, !tbaa !54
  store ptr %i.jv, ptr %i.aj, align 8, !tbaa !60
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jq
  store ptr %i.jw, ptr %i.ak, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150

_ZNSt6vectorIfSaIfEE9push_backEOf.exit150:        ; preds = %bb.bc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i149
  %i.jx = load ptr, ptr %i.h, align 8, !tbaa !60  ; 4 uses
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not.i151 = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i151, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  store float %.0195, ptr %i.jx, align 4, !tbaa !58
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store ptr %i.jz, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.bi:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit150
  %i.ka = load ptr, ptr %2, align 8, !tbaa !54    ; 4 uses
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 6 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775804
  br i1 %i.ke, label %bb.bj, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152

bb.bj:                                            ; preds = %bb.bi
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152: ; preds = %bb.bi
  %i.kf = ashr exact i64 %i.kd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i153 = tail call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i153, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 2305843009213693951)
  %i.kj = select i1 %i.kh, i64 2305843009213693951, i64 %i.ki ; 3 uses
  %.not.i.i.i154 = icmp ne i64 %i.kj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i154)
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #23 ; 4 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 %i.kd ; 2 uses
  store float %.0195, ptr %i.km, align 4, !tbaa !58
  %i.kn = icmp sgt i64 %i.kd, 0
  br i1 %i.kn, label %bb.bk, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

bb.bk:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kl, ptr align 4 %i.ka, i64 %i.kd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155: ; preds = %bb.bk, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i152
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %.not.i17.i.i156 = icmp eq ptr %i.ka, null
  br i1 %.not.i17.i.i156, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kd) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157: ; preds = %bb.bl, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i155
  store ptr %i.kl, ptr %2, align 8, !tbaa !54
  store ptr %i.ko, ptr %i.h, align 8, !tbaa !60
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kp, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i157, %bb.bh, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.s
  %i.kq = load ptr, ptr %i.h, align 8, !tbaa !60  ; 4 uses
  %i.kr = load ptr, ptr %i.j, align 8, !tbaa !57
  %.not.i159 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i159, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  store float %i.aq, ptr %i.kq, align 4, !tbaa !58
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store ptr %i.ks, ptr %i.h, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.kt = load ptr, ptr %2, align 8, !tbaa !54    ; 4 uses
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 6 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775804
  br i1 %i.kx, label %bb.bo, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160: ; preds = %bb.bn
  %i.ky = ashr exact i64 %i.kw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i161 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i161, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 2305843009213693951)
  %i.lc = select i1 %i.la, i64 2305843009213693951, i64 %i.lb ; 3 uses
  %.not.i.i.i162 = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i162)
  %i.ld = shl nuw nsw i64 %i.lc, 2
  %i.le = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #23 ; 4 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.kw ; 2 uses
  store float %i.aq, ptr %i.lf, align 4, !tbaa !58
  %i.lg = icmp sgt i64 %i.kw, 0
  br i1 %i.lg, label %bb.bp, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

bb.bp:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.le, ptr align 4 %i.kt, i64 %i.kw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163: ; preds = %bb.bp, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i160
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %.not.i17.i.i164 = icmp eq ptr %i.kt, null
  br i1 %.not.i17.i.i164, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165: ; preds = %bb.bq, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i163
  store ptr %i.le, ptr %2, align 8, !tbaa !54
  store ptr %i.lh, ptr %i.h, align 8, !tbaa !60
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.li, ptr %i.j, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit166

_ZNSt6vectorIfSaIfEE9push_backERKf.exit166:       ; preds = %bb.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i165
  %exitcond.not = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !124
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.OpenColorIO_v2_5::GradingControlPoint", align 4 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 28 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 38 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !49
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
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !107  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 -1, ptr %i.o, align 4, !tbaa !3
  %i.p = or disjoint i32 %i.l, 1
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.m
  store i32 -1, ptr %i.u, align 4, !tbaa !3
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q
  store i32 0, ptr %i.v, align 4, !tbaa !3
  br label %bb.fx

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !116  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = shl nsw i32 %2, 1                       ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ac
  store i32 %i.x, ptr %i.ae, align 4, !tbaa !3
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ag
  store i32 2, ptr %i.ah, align 4, !tbaa !3
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !122
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ac
  store i32 %i.ai, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ag
  store i32 3, ptr %i.am, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = sext i32 %i.x to i64
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %i.ap
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.aq, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !123
  %i.at = sext i32 %i.z to i64
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 3 uses
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !61 ; 3 uses
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 2
  %i.az = select i1 %i.ay, float 1.000000e+00, float 0.000000e+00
  %i.ba = getelementptr i8, ptr %i.au, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !58
  %i.bb = icmp eq i32 %i.aw, 3
  %i.bc = icmp eq i32 %i.aw, 5
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, float 1.000000e+00, float 0.000000e+00
  %i.bf = getelementptr i8, ptr %i.au, i64 8
  store float %i.be, ptr %i.bf, align 4, !tbaa !58
  %i.bg = load <2 x i32>, ptr %i.y, align 8, !tbaa !3
  %i.bh = add nsw <2 x i32> %i.bg, <i32 3, i32 2>
  store <2 x i32> %i.bh, ptr %i.y, align 8, !tbaa !3
  br label %bb.fx

.lr.ph.i:                                         ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !61 ; 2 uses
  %.off = add i32 %i.bj, -2
  %switch = icmp ult i32 %.off, 3                 ; 5 uses
  %i.bk = add i32 %i.bj, -3
  %switch114 = icmp ult i32 %i.bk, -2             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
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
  %.0166.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gh, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i ]
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !58 ; 4 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.bz = extractelement <2 x float> %i.bx, i64 0 ; 4 uses
  %i.ca = fcmp olt float %i.bz, 0.000000e+00
  %or.cond.i = select i1 %switch, i1 %i.ca, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cb = fadd float %i.bz, 1.000000e+00          ; 2 uses
  %i.cc = fadd float %i.by, 1.000000e+00
  %i.cd = select i1 %switch114, float %i.by, float %i.cc ; 2 uses
  %i.ce = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.bt, %i.ce
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.cb, ptr %i.bt, align 4
  %.sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store float %i.cd, ptr %.sroa_idx154.i, align 4
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ch = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
  %i.ci = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 4 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.r, %bb.n, %bb.i, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.cont unwind label %.loopexit.split-lp323

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
          to label %.noexc116 unwind label %.loopexit322 ; 8 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck ; 2 uses
  store float %i.cb, ptr %i.ct, align 4
  %.sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store float %i.cd, ptr %.sroa_idx156.i, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bt
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc116
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %i.cv = sub i64 %i.ci, %i.cj
  %i.cw = add i64 %i.cv, -8                       ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 24
  %i.cz = sub i64 %i.cj, %i.cu
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond1246 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1246, label %.lr.ph.i.i.i.i.i.i.i.preheader1433, label %vector.ph

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
  %next.gep1177 = getelementptr i8, ptr %i.ch, i64 %i.dd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #23
          to label %.noexc118 unwind label %.loopexit322 ; 8 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store float %i.dn, ptr %i.ef, align 4
  %.sroa_idx149.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store float %i.dp, ptr %.sroa_idx149.i, align 4
  %.not10.i.i.i.i.i.i108.i = icmp eq ptr %i.dt, %i.bt
  br i1 %.not10.i.i.i.i.i.i108.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader

.lr.ph.i.i.i.i.i.i109.i.preheader:                ; preds = %.noexc118
  %i.eg = ptrtoaddr ptr %i.ee to i64
  %i.eh = sub i64 %i.du, %i.dv
  %i.ei = add i64 %i.eh, -8                       ; 2 uses
  %i.ej = lshr i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check1183 = icmp ult i64 %i.ei, 24
  %i.el = sub i64 %i.dv, %i.eg
  %diff.check1181 = icmp ugt i64 %i.el, -32
  %or.cond1247 = or i1 %min.iters.check1183, %diff.check1181
  br i1 %or.cond1247, label %.lr.ph.i.i.i.i.i.i109.i.preheader1434, label %vector.ph1184

vector.ph1184:                                    ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader
  %n.vec1186 = and i64 %i.ek, 4611686018427387900 ; 3 uses
  %i.em = shl i64 %n.vec1186, 3                   ; 2 uses
  %i.en = getelementptr i8, ptr %i.ee, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.dt, i64 %i.em
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1184
  %index1188 = phi i64 [ 0, %vector.ph1184 ], [ %index.next1193, %vector.body1187 ] ; 2 uses
  %i.ep = shl i64 %index1188, 3                   ; 2 uses
  %next.gep1189 = getelementptr i8, ptr %i.ee, i64 %i.ep ; 2 uses
  %next.gep1190 = getelementptr i8, ptr %i.dt, i64 %i.ep ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.eq = getelementptr i8, ptr %next.gep1190, i64 16
  %wide.load1191 = load <2 x i64>, ptr %next.gep1190, align 4, !alias.scope !135, !noalias !132
  %wide.load1192 = load <2 x i64>, ptr %i.eq, align 4, !alias.scope !135, !noalias !132
  %i.er = getelementptr i8, ptr %next.gep1189, i64 16
  store <2 x i64> %wide.load1191, ptr %next.gep1189, align 4, !alias.scope !132, !noalias !135
  store <2 x i64> %wide.load1192, ptr %i.er, align 4, !alias.scope !132, !noalias !135
  %index.next1193 = add nuw i64 %index1188, 4     ; 2 uses
  %i.es = icmp eq i64 %index.next1193, %n.vec1186
  br i1 %i.es, label %middle.block1194, label %vector.body1187, !llvm.loop !137

middle.block1194:                                 ; preds = %vector.body1187
  %cmp.n1195 = icmp eq i64 %i.ek, %n.vec1186
  br i1 %cmp.n1195, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i.preheader1434

.lr.ph.i.i.i.i.i.i109.i.preheader1434:            ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader, %middle.block1194
  %.012.i.i.i.i.i.i110.i.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.en, %middle.block1194 ]
  %.0911.i.i.i.i.i.i111.i.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i109.i.preheader ], [ %i.eo, %middle.block1194 ]
  br label %.lr.ph.i.i.i.i.i.i109.i

.lr.ph.i.i.i.i.i.i109.i:                          ; preds = %.lr.ph.i.i.i.i.i.i109.i.preheader1434, %.lr.ph.i.i.i.i.i.i109.i
  %.012.i.i.i.i.i.i110.i = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ], [ %.012.i.i.i.i.i.i110.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1434 ] ; 2 uses
  %.0911.i.i.i.i.i.i111.i = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i109.i ], [ %.0911.i.i.i.i.i.i111.i.ph, %.lr.ph.i.i.i.i.i.i109.i.preheader1434 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.et = load i64, ptr %.0911.i.i.i.i.i.i111.i, align 4, !alias.scope !135, !noalias !132
  store i64 %i.et, ptr %.012.i.i.i.i.i.i110.i, align 4, !alias.scope !132, !noalias !135
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112.i = icmp eq ptr %i.eu, %i.bt
  br i1 %.not.i.i.i.i.i.i112.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i, label %.lr.ph.i.i.i.i.i.i109.i, !llvm.loop !138

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i: ; preds = %.lr.ph.i.i.i.i.i.i109.i, %middle.block1194, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114.i = phi ptr [ %i.ee, %.noexc118 ], [ %i.en, %middle.block1194 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i109.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %.not.i23.i.i.i115.i = icmp eq ptr %i.dt, null
  br i1 %.not.i23.i.i.i115.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i: ; preds = %bb.o, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i113.i
  store ptr %i.ee, ptr %5, align 8, !tbaa !49
  store ptr %i.ew, ptr %i.br, align 8, !tbaa !53
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ex, ptr %i.bs, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.p:                                             ; preds = %bb.k
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !52
  %.not.i.i118.i = icmp eq ptr %i.bt, %i.ey
  br i1 %.not.i.i118.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.bx, ptr %i.bt, align 4
  %i.ez = load ptr, ptr %i.br, align 8, !tbaa !53
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  store ptr %i.fa, ptr %i.br, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.fb = load ptr, ptr %5, align 8, !tbaa !49    ; 7 uses
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
          to label %.noexc120 unwind label %.loopexit322 ; 8 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  store <2 x float> %i.bx, ptr %i.fn, align 4
  %.not10.i.i.i.i.i.i122.i = icmp eq ptr %i.fb, %i.bt
  br i1 %.not10.i.i.i.i.i.i122.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader

.lr.ph.i.i.i.i.i.i123.i.preheader:                ; preds = %.noexc120
  %i.fo = ptrtoaddr ptr %i.fm to i64
  %i.fp = sub i64 %i.fc, %i.fd
  %i.fq = add i64 %i.fp, -8                       ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check1201 = icmp ult i64 %i.fq, 24
  %i.ft = sub i64 %i.fd, %i.fo
  %diff.check1199 = icmp ugt i64 %i.ft, -32
  %or.cond1248 = or i1 %min.iters.check1201, %diff.check1199
  br i1 %or.cond1248, label %.lr.ph.i.i.i.i.i.i123.i.preheader1435, label %vector.ph1202

vector.ph1202:                                    ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader
  %n.vec1204 = and i64 %i.fs, 4611686018427387900 ; 3 uses
  %i.fu = shl i64 %n.vec1204, 3                   ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fm, i64 %i.fu  ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fb, i64 %i.fu
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %vector.ph1202
  %index1206 = phi i64 [ 0, %vector.ph1202 ], [ %index.next1211, %vector.body1205 ] ; 2 uses
  %i.fx = shl i64 %index1206, 3                   ; 2 uses
  %next.gep1207 = getelementptr i8, ptr %i.fm, i64 %i.fx ; 2 uses
  %next.gep1208 = getelementptr i8, ptr %i.fb, i64 %i.fx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.fy = getelementptr i8, ptr %next.gep1208, i64 16
  %wide.load1209 = load <2 x i64>, ptr %next.gep1208, align 4, !alias.scope !142, !noalias !139
  %wide.load1210 = load <2 x i64>, ptr %i.fy, align 4, !alias.scope !142, !noalias !139
  %i.fz = getelementptr i8, ptr %next.gep1207, i64 16
  store <2 x i64> %wide.load1209, ptr %next.gep1207, align 4, !alias.scope !139, !noalias !142
  store <2 x i64> %wide.load1210, ptr %i.fz, align 4, !alias.scope !139, !noalias !142
  %index.next1211 = add nuw i64 %index1206, 4     ; 2 uses
  %i.ga = icmp eq i64 %index.next1211, %n.vec1204
  br i1 %i.ga, label %middle.block1212, label %vector.body1205, !llvm.loop !144

middle.block1212:                                 ; preds = %vector.body1205
  %cmp.n1213 = icmp eq i64 %i.fs, %n.vec1204
  br i1 %cmp.n1213, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i.preheader1435

.lr.ph.i.i.i.i.i.i123.i.preheader1435:            ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader, %middle.block1212
  %.012.i.i.i.i.i.i124.i.ph = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fv, %middle.block1212 ]
  %.0911.i.i.i.i.i.i125.i.ph = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i123.i.preheader ], [ %i.fw, %middle.block1212 ]
  br label %.lr.ph.i.i.i.i.i.i123.i

.lr.ph.i.i.i.i.i.i123.i:                          ; preds = %.lr.ph.i.i.i.i.i.i123.i.preheader1435, %.lr.ph.i.i.i.i.i.i123.i
  %.012.i.i.i.i.i.i124.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ], [ %.012.i.i.i.i.i.i124.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1435 ] ; 2 uses
  %.0911.i.i.i.i.i.i125.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i.i123.i ], [ %.0911.i.i.i.i.i.i125.i.ph, %.lr.ph.i.i.i.i.i.i123.i.preheader1435 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.gb = load i64, ptr %.0911.i.i.i.i.i.i125.i, align 4, !alias.scope !142, !noalias !139
  store i64 %i.gb, ptr %.012.i.i.i.i.i.i124.i, align 4, !alias.scope !139, !noalias !142
  %i.gc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i125.i, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i124.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i126.i = icmp eq ptr %i.gc, %i.bt
  br i1 %.not.i.i.i.i.i.i126.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i, label %.lr.ph.i.i.i.i.i.i123.i, !llvm.loop !145

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i: ; preds = %.lr.ph.i.i.i.i.i.i123.i, %middle.block1212, %.noexc120
  %.0.lcssa.i.i.i.i.i.i128.i = phi ptr [ %i.fm, %.noexc120 ], [ %i.fv, %middle.block1212 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i123.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i128.i, i64 8 ; 2 uses
  %.not.i23.i.i.i129.i = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i.i129.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fe) #24
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i: ; preds = %bb.s, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i127.i
  store ptr %i.fm, ptr %5, align 8, !tbaa !49
  store ptr %i.ge, ptr %i.br, align 8, !tbaa !53
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gf, ptr %i.bs, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i, %bb.q, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i, %bb.m, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.gg = phi ptr [ %i.ge, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i130.i ], [ %i.fa, %bb.q ], [ %i.ew, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i ], [ %i.ds, %bb.m ], [ %i.dk, %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.cg, %bb.h ]
  %i.gh = add i32 %.0166.i, 1                     ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp ugt i64 %i.bq, %i.gi
  br i1 %i.gj, label %bb.f, label %.lr.ph172.i.preheader, !llvm.loop !146

.lr.ph172.i.preheader:                            ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backEOS1_.exit.i
  %i.gk = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.gl = icmp samesign ugt i64 %i.bq, 1
  br i1 %i.gl, label %.lr.ph170.preheader.i, label %._crit_edge.thread.i

.lr.ph176.i:                                      ; preds = %._crit_edge.thread.i
  %7 = fmul float %i.gq, 2.000000e-03
  br label %bb.t

._crit_edge.thread.i.loopexit:                    ; preds = %._crit_edge.i
  %8 = zext i32 %13 to i64
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.loopexit, %.lr.ph172.i.preheader
  %.090171.i.lcssa = phi i64 [ 0, %.lr.ph172.i.preheader ], [ %8, %._crit_edge.thread.i.loopexit ]
  %.lcssa495 = phi ptr [ %i.gk, %.lr.ph172.i.preheader ], [ %i.he, %._crit_edge.thread.i.loopexit ]
  %.lcssa494 = phi ptr [ %i.gk, %.lr.ph172.i.preheader ], [ %i.hf, %._crit_edge.thread.i.loopexit ] ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %.lcssa495, i64 %.090171.i.lcssa ; 2 uses
  %10 = load i64, ptr %.lcssa494, align 4
  %11 = load i64, ptr %9, align 4
  store i64 %11, ptr %.lcssa494, align 4
  store i64 %10, ptr %9, align 4
  %.pre = load ptr, ptr %5, align 8, !tbaa !49    ; 9 uses
  %.pre688 = load ptr, ptr %i.br, align 8, !tbaa !53
  %12 = ptrtoint ptr %.pre688 to i64
  %i.gm = getelementptr i8, ptr %.pre, i64 %i.bp  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -8     ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !97
  %i.gp = load float, ptr %.pre, align 4, !tbaa !97
  %i.gq = fsub float %i.go, %i.gp                 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.gs = ptrtoint ptr %.pre to i64
  %i.gt = sub i64 %12, %i.gs
  %i.gu = ashr exact i64 %i.gt, 3                 ; 3 uses
  %i.gv = icmp ugt i64 %i.gu, 1
  br i1 %i.gv, label %.lr.ph176.i, label %.loopexit.i

.lr.ph170.preheader.i:                            ; preds = %.lr.ph172.i.preheader, %._crit_edge.i
  %i.gw = phi i64 [ %15, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 2 uses
  %13 = phi i32 [ %14, %._crit_edge.i ], [ 1, %.lr.ph172.i.preheader ] ; 4 uses
  %i.gx = phi ptr [ %i.hf, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 3 uses
  %i.gy = phi ptr [ %i.he, %._crit_edge.i ], [ %i.gk, %.lr.ph172.i.preheader ] ; 2 uses
  %.090171.i499 = phi i32 [ %13, %._crit_edge.i ], [ 0, %.lr.ph172.i.preheader ]
  %i.gz = load float, ptr %i.gx, align 4, !tbaa !97
  br label %.lr.ph170.i

._crit_edge.i:                                    ; preds = %.lr.ph170.i
  %i.ha = zext i32 %.1.i to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.ha ; 2 uses
  %i.hc = load i64, ptr %i.gx, align 4
  %i.hd = load i64, ptr %i.hb, align 4
  store i64 %i.hd, ptr %i.gx, align 4
  store i64 %i.hc, ptr %i.hb, align 4
  %i.he = load ptr, ptr %5, align 8, !tbaa !49    ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gw ; 2 uses
  %14 = add i32 %13, 1                            ; 2 uses
  %15 = zext i32 %14 to i64                       ; 2 uses
  %i.hg = icmp samesign ugt i64 %i.bq, %15
  br i1 %i.hg, label %.lr.ph170.preheader.i, label %._crit_edge.thread.i.loopexit

.lr.ph170.i:                                      ; preds = %.lr.ph170.i, %.lr.ph170.preheader.i
  %i.hh = phi i64 [ %i.hm, %.lr.ph170.i ], [ %i.gw, %.lr.ph170.preheader.i ]
  %.092169.i = phi i32 [ %.1.i, %.lr.ph170.i ], [ %.090171.i499, %.lr.ph170.preheader.i ]
  %.093168.i = phi i32 [ %i.hl, %.lr.ph170.i ], [ %13, %.lr.ph170.preheader.i ] ; 2 uses
  %.094167.i = phi float [ %.195.i, %.lr.ph170.i ], [ %i.gz, %.lr.ph170.preheader.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !97 ; 2 uses
  %i.hk = fcmp olt float %i.hj, %.094167.i        ; 2 uses
  %.195.i = select i1 %i.hk, float %i.hj, float %.094167.i
  %.1.i = select i1 %i.hk, i32 %.093168.i, i32 %.092169.i ; 2 uses
  %i.hl = add i32 %.093168.i, 1                   ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
  %i.hn = icmp ugt i64 %i.bq, %i.hm
  br i1 %i.hn, label %.lr.ph170.i, label %._crit_edge.i, !llvm.loop !147

._crit_edge177.i:                                 ; preds = %bb.v
  br i1 %switch114, label %.loopexit.i, label %bb.w

bb.t:                                             ; preds = %bb.v, %.lr.ph176.i
  %i.ho = phi i64 [ 1, %.lr.ph176.i ], [ %i.hz, %bb.v ]
  %.091174.i = phi i32 [ 1, %.lr.ph176.i ], [ %i.hy, %bb.v ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !97
  %i.hr = add i32 %.091174.i, -1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !97 ; 2 uses
  %i.hv = fsub float %i.hq, %i.hu
  %i.hw = fcmp olt float %i.hv, %7
  br i1 %i.hw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.gq, float 2.000000e-03, float %i.hu)
  store float %i.hx, ptr %i.hp, align 4, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hy = add i32 %.091174.i, 1                   ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp ugt i64 %i.gu, %i.hz
  br i1 %i.ia, label %bb.t, label %._crit_edge177.i, !llvm.loop !148

bb.w:                                             ; preds = %._crit_edge177.i
  %i.ib = getelementptr i8, ptr %i.gm, i64 -4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !100
  %i.id = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.ie = load float, ptr %i.id, align 4, !tbaa !100
  %i.if = fsub float %i.ic, %i.ie                 ; 2 uses
  %i.ig = fmul float %i.if, 2.000000e-03
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %i.ih = phi i64 [ 1, %bb.w ], [ %i.iu, %bb.z ]
  %.089179.i = phi i32 [ 1, %bb.w ], [ %i.it, %bb.z ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !100
  %i.il = add i32 %.089179.i, -1
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !100 ; 2 uses
  %i.iq = fsub float %i.ik, %i.ip
  %i.ir = fcmp olt float %i.iq, %i.ig
  br i1 %i.ir, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.is = tail call float @llvm.fmuladd.f32(float %i.if, float 2.000000e-03, float %i.ip)
  store float %i.is, ptr %i.ij, align 4, !tbaa !100
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.it = add i32 %.089179.i, 1                   ; 2 uses
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = icmp ugt i64 %i.gu, %i.iu
  br i1 %i.iv, label %bb.x, label %.loopexit.i, !llvm.loop !149

.loopexit.i:                                      ; preds = %bb.z, %._crit_edge177.i, %._crit_edge.thread.i
  br i1 %switch, label %bb.aa, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

bb.aa:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.iw = load i64, ptr %i.gn, align 4            ; 2 uses
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = bitcast i32 %i.ix to float
  %i.iz = fadd float %i.iy, -1.000000e+00
  store float %i.iz, ptr %4, align 4, !tbaa !97
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jb = lshr i64 %i.iw, 32
  %i.jc = trunc nuw i64 %i.jb to i32
  %i.jd = bitcast i32 %i.jc to float              ; 2 uses
  %i.je = fadd float %i.jd, -1.000000e+00
  %i.jf = select i1 %switch114, float %i.jd, float %i.je
  store float %i.jf, ptr %i.ja, align 4, !tbaa !100
  %i.jg = invoke ptr @_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nonnull %.pre, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %.noexc121 unwind label %.loopexit.split-lp323 ; 0 uses

.noexc121:                                        ; preds = %bb.aa
  %i.jh = load ptr, ptr %5, align 8, !tbaa !49    ; 8 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load float, ptr %i.ji, align 4
  %.sroa_idx135.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jk = load float, ptr %.sroa_idx135.i, align 4 ; 2 uses
  %i.jl = fadd float %i.jj, 1.000000e+00          ; 2 uses
  %i.jm = fadd float %i.jk, 1.000000e+00
  %i.jn = select i1 %switch114, float %i.jk, float %i.jm ; 2 uses
  %i.jo = load ptr, ptr %i.gr, align 8, !tbaa !53 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.jo, %i.jq
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc121
  store float %i.jl, ptr %i.jo, align 4
  %.sroa_idx132.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  store float %i.jn, ptr %.sroa_idx132.i, align 4
  %i.jr = load ptr, ptr %i.gr, align 8, !tbaa !53
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.js, ptr %i.gr, align 8, !tbaa !53
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

bb.ac:                                            ; preds = %.noexc121
  %i.jt = ptrtoint ptr %i.jo to i64               ; 2 uses
  %i.ju = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jv = sub i64 %i.jt, %i.ju                    ; 4 uses
  %i.jw = icmp eq i64 %i.jv, 9223372036854775800
  br i1 %i.jw, label %.invoke, label %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.jx = ashr exact i64 %i.jv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.jx, i64 1)
  %i.jy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jx ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jx
  %i.ka = call i64 @llvm.umin.i64(i64 %i.jy, i64 1152921504606846975)
  %i.kb = select i1 %i.jz, i64 1152921504606846975, i64 %i.ka ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kc = shl nuw nsw i64 %i.kb, 3
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #23
          to label %.noexc123 unwind label %.loopexit.split-lp323 ; 8 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.jv ; 2 uses
  store float %i.jl, ptr %i.ke, align 4
  %.sroa_idx134.i = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store float %i.jn, ptr %.sroa_idx134.i, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.jh, %i.jo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc123
  %i.kf = ptrtoaddr ptr %i.kd to i64
  %i.kg = sub i64 %i.jt, %i.ju
  %i.kh = add i64 %i.kg, -8                       ; 2 uses
  %i.ki = lshr i64 %i.kh, 3
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check1219 = icmp ult i64 %i.kh, 72
  %i.kk = sub i64 %i.ju, %i.kf
  %diff.check1217 = icmp ugt i64 %i.kk, -32
  %or.cond1249 = or i1 %min.iters.check1219, %diff.check1217
  br i1 %or.cond1249, label %.lr.ph.i.i.i.i.i.i.preheader1428, label %vector.ph1220

vector.ph1220:                                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec1222 = and i64 %i.kj, 4611686018427387900 ; 3 uses
  %i.kl = shl i64 %n.vec1222, 3                   ; 2 uses
  %i.km = getelementptr i8, ptr %i.kd, i64 %i.kl  ; 2 uses
  %i.kn = getelementptr i8, ptr %i.jh, i64 %i.kl
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1220
  %index1224 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1229, %vector.body1223 ] ; 2 uses
  %i.ko = shl i64 %index1224, 3                   ; 2 uses
  %next.gep1225 = getelementptr i8, ptr %i.kd, i64 %i.ko ; 2 uses
  %next.gep1226 = getelementptr i8, ptr %i.jh, i64 %i.ko ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.kp = getelementptr i8, ptr %next.gep1226, i64 16
  %wide.load1227 = load <2 x i64>, ptr %next.gep1226, align 4, !alias.scope !153, !noalias !150
  %wide.load1228 = load <2 x i64>, ptr %i.kp, align 4, !alias.scope !153, !noalias !150
  %i.kq = getelementptr i8, ptr %next.gep1225, i64 16
  store <2 x i64> %wide.load1227, ptr %next.gep1225, align 4, !alias.scope !150, !noalias !153
  store <2 x i64> %wide.load1228, ptr %i.kq, align 4, !alias.scope !150, !noalias !153
  %index.next1229 = add nuw i64 %index1224, 4     ; 2 uses
  %i.kr = icmp eq i64 %index.next1229, %n.vec1222
  br i1 %i.kr, label %middle.block1230, label %vector.body1223, !llvm.loop !155

middle.block1230:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %i.kj, %n.vec1222
  br i1 %cmp.n1231, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader1428

.lr.ph.i.i.i.i.i.i.preheader1428:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block1230
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.kd, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.km, %middle.block1230 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kn, %middle.block1230 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1428, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1428 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1428 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ks = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !153, !noalias !150
  store i64 %i.ks, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !150, !noalias !153
  %i.kt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.kt, %i.jo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !156

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1230, %.noexc123
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.kd, %.noexc123 ], [ %i.km, %middle.block1230 ], [ %i.ku, %.lr.ph.i.i.i.i.i.i ]
  %i.kv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jv) #24
  store ptr %i.kd, ptr %5, align 8, !tbaa !49
  store ptr %i.kv, ptr %i.gr, align 8, !tbaa !53
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.kb
  store ptr %i.kw, ptr %i.jp, align 8, !tbaa !52
  br label %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE9push_backERKS1_.exit.i, %.loopexit.i
  %i.kx = load i32, ptr %i.bi, align 8, !tbaa !61
  %i.ky = icmp eq i32 %i.kx, 2
  %narrow = or i1 %i.ky, %switch114
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.kz = load ptr, ptr %0, align 8, !tbaa !24
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %bb.ad unwind label %bb.an

.loopexit322:                                     ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i105.i, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i119.i
  %lpad.loopexit324 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

.loopexit.split-lp323:                            ; preds = %.invoke, %bb.aa, %_ZNKSt6vectorIN16OpenColorIO_v2_519GradingControlPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.split-lp325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ad:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116PrepHueCurveDataERKSt6vectorINS_19GradingControlPointESaIS2_EERS4_bb.exit
  br i1 %i.lc, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !60
  %i.lg = load ptr, ptr %i.ld, align 8, !tbaa !54
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = ptrtoint ptr %i.lg to i64
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = ashr exact i64 %i.lj, 2
  %i.ll = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.lm = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 3
  %i.lr = icmp eq i64 %i.lk, %i.lq
  br i1 %i.lr, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  %i.ls = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIfSaIfEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ld)
          to label %bb.ag unwind label %bb.an     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  br i1 %switch, label %bb.ah, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !123
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -4
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !58
  store float %i.lw, ptr %i.a, align 4, !tbaa !58
  %i.lx = load ptr, ptr %6, align 8, !tbaa !123
  %i.ly = invoke ptr @_ZNSt6vectorIfSaIfEE6insertEN9__gnu_cxx17__normal_iteratorIPKfS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.lx, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ai unwind label %bb.ao     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.lz = load ptr, ptr %6, align 8, !tbaa !123   ; 4 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !58 ; 2 uses
  %i.mb = load ptr, ptr %i.lt, align 8, !tbaa !60 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !57
  %.not.i124 = icmp eq ptr %i.mb, %i.md
  br i1 %.not.i124, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store float %i.ma, ptr %i.mb, align 4, !tbaa !58
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store ptr %i.me, ptr %i.lt, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForHueCurveERNS0_10KnotsCoefsEib:bb.a
  store ptr %i.rl, ptr %i.nk, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i

_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i, %bb.bn
  %i.rm = phi ptr [ %i.rl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.nl, %bb.bn ] ; 4 uses
  %i.rn = phi ptr [ %i.rk, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i176.i ], [ %i.qv, %bb.bn ] ; 4 uses
  br i1 %narrow, label %.preheader.i133, label %.preheader301.i

.preheader301.i:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.ro = add nsw i64 %i.ng, -3
  %i.rp = add nsw i64 %i.ng, -2                   ; 4 uses
  br label %bb.cd

.preheader.i133:                                  ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit179.i
  %i.rq = icmp samesign ugt i64 %i.ng, 2
  br i1 %i.rq, label %.lr.ph383.i, label %._crit_edge384.i

._crit_edge384.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i, %.preheader.i133
  %i.rr = phi ptr [ %i.rm, %.preheader.i133 ], [ %i.ud, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 2 uses
  %i.rs = phi ptr [ %i.rn, %.preheader.i133 ], [ %i.ue, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ] ; 3 uses
  %i.rt = add nsw i64 %i.ng, -2                   ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !58
  %i.rw = load ptr, ptr %6, align 8, !tbaa !54    ; 5 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.rt
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !58
  %i.rz = fneg float %i.ry
  %i.sa = call float @llvm.fmuladd.f32(float %i.rv, float 3.000000e+00, float %i.rz)
  %i.sb = fmul float %i.sa, 5.000000e-01          ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.rs, %i.rr
  br i1 %.not.i.i180.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge384.i
  store float %i.sb, ptr %i.rs, align 4, !tbaa !58
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  store ptr %i.sc, ptr %i.my, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bt:                                            ; preds = %._crit_edge384.i
  %i.sd = ptrtoint ptr %i.rr to i64
  %i.se = ptrtoint ptr %i.rw to i64
  %i.sf = sub i64 %i.sd, %i.se                    ; 6 uses
  %i.sg = icmp eq i64 %i.sf, 9223372036854775804
  br i1 %i.sg, label %bb.bu, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc187.i unwind label %bb.cc

.noexc187.i:                                      ; preds = %bb.bu
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i: ; preds = %bb.bt
  %i.sh = ashr exact i64 %i.sf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i182.i = call i64 @llvm.umax.i64(i64 %i.sh, i64 1)
  %i.si = add nsw i64 %.sroa.speculated.i.i.i.i182.i, %i.sh ; 2 uses
  %i.sj = icmp ult i64 %i.si, %i.sh
  %i.sk = call i64 @llvm.umin.i64(i64 %i.si, i64 2305843009213693951)
  %i.sl = select i1 %i.sj, i64 2305843009213693951, i64 %i.sk ; 3 uses
  %.not.i.i.i.i183.i = icmp ne i64 %i.sl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i183.i)
  %i.sm = shl nuw nsw i64 %i.sl, 2
  %i.sn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sm) #23
          to label %.noexc188.i unwind label %bb.cc ; 5 uses

.noexc188.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i
  %i.so = getelementptr inbounds i8, ptr %i.sn, i64 %i.sf ; 2 uses
  store float %i.sb, ptr %i.so, align 4, !tbaa !58
  %i.sp = icmp sgt i64 %i.sf, 0
  br i1 %i.sp, label %bb.bv, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

bb.bv:                                            ; preds = %.noexc188.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sn, ptr nonnull align 4 %i.rw, i64 %i.sf, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i: ; preds = %bb.bv, %.noexc188.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %i.sf) #24
  store ptr %i.sn, ptr %6, align 8, !tbaa !54
  store ptr %i.sq, ptr %i.my, align 8, !tbaa !60
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sl
  store ptr %i.sr, ptr %i.nk, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i

bb.bw:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i171.i, %bb.bp
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph383.i:                                      ; preds = %.preheader.i133, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i
  %i.st = phi ptr [ %i.ud, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.rm, %.preheader.i133 ] ; 3 uses
  %i.su = phi ptr [ %i.ue, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ %i.rn, %.preheader.i133 ] ; 3 uses
  %i.sv = phi i64 [ %i.ug, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i133 ]
  %.0131382.i = phi i32 [ %i.uf, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i ], [ 1, %.preheader.i133 ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.sv
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !58 ; 3 uses
  %i.sy = add i32 %.0131382.i, -1
  %i.sz = zext i32 %i.sy to i64
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.sz
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !58 ; 3 uses
  %i.tc = fadd float %i.sx, %i.tb                 ; 3 uses
  %i.td = call float @llvm.fabs.f32(float %i.tc)
  %i.te = fcmp olt float %i.td, 1.000000e-03
  %i.tf = fcmp olt float %i.tc, 0.000000e+00
  %i.tg = select i1 %i.tf, float -1.000000e-03, float 1.000000e-03
  %.sink489.i = select i1 %i.te, float %i.tg, float %i.tc
  %i.th = fmul float %i.sx, 2.000000e+00
  %i.ti = fmul float %i.th, %i.tb
  %i.tj = fdiv float %i.ti, %.sink489.i
  %i.tk = fmul float %i.sx, %i.tb
  %i.tl = fcmp ugt float %i.tk, 0.000000e+00
  %.0283.i = select i1 %i.tl, float %i.tj, float 0.000000e+00 ; 2 uses
  %.not.i190.i = icmp eq ptr %i.su, %i.st
  br i1 %.not.i190.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph383.i
  store float %.0283.i, ptr %i.su, align 4, !tbaa !58
  %i.tm = getelementptr inbounds nuw i8, ptr %i.su, i64 4 ; 2 uses
  store ptr %i.tm, ptr %i.my, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

bb.by:                                            ; preds = %.lr.ph383.i
  %i.tn = load ptr, ptr %6, align 8, !tbaa !54    ; 4 uses
  %i.to = ptrtoint ptr %i.st to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp                    ; 6 uses
  %i.tr = icmp eq i64 %i.tq, 9223372036854775804
  br i1 %i.tr, label %bb.bz, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc197.i unwind label %.loopexit.split-lp.i

.noexc197.i:                                      ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i: ; preds = %bb.by
  %i.ts = ashr exact i64 %i.tq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i192.i = call i64 @llvm.umax.i64(i64 %i.ts, i64 1)
  %i.tt = add nsw i64 %.sroa.speculated.i.i.i192.i, %i.ts ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.ts
  %i.tv = call i64 @llvm.umin.i64(i64 %i.tt, i64 2305843009213693951)
  %i.tw = select i1 %i.tu, i64 2305843009213693951, i64 %i.tv ; 3 uses
  %.not.i.i.i193.i = icmp ne i64 %i.tw, 0
  call void @llvm.assume(i1 %.not.i.i.i193.i)
  %i.tx = shl nuw nsw i64 %i.tw, 2
  %i.ty = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tx) #23
          to label %.noexc198.i unwind label %.loopexit.i134 ; 4 uses

.noexc198.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %i.tz = getelementptr inbounds i8, ptr %i.ty, i64 %i.tq ; 2 uses
  store float %.0283.i, ptr %i.tz, align 4, !tbaa !58
  %i.ua = icmp sgt i64 %i.tq, 0
  br i1 %i.ua, label %bb.ca, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

bb.ca:                                            ; preds = %.noexc198.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ty, ptr align 4 %i.tn, i64 %i.tq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i: ; preds = %bb.ca, %.noexc198.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 4 ; 2 uses
  %.not.i17.i.i195.i = icmp eq ptr %i.tn, null
  br i1 %.not.i17.i.i195.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.tq) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i: ; preds = %bb.cb, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i194.i
  store ptr %i.ty, ptr %6, align 8, !tbaa !54
  store ptr %i.ub, ptr %i.my, align 8, !tbaa !60
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tw ; 2 uses
  store ptr %i.uc, ptr %i.nk, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit199.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i, %bb.bx
  %i.ud = phi ptr [ %i.uc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.st, %bb.bx ] ; 2 uses
  %i.ue = phi ptr [ %i.ub, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i196.i ], [ %i.tm, %bb.bx ] ; 2 uses
  %i.uf = add i32 %.0131382.i, 1                  ; 2 uses
  %i.ug = zext i32 %i.uf to i64                   ; 2 uses
  %i.uh = icmp ugt i64 %i.nh, %i.ug
  br i1 %i.uh, label %.lr.ph383.i, label %._crit_edge384.i, !llvm.loop !158

.loopexit.i134:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i191.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp.i:                             ; preds = %bb.bz
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i, %bb.bs
  %i.ui = phi ptr [ %i.sn, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i186.i ], [ %i.rw, %bb.bs ] ; 3 uses
  %i.uj = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !58
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !58
  %i.um = fneg float %i.ul
  %i.un = call float @llvm.fmuladd.f32(float %i.uj, float 3.000000e+00, float %i.um)
  %i.uo = fmul float %i.un, 5.000000e-01          ; 2 uses
  store float %i.uo, ptr %i.ui, align 4, !tbaa !58
  br label %bb.cn

bb.cc:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i181.i, %bb.bu
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cd:                                            ; preds = %._crit_edge378.i, %.preheader301.i
  %.0125.i = phi i32 [ %i.wc, %._crit_edge378.i ], [ 0, %.preheader301.i ] ; 13 uses
  %i.uq = zext i32 %.0125.i to i64                ; 5 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !58 ; 3 uses
  %i.ut = icmp ugt i64 %i.rp, %i.uq
  br i1 %i.ut, label %.lr.ph365.preheader.i, label %.critedge.i

.lr.ph365.preheader.i:                            ; preds = %bb.cd
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.uq
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  %i.uu = add i32 %.0125.i, 1                     ; 2 uses
  %i.uv = zext i32 %i.uu to i64                   ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.uv
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !58 ; 2 uses
  %i.uy = fsub float %i.ux, %.pre.i
  %i.uz = call float @llvm.fabs.f32(float %i.uy)
  %i.va = fcmp olt float %i.uz, f0x358637BD
  br i1 %i.va, label %.lr.ph, label %.critedge.i

.lr.ph365.i:                                      ; preds = %.lr.ph
  %i.vb = add i32 %i.vk, 1                        ; 2 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.vc
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !58 ; 2 uses
  %i.vf = fsub float %i.ve, %i.vi
  %i.vg = call float @llvm.fabs.f32(float %i.vf)
  %i.vh = fcmp olt float %i.vg, f0x358637BD
  br i1 %i.vh, label %.lr.ph, label %.critedge.i, !llvm.loop !159

.lr.ph:                                           ; preds = %.lr.ph365.preheader.i, %.lr.ph365.i
  %i.vi = phi float [ %i.ve, %.lr.ph365.i ], [ %i.ux, %.lr.ph365.preheader.i ]
  %i.vj = phi i64 [ %i.vc, %.lr.ph365.i ], [ %i.uv, %.lr.ph365.preheader.i ] ; 4 uses
  %i.vk = phi i32 [ %i.vb, %.lr.ph365.i ], [ %i.uu, %.lr.ph365.preheader.i ] ; 3 uses
  %.0123363.i502 = phi float [ %i.vn, %.lr.ph365.i ], [ %i.us, %.lr.ph365.preheader.i ]
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.vj
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !58
  %i.vn = fadd float %.0123363.i502, %i.vm        ; 3 uses
  %i.vo = icmp ugt i64 %i.rp, %i.vj
  br i1 %i.vo, label %.lr.ph365.i, label %..critedge.i.loopexit_crit_edge, !llvm.loop !159

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !159

.critedge.i:                                      ; preds = %.lr.ph365.i, %.lr.ph365.preheader.i, %..critedge.i.loopexit_crit_edge, %bb.cd
  %.0124.lcssa.i = phi i32 [ %.0125.i, %bb.cd ], [ %.0125.i, %.lr.ph365.preheader.i ], [ %i.vk, %..critedge.i.loopexit_crit_edge ], [ %i.vk, %.lr.ph365.i ] ; 5 uses
  %.0123.lcssa.i = phi float [ %i.us, %bb.cd ], [ %i.us, %.lr.ph365.preheader.i ], [ %i.vn, %..critedge.i.loopexit_crit_edge ], [ %i.vn, %.lr.ph365.i ] ; 2 uses
  %.lcssa312.i = phi i64 [ %i.uq, %bb.cd ], [ %i.uq, %.lr.ph365.preheader.i ], [ %i.vj, %..critedge.i.loopexit_crit_edge ], [ %i.vj, %.lr.ph365.i ]
  %.not375.i = icmp ugt i32 %.0125.i, %.0124.lcssa.i
  br i1 %.not375.i, label %._crit_edge378.i, label %.lr.ph377.i.preheader

.lr.ph377.i.preheader:                            ; preds = %.critedge.i
  %i.vp = add i32 %.0124.lcssa.i, 1
  %i.vq = add i32 %.0125.i, 1
  %umax1234 = call i32 @llvm.umax.i32(i32 %i.vp, i32 %i.vq)
  %i.vr = sub i32 %umax1234, %.0125.i             ; 3 uses
  %min.iters.check1236 = icmp ult i32 %i.vr, 20
  br i1 %min.iters.check1236, label %.lr.ph377.i.preheader1397, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph377.i.preheader
  %i.vs = add i32 %.0124.lcssa.i, 1
  %i.vt = add i32 %.0125.i, 1
  %umax = call i32 @llvm.umax.i32(i32 %i.vs, i32 %i.vt)
  %i.vu = add i32 %umax, -1
  %i.vv = icmp ult i32 %i.vu, %.0125.i
  br i1 %i.vv, label %.lr.ph377.i.preheader1397, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.scevcheck
  %n.vec1239 = and i32 %i.vr, -8                  ; 3 uses
  %i.vw = add i32 %.0125.i, %n.vec1239
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.0123.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %vector.ph1237
  %index1241 = phi i32 [ 0, %vector.ph1237 ], [ %index.next1242, %vector.body1240 ] ; 2 uses
  %i.vx = add i32 %.0125.i, %index1241
  %i.vy = zext i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  store <4 x float> %broadcast.splat, ptr %i.vz, align 4, !tbaa !58
  store <4 x float> %broadcast.splat, ptr %i.wa, align 4, !tbaa !58
  %index.next1242 = add nuw i32 %index1241, 8     ; 2 uses
  %i.wb = icmp eq i32 %index.next1242, %n.vec1239
  br i1 %i.wb, label %middle.block1243, label %vector.body1240, !llvm.loop !160

middle.block1243:                                 ; preds = %vector.body1240
  %cmp.n1244 = icmp eq i32 %i.vr, %n.vec1239
  br i1 %cmp.n1244, label %._crit_edge378.i, label %.lr.ph377.i.preheader1397

.lr.ph377.i.preheader1397:                        ; preds = %vector.scevcheck, %.lr.ph377.i.preheader, %middle.block1243
  %.0122376.i.ph = phi i32 [ %.0125.i, %vector.scevcheck ], [ %.0125.i, %.lr.ph377.i.preheader ], [ %i.vw, %middle.block1243 ]
  br label %.lr.ph377.i

._crit_edge378.i:                                 ; preds = %.lr.ph377.i, %middle.block1243, %.critedge.i
  %.not141.i = icmp ugt i64 %i.ro, %.lcssa312.i
  %i.wc = add nuw i32 %.0124.lcssa.i, 1
  br i1 %.not141.i, label %bb.cd, label %.preheader297.i

.preheader297.i:                                  ; preds = %._crit_edge378.i
  %i.wd = icmp ugt i64 %i.nh, 1
  br i1 %i.wd, label %.lr.ph380.i, label %._crit_edge381.i

.lr.ph377.i:                                      ; preds = %.lr.ph377.i.preheader1397, %.lr.ph377.i
  %.0122376.i = phi i32 [ %i.wg, %.lr.ph377.i ], [ %.0122376.i.ph, %.lr.ph377.i.preheader1397 ] ; 2 uses
  %i.we = zext i32 %.0122376.i to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.we
  store float %.0123.lcssa.i, ptr %i.wf, align 4, !tbaa !58
  %i.wg = add i32 %.0122376.i, 1                  ; 2 uses
  %.not.i132 = icmp ugt i32 %i.wg, %.0124.lcssa.i
  br i1 %.not.i132, label %._crit_edge378.i, label %.lr.ph377.i, !llvm.loop !161

._crit_edge381.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i, %.preheader297.i
  %i.wh = phi ptr [ %i.rm, %.preheader297.i ], [ %i.yq, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 2 uses
  %i.wi = phi ptr [ %i.rn, %.preheader297.i ], [ %i.yr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ] ; 3 uses
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.rp
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !58
  %i.wl = load ptr, ptr %6, align 8, !tbaa !54    ; 5 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.wl, i64 %i.rp
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !58
  %i.wo = fneg float %i.wn
  %i.wp = call float @llvm.fmuladd.f32(float %i.wk, float 3.000000e+00, float %i.wo)
  %i.wq = fmul float %i.wp, 5.000000e-01          ; 3 uses
  %i.wr = fcmp ogt float %i.wq, f0x3C23D70A       ; 2 uses
  %.not.i200.i = icmp eq ptr %i.wi, %i.wh
  br i1 %.not.i200.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge381.i
  %.sroa.speculated232.i = select i1 %i.wr, float %i.wq, float f0x3C23D70A
  store float %.sroa.speculated232.i, ptr %i.wi, align 4, !tbaa !58
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  store ptr %i.ws, ptr %i.my, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

bb.cf:                                            ; preds = %._crit_edge381.i
  %i.wt = ptrtoint ptr %i.wh to i64
  %i.wu = ptrtoint ptr %i.wl to i64
  %i.wv = sub i64 %i.wt, %i.wu                    ; 6 uses
  %i.ww = icmp eq i64 %i.wv, 9223372036854775804
  br i1 %i.ww, label %bb.cg, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc207.i unwind label %.thread455.i

.noexc207.i:                                      ; preds = %bb.cg
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i: ; preds = %bb.cf
  %i.wx = ashr exact i64 %i.wv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i202.i = call i64 @llvm.umax.i64(i64 %i.wx, i64 1)
  %i.wy = add nsw i64 %.sroa.speculated.i.i.i202.i, %i.wx ; 2 uses
  %i.wz = icmp ult i64 %i.wy, %i.wx
  %i.xa = call i64 @llvm.umin.i64(i64 %i.wy, i64 2305843009213693951)
  %i.xb = select i1 %i.wz, i64 2305843009213693951, i64 %i.xa ; 3 uses
  %.not.i.i.i203.i = icmp ne i64 %i.xb, 0
  call void @llvm.assume(i1 %.not.i.i.i203.i)
  %i.xc = shl nuw nsw i64 %i.xb, 2
  %i.xd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xc) #23
          to label %.noexc208.i unwind label %.thread455.i ; 5 uses

.noexc208.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i
  %i.xe = getelementptr inbounds i8, ptr %i.xd, i64 %i.wv ; 2 uses
  %.sroa.speculated229.i = select i1 %i.wr, float %i.wq, float f0x3C23D70A
  store float %.sroa.speculated229.i, ptr %i.xe, align 4, !tbaa !58
  %i.xf = icmp sgt i64 %i.wv, 0
  br i1 %i.xf, label %bb.ch, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

bb.ch:                                            ; preds = %.noexc208.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xd, ptr nonnull align 4 %i.wl, i64 %i.wv, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i: ; preds = %bb.ch, %.noexc208.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  call void @_ZdlPvm(ptr noundef nonnull %i.wl, i64 noundef %i.wv) #24
  store ptr %i.xd, ptr %6, align 8, !tbaa !54
  store ptr %i.xg, ptr %i.my, align 8, !tbaa !60
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.xd, i64 %i.xb
  store ptr %i.xh, ptr %i.nk, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i

.lr.ph380.i:                                      ; preds = %.preheader297.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i
  %i.xi = phi ptr [ %i.yq, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.rm, %.preheader297.i ] ; 3 uses
  %i.xj = phi ptr [ %i.yr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ %i.rn, %.preheader297.i ] ; 3 uses
  %i.xk = phi i64 [ %i.yt, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %.0121379.i = phi i32 [ %i.ys, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i ], [ 1, %.preheader297.i ] ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xk
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !58 ; 2 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xk
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !58
  %i.xp = add i32 %.0121379.i, -1
  %i.xq = zext i32 %i.xp to i64                   ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.xq
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !58 ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.xq
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !58
  %i.xv = fmul float %i.xs, %i.xu
  %i.xw = call float @llvm.fmuladd.f32(float %i.xm, float %i.xo, float %i.xv)
  %i.xx = fadd float %i.xm, %i.xs
  %i.xy = fdiv float %i.xw, %i.xx                 ; 2 uses
  %.not.i210.i = icmp eq ptr %i.xj, %i.xi
  br i1 %.not.i210.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph380.i
  store float %i.xy, ptr %i.xj, align 4, !tbaa !58
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xj, i64 4 ; 2 uses
  store ptr %i.xz, ptr %i.my, align 8, !tbaa !60
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

bb.cj:                                            ; preds = %.lr.ph380.i
  %i.ya = load ptr, ptr %6, align 8, !tbaa !54    ; 4 uses
  %i.yb = ptrtoint ptr %i.xi to i64
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = sub i64 %i.yb, %i.yc                    ; 6 uses
  %i.ye = icmp eq i64 %i.yd, 9223372036854775804
  br i1 %i.ye, label %bb.ck, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.noexc217.i unwind label %.thread285.loopexit.split-lp.i

.noexc217.i:                                      ; preds = %bb.ck
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i: ; preds = %bb.cj
  %i.yf = ashr exact i64 %i.yd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i212.i = call i64 @llvm.umax.i64(i64 %i.yf, i64 1)
  %i.yg = add nsw i64 %.sroa.speculated.i.i.i212.i, %i.yf ; 2 uses
  %i.yh = icmp ult i64 %i.yg, %i.yf
  %i.yi = call i64 @llvm.umin.i64(i64 %i.yg, i64 2305843009213693951)
  %i.yj = select i1 %i.yh, i64 2305843009213693951, i64 %i.yi ; 3 uses
  %.not.i.i.i213.i = icmp ne i64 %i.yj, 0
  call void @llvm.assume(i1 %.not.i.i.i213.i)
  %i.yk = shl nuw nsw i64 %i.yj, 2
  %i.yl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yk) #23
          to label %.noexc218.i unwind label %.thread285.loopexit.i ; 4 uses

.noexc218.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %i.ym = getelementptr inbounds i8, ptr %i.yl, i64 %i.yd ; 2 uses
  store float %i.xy, ptr %i.ym, align 4, !tbaa !58
  %i.yn = icmp sgt i64 %i.yd, 0
  br i1 %i.yn, label %bb.cl, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

bb.cl:                                            ; preds = %.noexc218.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yl, ptr align 4 %i.ya, i64 %i.yd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i: ; preds = %bb.cl, %.noexc218.i
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 4 ; 2 uses
  %.not.i17.i.i215.i = icmp eq ptr %i.ya, null
  br i1 %.not.i17.i.i215.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ya, i64 noundef %i.yd) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i: ; preds = %bb.cm, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i214.i
  store ptr %i.yl, ptr %6, align 8, !tbaa !54
  store ptr %i.yo, ptr %i.my, align 8, !tbaa !60
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %i.yj ; 2 uses
  store ptr %i.yp, ptr %i.nk, align 8, !tbaa !57
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit219.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i, %bb.ci
  %i.yq = phi ptr [ %i.yp, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.xi, %bb.ci ] ; 2 uses
  %i.yr = phi ptr [ %i.yo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i216.i ], [ %i.xz, %bb.ci ] ; 2 uses
  %i.ys = add i32 %.0121379.i, 1                  ; 2 uses
  %i.yt = zext i32 %i.ys to i64                   ; 2 uses
  %i.yu = icmp ugt i64 %i.nh, %i.yt
  br i1 %i.yu, label %.lr.ph380.i, label %._crit_edge381.i, !llvm.loop !162

.thread285.loopexit.i:                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i211.i
  %lpad.loopexit298.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

.thread285.loopexit.split-lp.i:                   ; preds = %bb.ck
  %lpad.loopexit.split-lp299.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i:     ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i, %bb.ce
  %i.yv = phi ptr [ %i.xd, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i206.i ], [ %i.wl, %bb.ce ] ; 3 uses
  %i.yw = load float, ptr %.sroa.0259.0.lcssa.i, align 4, !tbaa !58
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !58
  %i.yz = fneg float %i.yy
  %i.za = call float @llvm.fmuladd.f32(float %i.yw, float 3.000000e+00, float %i.yz)
  %i.zb = fmul float %i.za, 5.000000e-01          ; 2 uses
  %i.zc = fcmp ogt float %i.zb, f0x3C23D70A
  %.sroa.speculated.i = select i1 %i.zc, float %i.zb, float f0x3C23D70A ; 2 uses
  store float %.sroa.speculated.i, ptr %i.yv, align 4, !tbaa !58
  br label %bb.cn

.thread455.i:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i201.i, %bb.cg
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %.thread285.i

bb.cn:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i
  %16 = phi float [ %.sroa.speculated.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i ], [ %i.uo, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i ]
  %i.ze = phi ptr [ %i.yv, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit209.i ], [ %i.ui, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit189.i ] ; 6 uses
  br i1 %.not389.i, label %._crit_edge388.i, label %.lr.ph387.i

._crit_edge388.i:                                 ; preds = %.thread.i, %bb.cn
  br i1 %switch, label %bb.cq, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

.lr.ph387.i:                                      ; preds = %bb.cn, %.thread.i
  %17 = phi float [ %21, %.thread.i ], [ %16, %bb.cn ] ; 4 uses
  %i.zf = phi i64 [ %20, %.thread.i ], [ 0, %bb.cn ] ; 2 uses
  %.0120385.i = phi i32 [ %19, %.thread.i ], [ 0, %bb.cn ]
  %18 = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.zf
  %i.zg = call float @llvm.fabs.f32(float %17)
  %19 = add i32 %.0120385.i, 1                    ; 2 uses
  %20 = zext i32 %19 to i64                       ; 3 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %20 ; 2 uses
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !58 ; 5 uses
  %i.zj = call float @llvm.fabs.f32(float %i.zi)
  %i.zk = fcmp ogt float %i.zg, %i.zj
  %.0119.i = select i1 %i.zk, float 8.000000e-01, float 2.000000e-01
  %i.zl = fsub float %i.zi, %17
  %i.zm = call float @llvm.fmuladd.f32(float %.0119.i, float %i.zl, float %17) ; 2 uses
  %i.zn = fcmp une float %i.zm, 0.000000e+00
  br i1 %i.zn, label %bb.co, label %.thread.i

bb.co:                                            ; preds = %.lr.ph387.i
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0259.0.lcssa.i, i64 %i.zf
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !58
  %i.zq = fmul float %i.zp, 1.500000e+00
  %i.zr = fdiv float %i.zq, %i.zm                 ; 3 uses
  %i.zs = fcmp olt float %i.zr, 1.000000e+00
  br i1 %i.zs, label %bb.cp, label %.thread.i

bb.cp:                                            ; preds = %bb.co
  %i.zt = fmul float %17, %i.zr
  store float %i.zt, ptr %18, align 4, !tbaa !58
  %i.zu = fmul float %i.zi, %i.zr                 ; 2 uses
  store float %i.zu, ptr %i.zh, align 4, !tbaa !58
  br label %.thread.i

.thread.i:                                        ; preds = %bb.cp, %bb.co, %.lr.ph387.i
  %21 = phi float [ %i.zi, %.lr.ph387.i ], [ %i.zu, %bb.cp ], [ %i.zi, %bb.co ]
  %i.zv = icmp ugt i64 %i.nh, %20
  br i1 %i.zv, label %.lr.ph387.i, label %._crit_edge388.i, !llvm.loop !163

bb.cq:                                            ; preds = %._crit_edge388.i
  %i.zw = getelementptr [4 x i8], ptr %i.ze, i64 %i.ng
  %i.zx = getelementptr i8, ptr %i.zw, i64 -8
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !58
  store float %i.zy, ptr %i.ze, align 4, !tbaa !58
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !58
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.nh
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i:     ; preds = %bb.cq, %._crit_edge388.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i166.i, %bb.bh
  %.not.i.i.i221.i = icmp eq ptr %.sroa.0.0.lcssa.i, null
  br i1 %.not.i.i.i221.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %i.aac = ptrtoint ptr %.sroa.18.0.lcssa.i to i64
  %i.aad = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aae = sub i64 %i.aac, %i.aad
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %i.aae) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.cr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit169.i
  %.not.i.i.i222.i = icmp eq ptr %.sroa.0259.0.lcssa.i, null
  br i1 %.not.i.i.i222.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.aaf = ptrtoint ptr %.sroa.30.0.lcssa.i to i64
  %i.aag = ptrtoint ptr %.sroa.0259.0.lcssa.i to i64
  %i.aah = sub i64 %i.aaf, %i.aag
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.0.lcssa.i, i64 noundef %i.aah) #24
  br label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153

bb.ct:                                            ; preds = %bb.cc, %.loopexit.split-lp.i, %.loopexit.i134, %bb.bw, %bb.bl, %.loopexit.split-lp308.i, %.loopexit307.i, %.loopexit.split-lp303.i, %.loopexit302.i
  %.sroa.18.0344.i = phi ptr [ %.sroa.18.0.lcssa.i, %.loopexit.i134 ], [ %.sroa.18.0351.i, %.loopexit.split-lp303.i ], [ %.sroa.18.0.lcssa.i, %bb.bl ], [ %.sroa.18.0.lcssa.i, %bb.bw ], [ %.sroa.15.0352.i, %.loopexit.split-lp308.i ], [ %.sroa.18.0.lcssa.i, %bb.cc ], [ %.sroa.18.0351.i, %.loopexit302.i ], [ %.sroa.15.0352.i, %.loopexit307.i ], [ %.sroa.18.0.lcssa.i, %.loopexit.split-lp.i ]
  %.sroa.0.0335.i = phi ptr [ %.sroa.0.0.lcssa.i, %.loopexit.i134 ], [ %.sroa.0.0353.i, %.loopexit.split-lp303.i ], [ %.sroa.0.0.lcssa.i, %bb.bl ], [ %.sroa.0.0.lcssa.i, %bb.bw ], [ %.sroa.0.0353.i, %.loopexit.split-lp308.i ], [ %.sroa.0.0.lcssa.i, %bb.cc ], [ %.sroa.0.0353.i, %.loopexit302.i ], [ %.sroa.0.0353.i, %.loopexit307.i ], [ %.sroa.0.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.30.1.i = phi ptr [ %.sroa.30.0.lcssa.i, %.loopexit.i134 ], [ %.sroa.27.0355.i, %.loopexit.split-lp303.i ], [ %.sroa.30.0.lcssa.i, %bb.bl ], [ %.sroa.30.0.lcssa.i, %bb.bw ], [ %.sroa.30.2.i, %.loopexit.split-lp308.i ], [ %.sroa.30.0.lcssa.i, %bb.cc ], [ %.sroa.27.0355.i, %.loopexit302.i ], [ %.sroa.30.2.i, %.loopexit307.i ], [ %.sroa.30.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0259.1.i = phi ptr [ %.sroa.0259.0.lcssa.i, %.loopexit.i134 ], [ %.sroa.0259.0356.i, %.loopexit.split-lp303.i ], [ %.sroa.0259.0.lcssa.i, %bb.bl ], [ %.sroa.0259.0.lcssa.i, %bb.bw ], [ %.sroa.0259.2.i, %.loopexit.split-lp308.i ], [ %.sroa.0259.0.lcssa.i, %bb.cc ], [ %.sroa.0259.0356.i, %.loopexit302.i ], [ %.sroa.0259.2.i, %.loopexit307.i ], [ %.sroa.0259.0.lcssa.i, %.loopexit.split-lp.i ] ; 2 uses
  %.pn143.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i134 ], [ %lpad.loopexit.split-lp305.i, %.loopexit.split-lp303.i ], [ %i.qu, %bb.bl ], [ %i.ss, %bb.bw ], [ %lpad.loopexit.split-lp310.i, %.loopexit.split-lp308.i ], [ %i.up, %bb.cc ], [ %lpad.loopexit304.i, %.loopexit302.i ], [ %lpad.loopexit309.i, %.loopexit307.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i224.i = icmp eq ptr %.sroa.0.0335.i, null
  br i1 %.not.i.i.i224.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i, label %.thread285.i

.thread285.i:                                     ; preds = %bb.ct, %.thread455.i, %.thread285.loopexit.split-lp.i, %.thread285.loopexit.i
  %.sroa.18.0343.i = phi ptr [ %.sroa.18.0344.i, %bb.ct ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.18.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.18.0.lcssa.i, %.thread455.i ]
  %.sroa.0.0338.i = phi ptr [ %.sroa.0.0335.i, %bb.ct ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0.0.lcssa.i, %.thread455.i ] ; 2 uses
  %.pn143.pn294.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %lpad.loopexit.split-lp299.i, %.thread285.loopexit.split-lp.i ], [ %lpad.loopexit298.i, %.thread285.loopexit.i ], [ %i.zd, %.thread455.i ]
  %.sroa.0259.1292.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.0259.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.0259.0.lcssa.i, %.thread455.i ]
  %.sroa.30.1290.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.split-lp.i ], [ %.sroa.30.0.lcssa.i, %.thread285.loopexit.i ], [ %.sroa.30.0.lcssa.i, %.thread455.i ]
  %i.aai = ptrtoint ptr %.sroa.18.0343.i to i64
  %i.aaj = ptrtoint ptr %.sroa.0.0338.i to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0338.i, i64 noundef %i.aak) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit225.i

_ZNSt6vectorIfSaIfEED2Ev.exit225.i:               ; preds = %.thread285.i, %bb.ct
  %.pn143.pn295.i = phi { ptr, i32 } [ %.pn143.pn.i, %bb.ct ], [ %.pn143.pn294.i, %.thread285.i ] ; 2 uses
  %.sroa.0259.1293.i = phi ptr [ %.sroa.0259.1.i, %bb.ct ], [ %.sroa.0259.1292.i, %.thread285.i ] ; 3 uses
  %.sroa.30.1291.i = phi ptr [ %.sroa.30.1.i, %bb.ct ], [ %.sroa.30.1290.i, %.thread285.i ]
  %.not.i.i.i226.i = icmp eq ptr %.sroa.0259.1293.i, null
  br i1 %.not.i.i.i226.i, label %.body, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit225.i
  %i.aal = ptrtoint ptr %.sroa.30.1291.i to i64
  %i.aam = ptrtoint ptr %.sroa.0259.1293.i to i64
  %i.aan = sub i64 %i.aal, %i.aam
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0259.1293.i, i64 noundef %i.aan) #24
  br label %.body

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153: ; preds = %bb.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit.i, %bb.ag, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.aao = load ptr, ptr %5, align 8, !tbaa !49   ; 2 uses
  %i.aap = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #23
          to label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 unwind label %.loopexit.split-lp ; 4 uses

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140:     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i153
  %i.aaq = load float, ptr %i.aao, align 4, !tbaa !58
  store float %i.aaq, ptr %i.aap, align 4, !tbaa !58
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 4 ; 4 uses
  %i.aas = load ptr, ptr %i.gr, align 8, !tbaa !53
  %i.aat = ptrtoint ptr %i.aas to i64
  %i.aau = ptrtoint ptr %i.aao to i64
  %i.aav = sub i64 %i.aat, %i.aau
  %i.aaw = ashr exact i64 %i.aav, 3
  %i.aax = add nsw i64 %i.aaw, -1                 ; 2 uses
  %.not.i141 = icmp eq i64 %i.aax, 0
  br i1 %.not.i141, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_112FitHueSplineERKSt6vectorINS_19GradingControlPointESaIS2_EERKS1_IfSaIfEERS8_SB_SB_SB_.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i
  %.sroa.0227.2 = phi ptr [ %.sroa.0227.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 17 uses
  %.sroa.13233.0 = phi ptr [ %.sroa.13233.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 12 uses
  %.sroa.23237.2 = phi ptr [ %.sroa.23237.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 7 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 13 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 11 uses
  %.sroa.23.2 = phi ptr [ %.sroa.23.4, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 4 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 17 uses
  %.sroa.15.0 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 6 uses
  %.sroa.0242.2 = phi ptr [ %.sroa.0242.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ null, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 21 uses
  %.sroa.25.3 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aar, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 24 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.3, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aar, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 5 uses
  %.sroa.0259.3 = phi ptr [ %.sroa.0259.5, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ %i.aap, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 25 uses
  %i.aay = phi i64 [ %i.abc, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ] ; 6 uses
  %.0167.i = phi i32 [ %i.abb, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit150.i ], [ 0, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i140 ]
  %i.aaz = load ptr, ptr %5, align 8, !tbaa !49   ; 2 uses
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.aay ; 3 uses
  %i.abb = add i32 %.0167.i, 1                    ; 2 uses
  %i.abc = zext i32 %i.abb to i64                 ; 6 uses
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abc ; 5 uses
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !97 ; 2 uses
  %i.abf = load float, ptr %i.aba, align 4, !tbaa !97 ; 4 uses
  %i.abg = fsub float %i.abe, %i.abf              ; 6 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !100
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aba, i64 4 ; 4 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !100 ; 3 uses
  %i.abl = fsub float %i.abi, %i.abk
  %i.abm = fdiv float %i.abl, %i.abg              ; 5 uses
  %i.abn = load ptr, ptr %6, align 8, !tbaa !54   ; 6 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.aay
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !58 ; 5 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %i.abc
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !58 ; 4 uses
  %i.abs = fadd float %i.abp, %i.abr
  %i.abt = call float @llvm.fmuladd.f32(float %i.abm, float -2.000000e+00, float %i.abs)
  %i.abu = call float @llvm.fabs.f32(float %i.abt)
  %i.abv = fcmp ugt float %i.abu, f0x3727C5AC
  br i1 %i.abv, label %bb.dk, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i142
  %.not.i71.i = icmp eq ptr %.sroa.13.0, %.sroa.23.2
  br i1 %.not.i71.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store float %i.abk, ptr %.sroa.13.0, align 4, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

bb.cx:                                            ; preds = %bb.cv
  %i.abw = ptrtoint ptr %.sroa.13.0 to i64
  %i.abx = ptrtoint ptr %.sroa.0214.2 to i64
  %i.aby = sub i64 %i.abw, %i.abx                 ; 6 uses
  %i.abz = icmp eq i64 %i.aby, 9223372036854775804
  br i1 %i.abz, label %.invoke1250, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i

.invoke1250:                                      ; preds = %bb.dr, %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #22
          to label %.cont1251 unwind label %.loopexit.split-lp

.cont1251:                                        ; preds = %.invoke1250
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i: ; preds = %bb.cx
  %i.aca = ashr exact i64 %i.aby, 2               ; 3 uses
  %.sroa.speculated.i.i.i73.i = call i64 @llvm.umax.i64(i64 %i.aca, i64 1)
  %i.acb = add nsw i64 %.sroa.speculated.i.i.i73.i, %i.aca ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.aca
  %i.acd = call i64 @llvm.umin.i64(i64 %i.acb, i64 2305843009213693951)
  %i.ace = select i1 %i.acc, i64 2305843009213693951, i64 %i.acd ; 3 uses
  %.not.i.i.i74.i = icmp ne i64 %i.ace, 0
  call void @llvm.assume(i1 %.not.i.i.i74.i)
  %i.acf = shl nuw nsw i64 %i.ace, 2
  %i.acg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acf) #23
          to label %.noexc163 unwind label %.loopexit ; 4 uses

.noexc163:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i72.i
  %i.ach = getelementptr inbounds i8, ptr %i.acg, i64 %i.aby ; 2 uses
  %i.aci = load float, ptr %i.abj, align 4, !tbaa !58
  store float %i.aci, ptr %i.ach, align 4, !tbaa !58
  %i.acj = icmp sgt i64 %i.aby, 0
  br i1 %i.acj, label %bb.cy, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

bb.cy:                                            ; preds = %.noexc163
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acg, ptr align 4 %.sroa.0214.2, i64 %i.aby, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i: ; preds = %bb.cy, %.noexc163
  %.not.i17.i.i76.i = icmp eq ptr %.sroa.0214.2, null
  br i1 %.not.i17.i.i76.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.2, i64 noundef %i.aby) #24
  %.pre168.i.pre = load ptr, ptr %6, align 8, !tbaa !54
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i: ; preds = %bb.cz, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i
  %.pre168.i = phi ptr [ %.pre168.i.pre, %bb.cz ], [ %i.abn, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i75.i ]
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %i.ace
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i, %bb.cw
  %.sroa.0214.3 = phi ptr [ %i.acg, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.0214.2, %bb.cw ] ; 6 uses
  %.pn308 = phi ptr [ %i.ach, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.13.0, %bb.cw ]
  %.sroa.23.3 = phi ptr [ %i.ack, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %.sroa.23.2, %bb.cw ] ; 6 uses
  %i.acl = phi ptr [ %.pre168.i, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i77.i ], [ %i.abn, %bb.cw ] ; 3 uses
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.pn308, i64 4 ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.aay ; 2 uses
  %.not.i79.i = icmp eq ptr %.sroa.13233.0, %.sroa.23237.2
  br i1 %.not.i79.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit78.i
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !58 ; 2 uses
end_hunk_2
