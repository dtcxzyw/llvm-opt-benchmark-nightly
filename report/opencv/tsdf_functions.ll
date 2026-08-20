inline.NumInlined: 1096
inline.NumDeleted: 455
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_36fetchPointsNormalsFromTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_11_InputArrayERKNS0_12_OutputArrayESD_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.eg = load <2 x float>, ptr %.sroa.0254.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.eh = load <2 x float>, ptr %.sroa.0254.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.ei = load <2 x float>, ptr %.sroa.0254.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0254.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0254.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %.sroa.0254.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0254.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  %.sroa.0254.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0254.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !331, !nonnull !227, !align !228
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !332, !nonnull !227
  %i.em = load i8, ptr %i.el, align 1, !tbaa !191, !range !333, !noundef !227
  %i.en = trunc nuw i8 %i.em to i1
  %.sroa.065.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.022.0.copyload.i.i.i to i32
  %i.eo = icmp slt i32 %i.ba, %.sroa.065.0.extract.trunc.i.i.i.i
  br i1 %i.eo, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.ep = mul nsw i32 %i.du, %i.ba
  %i.eq = mul nsw i32 %i.dw, %.061317.i.i.i
  %i.er = add i32 %i.ep, %i.da
  %i.es = add i32 %i.er, %i.eq
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.et ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !280
  %i.ew = sitofp i8 %i.ev to float
  %i.ex = fmul nnan float %i.ew, -7.812500e-03    ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !326
  %i.fa = icmp ne i8 %i.ez, 0
  %i.fb = fcmp une float %i.ex, 1.000000e+00
  %or.cond.i.i.i.i = and i1 %i.fa, %i.fb
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.fc = fcmp ogt float %i.df, 0.000000e+00
  %i.fd = fcmp olt float %i.ex, 0.000000e+00
  %or.cond3.i.i.i.i = and i1 %i.fc, %i.fd
  br i1 %or.cond3.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fe = fcmp olt float %i.df, 0.000000e+00
  %i.ff = fcmp ogt float %i.ex, 0.000000e+00
  %or.cond5.i.i.i.i = and i1 %i.fe, %i.ff
  br i1 %or.cond5.i.i.i.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fg = fadd float %i.dn, %i.do
  %i.fh = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.fi = call noundef float @llvm.fabs.f32(float %i.ex) ; 2 uses
  %i.fj = fadd nnan float %i.fh, %i.fi
  %i.fk = fdiv nnan float 1.000000e+00, %i.fj
  %i.fl = fmul float %i.fh, %i.fg
  %i.fm = call float @llvm.fmuladd.f32(float %i.do, float %i.fi, float %i.fl)
  %i.fn = fmul float %i.fm, %i.fk                 ; 3 uses
  %i.fo = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 0, i32 2>
  %i.ft = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = shufflevector <2 x float> %i.eg, <2 x float> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.fx = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = insertelement <2 x float> poison, float %.sroa.0254.sroa.4.0.copyload.i.i.i, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %.sroa.0254.sroa.8.0.copyload.i.i.i, i64 1
  %i.gc = fadd <2 x float> %i.gb, %i.fz           ; 2 uses
  %i.gd = fmul float %i.dp, %.sroa.0254.sroa.10.0.copyload.i.i.i
  %i.ge = extractelement <2 x float> %i.ei, i64 0
  %i.gf = call float @llvm.fmuladd.f32(float %i.ge, float %i.fn, float %i.gd)
  %i.gg = call float @llvm.fmuladd.f32(float %.sroa.0254.sroa.11.0.copyload.i.i.i, float %i.dq, float %i.gf)
  %i.gh = fadd float %.sroa.0254.sroa.12.0.copyload.i.i.i, %i.gg ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <2 x float> %i.gc, ptr %i.cu, align 4, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.gh, ptr %i.gi, align 4, !tbaa !14
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store float 0.000000e+00, ptr %i.gj, align 4, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  store ptr %i.gk, ptr %i.q, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.gl = ptrtoint ptr %i.ct to i64
  %i.gm = ptrtoint ptr %i.cs to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775792
  br i1 %i.go, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i: ; preds = %bb.j
  %i.gp = ashr exact i64 %i.gn, 4                 ; 3 uses
  %.sroa.speculated.i.i147.i.i.i = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i147.i.i.i, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = call i64 @llvm.umin.i64(i64 %i.gq, i64 576460752303423487)
  %i.gt = select i1 %i.gr, i64 576460752303423487, i64 %i.gs ; 3 uses
  %.not.i.i148.i.i.i = icmp ne i64 %i.gt, 0
  call void @llvm.assume(i1 %.not.i.i148.i.i.i)
  %i.gu = shl nuw nsw i64 %i.gt, 4
  %i.gv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #23
          to label %.noexc165.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc165.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn ; 3 uses
  store <2 x float> %i.gc, ptr %i.gw, align 4, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.gh, ptr %i.gx, align 4, !tbaa !14
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i149.i.i.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not13.i.i.i.i.i.i149.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i.i.i

.lr.ph.i.i.i.i.i.i150.i.i.i:                      ; preds = %.noexc165.i.i.i, %.lr.ph.i.i.i.i.i.i150.i.i.i
  %.015.i.i.i.i.i.i151.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i150.i.i.i ], [ %i.gv, %.noexc165.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i152.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i150.i.i.i ], [ %i.cs, %.noexc165.i.i.i ] ; 5 uses
  %i.gz = load float, ptr %.01214.i.i.i.i.i.i152.i.i.i, align 4, !tbaa !14
  store float %i.gz, ptr %.015.i.i.i.i.i.i151.i.i.i, align 4, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 4
  store float %i.hb, ptr %i.hc, align 4, !tbaa !14
  %i.hd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 8
  %i.he = load float, ptr %i.hd, align 4, !tbaa !14
  %i.hf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 8
  store float %i.he, ptr %i.hf, align 4, !tbaa !14
  %i.hg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 12
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 12
  store float %i.hh, ptr %i.hi, align 4, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i152.i.i.i, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i151.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i153.i.i.i = icmp eq ptr %i.hj, %i.ct
  br i1 %.not.i.i.i.i.i.i153.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i, label %.lr.ph.i.i.i.i.i.i150.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i150.i.i.i, %.noexc165.i.i.i
  %.0.lcssa.i.i.i.i.i.i155.i.i.i = phi ptr [ %i.gv, %.noexc165.i.i.i ], [ %i.hk, %.lr.ph.i.i.i.i.i.i150.i.i.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i155.i.i.i, i64 16 ; 2 uses
  %.not.i35.i163.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i35.i163.i.i.i, label %.noexc72.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.gn) #24
  br label %.noexc72.i.i.i

