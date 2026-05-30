inline.NumInlined: 2154
inline.NumDeleted: 448
begin_hunk_0_@_ZN4MeshC2Eiiiiddiii:.preheader217
  %i.gu = load double, ptr %i.ck, align 8, !tbaa !101
  %i.gv = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 3 uses
  store double %i.gu, ptr %i.gv, align 8, !tbaa !49
  %i.gw = load double, ptr %i.cl, align 8, !tbaa !102
  store double %i.gw, ptr %i.gh, align 8, !tbaa !49
  %i.gx = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %.not71220 = icmp slt i32 %i.gx, 1
  br i1 %.not71220, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95
  %.pre240242 = phi i32 [ %i.gx, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95 ], [ %i.ib, %.lr.ph ]
  %.not233 = icmp eq i32 %i.dj, 0
  br i1 %.not233, label %._crit_edge, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader
  %i.gy = load ptr, ptr %i.ah, align 8, !tbaa !63
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit95, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %_ZNSt6vectorIdSaIdEE6resizeEm.exit95 ] ; 9 uses
  %i.ha = add nsw i64 %indvars.iv, -1             ; 6 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = shl nsw i32 %i.hc, 1
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !4
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.ha
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !4
  %i.hh = shl nsw i32 %i.hg, 1
  %i.hi = or disjoint i32 %i.hh, 1
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ha
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !4
  %i.hm = shl nsw i32 %i.hl, 1
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv
  store i32 %i.hm, ptr %i.hn, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.ha
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4
  %i.hq = shl nsw i32 %i.hp, 1
  %i.hr = or disjoint i32 %i.hq, 1
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !4
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ha
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !49
  %i.hv = fmul double %i.hu, 5.000000e-01
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv
  store double %i.hv, ptr %i.hw, align 8, !tbaa !49
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.ha
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !49
  %i.hz = fmul double %i.hy, 5.000000e-01
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv
  store double %i.hz, ptr %i.ia, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ib = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %i.ic = sext i32 %i.ib to i64
  %.not71.not = icmp slt i64 %indvars.iv, %i.ic
  br i1 %.not71.not, label %.lr.ph, label %.preheader, !llvm.loop !107

._crit_edge.loopexit:                             ; preds = %bb.y
  %.pre240.pre = load i32, ptr %i.bz, align 8, !tbaa !94
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre240 = phi i32 [ %.pre240.pre, %._crit_edge.loopexit ], [ %.pre240242, %.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 0, ptr %i.id, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 16, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.ie, align 4, !tbaa !4
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ig = load i32, ptr %i.cq, align 8, !tbaa !105 ; 2 uses
  store i32 %i.ig, ptr %i.if, align 8, !tbaa !4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 16, !tbaa !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ij = load i32, ptr %i.cs, align 8, !tbaa !106 ; 2 uses
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.ik, align 8, !tbaa !4
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !4
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  br label %bb.aa

bb.y:                                             ; preds = %.lr.ph223, %bb.y
  %i.iq = phi i64 [ 0, %.lr.ph223 ], [ %i.iu, %bb.y ]
  %.063222 = phi i32 [ 0, %.lr.ph223 ], [ %i.it, %bb.y ] ; 2 uses
  %i.ir = shl i32 2, %.063222
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.iq
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !4
  %i.it = add i32 %.063222, 1                     ; 2 uses
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.dk
  br i1 %i.iv, label %bb.y, label %._crit_edge.loopexit, !llvm.loop !108

bb.z:                                             ; preds = %._crit_edge231
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.iw, align 8, !tbaa !109
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 617
  store i8 1, ptr %i.ix, align 1, !tbaa !110
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iy, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.aa:                                            ; preds = %._crit_edge, %._crit_edge231
  %i.iz = phi i32 [ %.pre240, %._crit_edge ], [ %i.jk, %._crit_edge231 ] ; 2 uses
  %i.ja = phi i32 [ %.pre240, %._crit_edge ], [ %i.jl, %._crit_edge231 ] ; 3 uses
  %indvars.iv237 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next238, %._crit_edge231 ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv237
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4  ; 2 uses
  %i.jd = shl i32 2, %i.ja                        ; 3 uses
  %i.je = add nsw i32 %i.jc, 1
  %i.jf = icmp sgt i32 %i.jd, 0
  br i1 %i.jf, label %.lr.ph230, label %._crit_edge231

.lr.ph230:                                        ; preds = %bb.aa
  %i.jg = mul nsw i32 %i.jd, %i.jc
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv237
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4  ; 2 uses
  %i.jj = add nsw i32 %i.ji, 1                    ; 2 uses
  br label %bb.ab

._crit_edge231:                                   ; preds = %._crit_edge227, %bb.aa
  %i.jk = phi i32 [ %i.iz, %bb.aa ], [ %i.jt, %._crit_edge227 ]
  %i.jl = phi i32 [ %i.ja, %bb.aa ], [ %i.jt, %._crit_edge227 ]
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next238, 4
  br i1 %exitcond.not, label %bb.z, label %bb.aa, !llvm.loop !111

bb.ab:                                            ; preds = %.lr.ph230, %._crit_edge227
  %i.jm = phi i32 [ %i.iz, %.lr.ph230 ], [ %i.jt, %._crit_edge227 ] ; 2 uses
  %i.jn = phi i32 [ %i.ja, %.lr.ph230 ], [ %i.jt, %._crit_edge227 ]
  %i.jo = phi i32 [ %i.jd, %.lr.ph230 ], [ %.pre-phi, %._crit_edge227 ]
  %storemerge228 = phi i32 [ %i.jg, %.lr.ph230 ], [ %i.ju, %._crit_edge227 ] ; 3 uses
  %i.jp = mul nsw i32 %i.ji, %i.jo                ; 2 uses
  %i.jq = shl i32 2, %i.jn
  %i.jr = mul nsw i32 %i.jq, %i.jj
  %i.js = icmp slt i32 %i.jp, %i.jr
  br i1 %i.js, label %.lr.ph226, label %.._crit_edge227_crit_edge

.._crit_edge227_crit_edge:                        ; preds = %bb.ab
  %.pre243 = shl i32 2, %i.jm
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107, %.._crit_edge227_crit_edge
  %.pre-phi = phi i32 [ %.pre243, %.._crit_edge227_crit_edge ], [ %i.ll, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ] ; 2 uses
  %i.jt = phi i32 [ %i.jm, %.._crit_edge227_crit_edge ], [ %i.lk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ] ; 4 uses
  %i.ju = add nsw i32 %storemerge228, 1           ; 2 uses
  %i.jv = mul nsw i32 %.pre-phi, %i.je
  %i.jw = icmp slt i32 %i.ju, %i.jv
  br i1 %i.jw, label %bb.ab, label %._crit_edge231, !llvm.loop !112

.lr.ph226:                                        ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107
  %storemerge72224 = phi i32 [ %i.lj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107 ], [ %i.jp, %bb.ab ] ; 3 uses
  %i.jx = load ptr, ptr %i.im, align 8, !tbaa !62 ; 4 uses
  %i.jy = load ptr, ptr %i.in, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.jx, %i.jy
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph226
  store i32 %storemerge72224, ptr %i.jx, align 4, !tbaa !4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store ptr %i.jz, ptr %i.im, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ad:                                            ; preds = %.lr.ph226
  %i.ka = load ptr, ptr %i.w, align 8, !tbaa !63  ; 4 uses
  %i.kb = ptrtoint ptr %i.jx to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc                    ; 6 uses
  %i.ke = icmp eq i64 %i.kd, 9223372036854775804
  br i1 %i.ke, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ah, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.kf = ashr exact i64 %i.kd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.kf, i64 1)
  %i.kg = add nsw i64 %.sroa.speculated.i.i.i, %i.kf ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.kf
  %i.ki = tail call i64 @llvm.umin.i64(i64 %i.kg, i64 2305843009213693951)
  %i.kj = select i1 %i.kh, i64 2305843009213693951, i64 %i.ki ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.kj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #33
          to label %.noexc97 unwind label %.loopexit ; 4 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 %i.kd ; 2 uses
  store i32 %storemerge72224, ptr %i.km, align 4, !tbaa !4
  %i.kn = icmp sgt i64 %i.kd, 0
  br i1 %i.kn, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %.noexc97
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kl, ptr align 4 %i.ka, i64 %i.kd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %.noexc97
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ka, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.kd) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.kl, ptr %i.w, align 8, !tbaa !63
  store ptr %i.ko, ptr %i.im, align 8, !tbaa !62
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kj
  store ptr %i.kp, ptr %i.in, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.ac
  %i.kq = load ptr, ptr %i.io, align 8, !tbaa !62 ; 4 uses
  %i.kr = load ptr, ptr %i.ip, align 8, !tbaa !68
  %.not.i98 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i98, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %storemerge228, ptr %i.kq, align 4, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store ptr %i.ks, ptr %i.io, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.kt = load ptr, ptr %i.x, align 8, !tbaa !63  ; 4 uses
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 6 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775804
  br i1 %i.kx, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99: ; preds = %bb.ah
  %i.ky = ashr exact i64 %i.kw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i100 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i100, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 2305843009213693951)
  %i.lc = select i1 %i.la, i64 2305843009213693951, i64 %i.lb ; 3 uses
  %.not.i.i.i101 = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i101)
  %i.ld = shl nuw nsw i64 %i.lc, 2
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #33
          to label %.noexc106 unwind label %.loopexit ; 4 uses

.noexc106:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.kw ; 2 uses
  store i32 %storemerge228, ptr %i.lf, align 4, !tbaa !4
  %i.lg = icmp sgt i64 %i.kw, 0
  br i1 %i.lg, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102

bb.ai:                                            ; preds = %.noexc106
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.le, ptr align 4 %i.kt, i64 %i.kw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102: ; preds = %bb.ai, %.noexc106
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %.not.i17.i.i103 = icmp eq ptr %i.kt, null
  br i1 %.not.i17.i.i103, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.kw) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i102
  store ptr %i.le, ptr %i.x, align 8, !tbaa !63
  store ptr %i.lh, ptr %i.io, align 8, !tbaa !62
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.li, ptr %i.ip, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit107

_ZNSt6vectorIiSaIiEE9push_backERKi.exit107:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i104, %bb.ag
  %i.lj = add nsw i32 %storemerge72224, 1         ; 2 uses
  %i.lk = load i32, ptr %i.bz, align 8, !tbaa !94 ; 2 uses
  %i.ll = shl i32 2, %i.lk                        ; 2 uses
  %i.lm = mul nsw i32 %i.ll, %i.jj
  %i.ln = icmp slt i32 %i.lj, %i.lm
  br i1 %i.ln, label %.lr.ph226, label %._crit_edge227, !llvm.loop !113

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i99
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.x
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.gz, %bb.x ]
  %i.lo = load ptr, ptr %i.bv, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !68
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.al, %bb.am
  %i.lu = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i109.a = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i109.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit110.a, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !68
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit110.a

_ZNSt6vectorIiSaIiEED2Ev.exit110.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.an
  %i.ma = load ptr, ptr %i.bt, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i111.a = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i111.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit112.a, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit110.a
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !68
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit112.a

_ZNSt6vectorIiSaIiEED2Ev.exit112.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit110.a, %bb.ao
  %i.mg = load ptr, ptr %i.bs, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i113.a = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i113.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit114.a, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit112.a
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !68
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = sub i64 %i.mj, %i.mk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.ml) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit114.a

_ZNSt6vectorIiSaIiEED2Ev.exit114.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit112.a, %bb.ap
  %i.mm = load ptr, ptr %i.br, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i115.a = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i115.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit116.a, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit114.a
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !68
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit116.a

_ZNSt6vectorIiSaIiEED2Ev.exit116.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit114.a, %bb.aq
  %i.ms = load ptr, ptr %i.bq, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i117.a = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i117.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit118.a, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit116.a
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !68
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118.a

_ZNSt6vectorIiSaIiEED2Ev.exit118.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit116.a, %bb.ar
  %i.my = load ptr, ptr %i.bp, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i119.a = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i119.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit120.a, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit118.a
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !68
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit120.a

_ZNSt6vectorIiSaIiEED2Ev.exit120.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit118.a, %bb.as
  %i.ne = load ptr, ptr %i.bo, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i121.a = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i121.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit122.a, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit120.a
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !68
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.ne to i64
  %i.nj = sub i64 %i.nh, %i.ni
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.nj) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122.a

_ZNSt6vectorIiSaIiEED2Ev.exit122.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit120.a, %bb.at
  %i.nk = load ptr, ptr %i.bn, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i123.a = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i123.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit124.a, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122.a
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !68
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %i.nk to i64
  %i.np = sub i64 %i.nn, %i.no
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nk, i64 noundef %i.np) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit124.a

_ZNSt6vectorIiSaIiEED2Ev.exit124.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122.a, %bb.au
  %i.nq = load ptr, ptr %i.bm, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i125.a = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i125.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit126.a, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit124.a
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !68
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.nq to i64
  %i.nv = sub i64 %i.nt, %i.nu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nv) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit126.a

_ZNSt6vectorIiSaIiEED2Ev.exit126.a:               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit124.a, %bb.av
  %i.nw = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 3 uses
  %.not.i.i.i127.a = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i127.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit128.a, label %bb.aw

end_hunk_0
begin_hunk_1_@_ZN4Mesh4initEiid16partition_methodi:bb.a
  %i.lm = ptrtoint ptr %.sroa.12.0 to i64
  %i.ln = ptrtoint ptr %.sroa.0180.0 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.lo) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.lp = add nuw nsw i32 %.089252, 1
  %i.lq = load i32, ptr %i.fz, align 8, !tbaa !94 ; 2 uses
  %.not106.not = icmp slt i32 %.089252, %i.lq
  br i1 %.not106.not, label %bb.an, label %._crit_edge255, !llvm.loop !127

bb.bl:                                            ; preds = %._crit_edge250
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bm:                                            ; preds = %bb.ay
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %.pre331.pre = load ptr, ptr %7, align 8, !tbaa !63
  br label %bb.bp

.loopexit189:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit158

.loopexit.split-lp190:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit158

bb.bn:                                            ; preds = %bb.be
  %i.lt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorIiSaIiEED2Ev.exit158, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lu = ptrtoint ptr %i.ky to i64
  %i.lv = ptrtoint ptr %i.kz to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.lw) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit158

_ZNSt6vectorIiSaIiEED2Ev.exit158:                 ; preds = %.loopexit189, %.loopexit.split-lp190, %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.lt, %bb.bo ], [ %i.lt, %bb.bn ], [ %lpad.loopexit191, %.loopexit189 ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp190 ]
  call void @_ZN10MallocPlusD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit158, %bb.bm
  %.pre331 = phi ptr [ %i.kn, %_ZNSt6vectorIiSaIiEED2Ev.exit158 ], [ %.pre331.pre, %bb.bm ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit158 ], [ %i.ls, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  %i.lx = phi ptr [ %.pre331, %bb.bp ], [ %i.jg, %bb.bl ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bp ], [ %i.lr, %bb.bl ] ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i159, label %_ZNSt6vectorIiSaIiEED2Ev.exit160, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ly = load ptr, ptr %i.gk, align 8, !tbaa !68
  %i.lz = ptrtoint ptr %i.ly to i64
  %i.ma = ptrtoint ptr %i.lx to i64
  %i.mb = sub i64 %i.lz, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.mb) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit160

_ZNSt6vectorIiSaIiEED2Ev.exit160:                 ; preds = %.loopexit188, %.loopexit.split-lp, %bb.br, %bb.bq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.br ], [ %.pn.pn.pn, %bb.bq ], [ %lpad.loopexit, %.loopexit188 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit162

_ZNSt6vectorIiSaIiEED2Ev.exit162:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit160, %bb.as
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit160 ], [ %i.jt, %bb.as ]
  %i.mc = ptrtoint ptr %.sroa.12.0 to i64
  %i.md = ptrtoint ptr %.sroa.0180.0 to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0180.0, i64 noundef %i.me) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.m
  %.pre332 = phi i32 [ %.pre332335, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %.pre332.pre, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 0, ptr %i.d, align 16, !tbaa !4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.mf, align 4, !tbaa !4
  %i.mg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !105 ; 2 uses
  store i32 %i.mi, ptr %i.mg, align 8, !tbaa !4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i32 0, ptr %i.e, align 16, !tbaa !4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !106 ; 2 uses
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !4
  %i.mn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 0, ptr %i.mn, align 8, !tbaa !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 %i.mm, ptr %i.mo, align 4, !tbaa !4
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret void

bb.bu:                                            ; preds = %bb.bs, %._crit_edge263
  %i.mw = phi i32 [ %.pre332, %bb.bs ], [ %i.nh, %._crit_edge263 ] ; 2 uses
  %i.mx = phi i32 [ %.pre332, %bb.bs ], [ %i.ni, %._crit_edge263 ] ; 3 uses
  %indvars.iv318 = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next319, %._crit_edge263 ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv318
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !4  ; 2 uses
  %i.na = shl i32 2, %i.mx                        ; 3 uses
  %i.nb = add nsw i32 %i.mz, 1
  %i.nc = icmp sgt i32 %i.na, 0
  br i1 %i.nc, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.bu
  %i.nd = mul nsw i32 %i.na, %i.mz
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv318
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !4  ; 2 uses
  %i.ng = add nsw i32 %i.nf, 1                    ; 2 uses
  br label %bb.bv

._crit_edge263:                                   ; preds = %._crit_edge259, %bb.bu
  %i.nh = phi i32 [ %i.mw, %bb.bu ], [ %i.nq, %._crit_edge259 ]
  %i.ni = phi i32 [ %i.mx, %bb.bu ], [ %i.nq, %._crit_edge259 ]
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next319, 4
  br i1 %exitcond321.not, label %bb.bt, label %bb.bu, !llvm.loop !128

bb.bv:                                            ; preds = %.lr.ph262, %._crit_edge259
  %i.nj = phi i32 [ %i.mw, %.lr.ph262 ], [ %i.nq, %._crit_edge259 ] ; 2 uses
  %i.nk = phi i32 [ %i.mx, %.lr.ph262 ], [ %i.nq, %._crit_edge259 ]
  %i.nl = phi i32 [ %i.na, %.lr.ph262 ], [ %.pre-phi342, %._crit_edge259 ]
  %storemerge118260 = phi i32 [ %i.nd, %.lr.ph262 ], [ %i.nr, %._crit_edge259 ] ; 3 uses
  %i.nm = mul nsw i32 %i.nf, %i.nl                ; 2 uses
  %i.nn = shl i32 2, %i.nk
  %i.no = mul nsw i32 %i.nn, %i.ng
  %i.np = icmp slt i32 %i.nm, %i.no
  br i1 %i.np, label %.lr.ph258, label %.._crit_edge259_crit_edge

.._crit_edge259_crit_edge:                        ; preds = %bb.bv
  %.pre341 = shl i32 2, %i.nj
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172, %.._crit_edge259_crit_edge
  %.pre-phi342 = phi i32 [ %.pre341, %.._crit_edge259_crit_edge ], [ %i.pi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172 ] ; 2 uses
  %i.nq = phi i32 [ %i.nj, %.._crit_edge259_crit_edge ], [ %i.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172 ] ; 4 uses
  %i.nr = add nsw i32 %storemerge118260, 1        ; 2 uses
  %i.ns = mul nsw i32 %.pre-phi342, %i.nb
  %i.nt = icmp slt i32 %i.nr, %i.ns
  br i1 %i.nt, label %bb.bv, label %._crit_edge263, !llvm.loop !129

.lr.ph258:                                        ; preds = %bb.bv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172
  %storemerge119256 = phi i32 [ %i.pg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172 ], [ %i.nm, %bb.bv ] ; 3 uses
  %i.nu = load ptr, ptr %i.mr, align 8, !tbaa !62 ; 4 uses
  %i.nv = load ptr, ptr %i.ms, align 8, !tbaa !68
  %.not.i163 = icmp eq ptr %i.nu, %i.nv
  br i1 %.not.i163, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph258
  store i32 %storemerge119256, ptr %i.nu, align 4, !tbaa !4
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  store ptr %i.nw, ptr %i.mr, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bx:                                            ; preds = %.lr.ph258
  %i.nx = load ptr, ptr %i.mq, align 8, !tbaa !63 ; 4 uses
  %i.ny = ptrtoint ptr %i.nu to i64
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = sub i64 %i.ny, %i.nz                    ; 6 uses
  %i.ob = icmp eq i64 %i.oa, 9223372036854775804
  br i1 %i.ob, label %bb.by, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.by:                                            ; preds = %bb.bx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bx
  %i.oc = ashr exact i64 %i.oa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.od = add nsw i64 %.sroa.speculated.i.i.i, %i.oc ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.oc
  %i.of = call i64 @llvm.umin.i64(i64 %i.od, i64 2305843009213693951)
  %i.og = select i1 %i.oe, i64 2305843009213693951, i64 %i.of ; 3 uses
  %.not.i.i.i164 = icmp ne i64 %i.og, 0
  call void @llvm.assume(i1 %.not.i.i.i164)
  %i.oh = shl nuw nsw i64 %i.og, 2
  %i.oi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #33 ; 4 uses
  %i.oj = getelementptr inbounds i8, ptr %i.oi, i64 %i.oa ; 2 uses
  store i32 %storemerge119256, ptr %i.oj, align 4, !tbaa !4
  %i.ok = icmp sgt i64 %i.oa, 0
  br i1 %i.ok, label %bb.bz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.bz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oi, ptr align 4 %i.nx, i64 %i.oa, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.bz, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oa) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ca, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.oi, ptr %i.mq, align 8, !tbaa !63
  store ptr %i.ol, ptr %i.mr, align 8, !tbaa !62
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.og
  store ptr %i.om, ptr %i.ms, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.on = load ptr, ptr %i.mu, align 8, !tbaa !62 ; 4 uses
  %i.oo = load ptr, ptr %i.mv, align 8, !tbaa !68
  %.not.i165 = icmp eq ptr %i.on, %i.oo
  br i1 %.not.i165, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %storemerge118260, ptr %i.on, align 4, !tbaa !4
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  store ptr %i.op, ptr %i.mu, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.oq = load ptr, ptr %i.mt, align 8, !tbaa !63 ; 4 uses
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os                    ; 6 uses
  %i.ou = icmp eq i64 %i.ot, 9223372036854775804
  br i1 %i.ou, label %bb.cd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i166

bb.cd:                                            ; preds = %bb.cc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i166: ; preds = %bb.cc
  %i.ov = ashr exact i64 %i.ot, 2                 ; 3 uses
  %.sroa.speculated.i.i.i167 = call i64 @llvm.umax.i64(i64 %i.ov, i64 1)
  %i.ow = add nsw i64 %.sroa.speculated.i.i.i167, %i.ov ; 2 uses
  %i.ox = icmp ult i64 %i.ow, %i.ov
  %i.oy = call i64 @llvm.umin.i64(i64 %i.ow, i64 2305843009213693951)
  %i.oz = select i1 %i.ox, i64 2305843009213693951, i64 %i.oy ; 3 uses
  %.not.i.i.i168 = icmp ne i64 %i.oz, 0
  call void @llvm.assume(i1 %.not.i.i.i168)
  %i.pa = shl nuw nsw i64 %i.oz, 2
  %i.pb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #33 ; 4 uses
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %i.ot ; 2 uses
  store i32 %storemerge118260, ptr %i.pc, align 4, !tbaa !4
  %i.pd = icmp sgt i64 %i.ot, 0
  br i1 %i.pd, label %bb.ce, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i169

bb.ce:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i166
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pb, ptr align 4 %i.oq, i64 %i.ot, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i169

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i169: ; preds = %bb.ce, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i166
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %.not.i17.i.i170 = icmp eq ptr %i.oq, null
  br i1 %.not.i17.i.i170, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i171, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef %i.ot) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i171

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i171: ; preds = %bb.cf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i169
  store ptr %i.pb, ptr %i.mt, align 8, !tbaa !63
  store ptr %i.pe, ptr %i.mu, align 8, !tbaa !62
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.oz
  store ptr %i.pf, ptr %i.mv, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172

_ZNSt6vectorIiSaIiEE9push_backERKi.exit172:       ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i171
  %i.pg = add nsw i32 %storemerge119256, 1        ; 2 uses
  %i.ph = load i32, ptr %i.mp, align 8, !tbaa !94 ; 2 uses
  %i.pi = shl i32 2, %i.ph                        ; 2 uses
  %i.pj = mul nsw i32 %i.pi, %i.ng
  %i.pk = icmp slt i32 %i.pg, %i.pj
  br i1 %i.pk, label %.lr.ph258, label %._crit_edge259, !llvm.loop !130
}

declare void @_ZN4Mesh17calc_distributionEi(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh13calc_celltypeEm(ptr noundef nonnull align 8 dereferenceable(2288) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = tail call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %i.b)
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef ptr @_ZN10MallocPlus13memory_deleteEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull %.pr)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !88
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 noundef %1, i64 noundef 4, ptr noundef nonnull @.str.49, i32 noundef 0)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.b
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  br label %bb.f