.noexc72.i.i.i:                                   ; preds = %bb.k, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i161.i.i.i
  store ptr %i.gv, ptr %5, align 8, !tbaa !212
  store ptr %i.hl, ptr %i.q, align 8, !tbaa !209
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gt ; 4 uses
  store ptr %i.hm, ptr %i.r, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i: ; preds = %.noexc72.i.i.i, %bb.i
  %i.hn = phi ptr [ %i.hm, %.noexc72.i.i.i ], [ %i.cq, %bb.i ] ; 2 uses
  %i.ho = phi ptr [ %i.hm, %.noexc72.i.i.i ], [ %i.cr, %bb.i ] ; 2 uses
  %i.hp = phi ptr [ %i.gv, %.noexc72.i.i.i ], [ %i.cs, %bb.i ] ; 2 uses
  %i.hq = phi ptr [ %i.hm, %.noexc72.i.i.i ], [ %i.ct, %bb.i ] ; 2 uses
  %i.hr = phi ptr [ %i.hl, %.noexc72.i.i.i ], [ %i.gk, %bb.i ] ; 2 uses
  br i1 %i.en, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.hs = fmul float %i.ek, %i.fn
  %i.ht = fmul float %i.dp, %i.ek
  %i.hu = fmul float %i.dq, %i.ek
  %.sroa.0.0.vec.insert.i73.i.i.i.i = insertelement <2 x float> poison, float %i.hs, i64 0
  %.sroa.0.4.vec.insert.i74.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i.i.i.i, float %i.ht, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i.i.i.i, ptr %4, align 8
  store float %i.hu, ptr %.sroa.215.0..sroa_idx.i.i.i.i, align 8
  %i.hv = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.dr, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 %.sroa.022.0.copyload.i.i.i, i32 %i.cv, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %.noexc73.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc73.i.i.i:                                   ; preds = %bb.l
  %.fca.0.extract6.i.i.i.i = extractvalue { <2 x float>, float } %i.hv, 0 ; 2 uses
  %.fca.1.extract7.i.i.i.i = extractvalue { <2 x float>, float } %i.hv, 1
  %i.hw = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hx = insertelement <4 x float> %i.hw, float 0.000000e+00, i64 3
  %i.hy = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hz = shufflevector <4 x float> %i.hx, <4 x float> %i.hy, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ia = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ib = shufflevector <4 x float> %i.hz, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ic = shufflevector <2 x float> %.fca.0.extract6.i.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.id = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.ic, <4 x float> zeroinitializer)
  %i.ie = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.hw, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> %i.hy, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ih = shufflevector <2 x float> %.fca.0.extract6.i.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ih, <4 x float> %i.id)
  %i.ij = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ik = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ij, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.il = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.im = shufflevector <4 x float> %i.ik, <4 x float> %i.il, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.in = insertelement <4 x float> %i.im, float %.sroa.0254.sroa.11.0.copyload.i.i.i, i64 2
  %i.io = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i.i.i.i, i64 0
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.iq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.in, <4 x float> %i.ip, <4 x float> %i.ii) ; 2 uses
  %i.ir = load ptr, ptr %i.s, align 8, !tbaa !209 ; 6 uses
  %i.is = load ptr, ptr %i.t, align 8, !tbaa !221
  %.not.i.i79.i.i.i.i = icmp eq ptr %i.ir, %i.is
  br i1 %.not.i.i79.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.noexc73.i.i.i
  %13 = insertelement <4 x float> %i.iq, float 0.000000e+00, i64 3
  store <4 x float> %13, ptr %i.ir, align 4, !tbaa !14
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store ptr %i.it, ptr %i.s, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i

bb.n:                                             ; preds = %.noexc73.i.i.i
  %i.iu = load ptr, ptr %6, align 8, !tbaa !212   ; 5 uses
  %i.iv = ptrtoint ptr %i.ir to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw                    ; 4 uses
  %i.iy = icmp eq i64 %i.ix, 9223372036854775792
  br i1 %i.iy, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.al, %bb.ah, %bb.z, %bb.v, %bb.n, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.iz = ashr exact i64 %i.ix, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = call i64 @llvm.umin.i64(i64 %i.ja, i64 576460752303423487)
  %i.jd = select i1 %i.jb, i64 576460752303423487, i64 %i.jc ; 3 uses
  %.not.i.i140.i.i.i = icmp ne i64 %i.jd, 0
  call void @llvm.assume(i1 %.not.i.i140.i.i.i)
  %i.je = shl nuw nsw i64 %i.jd, 4
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #23
          to label %.noexc145.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc145.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ix
  store <4 x float> %i.iq, ptr %i.jg, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iu, %i.ir
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i141.i.i.i

.lr.ph.i.i.i.i.i.i141.i.i.i:                      ; preds = %.noexc145.i.i.i, %.lr.ph.i.i.i.i.i.i141.i.i.i
  %.015.i.i.i.i.i.i.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i.i141.i.i.i ], [ %i.jf, %.noexc145.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i.i141.i.i.i ], [ %i.iu, %.noexc145.i.i.i ] ; 5 uses
  %i.jh = load float, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  store float %i.jh, ptr %.015.i.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  %i.ji = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !14
  %i.jk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.jj, ptr %i.jk, align 4, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !14
  %i.jn = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.jm, ptr %i.jn, align 4, !tbaa !14
  %i.jo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !14
  %i.jq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.jp, ptr %i.jq, align 4, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i142.i.i.i = icmp eq ptr %i.jr, %i.ir
  br i1 %.not.i.i.i.i.i.i142.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i, label %.lr.ph.i.i.i.i.i.i141.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i141.i.i.i, %.noexc145.i.i.i
  %.0.lcssa.i.i.i.i.i.i143.i.i.i = phi ptr [ %i.jf, %.noexc145.i.i.i ], [ %i.js, %.lr.ph.i.i.i.i.i.i141.i.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i143.i.i.i, i64 16
  %.not.i35.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i35.i.i.i.i, label %.noexc74.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.ix) #24
  br label %.noexc74.i.i.i

.noexc74.i.i.i:                                   ; preds = %bb.o, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i.i
  store ptr %i.jf, ptr %6, align 8, !tbaa !212
  store ptr %i.jt, ptr %i.s, align 8, !tbaa !209
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jd
  store ptr %i.ju, ptr %i.t, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i: ; preds = %.noexc74.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i, %bb.g, %bb.e, %bb.d
  %i.jv = phi ptr [ %i.hn, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hn, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cq, %bb.g ], [ %i.cq, %bb.e ], [ %i.cq, %bb.d ] ; 4 uses
  %i.jw = phi ptr [ %i.ho, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.ho, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cr, %bb.g ], [ %i.cr, %bb.e ], [ %i.cr, %bb.d ] ; 8 uses
  %i.jx = phi ptr [ %i.hp, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hp, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cs, %bb.g ], [ %i.cs, %bb.e ], [ %i.cs, %bb.d ] ; 9 uses
  %i.jy = phi ptr [ %i.hq, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hq, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.ct, %bb.g ], [ %i.ct, %bb.e ], [ %i.ct, %bb.d ] ; 3 uses
  %i.jz = phi ptr [ %i.hr, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i.i.i.i ], [ %i.hr, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i.i.i.i ], [ %i.cu, %bb.g ], [ %i.cu, %bb.e ], [ %i.cu, %bb.d ] ; 8 uses
  %i.ka = load ptr, ptr %i.h, align 8, !tbaa !328, !nonnull !227, !align !231
  %i.kb = load ptr, ptr %.val, align 8, !tbaa !322, !nonnull !227, !align !231
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !53
  %i.kd = load ptr, ptr %i.f, align 8, !tbaa !319, !nonnull !227, !align !228 ; 2 uses
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.kd, align 4 ; 2 uses
  %.sroa.215.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %.sroa.215.0.copyload.i.i.i = load i32, ptr %.sroa.215.0..sroa_idx.i.i.i, align 4, !tbaa !55
  %i.ke = load ptr, ptr %i.e, align 8, !tbaa !323, !nonnull !227, !align !228 ; 2 uses
  %i.kf = load <4 x i32>, ptr %i.ke, align 4, !tbaa !55 ; 3 uses
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !55
  store <4 x i32> %i.kf, ptr %9, align 16, !tbaa !55
  %i.kh = load ptr, ptr %i.l, align 8, !tbaa !329, !nonnull !227, !align !228 ; 2 uses
  %i.ki = load <4 x i32>, ptr %i.kh, align 4, !tbaa !55
  store <4 x i32> %i.ki, ptr %10, align 16, !tbaa !55
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kk = load <4 x i32>, ptr %i.kj, align 4, !tbaa !55
  store <4 x i32> %i.kk, ptr %i.u, align 16, !tbaa !55
  %i.kl = load ptr, ptr %i.n, align 8, !tbaa !330, !nonnull !227, !align !228 ; 10 uses
  %.sroa.0253.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %.sroa.0253.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %.sroa.0253.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %.sroa.0253.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %.sroa.0253.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 28
  %.sroa.0253.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %.sroa.0253.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 36
  %i.km = load <2 x float>, ptr %i.kl, align 4    ; 2 uses
  %i.kn = load <2 x float>, ptr %.sroa.0253.sroa.5.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.ko = load <2 x float>, ptr %.sroa.0253.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.kp = load <2 x float>, ptr %.sroa.0253.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.kq = load <2 x float>, ptr %.sroa.0253.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0253.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0253.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %.sroa.0253.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0253.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 44
  %.sroa.0253.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0253.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.kr = load ptr, ptr %i.g, align 8, !tbaa !327, !nonnull !227, !align !228
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !14
  %i.kt = load ptr, ptr %i.o, align 8, !tbaa !331, !nonnull !227, !align !228
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !14 ; 3 uses
  %i.kv = load ptr, ptr %i.p, align 8, !tbaa !332, !nonnull !227
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !191, !range !333, !noundef !227
  %i.kx = trunc nuw i8 %i.kw to i1
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i64 %.sroa.014.0.copyload.i.i.i, 32
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i.i to i32
  %i.ky = icmp slt i32 %i.cg, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.ky, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.kz = mul nsw i32 %i.kg, %.0321.i.i.i
  %i.la = extractelement <4 x i32> %i.kf, i64 1
  %i.lb = mul nsw i32 %i.la, %i.cg
  %i.lc = add nsw i32 %i.lb, %i.kz
  %i.ld = extractelement <4 x i32> %i.kf, i64 2
  %i.le = mul nsw i32 %i.ld, %.062316.i.i.i
  %i.lf = add nsw i32 %i.lc, %i.le
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.kc, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !280
  %i.lj = sitofp i8 %i.li to float
  %i.lk = fmul nnan float %i.lj, -7.812500e-03    ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !326
  %i.ln = icmp ne i8 %i.lm, 0
  %i.lo = fcmp une float %i.lk, 1.000000e+00
  %or.cond.i75.i.i.i = and i1 %i.ln, %i.lo
  br i1 %or.cond.i75.i.i.i, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.lp = fcmp ogt float %i.df, 0.000000e+00
  %i.lq = fcmp olt float %i.lk, 0.000000e+00
  %or.cond3.i76.i.i.i = and i1 %i.lp, %i.lq
  br i1 %or.cond3.i76.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lr = fcmp olt float %i.df, 0.000000e+00
  %i.ls = fcmp ogt float %i.lk, 0.000000e+00
  %or.cond5.i77.i.i.i = and i1 %i.lr, %i.ls
  br i1 %or.cond5.i77.i.i.i, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.lt = fadd float %i.dp, %i.ks
  %i.lu = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.lv = call noundef float @llvm.fabs.f32(float %i.lk) ; 2 uses
  %i.lw = fadd nnan float %i.lu, %i.lv
  %i.lx = fdiv nnan float 1.000000e+00, %i.lw
  %i.ly = fmul float %i.lu, %i.lt
  %i.lz = call float @llvm.fmuladd.f32(float %i.dp, float %i.lv, float %i.ly)
  %i.ma = fmul float %i.lz, %i.lx                 ; 3 uses
  %i.mb = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 0, i32 2>
  %i.mc = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.mb, %i.md
  %i.mf = shufflevector <2 x float> %i.km, <2 x float> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.mg = insertelement <2 x float> poison, float %i.do, i64 0
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mh, <2 x float> %i.me)
  %i.mj = shufflevector <2 x float> %i.ko, <2 x float> %i.kp, <2 x i32> <i32 1, i32 3>
  %i.mk = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.ml, <2 x float> %i.mi)
  %i.mn = insertelement <2 x float> poison, float %.sroa.0253.sroa.4.0.copyload.i.i.i, i64 0
  %i.mo = insertelement <2 x float> %i.mn, float %.sroa.0253.sroa.8.0.copyload.i.i.i, i64 1
  %i.mp = fadd <2 x float> %i.mo, %i.mm           ; 2 uses
  %i.mq = fmul float %.sroa.0253.sroa.10.0.copyload.i.i.i, %i.ma
  %i.mr = extractelement <2 x float> %i.kq, i64 0
  %i.ms = call float @llvm.fmuladd.f32(float %i.mr, float %i.do, float %i.mq)
  %i.mt = call float @llvm.fmuladd.f32(float %.sroa.0253.sroa.11.0.copyload.i.i.i, float %i.dq, float %i.ms)
  %i.mu = fadd float %.sroa.0253.sroa.12.0.copyload.i.i.i, %i.mt ; 2 uses
  %.not.i.i.i80.i.i.i = icmp eq ptr %i.jz, %i.jw
  br i1 %.not.i.i.i80.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.mp, ptr %i.jz, align 4, !tbaa !14
  %i.mv = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store float %i.mu, ptr %i.mv, align 4, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store float 0.000000e+00, ptr %i.mw, align 4, !tbaa !14
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  store ptr %i.mx, ptr %i.q, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.my = ptrtoint ptr %i.jw to i64
  %i.mz = ptrtoint ptr %i.jx to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 4 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775792
  br i1 %i.nb, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i: ; preds = %bb.v
  %i.nc = ashr exact i64 %i.na, 4                 ; 3 uses
  %.sroa.speculated.i.i189.i.i.i = call i64 @llvm.umax.i64(i64 %i.nc, i64 1)
  %i.nd = add nsw i64 %.sroa.speculated.i.i189.i.i.i, %i.nc ; 2 uses
  %i.ne = icmp ult i64 %i.nd, %i.nc
  %i.nf = call i64 @llvm.umin.i64(i64 %i.nd, i64 576460752303423487)
  %i.ng = select i1 %i.ne, i64 576460752303423487, i64 %i.nf ; 3 uses
  %.not.i.i190.i.i.i = icmp ne i64 %i.ng, 0
  call void @llvm.assume(i1 %.not.i.i190.i.i.i)
  %i.nh = shl nuw nsw i64 %i.ng, 4
  %i.ni = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #23
          to label %.noexc207.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc207.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.na ; 3 uses
  store <2 x float> %i.mp, ptr %i.nj, align 4, !tbaa !14
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store float %i.mu, ptr %i.nk, align 4, !tbaa !14
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  store float 0.000000e+00, ptr %i.nl, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i191.i.i.i = icmp eq ptr %i.jx, %i.jw
  br i1 %.not13.i.i.i.i.i.i191.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i, label %.lr.ph.i.i.i.i.i.i192.i.i.i