._crit_edge:                                      ; preds = %bb.n, %bb.e
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.n
  %i.y = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.n ]
  %.027 = phi i32 [ 0, %.lr.ph ], [ %i.as, %bb.n ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.y ; 5 uses
  store i32 1, ptr %i.z, align 4, !tbaa !4
  %i.aa = sext i32 %.027 to i64                   ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.aa ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %.not23 = icmp slt i32 %i.ac, %i.ah
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.z, align 4, !tbaa !4
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !4
  %.pre29 = load i32, ptr %i.ad, align 4, !tbaa !4
  %.pre33 = sext i32 %.pre29 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre33, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ai = phi i32 [ %.pre, %bb.g ], [ %i.ac, %bb.f ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %.not24 = icmp sgt i32 %i.ai, %i.ak
  br i1 %.not24, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -2, ptr %i.z, align 4, !tbaa !4
  %.pre30 = load i32, ptr %i.ad, align 4, !tbaa !4
  %.pre34 = sext i32 %.pre30 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi35 = phi i64 [ %.pre34, %bb.i ], [ %.pre-phi, %bb.h ] ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.aa ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.pre-phi35
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %.not25 = icmp slt i32 %i.am, %i.ao
  br i1 %.not25, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 -3, ptr %i.z, align 4, !tbaa !4
  %.pre31 = load i32, ptr %i.al, align 4, !tbaa !4
  %.pre32 = load i32, ptr %i.ad, align 4, !tbaa !4
  %.pre36 = sext i32 %.pre32 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi37 = phi i64 [ %.pre36, %bb.k ], [ %.pre-phi35, %bb.j ]
  %i.ap = phi i32 [ %.pre31, %bb.k ], [ %i.am, %bb.j ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.pre-phi37
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %.not26 = icmp sgt i32 %i.ap, %i.ar
  br i1 %.not26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 -4, ptr %i.z, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.as = add i32 %.027, 1                        ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %1, %i.at
  br i1 %i.au, label %bb.f, label %._crit_edge, !llvm.loop !131
}

declare void @_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method(ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh20calc_neighbors_localEv(ptr noundef nonnull align 8 dereferenceable(2288) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.TBounds, align 8            ; 7 uses
  %2 = alloca %struct.timeval, align 8            ; 6 uses
  %3 = alloca %struct.timeval, align 8            ; 8 uses
  %4 = alloca %struct.timeval, align 8            ; 8 uses
  %5 = alloca %struct.TBounds, align 8            ; 14 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @cpu_timer_start(ptr noundef nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.c = load i8, ptr %i.b, align 8, !tbaa !109, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.cb

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 8 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = call noundef i64 @_ZN10MallocPlus15get_memory_sizeEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 21 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.o, null
end_hunk_1
begin_hunk_2_@_ZN4Mesh14calc_face_listEv:bb.a
bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit252
  %i.ez = sub nuw nsw i64 %.pre-phi497, %i.ex
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr %i.et, i64 noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.pre474 = load i32, ptr %i.am, align 8, !tbaa !94
  %.pre498 = add nsw i32 %.pre474, 1
  %.pre500 = sext i32 %.pre498 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit252
  %i.fa = icmp ugt i64 %i.ex, %.pre-phi497
  br i1 %i.fa, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255

bb.u:                                             ; preds = %bb.t
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.pre-phi497 ; 2 uses
  %.not.i.i253 = icmp eq ptr %i.et, %i.fb
  br i1 %.not.i.i253, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i254

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i254:     ; preds = %bb.u
  store ptr %i.fb, ptr %i.dw, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255:         ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i254
  %.pre-phi501 = phi i64 [ %.pre500, %bb.s ], [ %.pre-phi497, %bb.t ], [ %.pre-phi497, %bb.u ], [ %.pre-phi497, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i254 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i32 9999999, ptr %i.g, align 4, !tbaa !4
  %i.fc = load ptr, ptr %i.eb, align 8, !tbaa !62 ; 3 uses
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !63 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 2                 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %.pre-phi501
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255
  %i.fj = sub nuw nsw i64 %.pre-phi501, %i.fh
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr %i.fc, i64 noundef %i.fj, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %.pre475 = load i32, ptr %i.am, align 8, !tbaa !94
  %.pre502 = add nsw i32 %.pre475, 1
  %.pre504 = sext i32 %.pre502 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit255
  %i.fk = icmp ugt i64 %i.fh, %.pre-phi501
  br i1 %i.fk, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258

bb.x:                                             ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.pre-phi501 ; 2 uses
  %.not.i.i256 = icmp eq ptr %i.fc, %i.fl
  br i1 %.not.i.i256, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i257

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i257:     ; preds = %bb.x
  store ptr %i.fl, ptr %i.eb, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258:         ; preds = %bb.v, %bb.w, %bb.x, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i257
  %.pre-phi505 = phi i64 [ %.pre504, %bb.v ], [ %.pre-phi501, %bb.w ], [ %.pre-phi501, %bb.x ], [ %.pre-phi501, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i257 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 -9999999, ptr %i.h, align 4, !tbaa !4
  %i.fm = load ptr, ptr %i.ef, align 8, !tbaa !62 ; 3 uses
  %i.fn = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 2                 ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %.pre-phi505
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258
  %i.ft = sub nuw nsw i64 %.pre-phi505, %i.fr
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr %i.fm, i64 noundef %i.ft, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit258
  %i.fu = icmp ugt i64 %i.fr, %.pre-phi505
  br i1 %i.fu, label %bb.aa, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261

bb.aa:                                            ; preds = %bb.z
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.pre-phi505 ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.fm, %i.fv
  br i1 %.not.i.i259, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i260

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i260:     ; preds = %bb.aa
  store ptr %i.fv, ptr %i.ef, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261:         ; preds = %bb.y, %bb.z, %bb.aa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !63 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !62
  %.not.i.i262 = icmp eq ptr %i.fz, %i.fx
  br i1 %.not.i.i262, label %_ZNSt6vectorIiSaIiEE5clearEv.exit264, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i263

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i263:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit264

_ZNSt6vectorIiSaIiEE5clearEv.exit264:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit261, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i263
  %i.ga = load i32, ptr %i.am, align 8, !tbaa !94
  %i.gb = add nsw i32 %i.ga, 1                    ; 2 uses
  %.not638 = icmp eq i32 %i.gb, 0
  br i1 %.not638, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit267, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit264
  %i.gc = sext i32 %i.gb to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i64 noundef %i.gc)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit267

_ZNSt6vectorIiSaIiEE6resizeEm.exit267:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit264, %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !63 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %.not.i.i268 = icmp eq ptr %i.gg, %i.ge
  br i1 %.not.i.i268, label %_ZNSt6vectorIiSaIiEE5clearEv.exit270, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i269

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i269:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit267
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit270

_ZNSt6vectorIiSaIiEE5clearEv.exit270:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit267, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i269
  %i.gh = load i32, ptr %i.am, align 8, !tbaa !94
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %.not639 = icmp eq i32 %i.gi, 0
  br i1 %.not639, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit273, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit270
  %i.gj = sext i32 %i.gi to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 noundef %i.gj)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit273

_ZNSt6vectorIiSaIiEE6resizeEm.exit273:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit270, %bb.ac
  %i.gk = load i64, ptr %i.cq, align 8, !tbaa !47
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph421.a, label %._crit_edge422

.lr.ph421.a:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit273
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1376
  br label %bb.bv

bb.ad:                                            ; preds = %.lr.ph, %bb.bu
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bu ] ; 7 uses
  %.0158418 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.bu ] ; 3 uses
  %i.gv = load ptr, ptr %i.cu, align 8, !tbaa !77
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !4  ; 3 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = icmp eq i64 %indvars.iv, %i.gy
  br i1 %i.gz, label %bb.bu, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ha = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.hb = sext i32 %i.gx to i64                   ; 8 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4  ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4  ; 2 uses
  %i.hg = icmp slt i32 %i.hd, %i.hf               ; 2 uses
  %i.hh = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.hi = load ptr, ptr %i.cw, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.hh, %i.hi
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hd, i32 %i.hf)
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store ptr %i.hk, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.hl = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.hm = ptrtoint ptr %i.hh to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #33 ; 4 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  %.val = load i32, ptr %i.he, align 4
  %.val637 = load i32, ptr %i.hc, align 4
  %i.hy = select i1 %i.hg, i32 %.val, i32 %.val637
  store i32 %i.hy, ptr %i.hx, align 4, !tbaa !4
  %i.hz = icmp sgt i64 %i.ho, 0
  br i1 %i.hz, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hw, ptr align 4 %i.hl, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %.not.i17.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.ho) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hw, ptr %i.q, align 8, !tbaa !63
  store ptr %i.ia, ptr %i.s, align 8, !tbaa !62
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hu
  store ptr %i.ib, ptr %i.cw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ic = load ptr, ptr %i.cx, align 8, !tbaa !64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.hb
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.if = zext i1 %i.hg to i32                    ; 5 uses
  %i.ig = shl i32 %i.ie, %i.if                    ; 2 uses
  %i.ih = load ptr, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  %i.ii = load ptr, ptr %i.cy, align 8, !tbaa !68
  %.not.i.i274 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i274, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store ptr %i.ij, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ik = load ptr, ptr %i.i, align 8, !tbaa !63  ; 4 uses
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775804
  br i1 %i.io, label %bb.am, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ip = ashr exact i64 %i.in, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 2305843009213693951)
  %i.it = select i1 %i.ir, i64 2305843009213693951, i64 %i.is ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #33 ; 4 uses
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.in ; 2 uses
  store i32 %i.ig, ptr %i.iw, align 4, !tbaa !4
  %i.ix = icmp sgt i64 %i.in, 0
  br i1 %i.ix, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.an:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iv, ptr align 4 %i.ik, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.an, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ik, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.in) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.iv, ptr %i.i, align 8, !tbaa !63
  store ptr %i.iy, ptr %i.k, align 8, !tbaa !62
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.iz, ptr %i.cy, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.ja = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.hb
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = icmp slt i32 %i.jc, %i.je
  %.pre466.a = load ptr, ptr %i.cz, align 8, !tbaa !65 ; 3 uses
  br i1 %i.jf, label %bb.ap, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre467.a = load ptr, ptr %i.o, align 8, !tbaa !62
  %.pre469.a = load ptr, ptr %i.da, align 8, !tbaa !68
  br label %bb.aw

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.pre466.a, i64 %indvars.iv
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !4
  %i.ji = and i32 %i.jh, -2147483647
  %.not391 = icmp eq i32 %i.ji, 1
  %.pre468.a = load ptr, ptr %i.o, align 8, !tbaa !62 ; 5 uses
  %.pre470.a = load ptr, ptr %i.da, align 8, !tbaa !68 ; 2 uses
  br i1 %.not391, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.jj = getelementptr inbounds [4 x i8], ptr %.pre466.a, i64 %i.hb
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jl = shl i32 %i.jk, %i.if
  %i.jm = add nsw i32 %i.jl, 1                    ; 2 uses
  %.not.i.i275 = icmp eq ptr %.pre468.a, %.pre470.a
  br i1 %.not.i.i275, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.jm, ptr %.pre468.a, align 4, !tbaa !4
  %i.jn = getelementptr inbounds nuw i8, ptr %.pre468.a, i64 4
  store ptr %i.jn, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282

bb.as:                                            ; preds = %bb.aq
  %i.jo = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  %i.jp = ptrtoint ptr %.pre468.a to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 6 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775804
  br i1 %i.js, label %bb.at, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i276

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i276: ; preds = %bb.as
  %i.jt = ashr exact i64 %i.jr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i.i.i277, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 2305843009213693951)
  %i.jx = select i1 %i.jv, i64 2305843009213693951, i64 %i.jw ; 3 uses
  %.not.i.i.i.i278 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i278)
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %i.jz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #33 ; 4 uses
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.jr ; 2 uses
  store i32 %i.jm, ptr %i.ka, align 4, !tbaa !4
  %i.kb = icmp sgt i64 %i.jr, 0
  br i1 %i.kb, label %bb.au, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i279

bb.au:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jz, ptr align 4 %i.jo, i64 %i.jr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i279

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i279: ; preds = %bb.au, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i276
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %.not.i17.i.i.i280 = icmp eq ptr %i.jo, null
  br i1 %.not.i17.i.i.i280, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i281, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i279
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.jr) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i281

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i281: ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i279
  store ptr %i.jz, ptr %i.m, align 8, !tbaa !63
  store ptr %i.kc, ptr %i.o, align 8, !tbaa !62
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.kd, ptr %i.da, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge, %bb.ap
  %i.ke = phi ptr [ %.pre469.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre470.a, %bb.ap ] ; 2 uses
  %i.kf = phi ptr [ %.pre467.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre468.a, %bb.ap ] ; 3 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %.pre466.a, i64 %i.hb
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.ki = shl i32 %i.kh, %i.if                    ; 2 uses
  %.not.i.i283 = icmp eq ptr %i.kf, %i.ke
  br i1 %.not.i.i283, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store ptr %i.kj, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282

bb.ay:                                            ; preds = %bb.aw
  %i.kk = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  %i.kl = ptrtoint ptr %i.ke to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km                    ; 6 uses
  %i.ko = icmp eq i64 %i.kn, 9223372036854775804
  br i1 %i.ko, label %bb.az, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i284

bb.az:                                            ; preds = %bb.ay
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i284: ; preds = %bb.ay
  %i.kp = ashr exact i64 %i.kn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i285 = call i64 @llvm.umax.i64(i64 %i.kp, i64 1)
  %i.kq = add nsw i64 %.sroa.speculated.i.i.i.i285, %i.kp ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.kp
  %i.ks = call i64 @llvm.umin.i64(i64 %i.kq, i64 2305843009213693951)
  %i.kt = select i1 %i.kr, i64 2305843009213693951, i64 %i.ks ; 3 uses
  %.not.i.i.i.i286 = icmp ne i64 %i.kt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i286)
  %i.ku = shl nuw nsw i64 %i.kt, 2
  %i.kv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ku) #33 ; 4 uses
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %i.kn ; 2 uses
  store i32 %i.ki, ptr %i.kw, align 4, !tbaa !4
  %i.kx = icmp sgt i64 %i.kn, 0
  br i1 %i.kx, label %bb.ba, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i287

bb.ba:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i284
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kv, ptr align 4 %i.kk, i64 %i.kn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i287

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i287: ; preds = %bb.ba, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i284
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %.not.i17.i.i.i288 = icmp eq ptr %i.kk, null
  br i1 %.not.i17.i.i.i288, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i289, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i287
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kn) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i289

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i289: ; preds = %bb.bb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i287
  store ptr %i.kv, ptr %i.m, align 8, !tbaa !63
  store ptr %i.ky, ptr %i.o, align 8, !tbaa !62
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kt
  store ptr %i.kz, ptr %i.da, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282

_ZNSt6vectorIiSaIiEE9push_backEOi.exit282:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i289, %bb.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i281, %bb.ar
  %i.la = add nsw i32 %.0158418, 1                ; 3 uses
  %i.lb = load ptr, ptr %i.cv, align 8, !tbaa !66 ; 3 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.hb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !4  ; 3 uses
  %i.lg = icmp sgt i32 %i.ld, %i.lf
  br i1 %i.lg, label %bb.bc, label %bb.bu

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282
  %i.lh = load ptr, ptr %i.cz, align 8, !tbaa !65
  %i.li = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.hb
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !4
  %i.lk = and i32 %i.lj, 1
  %.not185.not = icmp eq i32 %i.lk, 0
  br i1 %.not185.not, label %bb.bd, label %bb.bu

bb.bd:                                            ; preds = %bb.bc
  %i.ll = load ptr, ptr %i.db, align 8, !tbaa !79
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.hb
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !4  ; 2 uses
  %.not186 = icmp eq i32 %i.ln, %i.gx
  br i1 %.not186, label %bb.bu, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lo = sext i32 %i.ln to i64                   ; 3 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lo ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4  ; 2 uses
  %i.lr = icmp sgt i32 %i.lf, %i.lq
  %. = select i1 %i.lr, ptr %i.le, ptr %i.lp
  %i.ls = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.lt = load ptr, ptr %i.cw, align 8, !tbaa !68
  %.not.i291 = icmp eq ptr %i.ls, %i.lt
  br i1 %.not.i291, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lu = call i32 @llvm.smax.i32(i32 %i.lf, i32 %i.lq)
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store ptr %i.lv, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298

bb.bg:                                            ; preds = %bb.be
  %i.lw = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.lx = ptrtoint ptr %i.ls to i64
  %i.ly = ptrtoint ptr %i.lw to i64
  %i.lz = sub i64 %i.lx, %i.ly                    ; 6 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775804
  br i1 %i.ma, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292: ; preds = %bb.bg
  %i.mb = ashr exact i64 %i.lz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i293 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i.i293, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 2305843009213693951)
  %i.mf = select i1 %i.md, i64 2305843009213693951, i64 %i.me ; 3 uses
  %.not.i.i.i294 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i.i294)
  %i.mg = shl nuw nsw i64 %i.mf, 2
  %i.mh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #33 ; 4 uses
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 %i.lz ; 2 uses
  %i.mj = load i32, ptr %., align 4, !tbaa !4
  store i32 %i.mj, ptr %i.mi, align 4, !tbaa !4
  %i.mk = icmp sgt i64 %i.lz, 0
  br i1 %i.mk, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295

bb.bi:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mh, ptr align 4 %i.lw, i64 %i.lz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295: ; preds = %bb.bi, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %.not.i17.i.i296 = icmp eq ptr %i.lw, null
  br i1 %.not.i17.i.i296, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.lz) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295
  store ptr %i.mh, ptr %i.q, align 8, !tbaa !63
  store ptr %i.ml, ptr %i.s, align 8, !tbaa !62
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.mf
  store ptr %i.mm, ptr %i.cw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298

_ZNSt6vectorIiSaIiEE9push_backERKi.exit298:       ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297
  %i.mn = load ptr, ptr %i.cx, align 8, !tbaa !64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.lo
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.mq = shl i32 %i.mp, %i.if                    ; 2 uses
  %i.mr = load ptr, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  %i.ms = load ptr, ptr %i.cy, align 8, !tbaa !68
  %.not.i.i299 = icmp eq ptr %i.mr, %i.ms
  br i1 %.not.i.i299, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store ptr %i.mt, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298
  %i.mu = load ptr, ptr %i.i, align 8, !tbaa !63  ; 4 uses
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw                    ; 6 uses
  %i.my = icmp eq i64 %i.mx, 9223372036854775804
  br i1 %i.my, label %bb.bm, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300

bb.bm:                                            ; preds = %bb.bl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300: ; preds = %bb.bl
  %i.mz = ashr exact i64 %i.mx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i301 = call i64 @llvm.umax.i64(i64 %i.mz, i64 1)
  %i.na = add nsw i64 %.sroa.speculated.i.i.i.i301, %i.mz ; 2 uses
  %i.nb = icmp ult i64 %i.na, %i.mz
  %i.nc = call i64 @llvm.umin.i64(i64 %i.na, i64 2305843009213693951)
  %i.nd = select i1 %i.nb, i64 2305843009213693951, i64 %i.nc ; 3 uses
  %.not.i.i.i.i302 = icmp ne i64 %i.nd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i302)
  %i.ne = shl nuw nsw i64 %i.nd, 2
  %i.nf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ne) #33 ; 4 uses
  %i.ng = getelementptr inbounds i8, ptr %i.nf, i64 %i.mx ; 2 uses
  store i32 %i.mq, ptr %i.ng, align 4, !tbaa !4
  %i.nh = icmp sgt i64 %i.mx, 0
  br i1 %i.nh, label %bb.bn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303

bb.bn:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nf, ptr align 4 %i.mu, i64 %i.mx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303: ; preds = %bb.bn, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %.not.i17.i.i.i304 = icmp eq ptr %i.mu, null
  br i1 %.not.i17.i.i.i304, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %i.mx) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305: ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303
  store ptr %i.nf, ptr %i.i, align 8, !tbaa !63
  store ptr %i.ni, ptr %i.k, align 8, !tbaa !62
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nd
  store ptr %i.nj, ptr %i.cy, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306

_ZNSt6vectorIiSaIiEE9push_backEOi.exit306:        ; preds = %bb.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305
  %i.nk = load ptr, ptr %i.cz, align 8, !tbaa !65
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.lo
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !4
  %i.nn = shl i32 %i.nm, %i.if                    ; 2 uses
  %i.no = load ptr, ptr %i.o, align 8, !tbaa !62  ; 4 uses
  %i.np = load ptr, ptr %i.da, align 8, !tbaa !68
  %.not.i.i307 = icmp eq ptr %i.no, %i.np
  br i1 %.not.i.i307, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store ptr %i.nq, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
  %i.nr = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  %i.ns = ptrtoint ptr %i.no to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 6 uses
  %i.nv = icmp eq i64 %i.nu, 9223372036854775804
  br i1 %i.nv, label %bb.br, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308: ; preds = %bb.bq
  %i.nw = ashr exact i64 %i.nu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i309 = call i64 @llvm.umax.i64(i64 %i.nw, i64 1)
  %i.nx = add nsw i64 %.sroa.speculated.i.i.i.i309, %i.nw ; 2 uses
  %i.ny = icmp ult i64 %i.nx, %i.nw
  %i.nz = call i64 @llvm.umin.i64(i64 %i.nx, i64 2305843009213693951)
  %i.oa = select i1 %i.ny, i64 2305843009213693951, i64 %i.nz ; 3 uses
  %.not.i.i.i.i310 = icmp ne i64 %i.oa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i310)
  %i.ob = shl nuw nsw i64 %i.oa, 2
  %i.oc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ob) #33 ; 4 uses
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 %i.nu ; 2 uses
  store i32 %i.nn, ptr %i.od, align 4, !tbaa !4
  %i.oe = icmp sgt i64 %i.nu, 0
  br i1 %i.oe, label %bb.bs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311

bb.bs:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oc, ptr align 4 %i.nr, i64 %i.nu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311: ; preds = %bb.bs, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %.not.i17.i.i.i312 = icmp eq ptr %i.nr, null
  br i1 %.not.i17.i.i.i312, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nu) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313: ; preds = %bb.bt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311
  store ptr %i.oc, ptr %i.m, align 8, !tbaa !63
  store ptr %i.of, ptr %i.o, align 8, !tbaa !62
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.oa
  store ptr %i.og, ptr %i.da, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314

_ZNSt6vectorIiSaIiEE9push_backEOi.exit314:        ; preds = %bb.bp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313
  %i.oh = add nsw i32 %.0158418, 2
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282, %bb.bc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314, %bb.bd, %bb.ad
  %.3 = phi i32 [ %.0158418, %bb.ad ], [ %i.la, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282 ], [ %i.la, %bb.bc ], [ %i.oh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314 ], [ %i.la, %bb.bd ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.oi = load i64, ptr %i.cq, align 8, !tbaa !47
  %sext = shl i64 %i.oi, 32
  %i.oj = ashr exact i64 %sext, 32
  %i.ok = icmp slt i64 %indvars.iv.next, %i.oj
  br i1 %i.ok, label %bb.ad, label %._crit_edge, !llvm.loop !206

._crit_edge422:                                   ; preds = %bb.dm, %_ZNSt6vectorIiSaIiEE6resizeEm.exit273
  %.4.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit273 ], [ %.7, %bb.dm ]
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 4 uses
  store i32 %.4.lcssa, ptr %i.ol, align 4, !tbaa !207
  %i.om = load i32, ptr %i.dc, align 8, !tbaa !205
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %.lr.ph426.a, label %.preheader394

.lr.ph426.a:                                      ; preds = %._crit_edge422
  %i.oo = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.op = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.oq = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.or = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.os = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ot = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.ou = load ptr, ptr %i.ai, align 8, !tbaa !63
  br label %bb.dn

bb.bv:                                            ; preds = %.lr.ph421.a, %bb.dm
  %indvars.iv441.a = phi i64 [ 0, %.lr.ph421.a ], [ %indvars.iv.next442.a, %bb.dm ] ; 7 uses
  %.4420 = phi i32 [ 0, %.lr.ph421.a ], [ %.7, %bb.dm ] ; 3 uses
  %i.ov = load ptr, ptr %i.gn, align 8, !tbaa !79
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %indvars.iv441.a
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4  ; 3 uses
  %i.oy = zext i32 %i.ox to i64
  %i.oz = icmp eq i64 %indvars.iv441.a, %i.oy
  br i1 %i.oz, label %bb.dm, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pa = load ptr, ptr %i.go, align 8, !tbaa !66 ; 2 uses
  %i.pb = sext i32 %i.ox to i64                   ; 8 uses
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.pa, i64 %i.pb ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4  ; 2 uses
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv441.a ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !4  ; 2 uses
  %i.pg = icmp slt i32 %i.pd, %i.pf               ; 2 uses
  %i.ph = load ptr, ptr %i.dn, align 8, !tbaa !62 ; 4 uses
  %i.pi = load ptr, ptr %i.gp, align 8, !tbaa !68
  %.not.i315 = icmp eq ptr %i.ph, %i.pi
  br i1 %.not.i315, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pj = call i32 @llvm.smax.i32(i32 %i.pd, i32 %i.pf)
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store ptr %i.pk, ptr %i.dn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322

bb.by:                                            ; preds = %bb.bw
  %i.pl = load ptr, ptr %i.dl, align 8, !tbaa !63 ; 4 uses
  %i.pm = ptrtoint ptr %i.ph to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn                    ; 6 uses
  %i.pp = icmp eq i64 %i.po, 9223372036854775804
  br i1 %i.pp, label %bb.bz, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316: ; preds = %bb.by
  %i.pq = ashr exact i64 %i.po, 2                 ; 3 uses
  %.sroa.speculated.i.i.i317 = call i64 @llvm.umax.i64(i64 %i.pq, i64 1)
  %i.pr = add nsw i64 %.sroa.speculated.i.i.i317, %i.pq ; 2 uses
  %i.ps = icmp ult i64 %i.pr, %i.pq
  %i.pt = call i64 @llvm.umin.i64(i64 %i.pr, i64 2305843009213693951)
  %i.pu = select i1 %i.ps, i64 2305843009213693951, i64 %i.pt ; 3 uses
  %.not.i.i.i318 = icmp ne i64 %i.pu, 0
  call void @llvm.assume(i1 %.not.i.i.i318)
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #33 ; 4 uses
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 %i.po ; 2 uses
  %.val640 = load i32, ptr %i.pe, align 4
  %.val641 = load i32, ptr %i.pc, align 4
  %i.py = select i1 %i.pg, i32 %.val640, i32 %.val641
  store i32 %i.py, ptr %i.px, align 4, !tbaa !4
  %i.pz = icmp sgt i64 %i.po, 0
  br i1 %i.pz, label %bb.ca, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319

bb.ca:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pw, ptr align 4 %i.pl, i64 %i.po, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319: ; preds = %bb.ca, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %.not.i17.i.i320 = icmp eq ptr %i.pl, null
  br i1 %.not.i17.i.i320, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.po) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321: ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319
  store ptr %i.pw, ptr %i.dl, align 8, !tbaa !63
  store ptr %i.qa, ptr %i.dn, align 8, !tbaa !62
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pu
  store ptr %i.qb, ptr %i.gp, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322

_ZNSt6vectorIiSaIiEE9push_backERKi.exit322:       ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321
  %i.qc = load ptr, ptr %i.gq, align 8, !tbaa !65
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.pb
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !4
  %i.qf = zext i1 %i.pg to i32                    ; 5 uses
  %i.qg = shl i32 %i.qe, %i.qf                    ; 2 uses
  %i.qh = load ptr, ptr %i.dj, align 8, !tbaa !62 ; 4 uses
  %i.qi = load ptr, ptr %i.gr, align 8, !tbaa !68
  %.not.i.i323 = icmp eq ptr %i.qh, %i.qi
  br i1 %.not.i.i323, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322
  store i32 %i.qg, ptr %i.qh, align 4, !tbaa !4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  store ptr %i.qj, ptr %i.dj, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330.a

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322
  %i.qk = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 4 uses
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm                    ; 6 uses
  %i.qo = icmp eq i64 %i.qn, 9223372036854775804
  br i1 %i.qo, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324: ; preds = %bb.cd
  %i.qp = ashr exact i64 %i.qn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i325 = call i64 @llvm.umax.i64(i64 %i.qp, i64 1)
  %i.qq = add nsw i64 %.sroa.speculated.i.i.i.i325, %i.qp ; 2 uses
  %i.qr = icmp ult i64 %i.qq, %i.qp
  %i.qs = call i64 @llvm.umin.i64(i64 %i.qq, i64 2305843009213693951)
  %i.qt = select i1 %i.qr, i64 2305843009213693951, i64 %i.qs ; 3 uses
  %.not.i.i.i.i326 = icmp ne i64 %i.qt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i326)
  %i.qu = shl nuw nsw i64 %i.qt, 2
  %i.qv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qu) #33 ; 4 uses
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 %i.qn ; 2 uses
  store i32 %i.qg, ptr %i.qw, align 4, !tbaa !4
  %i.qx = icmp sgt i64 %i.qn, 0
  br i1 %i.qx, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327.a

bb.cf:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qv, ptr align 4 %i.qk, i64 %i.qn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327.a

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327.a: ; preds = %bb.cf, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %.not.i17.i.i.i328.a = icmp eq ptr %i.qk, null
  br i1 %.not.i17.i.i.i328.a, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329.a, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327.a
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qn) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329.a

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329.a: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327.a
  store ptr %i.qv, ptr %i.dh, align 8, !tbaa !63
  store ptr %i.qy, ptr %i.dj, align 8, !tbaa !62
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.qt
  store ptr %i.qz, ptr %i.gr, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330.a

_ZNSt6vectorIiSaIiEE9push_backEOi.exit330.a:      ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329.a
  %i.ra = load ptr, ptr %i.go, align 8, !tbaa !66 ; 2 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %i.pb
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !4
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv441.a
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !4
  %i.rf = icmp slt i32 %i.rc, %i.re
  %.pre476 = load ptr, ptr %i.gs, align 8, !tbaa !64 ; 3 uses
  br i1 %i.rf, label %bb.ch, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit330._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330.a
  %.pre477 = load ptr, ptr %i.df, align 8, !tbaa !62
  %.pre479 = load ptr, ptr %i.gt, align 8, !tbaa !68
  br label %bb.co

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330.a
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.pre476, i64 %indvars.iv441.a
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !4
  %i.ri = and i32 %i.rh, -2147483647
  %.not390 = icmp eq i32 %i.ri, 1
  %.pre478 = load ptr, ptr %i.df, align 8, !tbaa !62 ; 5 uses
  %.pre480 = load ptr, ptr %i.gt, align 8, !tbaa !68 ; 2 uses
  br i1 %.not390, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.rj = getelementptr inbounds [4 x i8], ptr %.pre476, i64 %i.pb
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !4
  %i.rl = shl i32 %i.rk, %i.qf
  %i.rm = add nsw i32 %i.rl, 1                    ; 2 uses
  %.not.i.i331.a = icmp eq ptr %.pre478, %.pre480
  br i1 %.not.i.i331.a, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.rm, ptr %.pre478, align 4, !tbaa !4
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre478, i64 4
  store ptr %i.rn, ptr %i.df, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338

bb.ck:                                            ; preds = %bb.ci
  %i.ro = load ptr, ptr %i.dd, align 8, !tbaa !63 ; 4 uses
  %i.rp = ptrtoint ptr %.pre478 to i64
  %i.rq = ptrtoint ptr %i.ro to i64
  %i.rr = sub i64 %i.rp, %i.rq                    ; 6 uses
  %i.rs = icmp eq i64 %i.rr, 9223372036854775804
  br i1 %i.rs, label %bb.cl, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332.a

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332.a: ; preds = %bb.ck
  %i.rt = ashr exact i64 %i.rr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i333.a = call i64 @llvm.umax.i64(i64 %i.rt, i64 1)
  %i.ru = add nsw i64 %.sroa.speculated.i.i.i.i333.a, %i.rt ; 2 uses
  %i.rv = icmp ult i64 %i.ru, %i.rt
  %i.rw = call i64 @llvm.umin.i64(i64 %i.ru, i64 2305843009213693951)
  %i.rx = select i1 %i.rv, i64 2305843009213693951, i64 %i.rw ; 3 uses
  %.not.i.i.i.i334 = icmp ne i64 %i.rx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i334)
  %i.ry = shl nuw nsw i64 %i.rx, 2
  %i.rz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #33 ; 4 uses
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 %i.rr ; 2 uses
  store i32 %i.rm, ptr %i.sa, align 4, !tbaa !4
  %i.sb = icmp sgt i64 %i.rr, 0
  br i1 %i.sb, label %bb.cm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i335

bb.cm:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rz, ptr align 4 %i.ro, i64 %i.rr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i335

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i335: ; preds = %bb.cm, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332.a
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %.not.i17.i.i.i336 = icmp eq ptr %i.ro, null
  br i1 %.not.i17.i.i.i336, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i337, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i335
  call void @_ZdlPvm(ptr noundef nonnull %i.ro, i64 noundef %i.rr) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i337

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i337: ; preds = %bb.cn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i335
  store ptr %i.rz, ptr %i.dd, align 8, !tbaa !63
  store ptr %i.sc, ptr %i.df, align 8, !tbaa !62
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.rx
  store ptr %i.sd, ptr %i.gt, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330._crit_edge, %bb.ch
  %i.se = phi ptr [ %.pre479, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330._crit_edge ], [ %.pre480, %bb.ch ] ; 2 uses
  %i.sf = phi ptr [ %.pre477, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330._crit_edge ], [ %.pre478, %bb.ch ] ; 3 uses
  %i.sg = getelementptr inbounds [4 x i8], ptr %.pre476, i64 %i.pb
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !4
  %i.si = shl i32 %i.sh, %i.qf                    ; 2 uses
  %.not.i.i339 = icmp eq ptr %i.sf, %i.se
  br i1 %.not.i.i339, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 %i.si, ptr %i.sf, align 4, !tbaa !4
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  store ptr %i.sj, ptr %i.df, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338

bb.cq:                                            ; preds = %bb.co
  %i.sk = load ptr, ptr %i.dd, align 8, !tbaa !63 ; 4 uses
  %i.sl = ptrtoint ptr %i.se to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm                    ; 6 uses
  %i.so = icmp eq i64 %i.sn, 9223372036854775804
  br i1 %i.so, label %bb.cr, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i340

bb.cr:                                            ; preds = %bb.cq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i340: ; preds = %bb.cq
  %i.sp = ashr exact i64 %i.sn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i341 = call i64 @llvm.umax.i64(i64 %i.sp, i64 1)
  %i.sq = add nsw i64 %.sroa.speculated.i.i.i.i341, %i.sp ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.sp
  %i.ss = call i64 @llvm.umin.i64(i64 %i.sq, i64 2305843009213693951)
  %i.st = select i1 %i.sr, i64 2305843009213693951, i64 %i.ss ; 3 uses
  %.not.i.i.i.i342 = icmp ne i64 %i.st, 0
  call void @llvm.assume(i1 %.not.i.i.i.i342)
  %i.su = shl nuw nsw i64 %i.st, 2
  %i.sv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.su) #33 ; 4 uses
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 %i.sn ; 2 uses
  store i32 %i.si, ptr %i.sw, align 4, !tbaa !4
  %i.sx = icmp sgt i64 %i.sn, 0
  br i1 %i.sx, label %bb.cs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i343

bb.cs:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i340
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sv, ptr align 4 %i.sk, i64 %i.sn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i343

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i343: ; preds = %bb.cs, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i340
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %.not.i17.i.i.i344 = icmp eq ptr %i.sk, null
  br i1 %.not.i17.i.i.i344, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i345, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i343
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sn) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i345

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i345: ; preds = %bb.ct, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i343
  store ptr %i.sv, ptr %i.dd, align 8, !tbaa !63
  store ptr %i.sy, ptr %i.df, align 8, !tbaa !62
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.st
  store ptr %i.sz, ptr %i.gt, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338

_ZNSt6vectorIiSaIiEE9push_backEOi.exit338:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i345, %bb.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i337, %bb.cj
  %i.ta = add nsw i32 %.4420, 1                   ; 3 uses
  %i.tb = load ptr, ptr %i.go, align 8, !tbaa !66 ; 3 uses
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.pb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !4
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv441.a ; 2 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !4  ; 3 uses
  %i.tg = icmp sgt i32 %i.td, %i.tf
  br i1 %i.tg, label %bb.cu, label %bb.dm

bb.cu:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338
  %i.th = load ptr, ptr %i.gs, align 8, !tbaa !64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.th, i64 %i.pb
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !4
  %i.tk = and i32 %i.tj, 1
  %.not182.not = icmp eq i32 %i.tk, 0
  br i1 %.not182.not, label %bb.cv, label %bb.dm

bb.cv:                                            ; preds = %bb.cu
  %i.tl = load ptr, ptr %i.gu, align 8, !tbaa !77
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.pb
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4  ; 2 uses
  %.not183 = icmp eq i32 %i.tn, %i.ox
  br i1 %.not183, label %bb.dm, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.to = sext i32 %i.tn to i64                   ; 3 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.to ; 2 uses
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !4  ; 2 uses
  %i.tr = icmp sgt i32 %i.tf, %i.tq
  %.188 = select i1 %i.tr, ptr %i.te, ptr %i.tp
  %i.ts = load ptr, ptr %i.dn, align 8, !tbaa !62 ; 4 uses
  %i.tt = load ptr, ptr %i.gp, align 8, !tbaa !68
  %.not.i347 = icmp eq ptr %i.ts, %i.tt
  br i1 %.not.i347, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.tu = call i32 @llvm.smax.i32(i32 %i.tf, i32 %i.tq)
  store i32 %i.tu, ptr %i.ts, align 4, !tbaa !4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  store ptr %i.tv, ptr %i.dn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit354

bb.cy:                                            ; preds = %bb.cw
  %i.tw = load ptr, ptr %i.dl, align 8, !tbaa !63 ; 4 uses
  %i.tx = ptrtoint ptr %i.ts to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty                    ; 6 uses
  %i.ua = icmp eq i64 %i.tz, 9223372036854775804
  br i1 %i.ua, label %bb.cz, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i348

bb.cz:                                            ; preds = %bb.cy
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i348: ; preds = %bb.cy
  %i.ub = ashr exact i64 %i.tz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i349 = call i64 @llvm.umax.i64(i64 %i.ub, i64 1)
  %i.uc = add nsw i64 %.sroa.speculated.i.i.i349, %i.ub ; 2 uses
  %i.ud = icmp ult i64 %i.uc, %i.ub
  %i.ue = call i64 @llvm.umin.i64(i64 %i.uc, i64 2305843009213693951)
  %i.uf = select i1 %i.ud, i64 2305843009213693951, i64 %i.ue ; 3 uses
  %.not.i.i.i350 = icmp ne i64 %i.uf, 0
  call void @llvm.assume(i1 %.not.i.i.i350)
  %i.ug = shl nuw nsw i64 %i.uf, 2
  %i.uh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ug) #33 ; 4 uses
  %i.ui = getelementptr inbounds i8, ptr %i.uh, i64 %i.tz ; 2 uses
  %i.uj = load i32, ptr %.188, align 4, !tbaa !4
  store i32 %i.uj, ptr %i.ui, align 4, !tbaa !4
  %i.uk = icmp sgt i64 %i.tz, 0
  br i1 %i.uk, label %bb.da, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i351

bb.da:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i348
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uh, ptr align 4 %i.tw, i64 %i.tz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i351

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i351: ; preds = %bb.da, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i348
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %.not.i17.i.i352 = icmp eq ptr %i.tw, null
  br i1 %.not.i17.i.i352, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i353, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i351
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.tz) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i353

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i353: ; preds = %bb.db, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i351
  store ptr %i.uh, ptr %i.dl, align 8, !tbaa !63
  store ptr %i.ul, ptr %i.dn, align 8, !tbaa !62
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %i.uf
  store ptr %i.um, ptr %i.gp, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit354

_ZNSt6vectorIiSaIiEE9push_backERKi.exit354:       ; preds = %bb.cx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i353
  %i.un = load ptr, ptr %i.gq, align 8, !tbaa !65
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.to
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !4
  %i.uq = shl i32 %i.up, %i.qf                    ; 2 uses
  %i.ur = load ptr, ptr %i.dj, align 8, !tbaa !62 ; 4 uses
  %i.us = load ptr, ptr %i.gr, align 8, !tbaa !68
  %.not.i.i355 = icmp eq ptr %i.ur, %i.us
  br i1 %.not.i.i355, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit354
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !4
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  store ptr %i.ut, ptr %i.dj, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit362

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit354
  %i.uu = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 4 uses
  %i.uv = ptrtoint ptr %i.ur to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw                    ; 6 uses
  %i.uy = icmp eq i64 %i.ux, 9223372036854775804
  br i1 %i.uy, label %bb.de, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i356

bb.de:                                            ; preds = %bb.dd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i356: ; preds = %bb.dd
  %i.uz = ashr exact i64 %i.ux, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i357 = call i64 @llvm.umax.i64(i64 %i.uz, i64 1)
  %i.va = add nsw i64 %.sroa.speculated.i.i.i.i357, %i.uz ; 2 uses
  %i.vb = icmp ult i64 %i.va, %i.uz
  %i.vc = call i64 @llvm.umin.i64(i64 %i.va, i64 2305843009213693951)
  %i.vd = select i1 %i.vb, i64 2305843009213693951, i64 %i.vc ; 3 uses
  %.not.i.i.i.i358 = icmp ne i64 %i.vd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i358)
  %i.ve = shl nuw nsw i64 %i.vd, 2
  %i.vf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ve) #33 ; 4 uses
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 %i.ux ; 2 uses
  store i32 %i.uq, ptr %i.vg, align 4, !tbaa !4
  %i.vh = icmp sgt i64 %i.ux, 0
  br i1 %i.vh, label %bb.df, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i359

bb.df:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i356
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vf, ptr align 4 %i.uu, i64 %i.ux, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i359

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i359: ; preds = %bb.df, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i356
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %.not.i17.i.i.i360 = icmp eq ptr %i.uu, null
  br i1 %.not.i17.i.i.i360, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i361, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i359
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.ux) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i361

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i361: ; preds = %bb.dg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i359
  store ptr %i.vf, ptr %i.dh, align 8, !tbaa !63
  store ptr %i.vi, ptr %i.dj, align 8, !tbaa !62
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.vd
  store ptr %i.vj, ptr %i.gr, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit362

_ZNSt6vectorIiSaIiEE9push_backEOi.exit362:        ; preds = %bb.dc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i361
  %i.vk = load ptr, ptr %i.gs, align 8, !tbaa !64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.vk, i64 %i.to
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4
  %i.vn = shl i32 %i.vm, %i.qf                    ; 2 uses
  %i.vo = load ptr, ptr %i.df, align 8, !tbaa !62 ; 4 uses
  %i.vp = load ptr, ptr %i.gt, align 8, !tbaa !68
  %.not.i.i363 = icmp eq ptr %i.vo, %i.vp
  br i1 %.not.i.i363, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit362
  store i32 %i.vn, ptr %i.vo, align 4, !tbaa !4
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  store ptr %i.vq, ptr %i.df, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370

bb.di:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit362
  %i.vr = load ptr, ptr %i.dd, align 8, !tbaa !63 ; 4 uses
  %i.vs = ptrtoint ptr %i.vo to i64
  %i.vt = ptrtoint ptr %i.vr to i64
  %i.vu = sub i64 %i.vs, %i.vt                    ; 6 uses
  %i.vv = icmp eq i64 %i.vu, 9223372036854775804
  br i1 %i.vv, label %bb.dj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364

bb.dj:                                            ; preds = %bb.di
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364: ; preds = %bb.di
  %i.vw = ashr exact i64 %i.vu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i365 = call i64 @llvm.umax.i64(i64 %i.vw, i64 1)
  %i.vx = add nsw i64 %.sroa.speculated.i.i.i.i365, %i.vw ; 2 uses
  %i.vy = icmp ult i64 %i.vx, %i.vw
  %i.vz = call i64 @llvm.umin.i64(i64 %i.vx, i64 2305843009213693951)
  %i.wa = select i1 %i.vy, i64 2305843009213693951, i64 %i.vz ; 3 uses
  %.not.i.i.i.i366 = icmp ne i64 %i.wa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i366)
  %i.wb = shl nuw nsw i64 %i.wa, 2
  %i.wc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wb) #33 ; 4 uses
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 %i.vu ; 2 uses
  store i32 %i.vn, ptr %i.wd, align 4, !tbaa !4
  %i.we = icmp sgt i64 %i.vu, 0
  br i1 %i.we, label %bb.dk, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367

bb.dk:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wc, ptr align 4 %i.vr, i64 %i.vu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367: ; preds = %bb.dk, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %.not.i17.i.i.i368 = icmp eq ptr %i.vr, null
  br i1 %.not.i17.i.i.i368, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367
  call void @_ZdlPvm(ptr noundef nonnull %i.vr, i64 noundef %i.vu) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369: ; preds = %bb.dl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i367
  store ptr %i.wc, ptr %i.dd, align 8, !tbaa !63
  store ptr %i.wf, ptr %i.df, align 8, !tbaa !62
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.wa
  store ptr %i.wg, ptr %i.gt, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370

_ZNSt6vectorIiSaIiEE9push_backEOi.exit370:        ; preds = %bb.dh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i369
  %i.wh = add nsw i32 %.4420, 2
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338, %bb.cu, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370, %bb.cv, %bb.bv
  %.7 = phi i32 [ %.4420, %bb.bv ], [ %i.ta, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338 ], [ %i.ta, %bb.cu ], [ %i.wh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370 ], [ %i.ta, %bb.cv ] ; 2 uses
  %indvars.iv.next442.a = add nuw nsw i64 %indvars.iv441.a, 1 ; 2 uses
  %i.wi = load i64, ptr %i.cq, align 8, !tbaa !47
  %sext642 = shl i64 %i.wi, 32
  %i.wj = ashr exact i64 %sext642, 32
  %i.wk = icmp slt i64 %indvars.iv.next442.a, %i.wj
  br i1 %i.wk, label %bb.bv, label %._crit_edge422, !llvm.loop !208

.preheader395:                                    ; preds = %bb.dv
  %i.wl = icmp sgt i32 %i.xl, 0
  br i1 %i.wl, label %.lr.ph428, label %.preheader394

.lr.ph428:                                        ; preds = %.preheader395
  %i.wm = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.wn = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.wo = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.wp = load ptr, ptr %i.i, align 8
  %i.wq = load ptr, ptr %i.ae, align 8
  %i.wr = load ptr, ptr %i.m, align 8
  br label %bb.dw

bb.dn:                                            ; preds = %.lr.ph426.a, %bb.dv
  %indvars.iv444.a = phi i64 [ 0, %.lr.ph426.a ], [ %indvars.iv.next445.a, %bb.dv ] ; 4 uses
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv444.a
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !4
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv444.a
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !4  ; 4 uses
  %i.ww = sext i32 %i.wt to i64                   ; 4 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.ww ; 2 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !4
  %i.wz = icmp slt i32 %i.wv, %i.wy
  br i1 %i.wz, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 %i.wv, ptr %i.wx, align 4, !tbaa !4
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ww ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !4
  %i.xc = icmp sgt i32 %i.wv, %i.xb
  br i1 %i.xc, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 %i.wv, ptr %i.xa, align 4, !tbaa !4
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv444.a
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !4  ; 4 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ww ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !4
  %i.xh = icmp slt i32 %i.xe, %i.xg
  br i1 %i.xh, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !4
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.ww ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !4
  %i.xk = icmp sgt i32 %i.xe, %i.xj
  br i1 %i.xk, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 %i.xe, ptr %i.xi, align 4, !tbaa !4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %indvars.iv.next445.a = add nuw nsw i64 %indvars.iv444.a, 1 ; 2 uses
  %i.xl = load i32, ptr %i.dc, align 8, !tbaa !205 ; 3 uses
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next445.a, %i.xm
  br i1 %i.xn, label %bb.dn, label %.preheader395, !llvm.loop !209

.preheader394:                                    ; preds = %bb.dy, %._crit_edge422, %.preheader395
  %i.xo = load i32, ptr %i.am, align 8, !tbaa !94
  %.not429 = icmp slt i32 %i.xo, 0
  br i1 %.not429, label %.preheader393, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader394
  %i.xp = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.xq = load ptr, ptr %i.cc, align 8, !tbaa !63
  %i.xr = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.xs = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.xt = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.xu = load ptr, ptr %i.ai, align 8, !tbaa !63
  br label %bb.dz

bb.dw:                                            ; preds = %.lr.ph428, %bb.dy
  %i.xv = phi i32 [ %i.xl, %.lr.ph428 ], [ %i.ym, %bb.dy ]
  %indvars.iv447.a = phi i64 [ 0, %.lr.ph428 ], [ %indvars.iv.next448.a, %bb.dy ] ; 4 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %indvars.iv447.a
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !4
  %i.xy = sext i32 %i.xx to i64                   ; 3 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !4
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.xy
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !4  ; 2 uses
  %i.yd = icmp slt i32 %i.ya, %i.yc
  br i1 %i.yd, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.wp, i64 %indvars.iv447.a ; 2 uses
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !4
  %i.yg = sub nsw i32 %i.yf, %i.yc
  store i32 %i.yg, ptr %i.ye, align 4, !tbaa !4
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %i.xy
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !4
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.wr, i64 %indvars.iv447.a ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !4
  %i.yl = sub nsw i32 %i.yk, %i.yi
  store i32 %i.yl, ptr %i.yj, align 4, !tbaa !4
  %.pre481 = load i32, ptr %i.dc, align 8, !tbaa !205
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %i.ym = phi i32 [ %i.xv, %bb.dw ], [ %.pre481, %bb.dx ] ; 2 uses
  %indvars.iv.next448.a = add nuw nsw i64 %indvars.iv447.a, 1 ; 2 uses
  %i.yn = sext i32 %i.ym to i64
  %i.yo = icmp slt i64 %indvars.iv.next448.a, %i.yn
  br i1 %i.yo, label %bb.dw, label %.preheader394, !llvm.loop !210

.preheader393:                                    ; preds = %bb.dz, %.preheader394
  %i.yp = load i32, ptr %i.ol, align 4, !tbaa !207
  %i.yq = icmp sgt i32 %i.yp, 0
  br i1 %i.yq, label %.lr.ph433, label %.preheader

.lr.ph433:                                        ; preds = %.preheader393
  %i.yr = load ptr, ptr %i.dl, align 8, !tbaa !63
  %i.ys = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.yt = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.yu = load ptr, ptr %i.du, align 8, !tbaa !63
  %i.yv = load ptr, ptr %i.dh, align 8, !tbaa !63
  %i.yw = load ptr, ptr %i.dz, align 8, !tbaa !63
  %i.yx = load ptr, ptr %i.ed, align 8, !tbaa !63
  br label %bb.ea

bb.dz:                                            ; preds = %.lr.ph431, %bb.dz
  %indvars.iv450 = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next451, %bb.dz ] ; 8 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %indvars.iv450 ; 3 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !4
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %indvars.iv450
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !4
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv450 ; 3 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %indvars.iv450
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !4
  %i.ze = load i32, ptr %i.yy, align 4, !tbaa !4
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %indvars.iv450 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !4
  %i.zh = sub nsw i32 %i.zg, %i.ze
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !4
  %i.zi = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %indvars.iv450 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !4
  %i.zl = sub nsw i32 %i.zk, %i.zi
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !4
  store i32 0, ptr %i.yy, align 4, !tbaa !4
  store i32 0, ptr %i.zb, align 4, !tbaa !4
  %indvars.iv.next451 = add nuw nsw i64 %indvars.iv450, 1
  %i.zm = load i32, ptr %i.am, align 8, !tbaa !94
  %i.zn = sext i32 %i.zm to i64
  %.not.not = icmp slt i64 %indvars.iv450, %i.zn
  br i1 %.not.not, label %bb.dz, label %.preheader393, !llvm.loop !211

.preheader392:                                    ; preds = %bb.ei
end_hunk_2
begin_hunk_3_@_ZN4Mesh19calc_face_list_wmapEv:bb.a
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr %i.fl, i64 noundef %i.fr, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %.pre551 = load i32, ptr %i.au, align 8, !tbaa !94
  %.pre575 = add nsw i32 %.pre551, 1
  %.pre577 = sext i32 %.pre575 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit205
  %i.fs = icmp ugt i64 %i.fp, %.pre-phi574
  br i1 %i.fs, label %bb.u, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208

bb.u:                                             ; preds = %bb.t
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.pre-phi574 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.fl, %i.ft
  br i1 %.not.i.i206, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i207

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i207:     ; preds = %bb.u
  store ptr %i.ft, ptr %i.eo, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208:         ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i207
  %.pre-phi578 = phi i64 [ %.pre577, %bb.s ], [ %.pre-phi574, %bb.t ], [ %.pre-phi574, %bb.u ], [ %.pre-phi574, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i207 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i32 9999999, ptr %i.g, align 4, !tbaa !4
  %i.fu = load ptr, ptr %i.et, align 8, !tbaa !62 ; 3 uses
  %i.fv = load ptr, ptr %i.er, align 8, !tbaa !63 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 2                 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %.pre-phi578
  br i1 %i.ga, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208
  %i.gb = sub nuw nsw i64 %.pre-phi578, %i.fz
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr %i.fu, i64 noundef %i.gb, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %.pre552 = load i32, ptr %i.au, align 8, !tbaa !94
  %.pre579 = add nsw i32 %.pre552, 1
  %.pre581 = sext i32 %.pre579 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit208
  %i.gc = icmp ugt i64 %i.fz, %.pre-phi578
  br i1 %i.gc, label %bb.x, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211

bb.x:                                             ; preds = %bb.w
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.pre-phi578 ; 2 uses
  %.not.i.i209 = icmp eq ptr %i.fu, %i.gd
  br i1 %.not.i.i209, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210:     ; preds = %bb.x
  store ptr %i.gd, ptr %i.et, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211:         ; preds = %bb.v, %bb.w, %bb.x, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210
  %.pre-phi582 = phi i64 [ %.pre581, %bb.v ], [ %.pre-phi578, %bb.w ], [ %.pre-phi578, %bb.x ], [ %.pre-phi578, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i210 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 -9999999, ptr %i.h, align 4, !tbaa !4
  %i.ge = load ptr, ptr %i.ex, align 8, !tbaa !62 ; 3 uses
  %i.gf = load ptr, ptr %i.ev, align 8, !tbaa !63 ; 2 uses
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 2                 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, %.pre-phi582
  br i1 %i.gk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211
  %i.gl = sub nuw nsw i64 %.pre-phi582, %i.gj
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr %i.ge, i64 noundef %i.gl, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit211
  %i.gm = icmp ugt i64 %i.gj, %.pre-phi582
  br i1 %i.gm, label %bb.aa, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214

bb.aa:                                            ; preds = %bb.z
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.pre-phi582 ; 2 uses
  %.not.i.i212 = icmp eq ptr %i.ge, %i.gn
  br i1 %.not.i.i212, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i213

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i213:     ; preds = %bb.aa
  store ptr %i.gn, ptr %i.ex, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214:         ; preds = %bb.y, %bb.z, %bb.aa, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !63 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !62
  %.not.i.i215 = icmp eq ptr %i.gr, %i.gp
  br i1 %.not.i.i215, label %_ZNSt6vectorIiSaIiEE5clearEv.exit217, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i216

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i216:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit217

_ZNSt6vectorIiSaIiEE5clearEv.exit217:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit214, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i216
  %i.gs = load i32, ptr %i.au, align 8, !tbaa !94
  %i.gt = add nsw i32 %i.gs, 1                    ; 2 uses
  %.not751 = icmp eq i32 %i.gt, 0
  br i1 %.not751, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit220, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit217
  %i.gu = sext i32 %i.gt to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 noundef %i.gu)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit220

_ZNSt6vectorIiSaIiEE6resizeEm.exit220:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit217, %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !63 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !62
  %.not.i.i221 = icmp eq ptr %i.gy, %i.gw
  br i1 %.not.i.i221, label %_ZNSt6vectorIiSaIiEE5clearEv.exit223, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i222

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i222:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit220
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit223

_ZNSt6vectorIiSaIiEE5clearEv.exit223:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit220, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i222
  %i.gz = load i32, ptr %i.au, align 8, !tbaa !94
  %i.ha = add nsw i32 %i.gz, 1                    ; 2 uses
  %.not752 = icmp eq i32 %i.ha, 0
  br i1 %.not752, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit226, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit223
  %i.hb = sext i32 %i.ha to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, i64 noundef %i.hb)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit226

_ZNSt6vectorIiSaIiEE6resizeEm.exit226:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit223, %bb.ac
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !47
  %i.hd = trunc i64 %i.hc to i32
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %.lr.ph498, label %._crit_edge499

.lr.ph498:                                        ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit226
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1376
  br label %bb.cp

bb.ad:                                            ; preds = %.lr.ph, %bb.co
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.co ] ; 13 uses
  %.0100495 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.co ] ; 3 uses
  %i.hp = load ptr, ptr %i.dc, align 8, !tbaa !77
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4  ; 5 uses
  %i.hs = zext i32 %i.hr to i64
  %i.ht = icmp eq i64 %indvars.iv, %i.hs
  br i1 %i.ht, label %bb.co, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hu = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %i.hv = sext i32 %i.hr to i64                   ; 9 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !4
  %i.ia = icmp slt i32 %i.hx, %i.hz
  %i.ib = load ptr, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  %i.ic = load ptr, ptr %i.de, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.id = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store ptr %i.ie, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.if = load ptr, ptr %i.i, align 8, !tbaa !63  ; 4 uses
  %i.ig = ptrtoint ptr %i.ib to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 6 uses
  %i.ij = icmp eq i64 %i.ii, 9223372036854775804
  br i1 %i.ij, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.ik = ashr exact i64 %i.ii, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ik, i64 1)
  %i.il = add nsw i64 %.sroa.speculated.i.i.i, %i.ik ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.ik
  %i.in = call i64 @llvm.umin.i64(i64 %i.il, i64 2305843009213693951)
  %i.io = select i1 %i.im, i64 2305843009213693951, i64 %i.in ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.io, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ip = shl nuw nsw i64 %i.io, 2
  %i.iq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #33 ; 4 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %i.ii ; 2 uses
  %i.is = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !4
  %i.it = icmp sgt i64 %i.ii, 0
  br i1 %i.it, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iq, ptr align 4 %i.if, i64 %i.ii, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %.not.i17.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ii) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.iq, ptr %i.i, align 8, !tbaa !63
  store ptr %i.iu, ptr %i.k, align 8, !tbaa !62
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.io
  store ptr %i.iv, ptr %i.de, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.iw = load ptr, ptr %i.o, align 8, !tbaa !62  ; 4 uses
  %i.ix = load ptr, ptr %i.df, align 8, !tbaa !68
  %.not.i227 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i227, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.hr, ptr %i.iw, align 4, !tbaa !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store ptr %i.iy, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.iz = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 6 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775804
  br i1 %i.jd, label %bb.am, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i228

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i228: ; preds = %bb.al
  %i.je = ashr exact i64 %i.jc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i229 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i229, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 2305843009213693951)
  %i.ji = select i1 %i.jg, i64 2305843009213693951, i64 %i.jh ; 3 uses
  %.not.i.i.i230 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i.i230)
  %i.jj = shl nuw nsw i64 %i.ji, 2
  %i.jk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #33 ; 4 uses
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.jc ; 2 uses
  store i32 %i.hr, ptr %i.jl, align 4, !tbaa !4
  %i.jm = icmp sgt i64 %i.jc, 0
  br i1 %i.jm, label %bb.an, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i231

bb.an:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i228
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jk, ptr align 4 %i.iz, i64 %i.jc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i231

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i231: ; preds = %bb.an, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i228
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %.not.i17.i.i232 = icmp eq ptr %i.iz, null
  br i1 %.not.i17.i.i232, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i233, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i231
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jc) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i233

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i233: ; preds = %bb.ao, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i231
  store ptr %i.jk, ptr %i.m, align 8, !tbaa !63
  store ptr %i.jn, ptr %i.o, align 8, !tbaa !62
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.jo, ptr %i.df, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234

_ZNSt6vectorIiSaIiEE9push_backERKi.exit234:       ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i233
  %i.jp = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4  ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.hv ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4  ; 2 uses
  %i.ju = icmp sgt i32 %i.jr, %i.jt
  %i.jv = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  %i.jw = load ptr, ptr %i.dg, align 8, !tbaa !68
  %.not.i235 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i235, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234
  %i.jx = call i32 @llvm.smax.i32(i32 %i.jr, i32 %i.jt)
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store ptr %i.jy, ptr %i.aa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit242

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234
  %i.jz = load ptr, ptr %i.y, align 8, !tbaa !63  ; 4 uses
  %i.ka = ptrtoint ptr %i.jv to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb                    ; 6 uses
  %i.kd = icmp eq i64 %i.kc, 9223372036854775804
  br i1 %i.kd, label %bb.ar, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236: ; preds = %bb.aq
  %i.ke = ashr exact i64 %i.kc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i237 = call i64 @llvm.umax.i64(i64 %i.ke, i64 1)
  %i.kf = add nsw i64 %.sroa.speculated.i.i.i237, %i.ke ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.ke
  %i.kh = call i64 @llvm.umin.i64(i64 %i.kf, i64 2305843009213693951)
  %i.ki = select i1 %i.kg, i64 2305843009213693951, i64 %i.kh ; 3 uses
  %.not.i.i.i238 = icmp ne i64 %i.ki, 0
  call void @llvm.assume(i1 %.not.i.i.i238)
  %i.kj = shl nuw nsw i64 %i.ki, 2
  %i.kk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #33 ; 4 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 %i.kc ; 2 uses
  %.val = load i32, ptr %i.jq, align 4
  %.val748 = load i32, ptr %i.js, align 4
  %i.km = select i1 %i.ju, i32 %.val, i32 %.val748
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !4
  %i.kn = icmp sgt i64 %i.kc, 0
  br i1 %i.kn, label %bb.as, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i239

bb.as:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kk, ptr align 4 %i.jz, i64 %i.kc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i239

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i239: ; preds = %bb.as, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %.not.i17.i.i240 = icmp eq ptr %i.jz, null
  br i1 %.not.i17.i.i240, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i241, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i239
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kc) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i241

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i241: ; preds = %bb.at, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i239
  store ptr %i.kk, ptr %i.y, align 8, !tbaa !63
  store ptr %i.ko, ptr %i.aa, align 8, !tbaa !62
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ki
  store ptr %i.kp, ptr %i.dg, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit242

_ZNSt6vectorIiSaIiEE9push_backERKi.exit242:       ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i241
  %i.kq = load ptr, ptr %i.dh, align 8, !tbaa !64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.hv
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4
  %i.kt = zext i1 %i.ia to i32                    ; 5 uses
  %i.ku = shl i32 %i.ks, %i.kt                    ; 2 uses
  %i.kv = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.kw = load ptr, ptr %i.di, align 8, !tbaa !68
  %.not.i.i243 = icmp eq ptr %i.kv, %i.kw
  br i1 %.not.i.i243, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit242
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 4
  store ptr %i.kx, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.av:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit242
  %i.ky = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 6 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775804
  br i1 %i.lc, label %bb.aw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.ld = ashr exact i64 %i.lb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ld, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ld ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.ld
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 2305843009213693951)
  %i.lh = select i1 %i.lf, i64 2305843009213693951, i64 %i.lg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.li = shl nuw nsw i64 %i.lh, 2
  %i.lj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #33 ; 4 uses
  %i.lk = getelementptr inbounds i8, ptr %i.lj, i64 %i.lb ; 2 uses
  store i32 %i.ku, ptr %i.lk, align 4, !tbaa !4
  %i.ll = icmp sgt i64 %i.lb, 0
  br i1 %i.ll, label %bb.ax, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lj, ptr align 4 %i.ky, i64 %i.lb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.lb) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.lj, ptr %i.q, align 8, !tbaa !63
  store ptr %i.lm, ptr %i.s, align 8, !tbaa !62
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.ln, ptr %i.di, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.au, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.lo = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.hv
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !4
  %i.lt = icmp slt i32 %i.lq, %i.ls
  %.pre543 = load ptr, ptr %i.dj, align 8, !tbaa !65 ; 3 uses
  br i1 %i.lt, label %bb.az, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre544 = load ptr, ptr %i.w, align 8, !tbaa !62
  %.pre546 = load ptr, ptr %i.dk, align 8, !tbaa !68
  br label %bb.bg

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.pre543, i64 %indvars.iv
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !4
  %i.lw = and i32 %i.lv, -2147483647
  %.not456 = icmp eq i32 %i.lw, 1
  %.pre545 = load ptr, ptr %i.w, align 8, !tbaa !62 ; 5 uses
  %.pre547 = load ptr, ptr %i.dk, align 8, !tbaa !68 ; 2 uses
  br i1 %.not456, label %bb.ba, label %bb.bg

bb.ba:                                            ; preds = %bb.az
  %i.lx = getelementptr inbounds [4 x i8], ptr %.pre543, i64 %i.hv
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !4
  %i.lz = shl i32 %i.ly, %i.kt
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  %.not.i.i244 = icmp eq ptr %.pre545, %.pre547
  br i1 %.not.i.i244, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.ma, ptr %.pre545, align 4, !tbaa !4
  %i.mb = getelementptr inbounds nuw i8, ptr %.pre545, i64 4
  store ptr %i.mb, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251

bb.bc:                                            ; preds = %bb.ba
  %i.mc = load ptr, ptr %i.u, align 8, !tbaa !63  ; 4 uses
  %i.md = ptrtoint ptr %.pre545 to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me                    ; 6 uses
  %i.mg = icmp eq i64 %i.mf, 9223372036854775804
  br i1 %i.mg, label %bb.bd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i245

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i245: ; preds = %bb.bc
  %i.mh = ashr exact i64 %i.mf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i246 = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  %i.mi = add nsw i64 %.sroa.speculated.i.i.i.i246, %i.mh ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.mh
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mi, i64 2305843009213693951)
  %i.ml = select i1 %i.mj, i64 2305843009213693951, i64 %i.mk ; 3 uses
  %.not.i.i.i.i247 = icmp ne i64 %i.ml, 0
  call void @llvm.assume(i1 %.not.i.i.i.i247)
  %i.mm = shl nuw nsw i64 %i.ml, 2
  %i.mn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mm) #33 ; 4 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 %i.mf ; 2 uses
  store i32 %i.ma, ptr %i.mo, align 4, !tbaa !4
  %i.mp = icmp sgt i64 %i.mf, 0
  br i1 %i.mp, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i248