.lr.ph.i.i.i.i.i.i192.i.i.i:                      ; preds = %.noexc207.i.i.i, %.lr.ph.i.i.i.i.i.i192.i.i.i
  %.015.i.i.i.i.i.i193.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.i192.i.i.i ], [ %i.ni, %.noexc207.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i194.i.i.i = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i192.i.i.i ], [ %i.jx, %.noexc207.i.i.i ] ; 5 uses
  %i.nm = load float, ptr %.01214.i.i.i.i.i.i194.i.i.i, align 4, !tbaa !14
  store float %i.nm, ptr %.015.i.i.i.i.i.i193.i.i.i, align 4, !tbaa !14
  %i.nn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !14
  %i.np = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 4
  store float %i.no, ptr %i.np, align 4, !tbaa !14
  %i.nq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 8
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !14
  %i.ns = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 8
  store float %i.nr, ptr %i.ns, align 4, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 12
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !14
  %i.nv = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 12
  store float %i.nu, ptr %i.nv, align 4, !tbaa !14
  %i.nw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i194.i.i.i, i64 16 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i193.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i195.i.i.i = icmp eq ptr %i.nw, %i.jw
  br i1 %.not.i.i.i.i.i.i195.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i, label %.lr.ph.i.i.i.i.i.i192.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i192.i.i.i, %.noexc207.i.i.i
  %.0.lcssa.i.i.i.i.i.i197.i.i.i = phi ptr [ %i.ni, %.noexc207.i.i.i ], [ %i.nx, %.lr.ph.i.i.i.i.i.i192.i.i.i ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i197.i.i.i, i64 16 ; 2 uses
  %.not.i35.i205.i.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i35.i205.i.i.i, label %.noexc91.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.na) #24
  br label %.noexc91.i.i.i

.noexc91.i.i.i:                                   ; preds = %bb.w, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i203.i.i.i
  store ptr %i.ni, ptr %5, align 8, !tbaa !212
  store ptr %i.ny, ptr %i.q, align 8, !tbaa !209
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ni, i64 %i.ng ; 3 uses
  store ptr %i.nz, ptr %i.r, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i: ; preds = %.noexc91.i.i.i, %bb.u
  %i.oa = phi ptr [ %i.nz, %.noexc91.i.i.i ], [ %i.jv, %bb.u ] ; 2 uses
  %i.ob = phi ptr [ %i.nz, %.noexc91.i.i.i ], [ %i.jw, %bb.u ] ; 4 uses
  %i.oc = phi ptr [ %i.ni, %.noexc91.i.i.i ], [ %i.jx, %bb.u ] ; 2 uses
  %i.od = phi ptr [ %i.ny, %.noexc91.i.i.i ], [ %i.mx, %bb.u ] ; 2 uses
  br i1 %i.kx, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.oe = fmul float %i.do, %i.ku
  %i.of = fmul float %i.ku, %i.ma
  %i.og = fmul float %i.dq, %i.ku
  %.sroa.0.0.vec.insert.i73.i82.i.i.i = insertelement <2 x float> poison, float %i.oe, i64 0
  %.sroa.0.4.vec.insert.i74.i83.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i82.i.i.i, float %i.of, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i83.i.i.i, ptr %3, align 8
  store float %i.og, ptr %.sroa.215.0..sroa_idx.i84.i.i.i, align 8
  %i.oh = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.ka, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(32) %10, i64 %.sroa.014.0.copyload.i.i.i, i32 %.sroa.215.0.copyload.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %3)
          to label %.noexc92.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc92.i.i.i:                                   ; preds = %bb.x
  %.fca.0.extract6.i85.i.i.i = extractvalue { <2 x float>, float } %i.oh, 0 ; 2 uses
  %.fca.1.extract7.i86.i.i.i = extractvalue { <2 x float>, float } %i.oh, 1
  %i.oi = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oj = insertelement <4 x float> %i.oi, float 0.000000e+00, i64 3
  %i.ok = shufflevector <2 x float> %i.kn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ol = shufflevector <4 x float> %i.oj, <4 x float> %i.ok, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.om = shufflevector <2 x float> %i.kq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.on = shufflevector <4 x float> %i.ol, <4 x float> %i.om, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.oo = shufflevector <2 x float> %.fca.0.extract6.i85.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.on, <4 x float> %i.oo, <4 x float> zeroinitializer)
  %i.oq = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.oi, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.or = shufflevector <4 x float> %i.oq, <4 x float> %i.ok, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.om, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ot = shufflevector <2 x float> %.fca.0.extract6.i85.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.os, <4 x float> %i.ot, <4 x float> %i.op)
  %i.ov = shufflevector <2 x float> %i.ko, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ow = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.ov, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ox = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.oy = shufflevector <4 x float> %i.ow, <4 x float> %i.ox, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.oz = insertelement <4 x float> %i.oy, float %.sroa.0253.sroa.11.0.copyload.i.i.i, i64 2
  %i.pa = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i86.i.i.i, i64 0
  %i.pb = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.pc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> %i.pb, <4 x float> %i.ou) ; 2 uses
  %i.pd = load ptr, ptr %i.s, align 8, !tbaa !209 ; 6 uses
  %i.pe = load ptr, ptr %i.t, align 8, !tbaa !221
  %.not.i.i79.i89.i.i.i = icmp eq ptr %i.pd, %i.pe
  br i1 %.not.i.i79.i89.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc92.i.i.i
  %14 = insertelement <4 x float> %i.pc, float 0.000000e+00, i64 3
  store <4 x float> %14, ptr %i.pd, align 4, !tbaa !14
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store ptr %i.pf, ptr %i.s, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i

bb.z:                                             ; preds = %.noexc92.i.i.i
  %i.pg = load ptr, ptr %6, align 8, !tbaa !212   ; 5 uses
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = ptrtoint ptr %i.pg to i64
  %i.pj = sub i64 %i.ph, %i.pi                    ; 4 uses
  %i.pk = icmp eq i64 %i.pj, 9223372036854775792
  br i1 %i.pk, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i: ; preds = %bb.z
  %i.pl = ashr exact i64 %i.pj, 4                 ; 3 uses
  %.sroa.speculated.i.i168.i.i.i = call i64 @llvm.umax.i64(i64 %i.pl, i64 1)
  %i.pm = add nsw i64 %.sroa.speculated.i.i168.i.i.i, %i.pl ; 2 uses
  %i.pn = icmp ult i64 %i.pm, %i.pl
  %i.po = call i64 @llvm.umin.i64(i64 %i.pm, i64 576460752303423487)
  %i.pp = select i1 %i.pn, i64 576460752303423487, i64 %i.po ; 3 uses
  %.not.i.i169.i.i.i = icmp ne i64 %i.pp, 0
  call void @llvm.assume(i1 %.not.i.i169.i.i.i)
  %i.pq = shl nuw nsw i64 %i.pp, 4
  %i.pr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pq) #23
          to label %.noexc186.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc186.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pj
  store <4 x float> %i.pc, ptr %i.ps, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i170.i.i.i = icmp eq ptr %i.pg, %i.pd
  br i1 %.not13.i.i.i.i.i.i170.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i, label %.lr.ph.i.i.i.i.i.i171.i.i.i