bb.be:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i245
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mn, ptr align 4 %i.mc, i64 %i.mf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i248

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i248: ; preds = %bb.be, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i245
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %.not.i17.i.i.i249 = icmp eq ptr %i.mc, null
  br i1 %.not.i17.i.i.i249, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i250, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i248
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mf) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i250

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i250: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i248
  store ptr %i.mn, ptr %i.u, align 8, !tbaa !63
  store ptr %i.mq, ptr %i.w, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.mr, ptr %i.dk, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge, %bb.az
  %i.ms = phi ptr [ %.pre546, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre547, %bb.az ] ; 2 uses
  %i.mt = phi ptr [ %.pre544, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre545, %bb.az ] ; 3 uses
  %i.mu = getelementptr inbounds [4 x i8], ptr %.pre543, i64 %i.hv
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !4
  %i.mw = shl i32 %i.mv, %i.kt                    ; 2 uses
  %.not.i.i252 = icmp eq ptr %i.mt, %i.ms
  br i1 %.not.i.i252, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.mw, ptr %i.mt, align 4, !tbaa !4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store ptr %i.mx, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251

bb.bi:                                            ; preds = %bb.bg
  %i.my = load ptr, ptr %i.u, align 8, !tbaa !63  ; 4 uses
  %i.mz = ptrtoint ptr %i.ms to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 6 uses
  %i.nc = icmp eq i64 %i.nb, 9223372036854775804
  br i1 %i.nc, label %bb.bj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253: ; preds = %bb.bi
  %i.nd = ashr exact i64 %i.nb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i254 = call i64 @llvm.umax.i64(i64 %i.nd, i64 1)
  %i.ne = add nsw i64 %.sroa.speculated.i.i.i.i254, %i.nd ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.nd
  %i.ng = call i64 @llvm.umin.i64(i64 %i.ne, i64 2305843009213693951)
  %i.nh = select i1 %i.nf, i64 2305843009213693951, i64 %i.ng ; 3 uses
  %.not.i.i.i.i255 = icmp ne i64 %i.nh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i255)
  %i.ni = shl nuw nsw i64 %i.nh, 2
  %i.nj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ni) #33 ; 4 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %i.nb ; 2 uses
  store i32 %i.mw, ptr %i.nk, align 4, !tbaa !4
  %i.nl = icmp sgt i64 %i.nb, 0
  br i1 %i.nl, label %bb.bk, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

bb.bk:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nj, ptr align 4 %i.my, i64 %i.nb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256: ; preds = %bb.bk, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i253
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %.not.i17.i.i.i257 = icmp eq ptr %i.my, null
  br i1 %.not.i17.i.i.i257, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nb) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258: ; preds = %bb.bl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i256
  store ptr %i.nj, ptr %i.u, align 8, !tbaa !63
  store ptr %i.nm, ptr %i.w, align 8, !tbaa !62
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nh
  store ptr %i.nn, ptr %i.dk, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251

_ZNSt6vectorIiSaIiEE9push_backEOi.exit251:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i258, %bb.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i250, %bb.bb
  %i.no = add nsw i32 %.0100495, 1                ; 3 uses
  %i.np = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.np, i64 %i.hv
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !4
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !4
  %i.nu = icmp sgt i32 %i.nr, %i.nt
  br i1 %i.nu, label %bb.bm, label %bb.co

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251
  %i.nv = load ptr, ptr %i.dj, align 8, !tbaa !65
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.hv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !4
  %i.ny = and i32 %i.nx, 1
  %.not126.not = icmp eq i32 %i.ny, 0
  br i1 %.not126.not, label %bb.bn, label %bb.co

bb.bn:                                            ; preds = %bb.bm
  %i.nz = load ptr, ptr %i.dl, align 8, !tbaa !79
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.nz, i64 %i.hv
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !4  ; 4 uses
  %.not127 = icmp eq i32 %i.ob, %i.hr
  br i1 %.not127, label %bb.co, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oc = load ptr, ptr %i.k, align 8, !tbaa !62  ; 4 uses
  %i.od = load ptr, ptr %i.de, align 8, !tbaa !68
  %.not.i260 = icmp eq ptr %i.oc, %i.od
  br i1 %.not.i260, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.oe = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !4
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store ptr %i.of, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit267

bb.bq:                                            ; preds = %bb.bo
  %i.og = load ptr, ptr %i.i, align 8, !tbaa !63  ; 4 uses
  %i.oh = ptrtoint ptr %i.oc to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi                    ; 6 uses
  %i.ok = icmp eq i64 %i.oj, 9223372036854775804
  br i1 %i.ok, label %bb.br, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i261

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i261: ; preds = %bb.bq
  %i.ol = ashr exact i64 %i.oj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i262 = call i64 @llvm.umax.i64(i64 %i.ol, i64 1)
  %i.om = add nsw i64 %.sroa.speculated.i.i.i262, %i.ol ; 2 uses
  %i.on = icmp ult i64 %i.om, %i.ol
  %i.oo = call i64 @llvm.umin.i64(i64 %i.om, i64 2305843009213693951)
  %i.op = select i1 %i.on, i64 2305843009213693951, i64 %i.oo ; 3 uses
  %.not.i.i.i263 = icmp ne i64 %i.op, 0
  call void @llvm.assume(i1 %.not.i.i.i263)
  %i.oq = shl nuw nsw i64 %i.op, 2
  %i.or = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oq) #33 ; 4 uses
  %i.os = getelementptr inbounds i8, ptr %i.or, i64 %i.oj ; 2 uses
  %i.ot = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ot, ptr %i.os, align 4, !tbaa !4
  %i.ou = icmp sgt i64 %i.oj, 0
  br i1 %i.ou, label %bb.bs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i264

bb.bs:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i261
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.or, ptr align 4 %i.og, i64 %i.oj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i264

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i264: ; preds = %bb.bs, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i261
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %.not.i17.i.i265 = icmp eq ptr %i.og, null
  br i1 %.not.i17.i.i265, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i266, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i264
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.oj) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i266

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i266: ; preds = %bb.bt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i264
  store ptr %i.or, ptr %i.i, align 8, !tbaa !63
  store ptr %i.ov, ptr %i.k, align 8, !tbaa !62
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.op
  store ptr %i.ow, ptr %i.de, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit267

_ZNSt6vectorIiSaIiEE9push_backERKi.exit267:       ; preds = %bb.bp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i266
  %i.ox = load ptr, ptr %i.o, align 8, !tbaa !62  ; 4 uses
  %i.oy = load ptr, ptr %i.df, align 8, !tbaa !68
  %.not.i268 = icmp eq ptr %i.ox, %i.oy
  br i1 %.not.i268, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit267
  store i32 %i.ob, ptr %i.ox, align 4, !tbaa !4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store ptr %i.oz, ptr %i.o, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit275

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit267
  %i.pa = load ptr, ptr %i.m, align 8, !tbaa !63  ; 4 uses
  %i.pb = ptrtoint ptr %i.ox to i64
  %i.pc = ptrtoint ptr %i.pa to i64
  %i.pd = sub i64 %i.pb, %i.pc                    ; 6 uses
  %i.pe = icmp eq i64 %i.pd, 9223372036854775804
  br i1 %i.pe, label %bb.bw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i269

bb.bw:                                            ; preds = %bb.bv
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i269: ; preds = %bb.bv
  %i.pf = ashr exact i64 %i.pd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i270 = call i64 @llvm.umax.i64(i64 %i.pf, i64 1)
  %i.pg = add nsw i64 %.sroa.speculated.i.i.i270, %i.pf ; 2 uses
  %i.ph = icmp ult i64 %i.pg, %i.pf
  %i.pi = call i64 @llvm.umin.i64(i64 %i.pg, i64 2305843009213693951)
  %i.pj = select i1 %i.ph, i64 2305843009213693951, i64 %i.pi ; 3 uses
  %.not.i.i.i271 = icmp ne i64 %i.pj, 0
  call void @llvm.assume(i1 %.not.i.i.i271)
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %i.pl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pk) #33 ; 4 uses
  %i.pm = getelementptr inbounds i8, ptr %i.pl, i64 %i.pd ; 2 uses
  store i32 %i.ob, ptr %i.pm, align 4, !tbaa !4
  %i.pn = icmp sgt i64 %i.pd, 0
  br i1 %i.pn, label %bb.bx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i272

bb.bx:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i269
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pl, ptr align 4 %i.pa, i64 %i.pd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i272

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i272: ; preds = %bb.bx, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i269
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %.not.i17.i.i273 = icmp eq ptr %i.pa, null
  br i1 %.not.i17.i.i273, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i274, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i272
  call void @_ZdlPvm(ptr noundef nonnull %i.pa, i64 noundef %i.pd) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i274

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i274: ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i272
  store ptr %i.pl, ptr %i.m, align 8, !tbaa !63
  store ptr %i.po, ptr %i.o, align 8, !tbaa !62
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pj
  store ptr %i.pp, ptr %i.df, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit275

_ZNSt6vectorIiSaIiEE9push_backERKi.exit275:       ; preds = %bb.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i274
  %i.pq = load ptr, ptr %i.dd, align 8, !tbaa !66 ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !4  ; 2 uses
  %i.pt = sext i32 %i.ob to i64                   ; 3 uses
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pq, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4  ; 2 uses
  %i.pw = icmp sgt i32 %i.ps, %i.pv
  %i.px = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 4 uses
  %i.py = load ptr, ptr %i.dg, align 8, !tbaa !68
  %.not.i276 = icmp eq ptr %i.px, %i.py
  br i1 %.not.i276, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit275
  %i.pz = call i32 @llvm.smax.i32(i32 %i.ps, i32 %i.pv)
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !4
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store ptr %i.qa, ptr %i.aa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit283

bb.ca:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit275
  %i.qb = load ptr, ptr %i.y, align 8, !tbaa !63  ; 4 uses
  %i.qc = ptrtoint ptr %i.px to i64
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = sub i64 %i.qc, %i.qd                    ; 6 uses
  %i.qf = icmp eq i64 %i.qe, 9223372036854775804
  br i1 %i.qf, label %bb.cb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i277

bb.cb:                                            ; preds = %bb.ca
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i277: ; preds = %bb.ca
  %i.qg = ashr exact i64 %i.qe, 2                 ; 3 uses
  %.sroa.speculated.i.i.i278 = call i64 @llvm.umax.i64(i64 %i.qg, i64 1)
  %i.qh = add nsw i64 %.sroa.speculated.i.i.i278, %i.qg ; 2 uses
  %i.qi = icmp ult i64 %i.qh, %i.qg
  %i.qj = call i64 @llvm.umin.i64(i64 %i.qh, i64 2305843009213693951)
  %i.qk = select i1 %i.qi, i64 2305843009213693951, i64 %i.qj ; 3 uses
  %.not.i.i.i279 = icmp ne i64 %i.qk, 0
  call void @llvm.assume(i1 %.not.i.i.i279)
  %i.ql = shl nuw nsw i64 %i.qk, 2
  %i.qm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ql) #33 ; 4 uses
  %i.qn = getelementptr inbounds i8, ptr %i.qm, i64 %i.qe ; 2 uses
  %.val749 = load i32, ptr %i.pr, align 4
  %.val750 = load i32, ptr %i.pu, align 4
  %i.qo = select i1 %i.pw, i32 %.val749, i32 %.val750
  store i32 %i.qo, ptr %i.qn, align 4, !tbaa !4
  %i.qp = icmp sgt i64 %i.qe, 0
  br i1 %i.qp, label %bb.cc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i280

bb.cc:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i277
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qm, ptr align 4 %i.qb, i64 %i.qe, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i280

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i280: ; preds = %bb.cc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i277
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %.not.i17.i.i281 = icmp eq ptr %i.qb, null
  br i1 %.not.i17.i.i281, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i282, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i280
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qe) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i282

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i282: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i280
  store ptr %i.qm, ptr %i.y, align 8, !tbaa !63
  store ptr %i.qq, ptr %i.aa, align 8, !tbaa !62
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.qk
  store ptr %i.qr, ptr %i.dg, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit283

_ZNSt6vectorIiSaIiEE9push_backERKi.exit283:       ; preds = %bb.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i282
  %i.qs = load ptr, ptr %i.dh, align 8, !tbaa !64
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.pt
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !4
  %i.qv = shl i32 %i.qu, %i.kt                    ; 2 uses
  %i.qw = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.qx = load ptr, ptr %i.di, align 8, !tbaa !68
  %.not.i.i284.a = icmp eq ptr %i.qw, %i.qx
  br i1 %.not.i.i284.a, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit283
  store i32 %i.qv, ptr %i.qw, align 4, !tbaa !4
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store ptr %i.qy, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit291

bb.cf:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit283
  %i.qz = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb                    ; 6 uses
  %i.rd = icmp eq i64 %i.rc, 9223372036854775804
  br i1 %i.rd, label %bb.cg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i285.a

bb.cg:                                            ; preds = %bb.cf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i285.a: ; preds = %bb.cf
  %i.re = ashr exact i64 %i.rc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i286.a = call i64 @llvm.umax.i64(i64 %i.re, i64 1)
  %i.rf = add nsw i64 %.sroa.speculated.i.i.i.i286.a, %i.re ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.re
  %i.rh = call i64 @llvm.umin.i64(i64 %i.rf, i64 2305843009213693951)
  %i.ri = select i1 %i.rg, i64 2305843009213693951, i64 %i.rh ; 3 uses
  %.not.i.i.i.i287 = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not.i.i.i.i287)
  %i.rj = shl nuw nsw i64 %i.ri, 2
  %i.rk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #33 ; 4 uses
  %i.rl = getelementptr inbounds i8, ptr %i.rk, i64 %i.rc ; 2 uses
  store i32 %i.qv, ptr %i.rl, align 4, !tbaa !4
  %i.rm = icmp sgt i64 %i.rc, 0
  br i1 %i.rm, label %bb.ch, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i288

bb.ch:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i285.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rk, ptr align 4 %i.qz, i64 %i.rc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i288

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i288: ; preds = %bb.ch, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i285.a
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %.not.i17.i.i.i289 = icmp eq ptr %i.qz, null
  br i1 %.not.i17.i.i.i289, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i290, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i288
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.rc) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i290

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i290: ; preds = %bb.ci, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i288
  store ptr %i.rk, ptr %i.q, align 8, !tbaa !63
  store ptr %i.rn, ptr %i.s, align 8, !tbaa !62
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.ri
  store ptr %i.ro, ptr %i.di, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit291

_ZNSt6vectorIiSaIiEE9push_backEOi.exit291:        ; preds = %bb.ce, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i290
  %i.rp = load ptr, ptr %i.dj, align 8, !tbaa !65
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.pt
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !4
  %i.rs = shl i32 %i.rr, %i.kt                    ; 2 uses
  %i.rt = load ptr, ptr %i.w, align 8, !tbaa !62  ; 4 uses
  %i.ru = load ptr, ptr %i.dk, align 8, !tbaa !68
  %.not.i.i292 = icmp eq ptr %i.rt, %i.ru
  br i1 %.not.i.i292, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit291
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store ptr %i.rv, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit299

bb.ck:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit291
  %i.rw = load ptr, ptr %i.u, align 8, !tbaa !63  ; 4 uses
  %i.rx = ptrtoint ptr %i.rt to i64
  %i.ry = ptrtoint ptr %i.rw to i64
  %i.rz = sub i64 %i.rx, %i.ry                    ; 6 uses
  %i.sa = icmp eq i64 %i.rz, 9223372036854775804
  br i1 %i.sa, label %bb.cl, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293

bb.cl:                                            ; preds = %bb.ck
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293: ; preds = %bb.ck
  %i.sb = ashr exact i64 %i.rz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i294 = call i64 @llvm.umax.i64(i64 %i.sb, i64 1)
  %i.sc = add nsw i64 %.sroa.speculated.i.i.i.i294, %i.sb ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.sb
  %i.se = call i64 @llvm.umin.i64(i64 %i.sc, i64 2305843009213693951)
  %i.sf = select i1 %i.sd, i64 2305843009213693951, i64 %i.se ; 3 uses
  %.not.i.i.i.i295 = icmp ne i64 %i.sf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i295)
  %i.sg = shl nuw nsw i64 %i.sf, 2
  %i.sh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sg) #33 ; 4 uses
  %i.si = getelementptr inbounds i8, ptr %i.sh, i64 %i.rz ; 2 uses
  store i32 %i.rs, ptr %i.si, align 4, !tbaa !4
  %i.sj = icmp sgt i64 %i.rz, 0
  br i1 %i.sj, label %bb.cm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

bb.cm:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sh, ptr align 4 %i.rw, i64 %i.rz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296: ; preds = %bb.cm, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i293
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %.not.i17.i.i.i297 = icmp eq ptr %i.rw, null
  br i1 %.not.i17.i.i.i297, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %i.rw, i64 noundef %i.rz) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298: ; preds = %bb.cn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i296
  store ptr %i.sh, ptr %i.u, align 8, !tbaa !63
  store ptr %i.sk, ptr %i.w, align 8, !tbaa !62
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sf
  store ptr %i.sl, ptr %i.dk, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit299

_ZNSt6vectorIiSaIiEE9push_backEOi.exit299:        ; preds = %bb.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i298
  %i.sm = add nsw i32 %.0100495, 2
  br label %bb.co

bb.co:                                            ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit299, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251, %bb.bm, %bb.ad
  %.3 = phi i32 [ %.0100495, %bb.ad ], [ %i.no, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit251 ], [ %i.no, %bb.bm ], [ %i.sm, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit299 ], [ %i.no, %bb.bn ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sn = load i64, ptr %i.cy, align 8, !tbaa !47
  %sext = shl i64 %i.sn, 32
  %i.so = ashr exact i64 %sext, 32
  %i.sp = icmp slt i64 %indvars.iv.next, %i.so
  br i1 %i.sp, label %bb.ad, label %._crit_edge, !llvm.loop !215

._crit_edge499:                                   ; preds = %bb.fa, %_ZNSt6vectorIiSaIiEE6resizeEm.exit226
  %.4.lcssa = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE6resizeEm.exit226 ], [ %.7, %bb.fa ]
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 4 uses
  store i32 %.4.lcssa, ptr %i.sq, align 4, !tbaa !207
  %i.sr = load i32, ptr %i.dm, align 8, !tbaa !205
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.lr.ph503, label %.preheader459

.lr.ph503:                                        ; preds = %._crit_edge499
  %i.st = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.su = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.sv = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.sw = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.sx = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.sy = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.sz = load ptr, ptr %i.aq, align 8, !tbaa !63
  br label %bb.fb

bb.cp:                                            ; preds = %.lr.ph498, %bb.fa
  %indvars.iv518 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next519, %bb.fa ] ; 13 uses
  %.4497 = phi i32 [ 0, %.lr.ph498 ], [ %.7, %bb.fa ] ; 3 uses
  %i.ta = load ptr, ptr %i.hf, align 8, !tbaa !79
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %indvars.iv518
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !4  ; 5 uses
  %i.td = zext i32 %i.tc to i64
  %i.te = icmp eq i64 %indvars.iv518, %i.td
  br i1 %i.te, label %bb.fa, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.tf = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.tg = sext i32 %i.tc to i64                   ; 9 uses
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %indvars.iv518
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !4
  %i.tl = icmp slt i32 %i.ti, %i.tk
  %i.tm = load ptr, ptr %i.dp, align 8, !tbaa !62 ; 4 uses
  %i.tn = load ptr, ptr %i.hh, align 8, !tbaa !68
  %.not.i300 = icmp eq ptr %i.tm, %i.tn
  br i1 %.not.i300, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.to = trunc nuw nsw i64 %indvars.iv518 to i32
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store ptr %i.tp, ptr %i.dp, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit307

bb.cs:                                            ; preds = %bb.cq
  %i.tq = load ptr, ptr %i.dn, align 8, !tbaa !63 ; 4 uses
  %i.tr = ptrtoint ptr %i.tm to i64
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = sub i64 %i.tr, %i.ts                    ; 6 uses
  %i.tu = icmp eq i64 %i.tt, 9223372036854775804
  br i1 %i.tu, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i301

bb.ct:                                            ; preds = %bb.cs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i301: ; preds = %bb.cs
  %i.tv = ashr exact i64 %i.tt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i302 = call i64 @llvm.umax.i64(i64 %i.tv, i64 1)
  %i.tw = add nsw i64 %.sroa.speculated.i.i.i302, %i.tv ; 2 uses
  %i.tx = icmp ult i64 %i.tw, %i.tv
  %i.ty = call i64 @llvm.umin.i64(i64 %i.tw, i64 2305843009213693951)
  %i.tz = select i1 %i.tx, i64 2305843009213693951, i64 %i.ty ; 3 uses
  %.not.i.i.i303 = icmp ne i64 %i.tz, 0
  call void @llvm.assume(i1 %.not.i.i.i303)
  %i.ua = shl nuw nsw i64 %i.tz, 2
  %i.ub = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ua) #33 ; 4 uses
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 %i.tt ; 2 uses
  %i.ud = trunc nuw nsw i64 %indvars.iv518 to i32
  store i32 %i.ud, ptr %i.uc, align 4, !tbaa !4
  %i.ue = icmp sgt i64 %i.tt, 0
  br i1 %i.ue, label %bb.cu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i304

bb.cu:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i301
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ub, ptr align 4 %i.tq, i64 %i.tt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i304

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i304: ; preds = %bb.cu, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i301
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %.not.i17.i.i305 = icmp eq ptr %i.tq, null
  br i1 %.not.i17.i.i305, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i306, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i304
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tt) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i306

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i306: ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i304
  store ptr %i.ub, ptr %i.dn, align 8, !tbaa !63
  store ptr %i.uf, ptr %i.dp, align 8, !tbaa !62
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %i.tz
  store ptr %i.ug, ptr %i.hh, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit307

_ZNSt6vectorIiSaIiEE9push_backERKi.exit307:       ; preds = %bb.cr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i306
  %i.uh = load ptr, ptr %i.dt, align 8, !tbaa !62 ; 4 uses
  %i.ui = load ptr, ptr %i.hi, align 8, !tbaa !68
  %.not.i308 = icmp eq ptr %i.uh, %i.ui
  br i1 %.not.i308, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit307
  store i32 %i.tc, ptr %i.uh, align 4, !tbaa !4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store ptr %i.uj, ptr %i.dt, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit315

bb.cx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit307
  %i.uk = load ptr, ptr %i.dr, align 8, !tbaa !63 ; 4 uses
  %i.ul = ptrtoint ptr %i.uh to i64
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 6 uses
  %i.uo = icmp eq i64 %i.un, 9223372036854775804
  br i1 %i.uo, label %bb.cy, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i309

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i309: ; preds = %bb.cx
  %i.up = ashr exact i64 %i.un, 2                 ; 3 uses
  %.sroa.speculated.i.i.i310 = call i64 @llvm.umax.i64(i64 %i.up, i64 1)
  %i.uq = add nsw i64 %.sroa.speculated.i.i.i310, %i.up ; 2 uses
  %i.ur = icmp ult i64 %i.uq, %i.up
  %i.us = call i64 @llvm.umin.i64(i64 %i.uq, i64 2305843009213693951)
  %i.ut = select i1 %i.ur, i64 2305843009213693951, i64 %i.us ; 3 uses
  %.not.i.i.i311 = icmp ne i64 %i.ut, 0
  call void @llvm.assume(i1 %.not.i.i.i311)
  %i.uu = shl nuw nsw i64 %i.ut, 2
  %i.uv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #33 ; 4 uses
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 %i.un ; 2 uses
  store i32 %i.tc, ptr %i.uw, align 4, !tbaa !4
  %i.ux = icmp sgt i64 %i.un, 0
  br i1 %i.ux, label %bb.cz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i312

bb.cz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i309
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uv, ptr align 4 %i.uk, i64 %i.un, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i312

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i312: ; preds = %bb.cz, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i309
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %.not.i17.i.i313 = icmp eq ptr %i.uk, null
  br i1 %.not.i17.i.i313, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i314, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i312
  call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef %i.un) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i314

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i314: ; preds = %bb.da, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i312
  store ptr %i.uv, ptr %i.dr, align 8, !tbaa !63
  store ptr %i.uy, ptr %i.dt, align 8, !tbaa !62
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.ut
  store ptr %i.uz, ptr %i.hi, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit315

_ZNSt6vectorIiSaIiEE9push_backERKi.exit315:       ; preds = %bb.cw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i314
  %i.va = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv518 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !4  ; 2 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.tg ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !4  ; 2 uses
  %i.vf = icmp sgt i32 %i.vc, %i.ve
  %i.vg = load ptr, ptr %i.ef, align 8, !tbaa !62 ; 4 uses
  %i.vh = load ptr, ptr %i.hj, align 8, !tbaa !68
  %.not.i316 = icmp eq ptr %i.vg, %i.vh
  br i1 %.not.i316, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit315
  %i.vi = call i32 @llvm.smax.i32(i32 %i.vc, i32 %i.ve)
  store i32 %i.vi, ptr %i.vg, align 4, !tbaa !4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store ptr %i.vj, ptr %i.ef, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit323

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit315
  %i.vk = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 4 uses
  %i.vl = ptrtoint ptr %i.vg to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm                    ; 6 uses
  %i.vo = icmp eq i64 %i.vn, 9223372036854775804
  br i1 %i.vo, label %bb.dd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i317

bb.dd:                                            ; preds = %bb.dc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i317: ; preds = %bb.dc
  %i.vp = ashr exact i64 %i.vn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i318 = call i64 @llvm.umax.i64(i64 %i.vp, i64 1)
  %i.vq = add nsw i64 %.sroa.speculated.i.i.i318, %i.vp ; 2 uses
  %i.vr = icmp ult i64 %i.vq, %i.vp
  %i.vs = call i64 @llvm.umin.i64(i64 %i.vq, i64 2305843009213693951)
  %i.vt = select i1 %i.vr, i64 2305843009213693951, i64 %i.vs ; 3 uses
  %.not.i.i.i319 = icmp ne i64 %i.vt, 0
  call void @llvm.assume(i1 %.not.i.i.i319)
  %i.vu = shl nuw nsw i64 %i.vt, 2
  %i.vv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vu) #33 ; 4 uses
  %i.vw = getelementptr inbounds i8, ptr %i.vv, i64 %i.vn ; 2 uses
  %.val753 = load i32, ptr %i.vb, align 4
  %.val754 = load i32, ptr %i.vd, align 4
  %i.vx = select i1 %i.vf, i32 %.val753, i32 %.val754
  store i32 %i.vx, ptr %i.vw, align 4, !tbaa !4
  %i.vy = icmp sgt i64 %i.vn, 0
  br i1 %i.vy, label %bb.de, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i320

bb.de:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i317
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vv, ptr align 4 %i.vk, i64 %i.vn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i320

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i320: ; preds = %bb.de, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i317
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %.not.i17.i.i321 = icmp eq ptr %i.vk, null
  br i1 %.not.i17.i.i321, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i322, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i320
  call void @_ZdlPvm(ptr noundef nonnull %i.vk, i64 noundef %i.vn) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i322

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i322: ; preds = %bb.df, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i320
  store ptr %i.vv, ptr %i.ed, align 8, !tbaa !63
  store ptr %i.vz, ptr %i.ef, align 8, !tbaa !62
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.vt
  store ptr %i.wa, ptr %i.hj, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit323

_ZNSt6vectorIiSaIiEE9push_backERKi.exit323:       ; preds = %bb.db, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i322
  %i.wb = load ptr, ptr %i.hk, align 8, !tbaa !65
  %i.wc = getelementptr inbounds [4 x i8], ptr %i.wb, i64 %i.tg
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !4
  %i.we = zext i1 %i.tl to i32                    ; 5 uses
  %i.wf = shl i32 %i.wd, %i.we                    ; 2 uses
  %i.wg = load ptr, ptr %i.eb, align 8, !tbaa !62 ; 4 uses
  %i.wh = load ptr, ptr %i.hl, align 8, !tbaa !68
  %.not.i.i324 = icmp eq ptr %i.wg, %i.wh
  br i1 %.not.i.i324, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit323
  store i32 %i.wf, ptr %i.wg, align 4, !tbaa !4
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store ptr %i.wi, ptr %i.eb, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331

bb.dh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit323
  %i.wj = load ptr, ptr %i.dz, align 8, !tbaa !63 ; 4 uses
  %i.wk = ptrtoint ptr %i.wg to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl                    ; 6 uses
  %i.wn = icmp eq i64 %i.wm, 9223372036854775804
  br i1 %i.wn, label %bb.di, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325

bb.di:                                            ; preds = %bb.dh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325: ; preds = %bb.dh
  %i.wo = ashr exact i64 %i.wm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i326 = call i64 @llvm.umax.i64(i64 %i.wo, i64 1)
  %i.wp = add nsw i64 %.sroa.speculated.i.i.i.i326, %i.wo ; 2 uses
  %i.wq = icmp ult i64 %i.wp, %i.wo
  %i.wr = call i64 @llvm.umin.i64(i64 %i.wp, i64 2305843009213693951)
  %i.ws = select i1 %i.wq, i64 2305843009213693951, i64 %i.wr ; 3 uses
  %.not.i.i.i.i327 = icmp ne i64 %i.ws, 0
  call void @llvm.assume(i1 %.not.i.i.i.i327)
  %i.wt = shl nuw nsw i64 %i.ws, 2
  %i.wu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wt) #33 ; 4 uses
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 %i.wm ; 2 uses
  store i32 %i.wf, ptr %i.wv, align 4, !tbaa !4
  %i.ww = icmp sgt i64 %i.wm, 0
  br i1 %i.ww, label %bb.dj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i328

bb.dj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wu, ptr align 4 %i.wj, i64 %i.wm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i328

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i328: ; preds = %bb.dj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i325
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %.not.i17.i.i.i329 = icmp eq ptr %i.wj, null
  br i1 %.not.i17.i.i.i329, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i330, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i328
  call void @_ZdlPvm(ptr noundef nonnull %i.wj, i64 noundef %i.wm) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i330

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i330: ; preds = %bb.dk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i328
  store ptr %i.wu, ptr %i.dz, align 8, !tbaa !63
  store ptr %i.wx, ptr %i.eb, align 8, !tbaa !62
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %i.ws
  store ptr %i.wy, ptr %i.hl, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331