.lr.ph.i.i.i.i.i.i171.i.i.i:                      ; preds = %.noexc186.i.i.i, %.lr.ph.i.i.i.i.i.i171.i.i.i
  %.015.i.i.i.i.i.i172.i.i.i = phi ptr [ %i.qe, %.lr.ph.i.i.i.i.i.i171.i.i.i ], [ %i.pr, %.noexc186.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i173.i.i.i = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i171.i.i.i ], [ %i.pg, %.noexc186.i.i.i ] ; 5 uses
  %i.pt = load float, ptr %.01214.i.i.i.i.i.i173.i.i.i, align 4, !tbaa !14
  store float %i.pt, ptr %.015.i.i.i.i.i.i172.i.i.i, align 4, !tbaa !14
  %i.pu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 4
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !14
  %i.pw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 4
  store float %i.pv, ptr %i.pw, align 4, !tbaa !14
  %i.px = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 8
  %i.py = load float, ptr %i.px, align 4, !tbaa !14
  %i.pz = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 8
  store float %i.py, ptr %i.pz, align 4, !tbaa !14
  %i.qa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 12
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !14
  %i.qc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 12
  store float %i.qb, ptr %i.qc, align 4, !tbaa !14
  %i.qd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i173.i.i.i, i64 16 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i172.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i174.i.i.i = icmp eq ptr %i.qd, %i.pd
  br i1 %.not.i.i.i.i.i.i174.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i, label %.lr.ph.i.i.i.i.i.i171.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i171.i.i.i, %.noexc186.i.i.i
  %.0.lcssa.i.i.i.i.i.i176.i.i.i = phi ptr [ %i.pr, %.noexc186.i.i.i ], [ %i.qe, %.lr.ph.i.i.i.i.i.i171.i.i.i ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i176.i.i.i, i64 16
  %.not.i35.i184.i.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i35.i184.i.i.i, label %.noexc93.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pg, i64 noundef %i.pj) #24
  br label %.noexc93.i.i.i