_ZNSt6vectorIiSaIiEE9push_backEOi.exit331:        ; preds = %bb.dg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i330
  %i.wz = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.tg
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !4
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %indvars.iv518
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !4
  %i.xe = icmp slt i32 %i.xb, %i.xd
  %.pre553 = load ptr, ptr %i.hm, align 8, !tbaa !64 ; 3 uses
  br i1 %i.xe, label %bb.dl, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit331._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331
  %.pre554 = load ptr, ptr %i.dx, align 8, !tbaa !62
  %.pre556 = load ptr, ptr %i.hn, align 8, !tbaa !68
  br label %bb.ds

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.pre553, i64 %indvars.iv518
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !4
  %i.xh = and i32 %i.xg, -2147483647
  %.not455 = icmp eq i32 %i.xh, 1
  %.pre555 = load ptr, ptr %i.dx, align 8, !tbaa !62 ; 5 uses
  %.pre557 = load ptr, ptr %i.hn, align 8, !tbaa !68 ; 2 uses
  br i1 %.not455, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.xi = getelementptr inbounds [4 x i8], ptr %.pre553, i64 %i.tg
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !4
  %i.xk = shl i32 %i.xj, %i.we
  %i.xl = add nsw i32 %i.xk, 1                    ; 2 uses
  %.not.i.i332 = icmp eq ptr %.pre555, %.pre557
  br i1 %.not.i.i332, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store i32 %i.xl, ptr %.pre555, align 4, !tbaa !4
  %i.xm = getelementptr inbounds nuw i8, ptr %.pre555, i64 4
  store ptr %i.xm, ptr %i.dx, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339

bb.do:                                            ; preds = %bb.dm
  %i.xn = load ptr, ptr %i.dv, align 8, !tbaa !63 ; 4 uses
  %i.xo = ptrtoint ptr %.pre555 to i64
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = sub i64 %i.xo, %i.xp                    ; 6 uses
  %i.xr = icmp eq i64 %i.xq, 9223372036854775804
  br i1 %i.xr, label %bb.dp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i333

bb.dp:                                            ; preds = %bb.do
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i333: ; preds = %bb.do
  %i.xs = ashr exact i64 %i.xq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i334 = call i64 @llvm.umax.i64(i64 %i.xs, i64 1)
  %i.xt = add nsw i64 %.sroa.speculated.i.i.i.i334, %i.xs ; 2 uses
  %i.xu = icmp ult i64 %i.xt, %i.xs
  %i.xv = call i64 @llvm.umin.i64(i64 %i.xt, i64 2305843009213693951)
  %i.xw = select i1 %i.xu, i64 2305843009213693951, i64 %i.xv ; 3 uses
  %.not.i.i.i.i335 = icmp ne i64 %i.xw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i335)
  %i.xx = shl nuw nsw i64 %i.xw, 2
  %i.xy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xx) #33 ; 4 uses
  %i.xz = getelementptr inbounds i8, ptr %i.xy, i64 %i.xq ; 2 uses
  store i32 %i.xl, ptr %i.xz, align 4, !tbaa !4
  %i.ya = icmp sgt i64 %i.xq, 0
  br i1 %i.ya, label %bb.dq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i336

bb.dq:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i333
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xy, ptr align 4 %i.xn, i64 %i.xq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i336

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i336: ; preds = %bb.dq, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i333
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %.not.i17.i.i.i337 = icmp eq ptr %i.xn, null
  br i1 %.not.i17.i.i.i337, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i338, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i336
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef %i.xq) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i338

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i338: ; preds = %bb.dr, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i336
  store ptr %i.xy, ptr %i.dv, align 8, !tbaa !63
  store ptr %i.yb, ptr %i.dx, align 8, !tbaa !62
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.xw
  store ptr %i.yc, ptr %i.hn, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331._crit_edge, %bb.dl
  %i.yd = phi ptr [ %.pre556, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331._crit_edge ], [ %.pre557, %bb.dl ] ; 2 uses
  %i.ye = phi ptr [ %.pre554, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit331._crit_edge ], [ %.pre555, %bb.dl ] ; 3 uses
  %i.yf = getelementptr inbounds [4 x i8], ptr %.pre553, i64 %i.tg
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !4
  %i.yh = shl i32 %i.yg, %i.we                    ; 2 uses
  %.not.i.i340 = icmp eq ptr %i.ye, %i.yd
  br i1 %.not.i.i340, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 %i.yh, ptr %i.ye, align 4, !tbaa !4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  store ptr %i.yi, ptr %i.dx, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339

bb.du:                                            ; preds = %bb.ds
  %i.yj = load ptr, ptr %i.dv, align 8, !tbaa !63 ; 4 uses
  %i.yk = ptrtoint ptr %i.yd to i64
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = sub i64 %i.yk, %i.yl                    ; 6 uses
  %i.yn = icmp eq i64 %i.ym, 9223372036854775804
  br i1 %i.yn, label %bb.dv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i341

bb.dv:                                            ; preds = %bb.du
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i341: ; preds = %bb.du
  %i.yo = ashr exact i64 %i.ym, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i342 = call i64 @llvm.umax.i64(i64 %i.yo, i64 1)
  %i.yp = add nsw i64 %.sroa.speculated.i.i.i.i342, %i.yo ; 2 uses
  %i.yq = icmp ult i64 %i.yp, %i.yo
  %i.yr = call i64 @llvm.umin.i64(i64 %i.yp, i64 2305843009213693951)
  %i.ys = select i1 %i.yq, i64 2305843009213693951, i64 %i.yr ; 3 uses
  %.not.i.i.i.i343 = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %.not.i.i.i.i343)
  %i.yt = shl nuw nsw i64 %i.ys, 2
  %i.yu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yt) #33 ; 4 uses
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %i.ym ; 2 uses
  store i32 %i.yh, ptr %i.yv, align 4, !tbaa !4
  %i.yw = icmp sgt i64 %i.ym, 0
  br i1 %i.yw, label %bb.dw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i344

bb.dw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i341
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yu, ptr align 4 %i.yj, i64 %i.ym, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i344

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i344: ; preds = %bb.dw, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i341
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 4
  %.not.i17.i.i.i345 = icmp eq ptr %i.yj, null
  br i1 %.not.i17.i.i.i345, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i346, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i344
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.ym) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i346

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i346: ; preds = %bb.dx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i344
  store ptr %i.yu, ptr %i.dv, align 8, !tbaa !63
  store ptr %i.yx, ptr %i.dx, align 8, !tbaa !62
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.ys
  store ptr %i.yy, ptr %i.hn, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339

_ZNSt6vectorIiSaIiEE9push_backEOi.exit339:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i346, %bb.dt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i338, %bb.dn
  %i.yz = add nsw i32 %.4497, 1                   ; 3 uses
  %i.za = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.za, i64 %i.tg
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !4
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %indvars.iv518
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !4
  %i.zf = icmp sgt i32 %i.zc, %i.ze
  br i1 %i.zf, label %bb.dy, label %bb.fa

bb.dy:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339
  %i.zg = load ptr, ptr %i.hm, align 8, !tbaa !64
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.zg, i64 %i.tg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !4
  %i.zj = and i32 %i.zi, 1
  %.not123.not = icmp eq i32 %i.zj, 0
  br i1 %.not123.not, label %bb.dz, label %bb.fa

bb.dz:                                            ; preds = %bb.dy
  %i.zk = load ptr, ptr %i.ho, align 8, !tbaa !77
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.tg
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !4  ; 4 uses
  %.not124 = icmp eq i32 %i.zm, %i.tc
  br i1 %.not124, label %bb.fa, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.zn = load ptr, ptr %i.dp, align 8, !tbaa !62 ; 4 uses
  %i.zo = load ptr, ptr %i.hh, align 8, !tbaa !68
  %.not.i348 = icmp eq ptr %i.zn, %i.zo
  br i1 %.not.i348, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.zp = trunc nuw nsw i64 %indvars.iv518 to i32
  store i32 %i.zp, ptr %i.zn, align 4, !tbaa !4
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  store ptr %i.zq, ptr %i.dp, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit355

bb.ec:                                            ; preds = %bb.ea
  %i.zr = load ptr, ptr %i.dn, align 8, !tbaa !63 ; 4 uses
  %i.zs = ptrtoint ptr %i.zn to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt                    ; 6 uses
  %i.zv = icmp eq i64 %i.zu, 9223372036854775804
  br i1 %i.zv, label %bb.ed, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i349

bb.ed:                                            ; preds = %bb.ec
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i349: ; preds = %bb.ec
  %i.zw = ashr exact i64 %i.zu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i350 = call i64 @llvm.umax.i64(i64 %i.zw, i64 1)
  %i.zx = add nsw i64 %.sroa.speculated.i.i.i350, %i.zw ; 2 uses
  %i.zy = icmp ult i64 %i.zx, %i.zw
  %i.zz = call i64 @llvm.umin.i64(i64 %i.zx, i64 2305843009213693951)
  %i.aaa = select i1 %i.zy, i64 2305843009213693951, i64 %i.zz ; 3 uses
  %.not.i.i.i351 = icmp ne i64 %i.aaa, 0
  call void @llvm.assume(i1 %.not.i.i.i351)
  %i.aab = shl nuw nsw i64 %i.aaa, 2
  %i.aac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aab) #33 ; 4 uses
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 %i.zu ; 2 uses
  %i.aae = trunc nuw nsw i64 %indvars.iv518 to i32
  store i32 %i.aae, ptr %i.aad, align 4, !tbaa !4
  %i.aaf = icmp sgt i64 %i.zu, 0
  br i1 %i.aaf, label %bb.ee, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i352

bb.ee:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i349
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aac, ptr align 4 %i.zr, i64 %i.zu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i352

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i352: ; preds = %bb.ee, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i349
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %.not.i17.i.i353 = icmp eq ptr %i.zr, null
  br i1 %.not.i17.i.i353, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i354, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i352
  call void @_ZdlPvm(ptr noundef nonnull %i.zr, i64 noundef %i.zu) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i354

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i354: ; preds = %bb.ef, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i352
  store ptr %i.aac, ptr %i.dn, align 8, !tbaa !63
  store ptr %i.aag, ptr %i.dp, align 8, !tbaa !62
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.aaa
  store ptr %i.aah, ptr %i.hh, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit355

_ZNSt6vectorIiSaIiEE9push_backERKi.exit355:       ; preds = %bb.eb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i354
  %i.aai = load ptr, ptr %i.dt, align 8, !tbaa !62 ; 4 uses
  %i.aaj = load ptr, ptr %i.hi, align 8, !tbaa !68
  %.not.i356 = icmp eq ptr %i.aai, %i.aaj
  br i1 %.not.i356, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit355
  store i32 %i.zm, ptr %i.aai, align 4, !tbaa !4
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  store ptr %i.aak, ptr %i.dt, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363

bb.eh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit355
  %i.aal = load ptr, ptr %i.dr, align 8, !tbaa !63 ; 4 uses
  %i.aam = ptrtoint ptr %i.aai to i64
  %i.aan = ptrtoint ptr %i.aal to i64
  %i.aao = sub i64 %i.aam, %i.aan                 ; 6 uses
  %i.aap = icmp eq i64 %i.aao, 9223372036854775804
  br i1 %i.aap, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i357

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i357: ; preds = %bb.eh
  %i.aaq = ashr exact i64 %i.aao, 2               ; 3 uses
  %.sroa.speculated.i.i.i358 = call i64 @llvm.umax.i64(i64 %i.aaq, i64 1)
  %i.aar = add nsw i64 %.sroa.speculated.i.i.i358, %i.aaq ; 2 uses
  %i.aas = icmp ult i64 %i.aar, %i.aaq
  %i.aat = call i64 @llvm.umin.i64(i64 %i.aar, i64 2305843009213693951)
  %i.aau = select i1 %i.aas, i64 2305843009213693951, i64 %i.aat ; 3 uses
  %.not.i.i.i359 = icmp ne i64 %i.aau, 0
  call void @llvm.assume(i1 %.not.i.i.i359)
  %i.aav = shl nuw nsw i64 %i.aau, 2
  %i.aaw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aav) #33 ; 4 uses
  %i.aax = getelementptr inbounds i8, ptr %i.aaw, i64 %i.aao ; 2 uses
  store i32 %i.zm, ptr %i.aax, align 4, !tbaa !4
  %i.aay = icmp sgt i64 %i.aao, 0
  br i1 %i.aay, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i360

bb.ej:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i357
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aaw, ptr align 4 %i.aal, i64 %i.aao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i360

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i360: ; preds = %bb.ej, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i357
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %.not.i17.i.i361 = icmp eq ptr %i.aal, null
  br i1 %.not.i17.i.i361, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i362, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.aal, i64 noundef %i.aao) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i362

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i362: ; preds = %bb.ek, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i360
  store ptr %i.aaw, ptr %i.dr, align 8, !tbaa !63
  store ptr %i.aaz, ptr %i.dt, align 8, !tbaa !62
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.aau
  store ptr %i.aba, ptr %i.hi, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363

_ZNSt6vectorIiSaIiEE9push_backERKi.exit363:       ; preds = %bb.eg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i362
  %i.abb = load ptr, ptr %i.hg, align 8, !tbaa !66 ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv518 ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !4 ; 2 uses
  %i.abe = sext i32 %i.zm to i64                  ; 3 uses
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abb, i64 %i.abe ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !4 ; 2 uses
  %i.abh = icmp sgt i32 %i.abd, %i.abg
  %i.abi = load ptr, ptr %i.ef, align 8, !tbaa !62 ; 4 uses
  %i.abj = load ptr, ptr %i.hj, align 8, !tbaa !68
  %.not.i364 = icmp eq ptr %i.abi, %i.abj
  br i1 %.not.i364, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363
  %i.abk = call i32 @llvm.smax.i32(i32 %i.abd, i32 %i.abg)
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !4
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  store ptr %i.abl, ptr %i.ef, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit371

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363
  %i.abm = load ptr, ptr %i.ed, align 8, !tbaa !63 ; 4 uses
  %i.abn = ptrtoint ptr %i.abi to i64
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = sub i64 %i.abn, %i.abo                 ; 6 uses
  %i.abq = icmp eq i64 %i.abp, 9223372036854775804
  br i1 %i.abq, label %bb.en, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i365

bb.en:                                            ; preds = %bb.em
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i365: ; preds = %bb.em
  %i.abr = ashr exact i64 %i.abp, 2               ; 3 uses
  %.sroa.speculated.i.i.i366 = call i64 @llvm.umax.i64(i64 %i.abr, i64 1)
  %i.abs = add nsw i64 %.sroa.speculated.i.i.i366, %i.abr ; 2 uses
  %i.abt = icmp ult i64 %i.abs, %i.abr
  %i.abu = call i64 @llvm.umin.i64(i64 %i.abs, i64 2305843009213693951)
  %i.abv = select i1 %i.abt, i64 2305843009213693951, i64 %i.abu ; 3 uses
  %.not.i.i.i367 = icmp ne i64 %i.abv, 0
  call void @llvm.assume(i1 %.not.i.i.i367)
  %i.abw = shl nuw nsw i64 %i.abv, 2
  %i.abx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abw) #33 ; 4 uses
  %i.aby = getelementptr inbounds i8, ptr %i.abx, i64 %i.abp ; 2 uses
  %.val755 = load i32, ptr %i.abc, align 4
  %.val756 = load i32, ptr %i.abf, align 4
  %i.abz = select i1 %i.abh, i32 %.val755, i32 %.val756
  store i32 %i.abz, ptr %i.aby, align 4, !tbaa !4
  %i.aca = icmp sgt i64 %i.abp, 0
  br i1 %i.aca, label %bb.eo, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i368

bb.eo:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i365
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.abx, ptr align 4 %i.abm, i64 %i.abp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i368

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i368: ; preds = %bb.eo, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i365
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %.not.i17.i.i369 = icmp eq ptr %i.abm, null
  br i1 %.not.i17.i.i369, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i370, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i368
  call void @_ZdlPvm(ptr noundef nonnull %i.abm, i64 noundef %i.abp) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i370

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i370: ; preds = %bb.ep, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i368
  store ptr %i.abx, ptr %i.ed, align 8, !tbaa !63
  store ptr %i.acb, ptr %i.ef, align 8, !tbaa !62
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %i.abv
  store ptr %i.acc, ptr %i.hj, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit371

_ZNSt6vectorIiSaIiEE9push_backERKi.exit371:       ; preds = %bb.el, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i370
  %i.acd = load ptr, ptr %i.hk, align 8, !tbaa !65
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.acd, i64 %i.abe
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !4
  %i.acg = shl i32 %i.acf, %i.we                  ; 2 uses
  %i.ach = load ptr, ptr %i.eb, align 8, !tbaa !62 ; 4 uses
  %i.aci = load ptr, ptr %i.hl, align 8, !tbaa !68
  %.not.i.i372 = icmp eq ptr %i.ach, %i.aci
  br i1 %.not.i.i372, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit371
  store i32 %i.acg, ptr %i.ach, align 4, !tbaa !4
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  store ptr %i.acj, ptr %i.eb, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit379

bb.er:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit371
  %i.ack = load ptr, ptr %i.dz, align 8, !tbaa !63 ; 4 uses
  %i.acl = ptrtoint ptr %i.ach to i64
  %i.acm = ptrtoint ptr %i.ack to i64
  %i.acn = sub i64 %i.acl, %i.acm                 ; 6 uses
  %i.aco = icmp eq i64 %i.acn, 9223372036854775804
  br i1 %i.aco, label %bb.es, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i373

bb.es:                                            ; preds = %bb.er
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i373: ; preds = %bb.er
  %i.acp = ashr exact i64 %i.acn, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i374 = call i64 @llvm.umax.i64(i64 %i.acp, i64 1)
  %i.acq = add nsw i64 %.sroa.speculated.i.i.i.i374, %i.acp ; 2 uses
  %i.acr = icmp ult i64 %i.acq, %i.acp
  %i.acs = call i64 @llvm.umin.i64(i64 %i.acq, i64 2305843009213693951)
  %i.act = select i1 %i.acr, i64 2305843009213693951, i64 %i.acs ; 3 uses
  %.not.i.i.i.i375 = icmp ne i64 %i.act, 0
  call void @llvm.assume(i1 %.not.i.i.i.i375)
  %i.acu = shl nuw nsw i64 %i.act, 2
  %i.acv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acu) #33 ; 4 uses
  %i.acw = getelementptr inbounds i8, ptr %i.acv, i64 %i.acn ; 2 uses
  store i32 %i.acg, ptr %i.acw, align 4, !tbaa !4
  %i.acx = icmp sgt i64 %i.acn, 0
  br i1 %i.acx, label %bb.et, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i376

bb.et:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i373
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acv, ptr align 4 %i.ack, i64 %i.acn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i376

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i376: ; preds = %bb.et, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i373
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  %.not.i17.i.i.i377 = icmp eq ptr %i.ack, null
  br i1 %.not.i17.i.i.i377, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i378, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i376
  call void @_ZdlPvm(ptr noundef nonnull %i.ack, i64 noundef %i.acn) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i378

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i378: ; preds = %bb.eu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i376
  store ptr %i.acv, ptr %i.dz, align 8, !tbaa !63
  store ptr %i.acy, ptr %i.eb, align 8, !tbaa !62
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.act
  store ptr %i.acz, ptr %i.hl, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit379

_ZNSt6vectorIiSaIiEE9push_backEOi.exit379:        ; preds = %bb.eq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i378
  %i.ada = load ptr, ptr %i.hm, align 8, !tbaa !64
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.ada, i64 %i.abe
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !4
  %i.add = shl i32 %i.adc, %i.we                  ; 2 uses
  %i.ade = load ptr, ptr %i.dx, align 8, !tbaa !62 ; 4 uses
  %i.adf = load ptr, ptr %i.hn, align 8, !tbaa !68
  %.not.i.i380 = icmp eq ptr %i.ade, %i.adf
  br i1 %.not.i.i380, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit379
  store i32 %i.add, ptr %i.ade, align 4, !tbaa !4
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  store ptr %i.adg, ptr %i.dx, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit387

bb.ew:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit379
  %i.adh = load ptr, ptr %i.dv, align 8, !tbaa !63 ; 4 uses
  %i.adi = ptrtoint ptr %i.ade to i64
  %i.adj = ptrtoint ptr %i.adh to i64
  %i.adk = sub i64 %i.adi, %i.adj                 ; 6 uses
  %i.adl = icmp eq i64 %i.adk, 9223372036854775804
  br i1 %i.adl, label %bb.ex, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i381

bb.ex:                                            ; preds = %bb.ew
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i381: ; preds = %bb.ew
  %i.adm = ashr exact i64 %i.adk, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i382 = call i64 @llvm.umax.i64(i64 %i.adm, i64 1)
  %i.adn = add nsw i64 %.sroa.speculated.i.i.i.i382, %i.adm ; 2 uses
  %i.ado = icmp ult i64 %i.adn, %i.adm
  %i.adp = call i64 @llvm.umin.i64(i64 %i.adn, i64 2305843009213693951)
  %i.adq = select i1 %i.ado, i64 2305843009213693951, i64 %i.adp ; 3 uses
  %.not.i.i.i.i383 = icmp ne i64 %i.adq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i383)
  %i.adr = shl nuw nsw i64 %i.adq, 2
  %i.ads = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adr) #33 ; 4 uses
  %i.adt = getelementptr inbounds i8, ptr %i.ads, i64 %i.adk ; 2 uses
  store i32 %i.add, ptr %i.adt, align 4, !tbaa !4
  %i.adu = icmp sgt i64 %i.adk, 0
  br i1 %i.adu, label %bb.ey, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i384

bb.ey:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i381
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ads, ptr align 4 %i.adh, i64 %i.adk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i384

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i384: ; preds = %bb.ey, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i381
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 4
  %.not.i17.i.i.i385 = icmp eq ptr %i.adh, null
  br i1 %.not.i17.i.i.i385, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i386, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i384
  call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef %i.adk) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i386

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i386: ; preds = %bb.ez, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i384
  store ptr %i.ads, ptr %i.dv, align 8, !tbaa !63
  store ptr %i.adv, ptr %i.dx, align 8, !tbaa !62
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.adq
  store ptr %i.adw, ptr %i.hn, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit387

_ZNSt6vectorIiSaIiEE9push_backEOi.exit387:        ; preds = %bb.ev, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i386
  %i.adx = add nsw i32 %.4497, 2
  br label %bb.fa

bb.fa:                                            ; preds = %bb.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit387, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339, %bb.dy, %bb.cp
  %.7 = phi i32 [ %.4497, %bb.cp ], [ %i.yz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit339 ], [ %i.yz, %bb.dy ], [ %i.adx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit387 ], [ %i.yz, %bb.dz ] ; 2 uses
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %i.ady = load i64, ptr %i.cy, align 8, !tbaa !47
  %sext757 = shl i64 %i.ady, 32
  %i.adz = ashr exact i64 %sext757, 32
  %i.aea = icmp slt i64 %indvars.iv.next519, %i.adz
  br i1 %i.aea, label %bb.cp, label %._crit_edge499, !llvm.loop !216

.preheader460:                                    ; preds = %bb.fj
  %i.aeb = icmp sgt i32 %i.afb, 0
  br i1 %i.aeb, label %.lr.ph505, label %.preheader459

.lr.ph505:                                        ; preds = %.preheader460
  %i.aec = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.aed = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.aee = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.aef = load ptr, ptr %i.q, align 8
  %i.aeg = load ptr, ptr %i.am, align 8
  %i.aeh = load ptr, ptr %i.u, align 8
  br label %bb.fk

bb.fb:                                            ; preds = %.lr.ph503, %bb.fj
  %indvars.iv521 = phi i64 [ 0, %.lr.ph503 ], [ %indvars.iv.next522, %bb.fj ] ; 4 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %indvars.iv521
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !4
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.su, i64 %indvars.iv521
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !4 ; 4 uses
  %i.aem = sext i32 %i.aej to i64                 ; 4 uses
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %i.aem ; 2 uses
  %i.aeo = load i32, ptr %i.aen, align 4, !tbaa !4
  %i.aep = icmp slt i32 %i.ael, %i.aeo
  br i1 %i.aep, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.ael, ptr %i.aen, align 4, !tbaa !4
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.aem ; 2 uses
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !4
  %i.aes = icmp sgt i32 %i.ael, %i.aer
  br i1 %i.aes, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 %i.ael, ptr %i.aeq, align 4, !tbaa !4
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv521
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !4 ; 4 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.aem ; 2 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !4
  %i.aex = icmp slt i32 %i.aeu, %i.aew
  br i1 %i.aex, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i32 %i.aeu, ptr %i.aev, align 4, !tbaa !4
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.aem ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !4
  %i.afa = icmp sgt i32 %i.aeu, %i.aez
  br i1 %i.afa, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i32 %i.aeu, ptr %i.aey, align 4, !tbaa !4
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.afb = load i32, ptr %i.dm, align 8, !tbaa !205 ; 3 uses
  %i.afc = sext i32 %i.afb to i64
  %i.afd = icmp slt i64 %indvars.iv.next522, %i.afc
  br i1 %i.afd, label %bb.fb, label %.preheader460, !llvm.loop !217

.preheader459:                                    ; preds = %bb.fm, %._crit_edge499, %.preheader460
  %i.afe = load i32, ptr %i.au, align 8, !tbaa !94
  %.not506 = icmp slt i32 %i.afe, 0
  br i1 %.not506, label %.preheader458, label %.lr.ph508

.lr.ph508:                                        ; preds = %.preheader459
  %i.aff = load ptr, ptr %i.ac, align 8, !tbaa !63
  %i.afg = load ptr, ptr %i.ck, align 8, !tbaa !63
  %i.afh = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.afi = load ptr, ptr %i.cr, align 8, !tbaa !63
  %i.afj = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.afk = load ptr, ptr %i.aq, align 8, !tbaa !63
  br label %bb.fn

bb.fk:                                            ; preds = %.lr.ph505, %bb.fm
  %i.afl = phi i32 [ %i.afb, %.lr.ph505 ], [ %i.agc, %bb.fm ]
  %indvars.iv524 = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next525, %bb.fm ] ; 4 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aec, i64 %indvars.iv524
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !4
  %i.afo = sext i32 %i.afn to i64                 ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !4
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aee, i64 %i.afo
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !4 ; 2 uses
  %i.aft = icmp slt i32 %i.afq, %i.afs
  br i1 %i.aft, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %indvars.iv524 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !4
  %i.afw = sub nsw i32 %i.afv, %i.afs
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !4
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %i.afo
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !4
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %indvars.iv524 ; 2 uses
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !4
  %i.agb = sub nsw i32 %i.aga, %i.afy
  store i32 %i.agb, ptr %i.afz, align 4, !tbaa !4
  %.pre558 = load i32, ptr %i.dm, align 8, !tbaa !205
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fk, %bb.fl
  %i.agc = phi i32 [ %i.afl, %bb.fk ], [ %.pre558, %bb.fl ] ; 2 uses
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1 ; 2 uses
  %i.agd = sext i32 %i.agc to i64
  %i.age = icmp slt i64 %indvars.iv.next525, %i.agd
  br i1 %i.age, label %bb.fk, label %.preheader459, !llvm.loop !218

.preheader458:                                    ; preds = %bb.fn, %.preheader459
  %i.agf = load i32, ptr %i.sq, align 4, !tbaa !207
  %i.agg = icmp sgt i32 %i.agf, 0
  br i1 %i.agg, label %.lr.ph510, label %.preheader

.lr.ph510:                                        ; preds = %.preheader458
  %i.agh = load ptr, ptr %i.ed, align 8, !tbaa !63
  %i.agi = load ptr, ptr %i.dv, align 8, !tbaa !63
  %i.agj = load ptr, ptr %i.eh, align 8, !tbaa !63
  %i.agk = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.agl = load ptr, ptr %i.dz, align 8, !tbaa !63
  %i.agm = load ptr, ptr %i.er, align 8, !tbaa !63
  %i.agn = load ptr, ptr %i.ev, align 8, !tbaa !63
  br label %bb.fo

bb.fn:                                            ; preds = %.lr.ph508, %bb.fn
  %indvars.iv527 = phi i64 [ 0, %.lr.ph508 ], [ %indvars.iv.next528, %bb.fn ] ; 8 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv527 ; 3 uses
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !4
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv527
  store i32 %i.agp, ptr %i.agq, align 4, !tbaa !4
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %indvars.iv527 ; 3 uses
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !4
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %indvars.iv527
  store i32 %i.ags, ptr %i.agt, align 4, !tbaa !4
  %i.agu = load i32, ptr %i.ago, align 4, !tbaa !4
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv527 ; 2 uses
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !4
  %i.agx = sub nsw i32 %i.agw, %i.agu
  store i32 %i.agx, ptr %i.agv, align 4, !tbaa !4
  %i.agy = load i32, ptr %i.agr, align 4, !tbaa !4
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %indvars.iv527 ; 2 uses
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !4
  %i.ahb = sub nsw i32 %i.aha, %i.agy
  store i32 %i.ahb, ptr %i.agz, align 4, !tbaa !4
  store i32 0, ptr %i.ago, align 4, !tbaa !4
  store i32 0, ptr %i.agr, align 4, !tbaa !4
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1
  %i.ahc = load i32, ptr %i.au, align 8, !tbaa !94
  %i.ahd = sext i32 %i.ahc to i64
  %.not.not = icmp slt i64 %indvars.iv527, %i.ahd
  br i1 %.not.not, label %bb.fn, label %.preheader458, !llvm.loop !219

.preheader457:                                    ; preds = %bb.fw
end_hunk_3
begin_hunk_4_@_ZN4Mesh24calc_face_list_wbidirmapEv:bb.a
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 2                 ; 3 uses
  %i.en = icmp ult i64 %i.em, %.pre-phi717
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit224
  %i.eo = sub nuw nsw i64 %.pre-phi717, %i.em
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.eh, i64 noundef %i.eo, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %.pre688.a = load i32, ptr %i.dl, align 8, !tbaa !94
  %.pre718 = add nsw i32 %.pre688.a, 1
  %.pre720 = sext i32 %.pre718 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit224
  %i.ep = icmp ugt i64 %i.em, %.pre-phi717
  br i1 %i.ep, label %bb.v, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.pre-phi717 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.eh, %i.eq
  br i1 %.not.i.i225, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i226

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i226:     ; preds = %bb.v
  store ptr %i.eq, ptr %i.df, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227:         ; preds = %bb.t, %bb.u, %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i226
  %.pre-phi721 = phi i64 [ %.pre720, %bb.t ], [ %.pre-phi717, %bb.u ], [ %.pre-phi717, %bb.v ], [ %.pre-phi717, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i226 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 -9999999, ptr %i.h, align 4, !tbaa !4
  %i.er = load ptr, ptr %i.dj, align 8, !tbaa !62 ; 3 uses
  %i.es = load ptr, ptr %i.dh, align 8, !tbaa !63 ; 2 uses
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = ashr exact i64 %i.ev, 2                 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %.pre-phi721
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227
  %i.ey = sub nuw nsw i64 %.pre-phi721, %i.ew
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr %i.er, i64 noundef %i.ey, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit227
  %i.ez = icmp ugt i64 %i.ew, %.pre-phi721
  br i1 %i.ez, label %bb.y, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230

bb.y:                                             ; preds = %bb.x
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.pre-phi721 ; 2 uses
  %.not.i.i228 = icmp eq ptr %i.er, %i.fa
  br i1 %.not.i.i228, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i229

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i229:     ; preds = %bb.y
  store ptr %i.fa, ptr %i.dj, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230:         ; preds = %bb.w, %bb.x, %bb.y, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1880 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !63 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !62
  %.not.i.i231 = icmp eq ptr %i.fe, %i.fc
  br i1 %.not.i.i231, label %_ZNSt6vectorIiSaIiEE5clearEv.exit233, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i232

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i232:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit233

_ZNSt6vectorIiSaIiEE5clearEv.exit233:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit230, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i232
  %i.ff = load i32, ptr %i.dl, align 8, !tbaa !94
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %.not = icmp eq i32 %i.fg, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit233
  %i.fh = sext i32 %i.fg to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 noundef %i.fh)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit233, %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !63 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !62
  %.not.i.i236 = icmp eq ptr %i.fl, %i.fj
  br i1 %.not.i.i236, label %_ZNSt6vectorIiSaIiEE5clearEv.exit238, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i237

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i237:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit238

_ZNSt6vectorIiSaIiEE5clearEv.exit238:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i237
  %i.fm = load i32, ptr %i.dl, align 8, !tbaa !94
  %i.fn = add nsw i32 %i.fm, 1                    ; 2 uses
  %.not950 = icmp eq i32 %i.fn, 0
  br i1 %.not950, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit241, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit238
  %i.fo = sext i32 %i.fn to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 noundef %i.fo)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit241

_ZNSt6vectorIiSaIiEE6resizeEm.exit241:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit238, %bb.aa
  %i.fp = load i64, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit241
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  store i32 0, ptr %i.fs, align 8, !tbaa !205
  br label %._crit_edge622

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit241
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1392
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.cm
  %i.gd = trunc i64 %i.ru to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 3 uses
  store i32 %.3, ptr %i.ge, align 8, !tbaa !205
  %i.gf = icmp sgt i32 %i.gd, 0
  br i1 %i.gf, label %.lr.ph621, label %._crit_edge622

.lr.ph621:                                        ; preds = %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !76
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.gj = load ptr, ptr %i.gi, align 8            ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.gn = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = load ptr, ptr %i.ad, align 8
  %i.gr = load ptr, ptr %i.am, align 8
  %wide.trip.count = and i64 %i.ru, 2147483647
  br label %bb.dn

bb.ab:                                            ; preds = %.lr.ph, %bb.cm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cm ] ; 15 uses
  %.0136616 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.cm ] ; 4 uses
  %i.gs = load ptr, ptr %i.ft, align 8, !tbaa !77
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 5 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp eq i64 %indvars.iv, %i.gv
  br i1 %i.gw, label %bb.cm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gx = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %i.gy = sext i32 %i.gu to i64                   ; 9 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = icmp slt i32 %i.ha, %i.hc
  %i.he = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.hf = load ptr, ptr %i.fv, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store ptr %i.hh, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ae:                                            ; preds = %bb.ac
  %i.hi = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.hj = ptrtoint ptr %i.he to i64
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 6 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775804
  br i1 %i.hm, label %bb.af, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.hn = ashr exact i64 %i.hl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = call i64 @llvm.umin.i64(i64 %i.ho, i64 2305843009213693951)
  %i.hr = select i1 %i.hp, i64 2305843009213693951, i64 %i.hq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hr, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hs = shl nuw nsw i64 %i.hr, 2
  %i.ht = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #33 ; 4 uses
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 %i.hl ; 2 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !4
  %i.hw = icmp sgt i64 %i.hl, 0
  br i1 %i.hw, label %bb.ag, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ag:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ht, ptr align 4 %i.hi, i64 %i.hl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ag, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %.not.i17.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hl) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ht, ptr %i.q, align 8, !tbaa !63
  store ptr %i.hx, ptr %i.s, align 8, !tbaa !62
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hr
  store ptr %i.hy, ptr %i.fv, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.hz = load ptr, ptr %i.w, align 8, !tbaa !62  ; 4 uses
  %i.ia = load ptr, ptr %i.fw, align 8, !tbaa !68
  %.not.i242 = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i242, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.gu, ptr %i.hz, align 4, !tbaa !4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store ptr %i.ib, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit249

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ic = load ptr, ptr %i.u, align 8, !tbaa !63  ; 4 uses
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie                    ; 6 uses
  %i.ig = icmp eq i64 %i.if, 9223372036854775804
  br i1 %i.ig, label %bb.ak, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i243

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i243: ; preds = %bb.aj
  %i.ih = ashr exact i64 %i.if, 2                 ; 3 uses
  %.sroa.speculated.i.i.i244 = call i64 @llvm.umax.i64(i64 %i.ih, i64 1)
  %i.ii = add nsw i64 %.sroa.speculated.i.i.i244, %i.ih ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.ih
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ii, i64 2305843009213693951)
  %i.il = select i1 %i.ij, i64 2305843009213693951, i64 %i.ik ; 3 uses
  %.not.i.i.i245 = icmp ne i64 %i.il, 0
  call void @llvm.assume(i1 %.not.i.i.i245)
  %i.im = shl nuw nsw i64 %i.il, 2
  %i.in = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #33 ; 4 uses
  %i.io = getelementptr inbounds i8, ptr %i.in, i64 %i.if ; 2 uses
  store i32 %i.gu, ptr %i.io, align 4, !tbaa !4
  %i.ip = icmp sgt i64 %i.if, 0
  br i1 %i.ip, label %bb.al, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i246

bb.al:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i243
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.in, ptr align 4 %i.ic, i64 %i.if, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i246

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i246: ; preds = %bb.al, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i243
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %.not.i17.i.i247 = icmp eq ptr %i.ic, null
  br i1 %.not.i17.i.i247, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i248, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i246
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.if) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i248

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i248: ; preds = %bb.am, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i246
  store ptr %i.in, ptr %i.u, align 8, !tbaa !63
  store ptr %i.iq, ptr %i.w, align 8, !tbaa !62
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.il
  store ptr %i.ir, ptr %i.fw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit249

_ZNSt6vectorIiSaIiEE9push_backERKi.exit249:       ; preds = %bb.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i248
  %i.is = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4  ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.gy ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !4  ; 2 uses
  %i.ix = icmp sgt i32 %i.iu, %i.iw
  %i.iy = load ptr, ptr %i.cr, align 8, !tbaa !62 ; 4 uses
  %i.iz = load ptr, ptr %i.fx, align 8, !tbaa !68
  %.not.i250 = icmp eq ptr %i.iy, %i.iz
  br i1 %.not.i250, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit249
  %i.ja = call i32 @llvm.smax.i32(i32 %i.iu, i32 %i.iw)
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store ptr %i.jb, ptr %i.cr, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit249
  %i.jc = load ptr, ptr %i.cp, align 8, !tbaa !63 ; 4 uses
  %i.jd = ptrtoint ptr %i.iy to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je                    ; 6 uses
  %i.jg = icmp eq i64 %i.jf, 9223372036854775804
  br i1 %i.jg, label %bb.ap, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i251

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i251: ; preds = %bb.ao
  %i.jh = ashr exact i64 %i.jf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i252 = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.ji = add nsw i64 %.sroa.speculated.i.i.i252, %i.jh ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = call i64 @llvm.umin.i64(i64 %i.ji, i64 2305843009213693951)
  %i.jl = select i1 %i.jj, i64 2305843009213693951, i64 %i.jk ; 3 uses
  %.not.i.i.i253 = icmp ne i64 %i.jl, 0
  call void @llvm.assume(i1 %.not.i.i.i253)
  %i.jm = shl nuw nsw i64 %i.jl, 2
  %i.jn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #33 ; 4 uses
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jf ; 2 uses
  %.val = load i32, ptr %i.it, align 4
  %.val951 = load i32, ptr %i.iv, align 4
  %i.jp = select i1 %i.ix, i32 %.val, i32 %.val951
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !4
  %i.jq = icmp sgt i64 %i.jf, 0
  br i1 %i.jq, label %bb.aq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i254

bb.aq:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i251
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jn, ptr align 4 %i.jc, i64 %i.jf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i254

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i254: ; preds = %bb.aq, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i251
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %.not.i17.i.i255 = icmp eq ptr %i.jc, null
  br i1 %.not.i17.i.i255, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i256, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i254
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jf) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i256

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i256: ; preds = %bb.ar, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i254
  store ptr %i.jn, ptr %i.cp, align 8, !tbaa !63
  store ptr %i.jr, ptr %i.cr, align 8, !tbaa !62
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jl
  store ptr %i.js, ptr %i.fx, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257

_ZNSt6vectorIiSaIiEE9push_backERKi.exit257:       ; preds = %bb.an, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i256
  %i.jt = load ptr, ptr %i.fy, align 8, !tbaa !64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.gy
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !4
  %i.jw = zext i1 %i.hd to i32                    ; 5 uses
  %i.jx = shl i32 %i.jv, %i.jw                    ; 2 uses
  %i.jy = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 4 uses
  %i.jz = load ptr, ptr %i.fz, align 8, !tbaa !68
  %.not.i.i258 = icmp eq ptr %i.jy, %i.jz
  br i1 %.not.i.i258, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store ptr %i.ka, ptr %i.cj, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit257
  %i.kb = load ptr, ptr %i.ch, align 8, !tbaa !63 ; 4 uses
  %i.kc = ptrtoint ptr %i.jy to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd                    ; 6 uses
  %i.kf = icmp eq i64 %i.ke, 9223372036854775804
  br i1 %i.kf, label %bb.au, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.kg = ashr exact i64 %i.ke, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kg, i64 1)
  %i.kh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kg ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.kg
  %i.kj = call i64 @llvm.umin.i64(i64 %i.kh, i64 2305843009213693951)
  %i.kk = select i1 %i.ki, i64 2305843009213693951, i64 %i.kj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kl = shl nuw nsw i64 %i.kk, 2
  %i.km = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #33 ; 4 uses
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 %i.ke ; 2 uses
  store i32 %i.jx, ptr %i.kn, align 4, !tbaa !4
  %i.ko = icmp sgt i64 %i.ke, 0
  br i1 %i.ko, label %bb.av, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.av:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.km, ptr align 4 %i.kb, i64 %i.ke, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.av, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.ke) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.km, ptr %i.ch, align 8, !tbaa !63
  store ptr %i.kp, ptr %i.cj, align 8, !tbaa !62
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kk
  store ptr %i.kq, ptr %i.fz, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.kr = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.gy
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !4
  %i.kw = icmp slt i32 %i.kt, %i.kv
  %.pre689.a = load ptr, ptr %i.ga, align 8, !tbaa !65 ; 3 uses
  br i1 %i.kw, label %bb.ax, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.pre690.a = load ptr, ptr %i.cn, align 8, !tbaa !62
  %.pre692 = load ptr, ptr %i.gb, align 8, !tbaa !68
  br label %bb.be

bb.ax:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.pre689.a, i64 %indvars.iv
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !4
  %i.kz = and i32 %i.ky, -2147483647
  %.not552 = icmp eq i32 %i.kz, 1
  %.pre691 = load ptr, ptr %i.cn, align 8, !tbaa !62 ; 5 uses
  %.pre693 = load ptr, ptr %i.gb, align 8, !tbaa !68 ; 2 uses
  br i1 %.not552, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.la = getelementptr inbounds [4 x i8], ptr %.pre689.a, i64 %i.gy
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !4
  %i.lc = shl i32 %i.lb, %i.jw
  %i.ld = add nsw i32 %i.lc, 1                    ; 2 uses
  %.not.i.i259 = icmp eq ptr %.pre691, %.pre693
  br i1 %.not.i.i259, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.ld, ptr %.pre691, align 4, !tbaa !4
  %i.le = getelementptr inbounds nuw i8, ptr %.pre691, i64 4
  store ptr %i.le, ptr %i.cn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266

bb.ba:                                            ; preds = %bb.ay
  %i.lf = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 4 uses
  %i.lg = ptrtoint ptr %.pre691 to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 6 uses
  %i.lj = icmp eq i64 %i.li, 9223372036854775804
  br i1 %i.lj, label %bb.bb, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i260

bb.bb:                                            ; preds = %bb.ba
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i260: ; preds = %bb.ba
  %i.lk = ashr exact i64 %i.li, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i261 = call i64 @llvm.umax.i64(i64 %i.lk, i64 1)
  %i.ll = add nsw i64 %.sroa.speculated.i.i.i.i261, %i.lk ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lk
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ll, i64 2305843009213693951)
  %i.lo = select i1 %i.lm, i64 2305843009213693951, i64 %i.ln ; 3 uses
  %.not.i.i.i.i262 = icmp ne i64 %i.lo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i262)
  %i.lp = shl nuw nsw i64 %i.lo, 2
  %i.lq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #33 ; 4 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.li ; 2 uses
  store i32 %i.ld, ptr %i.lr, align 4, !tbaa !4
  %i.ls = icmp sgt i64 %i.li, 0
  br i1 %i.ls, label %bb.bc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i263

bb.bc:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i260
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lq, ptr align 4 %i.lf, i64 %i.li, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i263

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i263: ; preds = %bb.bc, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i260
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %.not.i17.i.i.i264 = icmp eq ptr %i.lf, null
  br i1 %.not.i17.i.i.i264, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i265, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i263
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.li) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i265

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i265: ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i263
  store ptr %i.lq, ptr %i.cl, align 8, !tbaa !63
  store ptr %i.lt, ptr %i.cn, align 8, !tbaa !62
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lo
  store ptr %i.lu, ptr %i.gb, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge, %bb.ax
  %i.lv = phi ptr [ %.pre692, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre693, %bb.ax ] ; 2 uses
  %i.lw = phi ptr [ %.pre690.a, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit._crit_edge ], [ %.pre691, %bb.ax ] ; 3 uses
  %i.lx = getelementptr inbounds [4 x i8], ptr %.pre689.a, i64 %i.gy
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !4
  %i.lz = shl i32 %i.ly, %i.jw                    ; 2 uses
  %.not.i.i267 = icmp eq ptr %i.lw, %i.lv
  br i1 %.not.i.i267, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %i.lz, ptr %i.lw, align 4, !tbaa !4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store ptr %i.ma, ptr %i.cn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266

bb.bg:                                            ; preds = %bb.be
  %i.mb = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 4 uses
  %i.mc = ptrtoint ptr %i.lv to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 6 uses
  %i.mf = icmp eq i64 %i.me, 9223372036854775804
  br i1 %i.mf, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268: ; preds = %bb.bg
  %i.mg = ashr exact i64 %i.me, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i269 = call i64 @llvm.umax.i64(i64 %i.mg, i64 1)
  %i.mh = add nsw i64 %.sroa.speculated.i.i.i.i269, %i.mg ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.mg
  %i.mj = call i64 @llvm.umin.i64(i64 %i.mh, i64 2305843009213693951)
  %i.mk = select i1 %i.mi, i64 2305843009213693951, i64 %i.mj ; 3 uses
  %.not.i.i.i.i270 = icmp ne i64 %i.mk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i270)
  %i.ml = shl nuw nsw i64 %i.mk, 2
  %i.mm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #33 ; 4 uses
  %i.mn = getelementptr inbounds i8, ptr %i.mm, i64 %i.me ; 2 uses
  store i32 %i.lz, ptr %i.mn, align 4, !tbaa !4
  %i.mo = icmp sgt i64 %i.me, 0
  br i1 %i.mo, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271

bb.bi:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mm, ptr align 4 %i.mb, i64 %i.me, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271: ; preds = %bb.bi, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %.not.i17.i.i.i272 = icmp eq ptr %i.mb, null
  br i1 %.not.i17.i.i.i272, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.me) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i271
  store ptr %i.mm, ptr %i.cl, align 8, !tbaa !63
  store ptr %i.mp, ptr %i.cn, align 8, !tbaa !62
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mk
  store ptr %i.mq, ptr %i.gb, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266

_ZNSt6vectorIiSaIiEE9push_backEOi.exit266:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i273, %bb.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i265, %bb.az
  %i.mr = load ptr, ptr %i.ai, align 8, !tbaa !63
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv
  store i32 %.0136616, ptr %i.ms, align 4, !tbaa !4
  %i.mt = add nsw i32 %.0136616, 1                ; 4 uses
  %i.mu = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %i.gy
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !4
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !4
  %i.mz = icmp sgt i32 %i.mw, %i.my
  br i1 %i.mz, label %bb.bk, label %bb.cm

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266
  %i.na = load ptr, ptr %i.ga, align 8, !tbaa !65
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.gy
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !4
  %i.nd = and i32 %i.nc, 1
  %.not168.not = icmp eq i32 %i.nd, 0
  br i1 %.not168.not, label %bb.bl, label %bb.cm

bb.bl:                                            ; preds = %bb.bk
  %i.ne = load ptr, ptr %i.gc, align 8, !tbaa !79
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.ne, i64 %i.gy
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !4  ; 4 uses
  %.not169 = icmp eq i32 %i.ng, %i.gu
  br i1 %.not169, label %bb.cm, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nh = load ptr, ptr %i.s, align 8, !tbaa !62  ; 4 uses
  %i.ni = load ptr, ptr %i.fv, align 8, !tbaa !68
  %.not.i275 = icmp eq ptr %i.nh, %i.ni
  br i1 %.not.i275, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.nk, ptr %i.s, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit282

bb.bo:                                            ; preds = %bb.bm
  %i.nl = load ptr, ptr %i.q, align 8, !tbaa !63  ; 4 uses
  %i.nm = ptrtoint ptr %i.nh to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn                    ; 6 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775804
  br i1 %i.np, label %bb.bp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276

bb.bp:                                            ; preds = %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276: ; preds = %bb.bo
  %i.nq = ashr exact i64 %i.no, 2                 ; 3 uses
  %.sroa.speculated.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i277, %i.nq ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.nq
  %i.nt = call i64 @llvm.umin.i64(i64 %i.nr, i64 2305843009213693951)
  %i.nu = select i1 %i.ns, i64 2305843009213693951, i64 %i.nt ; 3 uses
  %.not.i.i.i278 = icmp ne i64 %i.nu, 0
  call void @llvm.assume(i1 %.not.i.i.i278)
  %i.nv = shl nuw nsw i64 %i.nu, 2
  %i.nw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #33 ; 4 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %i.no ; 2 uses
  %i.ny = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ny, ptr %i.nx, align 4, !tbaa !4
  %i.nz = icmp sgt i64 %i.no, 0
  br i1 %i.nz, label %bb.bq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i279

bb.bq:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nw, ptr align 4 %i.nl, i64 %i.no, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i279

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i279: ; preds = %bb.bq, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %.not.i17.i.i280 = icmp eq ptr %i.nl, null
  br i1 %.not.i17.i.i280, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i281, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i279
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.no) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i281

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i281: ; preds = %bb.br, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i279
  store ptr %i.nw, ptr %i.q, align 8, !tbaa !63
  store ptr %i.oa, ptr %i.s, align 8, !tbaa !62
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nu
  store ptr %i.ob, ptr %i.fv, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit282

_ZNSt6vectorIiSaIiEE9push_backERKi.exit282:       ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i281
  %i.oc = load ptr, ptr %i.w, align 8, !tbaa !62  ; 4 uses
  %i.od = load ptr, ptr %i.fw, align 8, !tbaa !68
  %.not.i283 = icmp eq ptr %i.oc, %i.od
  br i1 %.not.i283, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit282
  store i32 %i.ng, ptr %i.oc, align 4, !tbaa !4
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store ptr %i.oe, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit282
  %i.of = load ptr, ptr %i.u, align 8, !tbaa !63  ; 4 uses
  %i.og = ptrtoint ptr %i.oc to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh                    ; 6 uses
  %i.oj = icmp eq i64 %i.oi, 9223372036854775804
  br i1 %i.oj, label %bb.bu, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284

bb.bu:                                            ; preds = %bb.bt
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284: ; preds = %bb.bt
  %i.ok = ashr exact i64 %i.oi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i285 = call i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = add nsw i64 %.sroa.speculated.i.i.i285, %i.ok ; 2 uses
  %i.om = icmp ult i64 %i.ol, %i.ok
  %i.on = call i64 @llvm.umin.i64(i64 %i.ol, i64 2305843009213693951)
  %i.oo = select i1 %i.om, i64 2305843009213693951, i64 %i.on ; 3 uses
  %.not.i.i.i286 = icmp ne i64 %i.oo, 0
  call void @llvm.assume(i1 %.not.i.i.i286)
  %i.op = shl nuw nsw i64 %i.oo, 2
  %i.oq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.op) #33 ; 4 uses
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 %i.oi ; 2 uses
  store i32 %i.ng, ptr %i.or, align 4, !tbaa !4
  %i.os = icmp sgt i64 %i.oi, 0
  br i1 %i.os, label %bb.bv, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i287

bb.bv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oq, ptr align 4 %i.of, i64 %i.oi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i287

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i287: ; preds = %bb.bv, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %.not.i17.i.i288 = icmp eq ptr %i.of, null
  br i1 %.not.i17.i.i288, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i289, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i287
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.oi) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i289

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i289: ; preds = %bb.bw, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i287
  store ptr %i.oq, ptr %i.u, align 8, !tbaa !63
  store ptr %i.ot, ptr %i.w, align 8, !tbaa !62
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.oo
  store ptr %i.ou, ptr %i.fw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290

_ZNSt6vectorIiSaIiEE9push_backERKi.exit290:       ; preds = %bb.bs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i289
  %i.ov = load ptr, ptr %i.fu, align 8, !tbaa !66 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %indvars.iv ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !4  ; 2 uses
  %i.oy = sext i32 %i.ng to i64                   ; 3 uses
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.ov, i64 %i.oy ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !4  ; 2 uses
  %i.pb = icmp sgt i32 %i.ox, %i.pa
  %i.pc = load ptr, ptr %i.cr, align 8, !tbaa !62 ; 4 uses
  %i.pd = load ptr, ptr %i.fx, align 8, !tbaa !68
  %.not.i291 = icmp eq ptr %i.pc, %i.pd
  br i1 %.not.i291, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290
  %i.pe = call i32 @llvm.smax.i32(i32 %i.ox, i32 %i.pa)
  store i32 %i.pe, ptr %i.pc, align 4, !tbaa !4
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store ptr %i.pf, ptr %i.cr, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290
  %i.pg = load ptr, ptr %i.cp, align 8, !tbaa !63 ; 4 uses
  %i.ph = ptrtoint ptr %i.pc to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi                    ; 6 uses
  %i.pk = icmp eq i64 %i.pj, 9223372036854775804
  br i1 %i.pk, label %bb.bz, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292

bb.bz:                                            ; preds = %bb.by
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292: ; preds = %bb.by
  %i.pl = ashr exact i64 %i.pj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i293 = call i64 @llvm.umax.i64(i64 %i.pl, i64 1)
  %i.pm = add nsw i64 %.sroa.speculated.i.i.i293, %i.pl ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.pl
  %i.po = call i64 @llvm.umin.i64(i64 %i.pm, i64 2305843009213693951)
  %i.pp = select i1 %i.pn, i64 2305843009213693951, i64 %i.po ; 3 uses
  %.not.i.i.i294 = icmp ne i64 %i.pp, 0
  call void @llvm.assume(i1 %.not.i.i.i294)
  %i.pq = shl nuw nsw i64 %i.pp, 2
  %i.pr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pq) #33 ; 4 uses
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 %i.pj ; 2 uses
  %.val952 = load i32, ptr %i.ow, align 4
  %.val953 = load i32, ptr %i.oz, align 4
  %i.pt = select i1 %i.pb, i32 %.val952, i32 %.val953
  store i32 %i.pt, ptr %i.ps, align 4, !tbaa !4
  %i.pu = icmp sgt i64 %i.pj, 0
  br i1 %i.pu, label %bb.ca, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295

bb.ca:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pr, ptr align 4 %i.pg, i64 %i.pj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295: ; preds = %bb.ca, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %.not.i17.i.i296 = icmp eq ptr %i.pg, null
  br i1 %.not.i17.i.i296, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pj) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297: ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i295
  store ptr %i.pr, ptr %i.cp, align 8, !tbaa !63
  store ptr %i.pv, ptr %i.cr, align 8, !tbaa !62
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pp
  store ptr %i.pw, ptr %i.fx, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298

_ZNSt6vectorIiSaIiEE9push_backERKi.exit298:       ; preds = %bb.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i297
  %i.px = load ptr, ptr %i.fy, align 8, !tbaa !64
  %i.py = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.oy
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  %i.qa = shl i32 %i.pz, %i.jw                    ; 2 uses
  %i.qb = load ptr, ptr %i.cj, align 8, !tbaa !62 ; 4 uses
  %i.qc = load ptr, ptr %i.fz, align 8, !tbaa !68
  %.not.i.i299.a = icmp eq ptr %i.qb, %i.qc
  br i1 %.not.i.i299.a, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  store ptr %i.qd, ptr %i.cj, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298
  %i.qe = load ptr, ptr %i.ch, align 8, !tbaa !63 ; 4 uses
  %i.qf = ptrtoint ptr %i.qb to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg                    ; 6 uses
  %i.qi = icmp eq i64 %i.qh, 9223372036854775804
  br i1 %i.qi, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300.a

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300.a: ; preds = %bb.cd
  %i.qj = ashr exact i64 %i.qh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i301.a = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i.i301.a, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 2305843009213693951)
  %i.qn = select i1 %i.ql, i64 2305843009213693951, i64 %i.qm ; 3 uses
  %.not.i.i.i.i302 = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i302)
  %i.qo = shl nuw nsw i64 %i.qn, 2
  %i.qp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #33 ; 4 uses
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store i32 %i.qa, ptr %i.qq, align 4, !tbaa !4
  %i.qr = icmp sgt i64 %i.qh, 0
  br i1 %i.qr, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303

bb.cf:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300.a
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qp, ptr align 4 %i.qe, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303: ; preds = %bb.cf, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300.a
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %.not.i17.i.i.i304 = icmp eq ptr %i.qe, null
  br i1 %.not.i17.i.i.i304, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qh) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i303
  store ptr %i.qp, ptr %i.ch, align 8, !tbaa !63
  store ptr %i.qs, ptr %i.cj, align 8, !tbaa !62
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qn
  store ptr %i.qt, ptr %i.fz, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306

_ZNSt6vectorIiSaIiEE9push_backEOi.exit306:        ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i305
  %i.qu = load ptr, ptr %i.ga, align 8, !tbaa !65
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.oy
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !4
  %i.qx = shl i32 %i.qw, %i.jw                    ; 2 uses
  %i.qy = load ptr, ptr %i.cn, align 8, !tbaa !62 ; 4 uses
  %i.qz = load ptr, ptr %i.gb, align 8, !tbaa !68
  %.not.i.i307 = icmp eq ptr %i.qy, %i.qz
  br i1 %.not.i.i307, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  store ptr %i.ra, ptr %i.cn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314

bb.ci:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
  %i.rb = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 4 uses
  %i.rc = ptrtoint ptr %i.qy to i64
  %i.rd = ptrtoint ptr %i.rb to i64
  %i.re = sub i64 %i.rc, %i.rd                    ; 6 uses
  %i.rf = icmp eq i64 %i.re, 9223372036854775804
  br i1 %i.rf, label %bb.cj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308

bb.cj:                                            ; preds = %bb.ci
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308: ; preds = %bb.ci
  %i.rg = ashr exact i64 %i.re, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i309 = call i64 @llvm.umax.i64(i64 %i.rg, i64 1)
  %i.rh = add nsw i64 %.sroa.speculated.i.i.i.i309, %i.rg ; 2 uses
  %i.ri = icmp ult i64 %i.rh, %i.rg
  %i.rj = call i64 @llvm.umin.i64(i64 %i.rh, i64 2305843009213693951)
  %i.rk = select i1 %i.ri, i64 2305843009213693951, i64 %i.rj ; 3 uses
  %.not.i.i.i.i310 = icmp ne i64 %i.rk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i310)
  %i.rl = shl nuw nsw i64 %i.rk, 2
  %i.rm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rl) #33 ; 4 uses
  %i.rn = getelementptr inbounds i8, ptr %i.rm, i64 %i.re ; 2 uses
  store i32 %i.qx, ptr %i.rn, align 4, !tbaa !4
  %i.ro = icmp sgt i64 %i.re, 0
  br i1 %i.ro, label %bb.ck, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311

bb.ck:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rm, ptr align 4 %i.rb, i64 %i.re, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311: ; preds = %bb.ck, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i308
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %.not.i17.i.i.i312 = icmp eq ptr %i.rb, null
  br i1 %.not.i17.i.i.i312, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311
  call void @_ZdlPvm(ptr noundef nonnull %i.rb, i64 noundef %i.re) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313: ; preds = %bb.cl, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i311
  store ptr %i.rm, ptr %i.cl, align 8, !tbaa !63
  store ptr %i.rp, ptr %i.cn, align 8, !tbaa !62
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.rk
  store ptr %i.rq, ptr %i.gb, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314

_ZNSt6vectorIiSaIiEE9push_backEOi.exit314:        ; preds = %bb.ch, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i313
  %i.rr = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv
  store i32 %i.mt, ptr %i.rs, align 4, !tbaa !4
  %i.rt = add nsw i32 %.0136616, 2
  br label %bb.cm