.noexc93.i.i.i:                                   ; preds = %bb.aa, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i182.i.i.i
  store ptr %i.pr, ptr %6, align 8, !tbaa !212
  store ptr %i.qf, ptr %i.s, align 8, !tbaa !209
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.pr, i64 %i.pp
  store ptr %i.qg, ptr %i.t, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i: ; preds = %.noexc93.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i, %bb.s, %bb.q, %bb.p
  %i.qh = phi ptr [ %i.oa, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.oa, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jv, %bb.s ], [ %i.jv, %bb.q ], [ %i.jv, %bb.p ] ; 8 uses
  %i.qi = phi ptr [ %i.ob, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.ob, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jw, %bb.s ], [ %i.jw, %bb.q ], [ %i.jw, %bb.p ] ; 3 uses
  %i.qj = phi ptr [ %i.oc, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.oc, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jx, %bb.s ], [ %i.jx, %bb.q ], [ %i.jx, %bb.p ] ; 9 uses
  %i.qk = phi ptr [ %i.ob, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.ob, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jy, %bb.s ], [ %i.jy, %bb.q ], [ %i.jy, %bb.p ] ; 3 uses
  %i.ql = phi ptr [ %i.od, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i90.i.i.i ], [ %i.od, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i81.i.i.i ], [ %i.jz, %bb.s ], [ %i.jz, %bb.q ], [ %i.jz, %bb.p ] ; 8 uses
  %i.qm = load ptr, ptr %i.h, align 8, !tbaa !328, !nonnull !227, !align !231
  %i.qn = load ptr, ptr %.val, align 8, !tbaa !322, !nonnull !227, !align !231
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !53
  %i.qp = load ptr, ptr %i.f, align 8, !tbaa !319, !nonnull !227, !align !228 ; 2 uses
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.qp, align 4
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %.sroa.27.0.copyload.i.i.i = load i32, ptr %.sroa.27.0..sroa_idx.i.i.i, align 4, !tbaa !55 ; 2 uses
  %i.qq = load ptr, ptr %i.e, align 8, !tbaa !323, !nonnull !227, !align !228 ; 2 uses
  %i.qr = load <4 x i32>, ptr %i.qq, align 4, !tbaa !55 ; 3 uses
  %i.qs = load i32, ptr %i.qq, align 4, !tbaa !55
  store <4 x i32> %i.qr, ptr %11, align 16, !tbaa !55
  %i.qt = load ptr, ptr %i.l, align 8, !tbaa !329, !nonnull !227, !align !228 ; 2 uses
  %i.qu = load <4 x i32>, ptr %i.qt, align 4, !tbaa !55
  store <4 x i32> %i.qu, ptr %12, align 16, !tbaa !55
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.qw = load <4 x i32>, ptr %i.qv, align 4, !tbaa !55
  store <4 x i32> %i.qw, ptr %i.v, align 16, !tbaa !55
  %i.qx = load ptr, ptr %i.n, align 8, !tbaa !330, !nonnull !227, !align !228 ; 10 uses
  %.sroa.0252.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %.sroa.0252.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %.sroa.0252.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.4.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %.sroa.0252.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 20
  %.sroa.0252.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 28
  %.sroa.0252.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.8.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %.sroa.0252.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 36
  %i.qy = load <2 x float>, ptr %i.qx, align 4    ; 2 uses
  %i.qz = load <2 x float>, ptr %.sroa.0252.sroa.5.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %i.ra = load <2 x float>, ptr %.sroa.0252.sroa.2.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.rb = load <2 x float>, ptr %.sroa.0252.sroa.6.0..sroa_idx.i.i.i, align 4 ; 3 uses
  %i.rc = load <2 x float>, ptr %.sroa.0252.sroa.9.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0252.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.10.0..sroa_idx.i.i.i, align 4
  %.sroa.0252.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 40
  %.sroa.0252.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.11.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.0252.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 44
  %.sroa.0252.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.0252.sroa.12.0..sroa_idx.i.i.i, align 4
  %i.rd = load ptr, ptr %i.g, align 8, !tbaa !327, !nonnull !227, !align !228
  %i.re = load float, ptr %i.rd, align 4, !tbaa !14
  %i.rf = load ptr, ptr %i.o, align 8, !tbaa !331, !nonnull !227, !align !228
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !14 ; 3 uses
  %i.rh = load ptr, ptr %i.p, align 8, !tbaa !332, !nonnull !227
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !191, !range !333, !noundef !227
  %i.rj = trunc nuw i8 %i.ri to i1
  %i.rk = add nuw nsw i32 %.062316.i.i.i, 1       ; 7 uses
  %i.rl = icmp slt i32 %i.rk, %.sroa.27.0.copyload.i.i.i
  br i1 %i.rl, label %bb.ac, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.rm = mul nsw i32 %i.qs, %.0321.i.i.i
  %i.rn = extractelement <4 x i32> %i.qr, i64 1
  %i.ro = mul nsw i32 %i.rn, %.061317.i.i.i
  %i.rp = add nsw i32 %i.ro, %i.rm
  %i.rq = extractelement <4 x i32> %i.qr, i64 2
  %i.rr = mul nsw i32 %i.rq, %i.rk
  %i.rs = add nsw i32 %i.rp, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [2 x i8], ptr %i.qo, i64 %i.rt ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !280
  %i.rw = sitofp i8 %i.rv to float
  %i.rx = fmul nnan float %i.rw, -7.812500e-03    ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !326
  %i.sa = icmp ne i8 %i.rz, 0
  %i.sb = fcmp une float %i.rx, 1.000000e+00
  %or.cond.i95.i.i.i = and i1 %i.sa, %i.sb
  br i1 %or.cond.i95.i.i.i, label %bb.ad, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.sc = fcmp ogt float %i.df, 0.000000e+00
  %i.sd = fcmp olt float %i.rx, 0.000000e+00
  %or.cond3.i96.i.i.i = and i1 %i.sc, %i.sd
  br i1 %or.cond3.i96.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.se = fcmp olt float %i.df, 0.000000e+00
  %i.sf = fcmp ogt float %i.rx, 0.000000e+00
  %or.cond5.i97.i.i.i = and i1 %i.se, %i.sf
  br i1 %or.cond5.i97.i.i.i, label %bb.af, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.sg = fadd float %i.dq, %i.re
  %i.sh = call noundef float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.si = call noundef float @llvm.fabs.f32(float %i.rx) ; 2 uses
  %i.sj = fadd nnan float %i.sh, %i.si
  %i.sk = fdiv nnan float 1.000000e+00, %i.sj
  %i.sl = fmul float %i.sh, %i.sg
  %i.sm = call float @llvm.fmuladd.f32(float %i.dq, float %i.si, float %i.sl)
  %i.sn = fmul float %i.sm, %i.sk                 ; 3 uses
  %i.so = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.sp = shufflevector <2 x float> %i.so, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sq = shufflevector <2 x float> %i.ra, <2 x float> %i.rb, <2 x i32> <i32 0, i32 2>
  %i.sr = fmul <2 x float> %i.sp, %i.sq
  %i.ss = shufflevector <2 x float> %i.qy, <2 x float> %i.qz, <2 x i32> <i32 0, i32 2>
  %i.st = insertelement <2 x float> poison, float %i.do, i64 0
  %i.su = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ss, <2 x float> %i.su, <2 x float> %i.sr)
  %i.sw = shufflevector <2 x float> %i.ra, <2 x float> %i.rb, <2 x i32> <i32 1, i32 3>
  %i.sx = insertelement <2 x float> poison, float %i.sn, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sw, <2 x float> %i.sy, <2 x float> %i.sv)
  %i.ta = insertelement <2 x float> poison, float %.sroa.0252.sroa.4.0.copyload.i.i.i, i64 0
  %i.tb = insertelement <2 x float> %i.ta, float %.sroa.0252.sroa.8.0.copyload.i.i.i, i64 1
  %i.tc = fadd <2 x float> %i.tb, %i.sz           ; 2 uses
  %i.td = fmul float %i.dp, %.sroa.0252.sroa.10.0.copyload.i.i.i
  %i.te = extractelement <2 x float> %i.rc, i64 0
  %i.tf = call float @llvm.fmuladd.f32(float %i.te, float %i.do, float %i.td)
  %i.tg = call float @llvm.fmuladd.f32(float %.sroa.0252.sroa.11.0.copyload.i.i.i, float %i.sn, float %i.tf)
  %i.th = fadd float %.sroa.0252.sroa.12.0.copyload.i.i.i, %i.tg ; 2 uses
  %.not.i.i.i100.i.i.i = icmp eq ptr %i.ql, %i.qh
  br i1 %.not.i.i.i100.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store <2 x float> %i.tc, ptr %i.ql, align 4, !tbaa !14
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store float %i.th, ptr %i.ti, align 4, !tbaa !14
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  store float 0.000000e+00, ptr %i.tj, align 4, !tbaa !14
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ql, i64 16 ; 2 uses
  store ptr %i.tk, ptr %i.q, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.tl = ptrtoint ptr %i.qh to i64
  %i.tm = ptrtoint ptr %i.qj to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 4 uses
  %i.to = icmp eq i64 %i.tn, 9223372036854775792
  br i1 %i.to, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i: ; preds = %bb.ah
  %i.tp = ashr exact i64 %i.tn, 4                 ; 3 uses
  %.sroa.speculated.i.i231.i.i.i = call i64 @llvm.umax.i64(i64 %i.tp, i64 1)
  %i.tq = add nsw i64 %.sroa.speculated.i.i231.i.i.i, %i.tp ; 2 uses
  %i.tr = icmp ult i64 %i.tq, %i.tp
  %i.ts = call i64 @llvm.umin.i64(i64 %i.tq, i64 576460752303423487)
  %i.tt = select i1 %i.tr, i64 576460752303423487, i64 %i.ts ; 3 uses
  %.not.i.i232.i.i.i = icmp ne i64 %i.tt, 0
  call void @llvm.assume(i1 %.not.i.i232.i.i.i)
  %i.tu = shl nuw nsw i64 %i.tt, 4
  %i.tv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tu) #23
          to label %.noexc249.i.i.i unwind label %.loopexit.i.i.i ; 6 uses

.noexc249.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tn ; 3 uses
  store <2 x float> %i.tc, ptr %i.tw, align 4, !tbaa !14
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store float %i.th, ptr %i.tx, align 4, !tbaa !14
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 12
  store float 0.000000e+00, ptr %i.ty, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i233.i.i.i = icmp eq ptr %i.qj, %i.qh
  br i1 %.not13.i.i.i.i.i.i233.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i, label %.lr.ph.i.i.i.i.i.i234.i.i.i

.lr.ph.i.i.i.i.i.i234.i.i.i:                      ; preds = %.noexc249.i.i.i, %.lr.ph.i.i.i.i.i.i234.i.i.i
  %.015.i.i.i.i.i.i235.i.i.i = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i234.i.i.i ], [ %i.tv, %.noexc249.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i236.i.i.i = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i.i234.i.i.i ], [ %i.qj, %.noexc249.i.i.i ] ; 5 uses
  %i.tz = load float, ptr %.01214.i.i.i.i.i.i236.i.i.i, align 4, !tbaa !14
  store float %i.tz, ptr %.015.i.i.i.i.i.i235.i.i.i, align 4, !tbaa !14
  %i.ua = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 4
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !14
  %i.uc = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 4
  store float %i.ub, ptr %i.uc, align 4, !tbaa !14
  %i.ud = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !14
  %i.uf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 8
  store float %i.ue, ptr %i.uf, align 4, !tbaa !14
  %i.ug = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 12
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !14
  %i.ui = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 12
  store float %i.uh, ptr %i.ui, align 4, !tbaa !14
  %i.uj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i236.i.i.i, i64 16 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i235.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i237.i.i.i = icmp eq ptr %i.uj, %i.qh
  br i1 %.not.i.i.i.i.i.i237.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i, label %.lr.ph.i.i.i.i.i.i234.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i234.i.i.i, %.noexc249.i.i.i
  %.0.lcssa.i.i.i.i.i.i239.i.i.i = phi ptr [ %i.tv, %.noexc249.i.i.i ], [ %i.uk, %.lr.ph.i.i.i.i.i.i234.i.i.i ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i239.i.i.i, i64 16 ; 2 uses
  %.not.i35.i247.i.i.i = icmp eq ptr %i.qj, null
  br i1 %.not.i35.i247.i.i.i, label %.noexc111.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.tn) #24
  br label %.noexc111.i.i.i