bb.cm:                                            ; preds = %bb.bl, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266, %bb.bk, %bb.ab
  %.3 = phi i32 [ %.0136616, %bb.ab ], [ %i.mt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit266 ], [ %i.mt, %bb.bk ], [ %i.rt, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit314 ], [ %i.mt, %bb.bl ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ru = load i64, ptr %i.aq, align 8, !tbaa !47 ; 5 uses
  %sext = shl i64 %i.ru, 32
  %i.rv = ashr exact i64 %sext, 32
  %i.rw = icmp slt i64 %indvars.iv.next, %i.rv
  br i1 %i.rw, label %bb.ab, label %._crit_edge, !llvm.loop !223

._crit_edge622:                                   ; preds = %bb.dt, %._crit_edge.thread, %._crit_edge
  %i.rx = phi ptr [ %i.fs, %._crit_edge.thread ], [ %i.ge, %._crit_edge ], [ %i.ge, %bb.dt ] ; 3 uses
  %.lcssa592964 = phi i64 [ %i.fp, %._crit_edge.thread ], [ %i.ru, %._crit_edge ], [ %i.ru, %bb.dt ] ; 7 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 5 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !63 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 8 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !62
  %.not.i.i315.a = icmp eq ptr %i.sb, %i.rz
  br i1 %.not.i.i315.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit317.a, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i316.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i316.a:   ; preds = %._crit_edge622
  store ptr %i.rz, ptr %i.sa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit317.a

_ZNSt6vectorIiSaIiEE5clearEv.exit317.a:           ; preds = %._crit_edge622, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i316.a
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 5 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !63 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 8 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !62
  %.not.i.i318.a = icmp eq ptr %i.sf, %i.sd
  br i1 %.not.i.i318.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit320.a, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i319.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i319.a:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit317.a
  store ptr %i.sd, ptr %i.se, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit320.a

_ZNSt6vectorIiSaIiEE5clearEv.exit320.a:           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit317.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i319.a
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !63 ; 5 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !62 ; 2 uses
  %.not.i.i321.a = icmp eq ptr %i.sj, %i.sh
  br i1 %.not.i.i321.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit323.a, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i322.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i322.a:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit320.a
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit323.a

_ZNSt6vectorIiSaIiEE5clearEv.exit323.a:           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit320.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i322.a
  %i.sk = phi ptr [ %i.sj, %_ZNSt6vectorIiSaIiEE5clearEv.exit320.a ], [ %i.sh, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i322.a ] ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 4 uses
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !63 ; 6 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 4 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !62 ; 2 uses
  %.not.i.i324.a = icmp eq ptr %i.so, %i.sm
  br i1 %.not.i.i324.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit326, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i325.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i325.a:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit323.a
  store ptr %i.sm, ptr %i.sn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit326

_ZNSt6vectorIiSaIiEE5clearEv.exit326:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit323.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i325.a
  %i.sp = phi ptr [ %i.so, %_ZNSt6vectorIiSaIiEE5clearEv.exit323.a ], [ %i.sm, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i325.a ] ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 2096 ; 5 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !63 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 2104 ; 4 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !62
  %.not.i.i327.a = icmp eq ptr %i.st, %i.sr
  br i1 %.not.i.i327.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit329, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i328.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i328.a:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit326
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit329

_ZNSt6vectorIiSaIiEE5clearEv.exit329:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit326, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i328.a
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 5 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !63 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 4 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !62
  %.not.i.i330.a = icmp eq ptr %i.sx, %i.sv
  br i1 %.not.i.i330.a, label %_ZNSt6vectorIiSaIiEE5clearEv.exit332, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i331.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i331.a:   ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit329
  store ptr %i.sv, ptr %i.sw, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit332

_ZNSt6vectorIiSaIiEE5clearEv.exit332:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit329, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i331.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i32 -1, ptr %i.i, align 4, !tbaa !4
  %i.sy = ptrtoint ptr %i.sk to i64
  %i.sz = ptrtoint ptr %i.sh to i64
  %i.ta = sub i64 %i.sy, %i.sz
  %i.tb = ashr exact i64 %i.ta, 2                 ; 3 uses
  %i.tc = icmp ugt i64 %.lcssa592964, %i.tb
  br i1 %i.tc, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit332
  %i.td = sub nuw i64 %.lcssa592964, %i.tb
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.sg, ptr %i.sk, i64 noundef %i.td, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  %.pre694 = load i64, ptr %i.aq, align 8, !tbaa !47
  %.pre695 = load ptr, ptr %i.sn, align 8, !tbaa !62
  %.pre696 = load ptr, ptr %i.sl, align 8, !tbaa !63
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit332
  %i.te = icmp ult i64 %.lcssa592964, %i.tb
  br i1 %i.te, label %bb.cp, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a

bb.cp:                                            ; preds = %bb.co
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %.lcssa592964 ; 2 uses
  %.not.i.i333.a = icmp eq ptr %i.sk, %i.tf
  br i1 %.not.i.i333.a, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a:   ; preds = %bb.cp
  store ptr %i.tf, ptr %i.si, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a:       ; preds = %bb.cn, %bb.co, %bb.cp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a
  %i.tg = phi ptr [ %.pre696, %bb.cn ], [ %i.sm, %bb.co ], [ %i.sm, %bb.cp ], [ %i.sm, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a ] ; 2 uses
  %i.th = phi ptr [ %.pre695, %bb.cn ], [ %i.sp, %bb.co ], [ %i.sp, %bb.cp ], [ %i.sp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a ] ; 3 uses
  %i.ti = phi i64 [ %.pre694, %bb.cn ], [ %.lcssa592964, %bb.co ], [ %.lcssa592964, %bb.cp ], [ %.lcssa592964, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i334.a ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i32 -1, ptr %i.j, align 4, !tbaa !4
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = ptrtoint ptr %i.tg to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = ashr exact i64 %i.tl, 2                 ; 3 uses
  %i.tn = icmp ugt i64 %i.ti, %i.tm
  br i1 %i.tn, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a
  %i.to = sub nuw i64 %i.ti, %i.tm
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, ptr %i.th, i64 noundef %i.to, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %.pre697 = load i64, ptr %i.aq, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit335.a
  %i.tp = icmp ult i64 %i.ti, %i.tm
  br i1 %i.tp, label %bb.cs, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338

bb.cs:                                            ; preds = %bb.cr
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.ti ; 2 uses
  %.not.i.i336.a = icmp eq ptr %i.th, %i.tq
  br i1 %.not.i.i336.a, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i337.a

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i337.a:   ; preds = %bb.cs
  store ptr %i.tq, ptr %i.sn, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338:         ; preds = %bb.cq, %bb.cr, %bb.cs, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i337.a
  %i.tr = phi i64 [ %.pre697, %bb.cq ], [ %i.ti, %bb.cr ], [ %i.ti, %bb.cs ], [ %i.ti, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i337.a ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  store i32 -1, ptr %i.k, align 4, !tbaa !4
  %i.ts = load ptr, ptr %i.ss, align 8, !tbaa !62 ; 3 uses
  %i.tt = load ptr, ptr %i.sq, align 8, !tbaa !63 ; 2 uses
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = ptrtoint ptr %i.tt to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = ashr exact i64 %i.tw, 2                 ; 3 uses
  %i.ty = icmp ugt i64 %i.tr, %i.tx
  br i1 %i.ty, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit338
  %i.tz = sub nuw i64 %i.tr, %i.tx
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.sq, ptr %i.ts, i64 noundef %i.tz, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
end_hunk_4
begin_hunk_5_@_ZN4Mesh24calc_face_list_wbidirmapEv:bb.a
_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit377:         ; preds = %bb.di, %bb.dj, %bb.dk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i376.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 3 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !63 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !62
  %.not.i.i378 = icmp eq ptr %i.xj, %i.xh
  br i1 %.not.i.i378, label %_ZNSt6vectorIiSaIiEE5clearEv.exit380, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i379

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i379:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit377
  store ptr %i.xh, ptr %i.xi, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit380

_ZNSt6vectorIiSaIiEE5clearEv.exit380:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit377, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i379
  %i.xk = load i32, ptr %i.dl, align 8, !tbaa !94
  %i.xl = add nsw i32 %i.xk, 1                    ; 2 uses
  %.not954 = icmp eq i32 %i.xl, 0
  br i1 %.not954, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit383, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit380
  %i.xm = sext i32 %i.xl to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xg, i64 noundef %i.xm)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit383

_ZNSt6vectorIiSaIiEE6resizeEm.exit383:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit380, %bb.dl
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !63 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !62
  %.not.i.i384 = icmp eq ptr %i.xq, %i.xo
  br i1 %.not.i.i384, label %_ZNSt6vectorIiSaIiEE5clearEv.exit386, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i385

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i385:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit383
  store ptr %i.xo, ptr %i.xp, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit386

_ZNSt6vectorIiSaIiEE5clearEv.exit386:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit383, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i385
  %i.xr = load i32, ptr %i.dl, align 8, !tbaa !94
  %i.xs = add nsw i32 %i.xr, 1                    ; 2 uses
  %.not955 = icmp eq i32 %i.xs, 0
  br i1 %.not955, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit389, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit386
  %i.xt = sext i32 %i.xs to i64
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xn, i64 noundef %i.xt)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit389

_ZNSt6vectorIiSaIiEE6resizeEm.exit389:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit386, %bb.dm
  %i.xu = load i64, ptr %i.aq, align 8, !tbaa !47
  %i.xv = trunc i64 %i.xu to i32
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %.lr.ph625.a, label %._crit_edge626.thread

._crit_edge626.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit389
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 2 uses
  store i32 0, ptr %i.xx, align 4, !tbaa !207
  br label %.preheader557

.lr.ph625.a:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit389
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 4 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 6 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 1376
  br label %bb.du

bb.dn:                                            ; preds = %.lr.ph621, %bb.dt
  %indvars.iv651.a = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next652.a, %bb.dt ] ; 7 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv651.a
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !4  ; 2 uses
  %i.yk = zext i32 %i.yj to i64
  %i.yl = icmp eq i64 %indvars.iv651.a, %i.yk
  br i1 %i.yl, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ym = sext i32 %i.yj to i64                   ; 4 uses
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.ym ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !4
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv651.a ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !4
  %i.yr = icmp slt i32 %i.yo, %i.yq
  br i1 %i.yr, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv651.a
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !4
  %i.yu = and i32 %i.yt, -2147483647
  %.not551 = icmp eq i32 %i.yu, 1
  br i1 %.not551, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ym
  br label %.sink.split

bb.dr:                                            ; preds = %bb.dp, %bb.do
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.ym
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !4
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv651.a
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !4
  %i.yz = load i32, ptr %i.yn, align 4, !tbaa !4
  %i.za = load i32, ptr %i.yp, align 4, !tbaa !4
  %i.zb = icmp sgt i32 %i.yz, %i.za
  br i1 %i.zb, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.ym
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !4
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.ze
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ds, %bb.dq
  %.sink971 = phi ptr [ %i.gn, %bb.dq ], [ %i.gq, %bb.ds ]
  %.sink.in = phi ptr [ %i.yv, %bb.dq ], [ %i.zf, %bb.ds ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !4
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.sink971, i64 %indvars.iv651.a
  store i32 %.sink, ptr %i.zg, align 4, !tbaa !4
  br label %bb.dt

bb.dt:                                            ; preds = %.sink.split, %bb.dr, %bb.dn
  %indvars.iv.next652.a = add nuw nsw i64 %indvars.iv651.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next652.a, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge622, label %bb.dn, !llvm.loop !224

._crit_edge626.a:                                 ; preds = %bb.gf
  %i.zh = trunc i64 %i.aky to i32
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 1564 ; 3 uses
  store i32 %.7, ptr %i.zi, align 4, !tbaa !207
  %i.zj = icmp sgt i32 %i.zh, 0
  br i1 %i.zj, label %.lr.ph631, label %.preheader557

.lr.ph631:                                        ; preds = %._crit_edge626.a
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !78
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.zn = load ptr, ptr %i.zm, align 8            ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.zp = load ptr, ptr %i.zo, align 8
  %i.zq = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.zr = load ptr, ptr %i.sg, align 8            ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.zt = load ptr, ptr %i.zs, align 8
  %i.zu = load ptr, ptr %i.sl, align 8
  %i.zv = load ptr, ptr %i.su, align 8
  %wide.trip.count660 = and i64 %i.aky, 2147483647
  br label %bb.gg

bb.du:                                            ; preds = %.lr.ph625.a, %bb.gf
  %indvars.iv654.a = phi i64 [ 0, %.lr.ph625.a ], [ %indvars.iv.next655.a, %bb.gf ] ; 15 uses
  %.4624 = phi i32 [ 0, %.lr.ph625.a ], [ %.7, %bb.gf ] ; 4 uses
  %i.zw = load ptr, ptr %i.xy, align 8, !tbaa !79
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %indvars.iv654.a
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !4  ; 5 uses
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = icmp eq i64 %indvars.iv654.a, %i.zz
  br i1 %i.aaa, label %bb.gf, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aab = load ptr, ptr %i.xz, align 8, !tbaa !66 ; 2 uses
  %i.aac = sext i32 %i.zy to i64                  ; 9 uses
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.aab, i64 %i.aac
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !4
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %indvars.iv654.a
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !4
  %i.aah = icmp slt i32 %i.aae, %i.aag
  %i.aai = load ptr, ptr %i.sa, align 8, !tbaa !62 ; 4 uses
  %i.aaj = load ptr, ptr %i.ya, align 8, !tbaa !68
  %.not.i390 = icmp eq ptr %i.aai, %i.aaj
  br i1 %.not.i390, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aak = trunc nuw nsw i64 %indvars.iv654.a to i32
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !4
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  store ptr %i.aal, ptr %i.sa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit397

bb.dx:                                            ; preds = %bb.dv
  %i.aam = load ptr, ptr %i.ry, align 8, !tbaa !63 ; 4 uses
  %i.aan = ptrtoint ptr %i.aai to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao                 ; 6 uses
  %i.aaq = icmp eq i64 %i.aap, 9223372036854775804
  br i1 %i.aaq, label %bb.dy, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i391

bb.dy:                                            ; preds = %bb.dx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i391: ; preds = %bb.dx
  %i.aar = ashr exact i64 %i.aap, 2               ; 3 uses
  %.sroa.speculated.i.i.i392 = call i64 @llvm.umax.i64(i64 %i.aar, i64 1)
  %i.aas = add nsw i64 %.sroa.speculated.i.i.i392, %i.aar ; 2 uses
  %i.aat = icmp ult i64 %i.aas, %i.aar
  %i.aau = call i64 @llvm.umin.i64(i64 %i.aas, i64 2305843009213693951)
  %i.aav = select i1 %i.aat, i64 2305843009213693951, i64 %i.aau ; 3 uses
  %.not.i.i.i393 = icmp ne i64 %i.aav, 0
  call void @llvm.assume(i1 %.not.i.i.i393)
  %i.aaw = shl nuw nsw i64 %i.aav, 2
  %i.aax = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaw) #33 ; 4 uses
  %i.aay = getelementptr inbounds i8, ptr %i.aax, i64 %i.aap ; 2 uses
  %i.aaz = trunc nuw nsw i64 %indvars.iv654.a to i32
  store i32 %i.aaz, ptr %i.aay, align 4, !tbaa !4
  %i.aba = icmp sgt i64 %i.aap, 0
  br i1 %i.aba, label %bb.dz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i394

bb.dz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i391
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aax, ptr align 4 %i.aam, i64 %i.aap, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i394

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i394: ; preds = %bb.dz, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i391
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  %.not.i17.i.i395 = icmp eq ptr %i.aam, null
  br i1 %.not.i17.i.i395, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i396, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i394
  call void @_ZdlPvm(ptr noundef nonnull %i.aam, i64 noundef %i.aap) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i396

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i396: ; preds = %bb.ea, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i394
  store ptr %i.aax, ptr %i.ry, align 8, !tbaa !63
  store ptr %i.abb, ptr %i.sa, align 8, !tbaa !62
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.aav
  store ptr %i.abc, ptr %i.ya, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit397

_ZNSt6vectorIiSaIiEE9push_backERKi.exit397:       ; preds = %bb.dw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i396
  %i.abd = load ptr, ptr %i.se, align 8, !tbaa !62 ; 4 uses
  %i.abe = load ptr, ptr %i.yb, align 8, !tbaa !68
  %.not.i398 = icmp eq ptr %i.abd, %i.abe
  br i1 %.not.i398, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit397
  store i32 %i.zy, ptr %i.abd, align 4, !tbaa !4
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abd, i64 4
  store ptr %i.abf, ptr %i.se, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit405

bb.ec:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit397
  %i.abg = load ptr, ptr %i.sc, align 8, !tbaa !63 ; 4 uses
  %i.abh = ptrtoint ptr %i.abd to i64
  %i.abi = ptrtoint ptr %i.abg to i64
  %i.abj = sub i64 %i.abh, %i.abi                 ; 6 uses
  %i.abk = icmp eq i64 %i.abj, 9223372036854775804
  br i1 %i.abk, label %bb.ed, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i399

bb.ed:                                            ; preds = %bb.ec
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i399: ; preds = %bb.ec
  %i.abl = ashr exact i64 %i.abj, 2               ; 3 uses
  %.sroa.speculated.i.i.i400 = call i64 @llvm.umax.i64(i64 %i.abl, i64 1)
  %i.abm = add nsw i64 %.sroa.speculated.i.i.i400, %i.abl ; 2 uses
  %i.abn = icmp ult i64 %i.abm, %i.abl
  %i.abo = call i64 @llvm.umin.i64(i64 %i.abm, i64 2305843009213693951)
  %i.abp = select i1 %i.abn, i64 2305843009213693951, i64 %i.abo ; 3 uses
  %.not.i.i.i401 = icmp ne i64 %i.abp, 0
  call void @llvm.assume(i1 %.not.i.i.i401)
  %i.abq = shl nuw nsw i64 %i.abp, 2
  %i.abr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abq) #33 ; 4 uses
  %i.abs = getelementptr inbounds i8, ptr %i.abr, i64 %i.abj ; 2 uses
  store i32 %i.zy, ptr %i.abs, align 4, !tbaa !4
  %i.abt = icmp sgt i64 %i.abj, 0
  br i1 %i.abt, label %bb.ee, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i402

bb.ee:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i399
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.abr, ptr align 4 %i.abg, i64 %i.abj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i402

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i402: ; preds = %bb.ee, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i399
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %.not.i17.i.i403 = icmp eq ptr %i.abg, null
  br i1 %.not.i17.i.i403, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i404, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i402
  call void @_ZdlPvm(ptr noundef nonnull %i.abg, i64 noundef %i.abj) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i404

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i404: ; preds = %bb.ef, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i402
  store ptr %i.abr, ptr %i.sc, align 8, !tbaa !63
  store ptr %i.abu, ptr %i.se, align 8, !tbaa !62
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %i.abp
  store ptr %i.abv, ptr %i.yb, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit405

_ZNSt6vectorIiSaIiEE9push_backERKi.exit405:       ; preds = %bb.eb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i404
  %i.abw = load ptr, ptr %i.xz, align 8, !tbaa !66 ; 2 uses
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %indvars.iv654.a ; 2 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !4 ; 2 uses
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.aac ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !4 ; 2 uses
  %i.acb = icmp sgt i32 %i.aby, %i.aca
  %i.acc = load ptr, ptr %i.ux, align 8, !tbaa !62 ; 4 uses
  %i.acd = load ptr, ptr %i.yc, align 8, !tbaa !68
  %.not.i406 = icmp eq ptr %i.acc, %i.acd
  br i1 %.not.i406, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit405
  %i.ace = call i32 @llvm.smax.i32(i32 %i.aby, i32 %i.aca)
  store i32 %i.ace, ptr %i.acc, align 4, !tbaa !4
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  store ptr %i.acf, ptr %i.ux, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit413

bb.eh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit405
  %i.acg = load ptr, ptr %i.uv, align 8, !tbaa !63 ; 4 uses
  %i.ach = ptrtoint ptr %i.acc to i64
  %i.aci = ptrtoint ptr %i.acg to i64
  %i.acj = sub i64 %i.ach, %i.aci                 ; 6 uses
  %i.ack = icmp eq i64 %i.acj, 9223372036854775804
  br i1 %i.ack, label %bb.ei, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i407

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i407: ; preds = %bb.eh
  %i.acl = ashr exact i64 %i.acj, 2               ; 3 uses
  %.sroa.speculated.i.i.i408 = call i64 @llvm.umax.i64(i64 %i.acl, i64 1)
  %i.acm = add nsw i64 %.sroa.speculated.i.i.i408, %i.acl ; 2 uses
  %i.acn = icmp ult i64 %i.acm, %i.acl
  %i.aco = call i64 @llvm.umin.i64(i64 %i.acm, i64 2305843009213693951)
  %i.acp = select i1 %i.acn, i64 2305843009213693951, i64 %i.aco ; 3 uses
  %.not.i.i.i409 = icmp ne i64 %i.acp, 0
  call void @llvm.assume(i1 %.not.i.i.i409)
  %i.acq = shl nuw nsw i64 %i.acp, 2
  %i.acr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acq) #33 ; 4 uses
  %i.acs = getelementptr inbounds i8, ptr %i.acr, i64 %i.acj ; 2 uses
  %.val956 = load i32, ptr %i.abx, align 4
  %.val957 = load i32, ptr %i.abz, align 4
  %i.act = select i1 %i.acb, i32 %.val956, i32 %.val957
  store i32 %i.act, ptr %i.acs, align 4, !tbaa !4
  %i.acu = icmp sgt i64 %i.acj, 0
  br i1 %i.acu, label %bb.ej, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i410

bb.ej:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i407
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acr, ptr align 4 %i.acg, i64 %i.acj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i410

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i410: ; preds = %bb.ej, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i407
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %.not.i17.i.i411 = icmp eq ptr %i.acg, null
  br i1 %.not.i17.i.i411, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i412, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i410
  call void @_ZdlPvm(ptr noundef nonnull %i.acg, i64 noundef %i.acj) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i412

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i412: ; preds = %bb.ek, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i410
  store ptr %i.acr, ptr %i.uv, align 8, !tbaa !63
  store ptr %i.acv, ptr %i.ux, align 8, !tbaa !62
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acr, i64 %i.acp
  store ptr %i.acw, ptr %i.yc, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit413

_ZNSt6vectorIiSaIiEE9push_backERKi.exit413:       ; preds = %bb.eg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i412
  %i.acx = load ptr, ptr %i.yd, align 8, !tbaa !65
  %i.acy = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.aac
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !4
  %i.ada = zext i1 %i.aah to i32                  ; 5 uses
  %i.adb = shl i32 %i.acz, %i.ada                 ; 2 uses
  %i.adc = load ptr, ptr %i.ut, align 8, !tbaa !62 ; 4 uses
  %i.add = load ptr, ptr %i.ye, align 8, !tbaa !68
  %.not.i.i414 = icmp eq ptr %i.adc, %i.add
  br i1 %.not.i.i414, label %bb.em, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit413
  store i32 %i.adb, ptr %i.adc, align 4, !tbaa !4
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  store ptr %i.ade, ptr %i.ut, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421

bb.em:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit413
  %i.adf = load ptr, ptr %i.ur, align 8, !tbaa !63 ; 4 uses
  %i.adg = ptrtoint ptr %i.adc to i64
  %i.adh = ptrtoint ptr %i.adf to i64
  %i.adi = sub i64 %i.adg, %i.adh                 ; 6 uses
  %i.adj = icmp eq i64 %i.adi, 9223372036854775804
  br i1 %i.adj, label %bb.en, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i415

bb.en:                                            ; preds = %bb.em
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i415: ; preds = %bb.em
  %i.adk = ashr exact i64 %i.adi, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i416 = call i64 @llvm.umax.i64(i64 %i.adk, i64 1)
  %i.adl = add nsw i64 %.sroa.speculated.i.i.i.i416, %i.adk ; 2 uses
  %i.adm = icmp ult i64 %i.adl, %i.adk
  %i.adn = call i64 @llvm.umin.i64(i64 %i.adl, i64 2305843009213693951)
  %i.ado = select i1 %i.adm, i64 2305843009213693951, i64 %i.adn ; 3 uses
  %.not.i.i.i.i417 = icmp ne i64 %i.ado, 0
  call void @llvm.assume(i1 %.not.i.i.i.i417)
  %i.adp = shl nuw nsw i64 %i.ado, 2
  %i.adq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adp) #33 ; 4 uses
  %i.adr = getelementptr inbounds i8, ptr %i.adq, i64 %i.adi ; 2 uses
  store i32 %i.adb, ptr %i.adr, align 4, !tbaa !4
  %i.ads = icmp sgt i64 %i.adi, 0
  br i1 %i.ads, label %bb.eo, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i418

bb.eo:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i415
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.adq, ptr align 4 %i.adf, i64 %i.adi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i418

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i418: ; preds = %bb.eo, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i415
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %.not.i17.i.i.i419 = icmp eq ptr %i.adf, null
  br i1 %.not.i17.i.i.i419, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i420, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i418
  call void @_ZdlPvm(ptr noundef nonnull %i.adf, i64 noundef %i.adi) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i420

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i420: ; preds = %bb.ep, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i418
  store ptr %i.adq, ptr %i.ur, align 8, !tbaa !63
  store ptr %i.adt, ptr %i.ut, align 8, !tbaa !62
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.adq, i64 %i.ado
  store ptr %i.adu, ptr %i.ye, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421

_ZNSt6vectorIiSaIiEE9push_backEOi.exit421:        ; preds = %bb.el, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i420
  %i.adv = load ptr, ptr %i.xz, align 8, !tbaa !66 ; 2 uses
  %i.adw = getelementptr inbounds [4 x i8], ptr %i.adv, i64 %i.aac
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !4
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %indvars.iv654.a
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !4
  %i.aea = icmp slt i32 %i.adx, %i.adz
  %.pre704 = load ptr, ptr %i.yf, align 8, !tbaa !64 ; 3 uses
  br i1 %i.aea, label %bb.eq, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421._crit_edge

_ZNSt6vectorIiSaIiEE9push_backEOi.exit421._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421
  %.pre705 = load ptr, ptr %i.up, align 8, !tbaa !62
  %.pre707 = load ptr, ptr %i.yg, align 8, !tbaa !68
  br label %bb.ex

bb.eq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %.pre704, i64 %indvars.iv654.a
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !4
  %i.aed = and i32 %i.aec, -2147483647
  %.not550 = icmp eq i32 %i.aed, 1
  %.pre706 = load ptr, ptr %i.up, align 8, !tbaa !62 ; 5 uses
  %.pre708 = load ptr, ptr %i.yg, align 8, !tbaa !68 ; 2 uses
  br i1 %.not550, label %bb.er, label %bb.ex

bb.er:                                            ; preds = %bb.eq
  %i.aee = getelementptr inbounds [4 x i8], ptr %.pre704, i64 %i.aac
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !4
  %i.aeg = shl i32 %i.aef, %i.ada
  %i.aeh = add nsw i32 %i.aeg, 1                  ; 2 uses
  %.not.i.i422 = icmp eq ptr %.pre706, %.pre708
  br i1 %.not.i.i422, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  store i32 %i.aeh, ptr %.pre706, align 4, !tbaa !4
  %i.aei = getelementptr inbounds nuw i8, ptr %.pre706, i64 4
  store ptr %i.aei, ptr %i.up, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429

bb.et:                                            ; preds = %bb.er
  %i.aej = load ptr, ptr %i.un, align 8, !tbaa !63 ; 4 uses
  %i.aek = ptrtoint ptr %.pre706 to i64
  %i.ael = ptrtoint ptr %i.aej to i64
  %i.aem = sub i64 %i.aek, %i.ael                 ; 6 uses
  %i.aen = icmp eq i64 %i.aem, 9223372036854775804
  br i1 %i.aen, label %bb.eu, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i423

bb.eu:                                            ; preds = %bb.et
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i423: ; preds = %bb.et
  %i.aeo = ashr exact i64 %i.aem, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i424 = call i64 @llvm.umax.i64(i64 %i.aeo, i64 1)
  %i.aep = add nsw i64 %.sroa.speculated.i.i.i.i424, %i.aeo ; 2 uses
  %i.aeq = icmp ult i64 %i.aep, %i.aeo
  %i.aer = call i64 @llvm.umin.i64(i64 %i.aep, i64 2305843009213693951)
  %i.aes = select i1 %i.aeq, i64 2305843009213693951, i64 %i.aer ; 3 uses
  %.not.i.i.i.i425 = icmp ne i64 %i.aes, 0
  call void @llvm.assume(i1 %.not.i.i.i.i425)
  %i.aet = shl nuw nsw i64 %i.aes, 2
  %i.aeu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aet) #33 ; 4 uses
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 %i.aem ; 2 uses
  store i32 %i.aeh, ptr %i.aev, align 4, !tbaa !4
  %i.aew = icmp sgt i64 %i.aem, 0
  br i1 %i.aew, label %bb.ev, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i426

bb.ev:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i423
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aeu, ptr align 4 %i.aej, i64 %i.aem, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i426

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i426: ; preds = %bb.ev, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i423
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %.not.i17.i.i.i427 = icmp eq ptr %i.aej, null
  br i1 %.not.i17.i.i.i427, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i428, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i426
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.aem) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i428

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i428: ; preds = %bb.ew, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i426
  store ptr %i.aeu, ptr %i.un, align 8, !tbaa !63
  store ptr %i.aex, ptr %i.up, align 8, !tbaa !62
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.aes
  store ptr %i.aey, ptr %i.yg, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429

bb.ex:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421._crit_edge, %bb.eq
  %i.aez = phi ptr [ %.pre707, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421._crit_edge ], [ %.pre708, %bb.eq ] ; 2 uses
  %i.afa = phi ptr [ %.pre705, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421._crit_edge ], [ %.pre706, %bb.eq ] ; 3 uses
  %i.afb = getelementptr inbounds [4 x i8], ptr %.pre704, i64 %i.aac
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !4
  %i.afd = shl i32 %i.afc, %i.ada                 ; 2 uses
  %.not.i.i430 = icmp eq ptr %i.afa, %i.aez
  br i1 %.not.i.i430, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  store i32 %i.afd, ptr %i.afa, align 4, !tbaa !4
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 4
  store ptr %i.afe, ptr %i.up, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429

bb.ez:                                            ; preds = %bb.ex
  %i.aff = load ptr, ptr %i.un, align 8, !tbaa !63 ; 4 uses
  %i.afg = ptrtoint ptr %i.aez to i64
  %i.afh = ptrtoint ptr %i.aff to i64
  %i.afi = sub i64 %i.afg, %i.afh                 ; 6 uses
  %i.afj = icmp eq i64 %i.afi, 9223372036854775804
  br i1 %i.afj, label %bb.fa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i431

bb.fa:                                            ; preds = %bb.ez
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i431: ; preds = %bb.ez
  %i.afk = ashr exact i64 %i.afi, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i432 = call i64 @llvm.umax.i64(i64 %i.afk, i64 1)
  %i.afl = add nsw i64 %.sroa.speculated.i.i.i.i432, %i.afk ; 2 uses
  %i.afm = icmp ult i64 %i.afl, %i.afk
  %i.afn = call i64 @llvm.umin.i64(i64 %i.afl, i64 2305843009213693951)
  %i.afo = select i1 %i.afm, i64 2305843009213693951, i64 %i.afn ; 3 uses
  %.not.i.i.i.i433 = icmp ne i64 %i.afo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i433)
  %i.afp = shl nuw nsw i64 %i.afo, 2
  %i.afq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afp) #33 ; 4 uses
  %i.afr = getelementptr inbounds i8, ptr %i.afq, i64 %i.afi ; 2 uses
  store i32 %i.afd, ptr %i.afr, align 4, !tbaa !4
  %i.afs = icmp sgt i64 %i.afi, 0
  br i1 %i.afs, label %bb.fb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i434

bb.fb:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i431
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afq, ptr align 4 %i.aff, i64 %i.afi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i434

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i434: ; preds = %bb.fb, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i431
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  %.not.i17.i.i.i435 = icmp eq ptr %i.aff, null
  br i1 %.not.i17.i.i.i435, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i436, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i434
  call void @_ZdlPvm(ptr noundef nonnull %i.aff, i64 noundef %i.afi) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i436

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i436: ; preds = %bb.fc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i434
  store ptr %i.afq, ptr %i.un, align 8, !tbaa !63
  store ptr %i.aft, ptr %i.up, align 8, !tbaa !62
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %i.afo
  store ptr %i.afu, ptr %i.yg, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429

_ZNSt6vectorIiSaIiEE9push_backEOi.exit429:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i436, %bb.ey, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i428, %bb.es
  %i.afv = load ptr, ptr %i.sq, align 8, !tbaa !63
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv654.a
  store i32 %.4624, ptr %i.afw, align 4, !tbaa !4
  %i.afx = add nsw i32 %.4624, 1                  ; 4 uses
  %i.afy = load ptr, ptr %i.xz, align 8, !tbaa !66 ; 2 uses
  %i.afz = getelementptr inbounds [4 x i8], ptr %i.afy, i64 %i.aac
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !4
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.afy, i64 %indvars.iv654.a
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !4
  %i.agd = icmp sgt i32 %i.aga, %i.agc
  br i1 %i.agd, label %bb.fd, label %bb.gf

bb.fd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429
  %i.age = load ptr, ptr %i.yf, align 8, !tbaa !64
  %i.agf = getelementptr inbounds [4 x i8], ptr %i.age, i64 %i.aac
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !4
  %i.agh = and i32 %i.agg, 1
  %.not164.not = icmp eq i32 %i.agh, 0
  br i1 %.not164.not, label %bb.fe, label %bb.gf

bb.fe:                                            ; preds = %bb.fd
  %i.agi = load ptr, ptr %i.yh, align 8, !tbaa !77
  %i.agj = getelementptr inbounds [4 x i8], ptr %i.agi, i64 %i.aac
  %i.agk = load i32, ptr %i.agj, align 4, !tbaa !4 ; 4 uses
  %.not165 = icmp eq i32 %i.agk, %i.zy
  br i1 %.not165, label %bb.gf, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.agl = load ptr, ptr %i.sa, align 8, !tbaa !62 ; 4 uses
  %i.agm = load ptr, ptr %i.ya, align 8, !tbaa !68
  %.not.i438 = icmp eq ptr %i.agl, %i.agm
  br i1 %.not.i438, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.agn = trunc nuw nsw i64 %indvars.iv654.a to i32
  store i32 %i.agn, ptr %i.agl, align 4, !tbaa !4
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  store ptr %i.ago, ptr %i.sa, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit445

bb.fh:                                            ; preds = %bb.ff
  %i.agp = load ptr, ptr %i.ry, align 8, !tbaa !63 ; 4 uses
  %i.agq = ptrtoint ptr %i.agl to i64
  %i.agr = ptrtoint ptr %i.agp to i64
  %i.ags = sub i64 %i.agq, %i.agr                 ; 6 uses
  %i.agt = icmp eq i64 %i.ags, 9223372036854775804
  br i1 %i.agt, label %bb.fi, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i439

bb.fi:                                            ; preds = %bb.fh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i439: ; preds = %bb.fh
  %i.agu = ashr exact i64 %i.ags, 2               ; 3 uses
  %.sroa.speculated.i.i.i440 = call i64 @llvm.umax.i64(i64 %i.agu, i64 1)
  %i.agv = add nsw i64 %.sroa.speculated.i.i.i440, %i.agu ; 2 uses
  %i.agw = icmp ult i64 %i.agv, %i.agu
  %i.agx = call i64 @llvm.umin.i64(i64 %i.agv, i64 2305843009213693951)
  %i.agy = select i1 %i.agw, i64 2305843009213693951, i64 %i.agx ; 3 uses
  %.not.i.i.i441 = icmp ne i64 %i.agy, 0
  call void @llvm.assume(i1 %.not.i.i.i441)
  %i.agz = shl nuw nsw i64 %i.agy, 2
  %i.aha = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agz) #33 ; 4 uses
  %i.ahb = getelementptr inbounds i8, ptr %i.aha, i64 %i.ags ; 2 uses
  %i.ahc = trunc nuw nsw i64 %indvars.iv654.a to i32
  store i32 %i.ahc, ptr %i.ahb, align 4, !tbaa !4
  %i.ahd = icmp sgt i64 %i.ags, 0
  br i1 %i.ahd, label %bb.fj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i442

bb.fj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i439
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aha, ptr align 4 %i.agp, i64 %i.ags, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i442

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i442: ; preds = %bb.fj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i439
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  %.not.i17.i.i443 = icmp eq ptr %i.agp, null
  br i1 %.not.i17.i.i443, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i444, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i442
  call void @_ZdlPvm(ptr noundef nonnull %i.agp, i64 noundef %i.ags) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i444

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i444: ; preds = %bb.fk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i442
  store ptr %i.aha, ptr %i.ry, align 8, !tbaa !63
  store ptr %i.ahe, ptr %i.sa, align 8, !tbaa !62
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.agy
  store ptr %i.ahf, ptr %i.ya, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit445

_ZNSt6vectorIiSaIiEE9push_backERKi.exit445:       ; preds = %bb.fg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i444
  %i.ahg = load ptr, ptr %i.se, align 8, !tbaa !62 ; 4 uses
  %i.ahh = load ptr, ptr %i.yb, align 8, !tbaa !68
  %.not.i446 = icmp eq ptr %i.ahg, %i.ahh
  br i1 %.not.i446, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit445
  store i32 %i.agk, ptr %i.ahg, align 4, !tbaa !4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahg, i64 4
  store ptr %i.ahi, ptr %i.se, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit453

bb.fm:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit445
  %i.ahj = load ptr, ptr %i.sc, align 8, !tbaa !63 ; 4 uses
  %i.ahk = ptrtoint ptr %i.ahg to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl                 ; 6 uses
  %i.ahn = icmp eq i64 %i.ahm, 9223372036854775804
  br i1 %i.ahn, label %bb.fn, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i447

bb.fn:                                            ; preds = %bb.fm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i447: ; preds = %bb.fm
  %i.aho = ashr exact i64 %i.ahm, 2               ; 3 uses
  %.sroa.speculated.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.aho, i64 1)
  %i.ahp = add nsw i64 %.sroa.speculated.i.i.i448, %i.aho ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %i.aho
  %i.ahr = call i64 @llvm.umin.i64(i64 %i.ahp, i64 2305843009213693951)
  %i.ahs = select i1 %i.ahq, i64 2305843009213693951, i64 %i.ahr ; 3 uses
  %.not.i.i.i449 = icmp ne i64 %i.ahs, 0
  call void @llvm.assume(i1 %.not.i.i.i449)
  %i.aht = shl nuw nsw i64 %i.ahs, 2
  %i.ahu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aht) #33 ; 4 uses
  %i.ahv = getelementptr inbounds i8, ptr %i.ahu, i64 %i.ahm ; 2 uses
  store i32 %i.agk, ptr %i.ahv, align 4, !tbaa !4
  %i.ahw = icmp sgt i64 %i.ahm, 0
  br i1 %i.ahw, label %bb.fo, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i450

bb.fo:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i447
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ahu, ptr align 4 %i.ahj, i64 %i.ahm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i450

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i450: ; preds = %bb.fo, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i447
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  %.not.i17.i.i451 = icmp eq ptr %i.ahj, null
  br i1 %.not.i17.i.i451, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i452, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i450
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.ahm) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i452

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i452: ; preds = %bb.fp, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i450
  store ptr %i.ahu, ptr %i.sc, align 8, !tbaa !63
  store ptr %i.ahx, ptr %i.se, align 8, !tbaa !62
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ahs
  store ptr %i.ahy, ptr %i.yb, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit453

_ZNSt6vectorIiSaIiEE9push_backERKi.exit453:       ; preds = %bb.fl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i452
  %i.ahz = load ptr, ptr %i.xz, align 8, !tbaa !66 ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %indvars.iv654.a ; 2 uses
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !4 ; 2 uses
  %i.aic = sext i32 %i.agk to i64                 ; 3 uses
  %i.aid = getelementptr inbounds [4 x i8], ptr %i.ahz, i64 %i.aic ; 2 uses
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !4 ; 2 uses
  %i.aif = icmp sgt i32 %i.aib, %i.aie
  %i.aig = load ptr, ptr %i.ux, align 8, !tbaa !62 ; 4 uses
  %i.aih = load ptr, ptr %i.yc, align 8, !tbaa !68
  %.not.i454 = icmp eq ptr %i.aig, %i.aih
  br i1 %.not.i454, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit453
  %i.aii = call i32 @llvm.smax.i32(i32 %i.aib, i32 %i.aie)
  store i32 %i.aii, ptr %i.aig, align 4, !tbaa !4
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  store ptr %i.aij, ptr %i.ux, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit461

bb.fr:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit453
  %i.aik = load ptr, ptr %i.uv, align 8, !tbaa !63 ; 4 uses
  %i.ail = ptrtoint ptr %i.aig to i64
  %i.aim = ptrtoint ptr %i.aik to i64
  %i.ain = sub i64 %i.ail, %i.aim                 ; 6 uses
  %i.aio = icmp eq i64 %i.ain, 9223372036854775804
  br i1 %i.aio, label %bb.fs, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i455

bb.fs:                                            ; preds = %bb.fr
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i455: ; preds = %bb.fr
  %i.aip = ashr exact i64 %i.ain, 2               ; 3 uses
  %.sroa.speculated.i.i.i456 = call i64 @llvm.umax.i64(i64 %i.aip, i64 1)
  %i.aiq = add nsw i64 %.sroa.speculated.i.i.i456, %i.aip ; 2 uses
  %i.air = icmp ult i64 %i.aiq, %i.aip
  %i.ais = call i64 @llvm.umin.i64(i64 %i.aiq, i64 2305843009213693951)
  %i.ait = select i1 %i.air, i64 2305843009213693951, i64 %i.ais ; 3 uses
  %.not.i.i.i457 = icmp ne i64 %i.ait, 0
  call void @llvm.assume(i1 %.not.i.i.i457)
  %i.aiu = shl nuw nsw i64 %i.ait, 2
  %i.aiv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiu) #33 ; 4 uses
  %i.aiw = getelementptr inbounds i8, ptr %i.aiv, i64 %i.ain ; 2 uses
  %.val958 = load i32, ptr %i.aia, align 4
  %.val959 = load i32, ptr %i.aid, align 4
  %i.aix = select i1 %i.aif, i32 %.val958, i32 %.val959
  store i32 %i.aix, ptr %i.aiw, align 4, !tbaa !4
  %i.aiy = icmp sgt i64 %i.ain, 0
  br i1 %i.aiy, label %bb.ft, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i458

bb.ft:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i455
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aiv, ptr align 4 %i.aik, i64 %i.ain, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i458

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i458: ; preds = %bb.ft, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i455
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 4
  %.not.i17.i.i459 = icmp eq ptr %i.aik, null
  br i1 %.not.i17.i.i459, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i460, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i458
  call void @_ZdlPvm(ptr noundef nonnull %i.aik, i64 noundef %i.ain) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i460

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i460: ; preds = %bb.fu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i458
  store ptr %i.aiv, ptr %i.uv, align 8, !tbaa !63
  store ptr %i.aiz, ptr %i.ux, align 8, !tbaa !62
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiv, i64 %i.ait
  store ptr %i.aja, ptr %i.yc, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit461

_ZNSt6vectorIiSaIiEE9push_backERKi.exit461:       ; preds = %bb.fq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i460
  %i.ajb = load ptr, ptr %i.yd, align 8, !tbaa !65
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.ajb, i64 %i.aic
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !4
  %i.aje = shl i32 %i.ajd, %i.ada                 ; 2 uses
  %i.ajf = load ptr, ptr %i.ut, align 8, !tbaa !62 ; 4 uses
  %i.ajg = load ptr, ptr %i.ye, align 8, !tbaa !68
  %.not.i.i462 = icmp eq ptr %i.ajf, %i.ajg
  br i1 %.not.i.i462, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit461
  store i32 %i.aje, ptr %i.ajf, align 4, !tbaa !4
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 4
  store ptr %i.ajh, ptr %i.ut, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit469

bb.fw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit461
  %i.aji = load ptr, ptr %i.ur, align 8, !tbaa !63 ; 4 uses
  %i.ajj = ptrtoint ptr %i.ajf to i64
  %i.ajk = ptrtoint ptr %i.aji to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk                 ; 6 uses
  %i.ajm = icmp eq i64 %i.ajl, 9223372036854775804
  br i1 %i.ajm, label %bb.fx, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i463

bb.fx:                                            ; preds = %bb.fw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i463: ; preds = %bb.fw
  %i.ajn = ashr exact i64 %i.ajl, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i464 = call i64 @llvm.umax.i64(i64 %i.ajn, i64 1)
  %i.ajo = add nsw i64 %.sroa.speculated.i.i.i.i464, %i.ajn ; 2 uses
  %i.ajp = icmp ult i64 %i.ajo, %i.ajn
  %i.ajq = call i64 @llvm.umin.i64(i64 %i.ajo, i64 2305843009213693951)
  %i.ajr = select i1 %i.ajp, i64 2305843009213693951, i64 %i.ajq ; 3 uses
  %.not.i.i.i.i465 = icmp ne i64 %i.ajr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i465)
  %i.ajs = shl nuw nsw i64 %i.ajr, 2
  %i.ajt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajs) #33 ; 4 uses
  %i.aju = getelementptr inbounds i8, ptr %i.ajt, i64 %i.ajl ; 2 uses
  store i32 %i.aje, ptr %i.aju, align 4, !tbaa !4
  %i.ajv = icmp sgt i64 %i.ajl, 0
  br i1 %i.ajv, label %bb.fy, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i466

bb.fy:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i463
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajt, ptr align 4 %i.aji, i64 %i.ajl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i466

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i466: ; preds = %bb.fy, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i463
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aju, i64 4
  %.not.i17.i.i.i467 = icmp eq ptr %i.aji, null
  br i1 %.not.i17.i.i.i467, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i468, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i466
  call void @_ZdlPvm(ptr noundef nonnull %i.aji, i64 noundef %i.ajl) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i468

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i468: ; preds = %bb.fz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i466
  store ptr %i.ajt, ptr %i.ur, align 8, !tbaa !63
  store ptr %i.ajw, ptr %i.ut, align 8, !tbaa !62
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ajt, i64 %i.ajr
  store ptr %i.ajx, ptr %i.ye, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit469

_ZNSt6vectorIiSaIiEE9push_backEOi.exit469:        ; preds = %bb.fv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i468
  %i.ajy = load ptr, ptr %i.yf, align 8, !tbaa !64
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.aic
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !4
  %i.akb = shl i32 %i.aka, %i.ada                 ; 2 uses
  %i.akc = load ptr, ptr %i.up, align 8, !tbaa !62 ; 4 uses
  %i.akd = load ptr, ptr %i.yg, align 8, !tbaa !68
  %.not.i.i470 = icmp eq ptr %i.akc, %i.akd
  br i1 %.not.i.i470, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit469
  store i32 %i.akb, ptr %i.akc, align 4, !tbaa !4
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 4
  store ptr %i.ake, ptr %i.up, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit477

bb.gb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit469
  %i.akf = load ptr, ptr %i.un, align 8, !tbaa !63 ; 4 uses
  %i.akg = ptrtoint ptr %i.akc to i64
  %i.akh = ptrtoint ptr %i.akf to i64
  %i.aki = sub i64 %i.akg, %i.akh                 ; 6 uses
  %i.akj = icmp eq i64 %i.aki, 9223372036854775804
  br i1 %i.akj, label %bb.gc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i471

bb.gc:                                            ; preds = %bb.gb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.143) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i471: ; preds = %bb.gb
  %i.akk = ashr exact i64 %i.aki, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i472 = call i64 @llvm.umax.i64(i64 %i.akk, i64 1)
  %i.akl = add nsw i64 %.sroa.speculated.i.i.i.i472, %i.akk ; 2 uses
  %i.akm = icmp ult i64 %i.akl, %i.akk
  %i.akn = call i64 @llvm.umin.i64(i64 %i.akl, i64 2305843009213693951)
  %i.ako = select i1 %i.akm, i64 2305843009213693951, i64 %i.akn ; 3 uses
  %.not.i.i.i.i473 = icmp ne i64 %i.ako, 0
  call void @llvm.assume(i1 %.not.i.i.i.i473)
  %i.akp = shl nuw nsw i64 %i.ako, 2
  %i.akq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akp) #33 ; 4 uses
  %i.akr = getelementptr inbounds i8, ptr %i.akq, i64 %i.aki ; 2 uses
  store i32 %i.akb, ptr %i.akr, align 4, !tbaa !4
  %i.aks = icmp sgt i64 %i.aki, 0
  br i1 %i.aks, label %bb.gd, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i474

bb.gd:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i471
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.akq, ptr align 4 %i.akf, i64 %i.aki, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i474

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i474: ; preds = %bb.gd, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i471
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  %.not.i17.i.i.i475 = icmp eq ptr %i.akf, null
  br i1 %.not.i17.i.i.i475, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i476, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i474
  call void @_ZdlPvm(ptr noundef nonnull %i.akf, i64 noundef %i.aki) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i476

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i476: ; preds = %bb.ge, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i474
  store ptr %i.akq, ptr %i.un, align 8, !tbaa !63
  store ptr %i.akt, ptr %i.up, align 8, !tbaa !62
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akq, i64 %i.ako
  store ptr %i.aku, ptr %i.yg, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit477

_ZNSt6vectorIiSaIiEE9push_backEOi.exit477:        ; preds = %bb.ga, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i476
  %i.akv = load ptr, ptr %i.su, align 8, !tbaa !63
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %indvars.iv654.a
  store i32 %i.afx, ptr %i.akw, align 4, !tbaa !4
  %i.akx = add nsw i32 %.4624, 2
  br label %bb.gf

bb.gf:                                            ; preds = %bb.fe, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit477, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429, %bb.fd, %bb.du
  %.7 = phi i32 [ %.4624, %bb.du ], [ %i.afx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit429 ], [ %i.afx, %bb.fd ], [ %i.akx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit477 ], [ %i.afx, %bb.fe ] ; 2 uses
  %indvars.iv.next655.a = add nuw nsw i64 %indvars.iv654.a, 1 ; 2 uses
  %i.aky = load i64, ptr %i.aq, align 8, !tbaa !47 ; 3 uses
  %sext960 = shl i64 %i.aky, 32
  %i.akz = ashr exact i64 %sext960, 32
  %i.ala = icmp slt i64 %indvars.iv.next655.a, %i.akz
  br i1 %i.ala, label %bb.du, label %._crit_edge626.a, !llvm.loop !225

.preheader557:                                    ; preds = %bb.gm, %._crit_edge626.thread, %._crit_edge626.a
  %i.alb = phi ptr [ %i.xx, %._crit_edge626.thread ], [ %i.zi, %._crit_edge626.a ], [ %i.zi, %bb.gm ] ; 3 uses
  %i.alc = load i32, ptr %i.rx, align 8, !tbaa !205
  %i.ald = icmp sgt i32 %i.alc, 0
  br i1 %i.ald, label %.lr.ph633, label %.preheader555

.lr.ph633:                                        ; preds = %.preheader557
  %i.ale = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.alf = load ptr, ptr %i.ch, align 8, !tbaa !63
  %i.alg = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.alh = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.ali = load ptr, ptr %i.cl, align 8, !tbaa !63
  %i.alj = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.alk = load ptr, ptr %i.dh, align 8, !tbaa !63
  br label %bb.gn

bb.gg:                                            ; preds = %.lr.ph631, %bb.gm
  %indvars.iv657.a = phi i64 [ 0, %.lr.ph631 ], [ %indvars.iv.next658.a, %bb.gm ] ; 7 uses
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv657.a
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !4 ; 2 uses
  %i.aln = zext i32 %i.alm to i64
  %i.alo = icmp eq i64 %indvars.iv657.a, %i.aln
  br i1 %i.alo, label %bb.gm, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.alp = sext i32 %i.alm to i64                 ; 4 uses
  %i.alq = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.alp ; 2 uses
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !4
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %indvars.iv657.a ; 2 uses
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !4
  %i.alu = icmp slt i32 %i.alr, %i.alt
  br i1 %i.alu, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv657.a
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !4
  %i.alx = and i32 %i.alw, -2147483647
  %.not549 = icmp eq i32 %i.alx, 1
  br i1 %.not549, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.alp
  br label %.sink.split972

bb.gk:                                            ; preds = %bb.gi, %bb.gh
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.alp
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !4
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv657.a
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !4
  %i.amc = load i32, ptr %i.alq, align 4, !tbaa !4
  %i.amd = load i32, ptr %i.als, align 4, !tbaa !4
  %i.ame = icmp sgt i32 %i.amc, %i.amd
  br i1 %i.ame, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.amf = getelementptr inbounds [4 x i8], ptr %i.zt, i64 %i.alp
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !4
  %i.amh = sext i32 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.amh
  br label %.sink.split972

.sink.split972:                                   ; preds = %bb.gl, %bb.gj
  %.sink975 = phi ptr [ %i.zr, %bb.gj ], [ %i.zu, %bb.gl ]
  %.sink973.in = phi ptr [ %i.aly, %bb.gj ], [ %i.ami, %bb.gl ]
  %.sink973 = load i32, ptr %.sink973.in, align 4, !tbaa !4
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.sink975, i64 %indvars.iv657.a
  store i32 %.sink973, ptr %i.amj, align 4, !tbaa !4
  br label %bb.gm

bb.gm:                                            ; preds = %.sink.split972, %bb.gk, %bb.gg
  %indvars.iv.next658.a = add nuw nsw i64 %indvars.iv657.a, 1 ; 2 uses
  %exitcond661.not = icmp eq i64 %indvars.iv.next658.a, %wide.trip.count660
  br i1 %exitcond661.not, label %.preheader557, label %bb.gg, !llvm.loop !226

.preheader556:                                    ; preds = %bb.gv
  %i.amk = icmp sgt i32 %i.ank, 0
  br i1 %i.amk, label %.lr.ph635, label %.preheader555

.lr.ph635:                                        ; preds = %.preheader556
  %i.aml = load ptr, ptr %i.cp, align 8, !tbaa !63
  %i.amm = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.amn = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.amo = load ptr, ptr %i.ch, align 8
  %i.amp = load ptr, ptr %i.dd, align 8
  %i.amq = load ptr, ptr %i.cl, align 8
  br label %bb.gw

bb.gn:                                            ; preds = %.lr.ph633, %bb.gv
  %indvars.iv662 = phi i64 [ 0, %.lr.ph633 ], [ %indvars.iv.next663, %bb.gv ] ; 4 uses
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %i.ale, i64 %indvars.iv662
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !4
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.alf, i64 %indvars.iv662
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !4 ; 4 uses
  %i.amv = sext i32 %i.ams to i64                 ; 4 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.amv ; 2 uses
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !4
  %i.amy = icmp slt i32 %i.amu, %i.amx
  br i1 %i.amy, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 %i.amu, ptr %i.amw, align 4, !tbaa !4
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.amv ; 2 uses
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !4
  %i.anb = icmp sgt i32 %i.amu, %i.ana
  br i1 %i.anb, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i32 %i.amu, ptr %i.amz, align 4, !tbaa !4
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %indvars.iv662
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !4 ; 4 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.alj, i64 %i.amv ; 2 uses
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !4
  %i.ang = icmp slt i32 %i.and, %i.anf
  br i1 %i.ang, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  store i32 %i.and, ptr %i.ane, align 4, !tbaa !4
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.amv ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !4
  %i.anj = icmp sgt i32 %i.and, %i.ani
  br i1 %i.anj, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  store i32 %i.and, ptr %i.anh, align 4, !tbaa !4
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1 ; 2 uses
  %i.ank = load i32, ptr %i.rx, align 8, !tbaa !205 ; 3 uses
  %i.anl = sext i32 %i.ank to i64
  %i.anm = icmp slt i64 %indvars.iv.next663, %i.anl
  br i1 %i.anm, label %bb.gn, label %.preheader556, !llvm.loop !227

.preheader555:                                    ; preds = %bb.gy, %.preheader557, %.preheader556
  %i.ann = load i32, ptr %i.dl, align 8, !tbaa !94
  %.not636 = icmp slt i32 %i.ann, 0
  br i1 %.not636, label %.preheader554, label %.lr.ph638

.lr.ph638:                                        ; preds = %.preheader555
  %i.ano = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.anp = load ptr, ptr %i.fb, align 8, !tbaa !63
  %i.anq = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.anr = load ptr, ptr %i.fi, align 8, !tbaa !63
  %i.ans = load ptr, ptr %i.cy, align 8, !tbaa !63
  %i.ant = load ptr, ptr %i.dh, align 8, !tbaa !63
  br label %bb.gz

bb.gw:                                            ; preds = %.lr.ph635, %bb.gy
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !4
  store i32 %i.s, ptr %i.d, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !62
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !281

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec130, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat132, ptr %i.ak, align 4, !tbaa !4
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !282

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !283

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !285

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !62
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !281

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !62
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !62
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec116, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bm = shl i64 %index120, 2
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep121, i64 16
  store <4 x i32> %broadcast.splat118, ptr %next.gep121, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat118, ptr %i.bn, align 4, !tbaa !4
  %index.next122 = add nuw i64 %index120, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bo, label %middle.block123, label %vector.body119, !llvm.loop !286

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bj, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !287

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !63    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.144) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %4 = add nsw i64 %.sroa.speculated.i, %i.bt     ; 2 uses
  %5 = icmp ult i64 %4, %i.bt
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %7 = select i1 %5, i64 2305843009213693951, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64                     ; 2 uses
  %9 = sub i64 %8, %i.br                          ; 4 uses
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %bb.s, label %10

10:                                               ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #33
  br label %bb.s

bb.s:                                             ; preds = %10, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %13, i64 %9 ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i75
  %i.by = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.bz = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.bz, 28
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.s
  %n.vec144 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !4
  %index.next150 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cg, label %middle.block151, label %vector.body147, !llvm.loop !288

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cb, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.s, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.bw, %bb.s ], [ %i.cd, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.by, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ch, %i.bx
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !289

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.ci = icmp sgt i64 %9, 4
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !281

bb.t:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %i.bq, i64 %9, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cj = icmp eq i64 %9, 4
  br i1 %i.cj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = load i32, ptr %i.bq, align 4, !tbaa !4
  store i32 %i.ck, ptr %13, align 4, !tbaa !4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.v, %bb.u, %bb.t
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %2 ; 3 uses
  %i.cm = sub i64 %i.f, %8                        ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 4
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !281

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr align 4 %1, i64 %i.cm, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.co = icmp eq i64 %i.cm, 4
  br i1 %i.co, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = sub i64 %i.e, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cr) #30
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.z, %bb.aa
  store ptr %13, ptr %0, align 8, !tbaa !63
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !62
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %7
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !68
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !290

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !49 ; 2 uses
  %i.k = load double, ptr %0, align 8, !tbaa !49
  store double %i.k, ptr %i.i, align 8, !tbaa !49
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = sdiv i64 %i.o, 2
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !49
  %i.x = load double, ptr %i.v, align 8, !tbaa !49
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !49
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !49
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !291

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.al, ptr %i.am, align 8, !tbaa !49
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = fcmp olt double %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store double %i.ao, ptr %i.aq, align 8, !tbaa !49
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !292

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store double %i.j, ptr %i.ar, align 8, !tbaa !49
  %i.as = icmp sgt i64 %i.m, 8
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !293

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -8 ; 3 uses
  %i.ay = load double, ptr %i.f, align 8, !tbaa !49 ; 5 uses
  %i.az = load double, ptr %i.aw, align 8, !tbaa !49 ; 5 uses
  %i.ba = fcmp olt double %i.ay, %i.az
  %i.bb = load double, ptr %i.ax, align 8, !tbaa !49 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = fcmp olt double %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load double, ptr %0, align 8, !tbaa !49
  store double %i.az, ptr %0, align 8, !tbaa !49
  store double %i.bd, ptr %i.aw, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = fcmp olt double %i.ay, %i.bb
  %i.bf = load double, ptr %0, align 8, !tbaa !49 ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %i.bb, ptr %0, align 8, !tbaa !49
  store double %i.bf, ptr %i.ax, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store double %i.ay, ptr %0, align 8, !tbaa !49
  store double %i.bf, ptr %i.f, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = fcmp olt double %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load double, ptr %0, align 8, !tbaa !49
  store double %i.ay, ptr %0, align 8, !tbaa !49
  store double %i.bh, ptr %i.f, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = fcmp olt double %i.az, %i.bb
  %i.bj = load double, ptr %0, align 8, !tbaa !49 ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.bb, ptr %0, align 8, !tbaa !49
  store double %i.bj, ptr %i.ax, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store double %i.az, ptr %0, align 8, !tbaa !49
  store double %i.bj, ptr %i.aw, align 8, !tbaa !49
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load double, ptr %0, align 8, !tbaa !49 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !49 ; 2 uses
  %i.bm = fcmp olt double %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !294

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
end_hunk_6