.noexc111.i.i.i:                                  ; preds = %bb.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i245.i.i.i
  store ptr %i.tv, ptr %5, align 8, !tbaa !212
  store ptr %i.ul, ptr %i.q, align 8, !tbaa !209
  %i.um = getelementptr inbounds nuw [16 x i8], ptr %i.tv, i64 %i.tt ; 2 uses
  store ptr %i.um, ptr %i.r, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i: ; preds = %.noexc111.i.i.i, %bb.ag
  %i.un = phi ptr [ %i.um, %.noexc111.i.i.i ], [ %i.qh, %bb.ag ] ; 6 uses
  %i.uo = phi ptr [ %i.tv, %.noexc111.i.i.i ], [ %i.qj, %bb.ag ] ; 2 uses
  %i.up = phi ptr [ %i.ul, %.noexc111.i.i.i ], [ %i.tk, %bb.ag ] ; 2 uses
  br i1 %i.rj, label %bb.aj, label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

bb.aj:                                            ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.uq = fmul float %i.do, %i.rg
  %i.ur = fmul float %i.dp, %i.rg
  %i.us = fmul float %i.rg, %i.sn
  %.sroa.0.0.vec.insert.i73.i102.i.i.i = insertelement <2 x float> poison, float %i.uq, i64 0
  %.sroa.0.4.vec.insert.i74.i103.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i73.i102.i.i.i, float %i.ur, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i74.i103.i.i.i, ptr %2, align 8
  store float %i.us, ptr %.sroa.215.0..sroa_idx.i104.i.i.i, align 8
  %i.ut = invoke { <2 x float>, float } @_ZN2cv14getNormalVoxelERKNS_3MatERKNS_3VecIiLi4EEERKNS3_IiLi8EEENS_7Point3_IiEERKNSA_IfEE(ptr noundef nonnull align 8 dereferenceable(208) %i.qm, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(32) %12, i64 %.sroa.06.0.copyload.i.i.i, i32 %.sroa.27.0.copyload.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %2)
          to label %.noexc112.i.i.i unwind label %.loopexit.i.i.i ; 2 uses

.noexc112.i.i.i:                                  ; preds = %bb.aj
  %.fca.0.extract6.i105.i.i.i = extractvalue { <2 x float>, float } %i.ut, 0 ; 2 uses
  %.fca.1.extract7.i106.i.i.i = extractvalue { <2 x float>, float } %i.ut, 1
  %i.uu = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uv = insertelement <4 x float> %i.uu, float 0.000000e+00, i64 3
  %i.uw = shufflevector <2 x float> %i.qz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ux = shufflevector <4 x float> %i.uv, <4 x float> %i.uw, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.uy = shufflevector <2 x float> %i.rc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> %i.uy, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.va = shufflevector <2 x float> %.fca.0.extract6.i105.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.vb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uz, <4 x float> %i.va, <4 x float> zeroinitializer)
  %i.vc = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.uu, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.vd = shufflevector <4 x float> %i.vc, <4 x float> %i.uw, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ve = shufflevector <4 x float> %i.vd, <4 x float> %i.uy, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vf = shufflevector <2 x float> %.fca.0.extract6.i105.i.i.i, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.vg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ve, <4 x float> %i.vf, <4 x float> %i.vb)
  %i.vh = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vi = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.vh, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.vj = shufflevector <2 x float> %i.rb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vk = shufflevector <4 x float> %i.vi, <4 x float> %i.vj, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.vl = insertelement <4 x float> %i.vk, float %.sroa.0252.sroa.11.0.copyload.i.i.i, i64 2
  %i.vm = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.fca.1.extract7.i106.i.i.i, i64 0
  %i.vn = shufflevector <4 x float> %i.vm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.vo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vl, <4 x float> %i.vn, <4 x float> %i.vg) ; 2 uses
  %i.vp = load ptr, ptr %i.s, align 8, !tbaa !209 ; 6 uses
  %i.vq = load ptr, ptr %i.t, align 8, !tbaa !221
  %.not.i.i79.i109.i.i.i = icmp eq ptr %i.vp, %i.vq
  br i1 %.not.i.i79.i109.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc112.i.i.i
  %15 = insertelement <4 x float> %i.vo, float 0.000000e+00, i64 3
  store <4 x float> %15, ptr %i.vp, align 4, !tbaa !14
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store ptr %i.vr, ptr %i.s, align 8, !tbaa !209
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i

bb.al:                                            ; preds = %.noexc112.i.i.i
  %i.vs = load ptr, ptr %6, align 8, !tbaa !212   ; 5 uses
  %i.vt = ptrtoint ptr %i.vp to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu                    ; 4 uses
  %i.vw = icmp eq i64 %i.vv, 9223372036854775792
  br i1 %i.vw, label %.invoke.i.i.i, label %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i

_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i: ; preds = %bb.al
  %i.vx = ashr exact i64 %i.vv, 4                 ; 3 uses
  %.sroa.speculated.i.i210.i.i.i = call i64 @llvm.umax.i64(i64 %i.vx, i64 1)
  %i.vy = add nsw i64 %.sroa.speculated.i.i210.i.i.i, %i.vx ; 2 uses
  %i.vz = icmp ult i64 %i.vy, %i.vx
  %i.wa = call i64 @llvm.umin.i64(i64 %i.vy, i64 576460752303423487)
  %i.wb = select i1 %i.vz, i64 576460752303423487, i64 %i.wa ; 3 uses
  %.not.i.i211.i.i.i = icmp ne i64 %i.wb, 0
  call void @llvm.assume(i1 %.not.i.i211.i.i.i)
  %i.wc = shl nuw nsw i64 %i.wb, 4
  %i.wd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wc) #23
          to label %.noexc228.i.i.i unwind label %.loopexit.i.i.i ; 5 uses

.noexc228.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.vv
  store <4 x float> %i.vo, ptr %i.we, align 4, !tbaa !14
  %.not13.i.i.i.i.i.i212.i.i.i = icmp eq ptr %i.vs, %i.vp
  br i1 %.not13.i.i.i.i.i.i212.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i, label %.lr.ph.i.i.i.i.i.i213.i.i.i

.lr.ph.i.i.i.i.i.i213.i.i.i:                      ; preds = %.noexc228.i.i.i, %.lr.ph.i.i.i.i.i.i213.i.i.i
  %.015.i.i.i.i.i.i214.i.i.i = phi ptr [ %i.wq, %.lr.ph.i.i.i.i.i.i213.i.i.i ], [ %i.wd, %.noexc228.i.i.i ] ; 5 uses
  %.01214.i.i.i.i.i.i215.i.i.i = phi ptr [ %i.wp, %.lr.ph.i.i.i.i.i.i213.i.i.i ], [ %i.vs, %.noexc228.i.i.i ] ; 5 uses
  %i.wf = load float, ptr %.01214.i.i.i.i.i.i215.i.i.i, align 4, !tbaa !14
  store float %i.wf, ptr %.015.i.i.i.i.i.i214.i.i.i, align 4, !tbaa !14
  %i.wg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !14
  %i.wi = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 4
  store float %i.wh, ptr %i.wi, align 4, !tbaa !14
  %i.wj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 8
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !14
  %i.wl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 8
  store float %i.wk, ptr %i.wl, align 4, !tbaa !14
  %i.wm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 12
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !14
  %i.wo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 12
  store float %i.wn, ptr %i.wo, align 4, !tbaa !14
  %i.wp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i215.i.i.i, i64 16 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i214.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i216.i.i.i = icmp eq ptr %i.wp, %i.vp
  br i1 %.not.i.i.i.i.i.i216.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i, label %.lr.ph.i.i.i.i.i.i213.i.i.i, !llvm.loop !334

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i213.i.i.i, %.noexc228.i.i.i
  %.0.lcssa.i.i.i.i.i.i218.i.i.i = phi ptr [ %i.wd, %.noexc228.i.i.i ], [ %i.wq, %.lr.ph.i.i.i.i.i.i213.i.i.i ]
  %i.wr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i218.i.i.i, i64 16
  %.not.i35.i226.i.i.i = icmp eq ptr %i.vs, null
  br i1 %.not.i35.i226.i.i.i, label %.noexc113.i.i.i, label %bb.am

bb.am:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vs, i64 noundef %i.vv) #24
  br label %.noexc113.i.i.i

.noexc113.i.i.i:                                  ; preds = %bb.am, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIfLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i224.i.i.i
  store ptr %i.wd, ptr %6, align 8, !tbaa !212
  store ptr %i.wr, ptr %i.s, align 8, !tbaa !209
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.wb
  store ptr %i.ws, ptr %i.t, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i: ; preds = %.noexc113.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i209.i.i.i, %bb.aj, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i230.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i167.i.i.i, %bb.x, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i188.i.i.i, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.l, %_ZNKSt6vectorIN2cv3VecIfLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i146.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i.i.i:                         ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114.i.i.i: ; preds = %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i, %bb.ae, %bb.ac, %bb.ab, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre335.i.i.i, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.rk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.rk, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.rk, %bb.ae ], [ %i.rk, %bb.ac ], [ %i.rk, %bb.ab ] ; 2 uses
  %i.wt = phi ptr [ %i.cq, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qh, %bb.ae ], [ %i.qh, %bb.ac ], [ %i.qh, %bb.ab ] ; 2 uses
  %i.wu = phi ptr [ %i.cr, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qi, %bb.ae ], [ %i.qi, %bb.ac ], [ %i.qi, %bb.ab ] ; 2 uses
  %i.wv = phi ptr [ %i.cs, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.uo, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.uo, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qj, %bb.ae ], [ %i.qj, %bb.ac ], [ %i.qj, %bb.ab ] ; 2 uses
  %i.ww = phi ptr [ %i.ct, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.un, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.qk, %bb.ae ], [ %i.qk, %bb.ac ], [ %i.qk, %bb.ab ] ; 2 uses
  %i.wx = phi ptr [ %i.cu, %._ZN2cv5coordERKNS_3MatEPKNS_9TsdfVoxelERSt6vectorINS_3VecIfLi4EEESaIS8_EESB_NS_7Point3_IiEENS7_IiLi4EEENS7_IiLi8EEENS_7Affine3IfEEffbiiiNSC_IfEEfi.exit114_crit_edge.i.i.i ], [ %i.up, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit80.i110.i.i.i ], [ %i.up, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EE9push_backEOS2_.exit.i101.i.i.i ], [ %i.ql, %bb.ae ], [ %i.ql, %bb.ac ], [ %i.ql, %bb.ab ] ; 2 uses
  %i.wy = load ptr, ptr %i.f, align 8, !tbaa !319, !nonnull !227, !align !228 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !56 ; 2 uses
  %i.xb = icmp slt i32 %.pre-phi.i.i.i, %i.xa
  br i1 %i.xb, label %bb.c, label %._crit_edge.i.i.i, !llvm.loop !335

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i: ; preds = %._crit_edge325.i.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !336, !nonnull !227, !align !231 ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 3 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !205 ; 9 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !223
  %.not.i.i.i.i = icmp eq ptr %i.xf, %i.xh
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  %i.xi = ptrtoint ptr %i.ab to i64
  %i.xj = ptrtoint ptr %i.aa to i64
  %i.xk = sub i64 %i.xi, %i.xj                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc116.i.thread.i.i, label %bb.ao

.noexc116.i.thread.i.i:                           ; preds = %bb.an
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xm = getelementptr inbounds nuw i8, ptr null, i64 %i.xk
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, i8 0, i64 16, i1 false)
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !221
  br label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.xo = icmp ugt i64 %i.xk, 9223372036854775792
  br i1 %i.xo, label %.noexc.i.i.i128.invoke.i.i.i, label %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !337

_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.xp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xk) #23
          to label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i unwind label %bb.aw ; 4 uses

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %_ZNSt15__new_allocatorIN2cv3VecIfLi4EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i
  store ptr %i.xp, ptr %i.xf, align 8, !tbaa !212
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 2 uses
  store ptr %i.xp, ptr %i.xq, align 8, !tbaa !209
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xk
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store ptr %i.xr, ptr %i.xs, align 8, !tbaa !221
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i
  %.013.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ye, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.xp, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.yd, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %i.xt = load float, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  store float %i.xt, ptr %.013.i.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !14
  %i.xw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 4
  store float %i.xv, ptr %i.xw, align 4, !tbaa !14
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 8
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !14
  %i.xz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 8
  store float %i.xy, ptr %i.xz, align 4, !tbaa !14
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 12
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !14
  %i.yc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 12
  store float %i.yb, ptr %i.yc, align 4, !tbaa !14
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yd, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !338

_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc116.i.thread.i.i
  %i.yf = phi ptr [ %i.xl, %.noexc116.i.thread.i.i ], [ %i.xq, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc116.i.thread.i.i ], [ %i.ye, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.yf, align 8, !tbaa !209
  %i.yg = load ptr, ptr %i.xe, align 8, !tbaa !205
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 24
  store ptr %i.yh, ptr %i.xe, align 8, !tbaa !205
  br label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i

bb.ap:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i.i.i
  invoke void @_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.xd, ptr %i.xf, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i unwind label %bb.aw

_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN2cv3VecIfLi4EEESaIS2_EEC2ERKS4_.exit.i.i.i.i
  %i.yi = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !339, !nonnull !227, !align !231 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8 ; 3 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !205 ; 9 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !223
  %.not.i118.i.i.i = icmp eq ptr %i.yl, %i.yn
  br i1 %.not.i118.i.i.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIS_IN2cv3VecIfLi4EEESaIS2_EESaIS4_EE9push_backERKS4_.exit.i.i.i
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !209 ; 3 uses
  %i.yq = load ptr, ptr %6, align 8, !tbaa !212   ; 3 uses
  %i.yr = ptrtoint ptr %i.yp to i64
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = sub i64 %i.yr, %i.ys                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i119.i.i.i = icmp eq ptr %i.yp, %i.yq
  br i1 %.not.i.i.i.i.i119.i.i.i, label %.noexc130.thread.i.i.i, label %bb.ar

.noexc130.thread.i.i.i:                           ; preds = %bb.aq
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yv = getelementptr inbounds nuw i8, ptr null, i64 %i.yt
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
end_hunk_0
