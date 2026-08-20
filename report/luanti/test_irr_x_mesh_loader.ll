inline.NumInlined: 1089
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL22CATCH2_INTERNAL_TEST_0v:._crit_edge.i.i
          cleanup
  br label %bb.oi

bb.dr:                                            ; preds = %bb.df
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.ds:                                            ; preds = %bb.dg
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.oi

bb.dt:                                            ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i, %bb.dh
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  %.sroa.0532.0563 = phi ptr [ %i.rq, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ], [ %i.lv, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.mo = load ptr, ptr %.sroa.0532.0563, align 8, !tbaa !103 ; 10 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 40 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 104
  %i.mr = load i8, ptr %i.mq, align 4, !tbaa !105
  switch i8 %i.mr, label %.invoke.loopexit646 [
    i8 1, label %bb.du
    i8 0, label %bb.dz
    i8 -1, label %.invoke
  ], !prof !107

bb.du:                                            ; preds = %.lr.ph
  %i.ms = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96 ; 6 uses
  %i.mt = load ptr, ptr %i.lb, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ms, ptr noundef nonnull align 4 dereferenceable(64) %i.mp, i64 64, i1 false), !tbaa.struct !100
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64 ; 2 uses
  store ptr %i.mu, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.dw:                                            ; preds = %bb.du
  %i.mv = load ptr, ptr %33, align 8, !tbaa !95   ; 5 uses
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 4 uses
  %i.mz = icmp eq i64 %i.my, 9223372036854775744
  br i1 %i.mz, label %bb.dx, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #25
          to label %.noexc355 unwind label %.loopexit.split-lp557

.noexc355:                                        ; preds = %bb.dx
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dw
  %i.na = ashr exact i64 %i.my, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.na, i64 1)
  %i.nb = add nsw i64 %.sroa.speculated.i.i.i, %i.na ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %i.na
  %i.nd = call i64 @llvm.umin.i64(i64 %i.nb, i64 144115188075855871)
  %i.ne = select i1 %i.nc, i64 144115188075855871, i64 %i.nd ; 3 uses
  %.not.i.i.i354 = icmp ne i64 %i.ne, 0
  call void @llvm.assume(i1 %.not.i.i.i354)
  %i.nf = shl nuw nsw i64 %i.ne, 6
  %i.ng = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #26
          to label %.noexc356 unwind label %.loopexit556 ; 5 uses

.noexc356:                                        ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.my
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.nh, ptr noundef nonnull align 4 dereferenceable(64) %i.mp, i64 64, i1 false), !tbaa.struct !100
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.mv, %i.ms
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc356, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.nj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ng, %.noexc356 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i.i.i ], [ %i.mv, %.noexc356 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !100
  %i.ni = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ni, %i.ms
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !108

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc356
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ng, %.noexc356 ], [ %i.nj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.my) #23
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.dy, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  store ptr %i.ng, ptr %33, align 8, !tbaa !95
  store ptr %i.nk, ptr %.phi.trans.insert, align 8, !tbaa !96
  %i.nl = getelementptr inbounds nuw [64 x i8], ptr %i.ng, i64 %i.ne
  store ptr %i.nl, ptr %i.lb, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

.loopexit556:                                     ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit558 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.loopexit.split-lp557:                            ; preds = %bb.dx
  %lpad.loopexit.split-lp559 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.invoke.loopexit646:                              ; preds = %.lr.ph
  br label %.invoke

.invoke:                                          ; preds = %.lr.ph, %.invoke.loopexit646
  %.str.46.sink = phi ptr [ @.str.47, %.invoke.loopexit646 ], [ @.str.46, %.lr.ph ]
  %i.nm = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.nm, align 8, !tbaa !36
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %.str.46.sink, ptr %i.nn, align 8, !tbaa !109
  invoke void @__cxa_throw(ptr nonnull %i.nm, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dz:                                            ; preds = %.lr.ph
  %i.no = getelementptr inbounds nuw i8, ptr %i.mo, i64 52
  %.sroa.0.0.copyload.i.i359 = load float, ptr %i.no, align 4, !tbaa !112, !noalias !114 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 56
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 60
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !112, !noalias !114 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.mo, i64 68
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mo, i64 72
  %i.nr = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !112, !noalias !114 ; 3 uses
  %.sroa.9.0.copyload.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !112, !noalias !114 ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.nr, %i.nr
  %i.ns = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.nt = call nsz float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i.i359, float %.sroa.0.0.copyload.i.i359, float %i.ns)
  %i.nu = call nsz float @llvm.fmuladd.f32(float %.sroa.9.0.copyload.i.i, float %.sroa.9.0.copyload.i.i, float %i.nt)
  %i.nv = call nsz float @llvm.fmuladd.f32(float %.sroa.12.0.copyload.i.i, float %.sroa.12.0.copyload.i.i, float %i.nu)
  %i.nw = fpext nsz float %i.nv to double
  %i.nx = call nsz double @llvm.sqrt.f64(double %i.nw)
  %i.ny = fdiv nsz double 1.000000e+00, %i.nx
  %i.nz = fptrunc nsz double %i.ny to float       ; 3 uses
  %i.oa = fmul nsz float %.sroa.0.0.copyload.i.i359, %i.nz ; 2 uses
  %i.ob = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.oc = insertelement <4 x float> %i.ob, float -0.000000e+00, i64 2
  %i.od = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.nz, i64 0
  %i.oe = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.of = fmul nsz <4 x float> %i.oc, %i.oe       ; 6 uses
  %i.og = fmul nsz float %.sroa.12.0.copyload.i.i, %i.nz ; 2 uses
  %i.oh = extractelement <4 x float> %i.of, i64 0
  %i.oi = extractelement <4 x float> %i.of, i64 1 ; 2 uses
  %.scalar = fmul nsz float %i.oa, 2.000000e+00   ; 4 uses
  %i.oj = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ol = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.om = fmul nsz <2 x float> %i.ol, splat (float 2.000000e+00) ; 5 uses
  %i.on = extractelement <2 x float> %i.om, i64 0
  %i.oo = fneg nsz float %i.on                    ; 2 uses
  %i.op = call nsz float @llvm.fmuladd.f32(float %i.oo, float %i.oh, float 1.000000e+00)
  %i.oq = extractelement <2 x float> %i.om, i64 1
  %i.or = fneg nsz float %i.oq                    ; 2 uses
  %i.os = call nsz float @llvm.fmuladd.f32(float %i.or, float %i.oi, float %i.op)
  %i.ot = insertelement <2 x float> poison, float %i.og, i64 0
  %i.ou = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ov = fmul nsz <2 x float> %i.ou, %i.om       ; 3 uses
  %i.ow = extractelement <2 x float> %i.ov, i64 0
  %i.ox = fneg nsz float %i.ow
  %i.oy = call nsz float @llvm.fmuladd.f32(float %.scalar, float %i.oi, float %i.ox)
  %i.oz = extractelement <2 x float> %i.ov, i64 1
  %i.pa = fneg nsz float %i.oz
  %i.pb = fneg nsz float %.scalar
  %i.pc = fmul nsz float %i.og, %.scalar          ; 2 uses
  %i.pd = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.pa, i64 0
  %i.pe = shufflevector <2 x float> %i.ov, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.pf = shufflevector <4 x float> %i.pd, <4 x float> %i.pe, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.pg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> %i.of, <4 x float> %i.pf)
  %i.ph = fneg nsz float %i.pc
  %i.pi = call nsz float @llvm.fmuladd.f32(float %i.pb, float %i.oa, float 1.000000e+00) ; 2 uses
  %i.pj = insertelement <2 x float> %i.om, float %i.or, i64 0
  %i.pk = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pl = insertelement <2 x float> poison, float %i.pi, i64 0
  %i.pm = insertelement <2 x float> %i.pl, float %i.ph, i64 1
  %i.pn = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.pk, <2 x float> %i.pm)
  %i.po = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pp = insertelement <2 x float> %i.po, float %i.oo, i64 1
  %i.pq = shufflevector <4 x float> %i.of, <4 x float> poison, <2 x i32> zeroinitializer
  %i.pr = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pi, i64 1
  %i.pt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pp, <2 x float> %i.pq, <2 x float> %i.ps)
  %i.pu = load <2 x float>, ptr %i.np, align 4, !tbaa !112, !noalias !114 ; 2 uses
  %i.pv = load float, ptr %i.nq, align 4, !tbaa !117, !noalias !114
  %i.pw = extractelement <2 x float> %i.pu, i64 0
  %i.px = fmul nsz float %i.pw, %i.os             ; 2 uses
  %i.py = shufflevector <2 x float> %i.pu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.pz = insertelement <4 x float> %i.py, float 0.000000e+00, i64 2
  %i.qa = fmul nsz <4 x float> %i.pz, %i.pg       ; 3 uses
  %i.qb = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qd = fmul nsz <2 x float> %i.qc, %i.pn       ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.mo, i64 76
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !121, !noalias !114 ; 2 uses
  %i.qg = fmul nsz float %i.qf, %i.oy             ; 2 uses
  %i.qh = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qj = fmul nsz <2 x float> %i.qi, %i.pt       ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.mo, i64 44
  %i.ql = load <2 x float>, ptr %i.mp, align 4, !tbaa !112, !noalias !114 ; 2 uses
  %i.qm = load <2 x float>, ptr %i.qk, align 4, !tbaa !112, !noalias !114 ; 2 uses
  %i.qn = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96 ; 16 uses
  %i.qo = load ptr, ptr %i.lb, align 8, !tbaa !92
  %.not.i.i360 = icmp eq ptr %i.qn, %i.qo
  br i1 %.not.i.i360, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store float %i.px, ptr %i.qn, align 4
  %.sroa.6498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %85 = shufflevector <4 x float> %i.qa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %85, ptr %.sroa.6498.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %86 = extractelement <4 x float> %i.qa, i64 3
  store float %86, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 20
  store <2 x float> %i.qd, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  store float %i.qg, ptr %.sroa.13513.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 36
  store <2 x float> %i.qj, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 44
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  %i.qp = extractelement <2 x float> %i.ql, i64 0
  store float %i.qp, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 52
  store <2 x float> %i.qm, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qn, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !16
  %i.qq = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !96
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 64 ; 2 uses
  store ptr %i.qr, ptr %.phi.trans.insert, align 8, !tbaa !96
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.eb:                                            ; preds = %bb.dz
  %i.qs = load ptr, ptr %33, align 8, !tbaa !95   ; 5 uses
  %i.qt = ptrtoint ptr %i.qn to i64
  %i.qu = ptrtoint ptr %i.qs to i64
  %i.qv = sub i64 %i.qt, %i.qu                    ; 4 uses
  %i.qw = icmp eq i64 %i.qv, 9223372036854775744
  br i1 %i.qw, label %bb.ec, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #25
          to label %.noexc362 unwind label %.loopexit.split-lp

.noexc362:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.qx = ashr exact i64 %i.qv, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.qx, i64 1)
  %i.qy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.qx ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.qx
  %i.ra = call i64 @llvm.umin.i64(i64 %i.qy, i64 144115188075855871)
  %i.rb = select i1 %i.qz, i64 144115188075855871, i64 %i.ra ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.rb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.rc = shl nuw nsw i64 %i.rb, 6
  %i.rd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rc) #26
          to label %.noexc363 unwind label %.loopexit ; 5 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.qv ; 8 uses
  store float %i.px, ptr %i.re, align 4
  %.sroa.6498.0..sroa_idx499.a = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store <4 x float> %i.qa, ptr %.sroa.6498.0..sroa_idx499.a, align 4
  %.sroa.10.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  store <2 x float> %i.qd, ptr %.sroa.10.0..sroa_idx507, align 4
  %.sroa.12.0..sroa_idx511 = getelementptr inbounds nuw i8, ptr %i.re, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx511, align 4
  %.sroa.13513.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  store float %i.qg, ptr %.sroa.13513.0..sroa_idx514, align 4
  %.sroa.14.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.re, i64 36
  %i.rf = extractelement <2 x float> %i.qj, i64 0
  store float %i.rf, ptr %.sroa.14.0..sroa_idx516, align 4
  %.sroa.15518.0..sroa_idx519 = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rg = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rh = shufflevector <4 x float> %i.rg, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.ri = shufflevector <2 x float> %i.qj, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> %i.rh, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.rj, ptr %.sroa.15518.0..sroa_idx519, align 4
  %.sroa.19.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  %i.rk = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.qm, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.rk, ptr %.sroa.19.0..sroa_idx527, align 4
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.qs, %i.qn
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc363, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.rd, %.noexc363 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.rl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.qs, %.noexc363 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !100
  %i.rl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rl, %i.qn
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !108

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc363
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.rd, %.noexc363 ], [ %i.rm, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i35.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qv) #23
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  store ptr %i.rd, ptr %33, align 8, !tbaa !95
  store ptr %i.rn, ptr %.phi.trans.insert, align 8, !tbaa !96
  %i.ro = getelementptr inbounds nuw [64 x i8], ptr %i.rd, i64 %i.rb
  store ptr %i.ro, ptr %i.lb, align 8, !tbaa !92
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.ea, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.dv
  %i.rp = phi ptr [ %i.qr, %bb.ea ], [ %i.rn, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.nk, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.mu, %bb.dv ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0532.0563, i64 8 ; 2 uses
  %.not550 = icmp eq ptr %i.rq, %i.lx
  br i1 %.not550, label %._crit_edge.loopexit, label %.lr.ph

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.sink = phi ptr [ null, %._crit_edge ], [ %i.me, %.lr.ph.i.i.i.i.i ] ; 10 uses
  %i.rr = load ptr, ptr %i.b, align 8, !tbaa !77
  invoke void @_ZNK5scene11SkinnedMesh23calculateGlobalMatricesERSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.rr, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store ptr @.str, ptr %35, align 8, !tbaa !18
  %i.rs = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 69, ptr %i.rs, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.19) #22
  %i.rt = load ptr, ptr %36, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.rv = load i64, ptr %i.ru, align 8
  invoke void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %34, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr %i.rt, i64 %i.rv, ptr noundef null)
          to label %bb.ef unwind label %bb.em

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %i.rw = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(96) %34)
          to label %bb.eg unwind label %bb.en

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.rw, label %bb.eh, label %bb.fz

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  store ptr @.str, ptr %38, align 8, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 70, ptr %i.rx, align 8, !tbaa !20
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr nonnull @.str.5, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr nonnull @.str.20, i64 15, i32 noundef 1)
          to label %bb.ei unwind label %bb.eo

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.ry = icmp ult i32 %i.ku, %i.kv
  %i.rz = zext i1 %i.ry to i8
  %i.sa = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i8 1, ptr %i.sa, align 8, !tbaa !52, !alias.scope !122
  %i.sb = getelementptr inbounds nuw i8, ptr %39, i64 9
  store i8 %i.rz, ptr %i.sb, align 1, !tbaa !54, !alias.scope !122
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch10BinaryExprIjjEE, i64 16), ptr %39, align 8, !tbaa !36, !alias.scope !122
  %i.sc = getelementptr inbounds nuw i8, ptr %39, i64 12
  store i32 %i.ku, ptr %i.sc, align 4, !tbaa !125, !alias.scope !122
  %i.sd = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr @.str.48, ptr %i.sd, align 8, !tbaa !89, !alias.scope !122
  %.sroa.2.0..sroa_idx.i.i364 = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i364, align 8, !tbaa !90, !alias.scope !122
  %i.se = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i32 %i.kv, ptr %i.se, align 8, !tbaa !127, !alias.scope !122
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(10) %39)
          to label %bb.ej unwind label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br label %bb.er

bb.ek:                                            ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

bb.el:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.em:                                            ; preds = %bb.ee
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  br label %bb.of

bb.en:                                            ; preds = %bb.ef
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %bb.gf

bb.eo:                                            ; preds = %bb.eh
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.fa

bb.ep:                                            ; preds = %bb.ei
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.sm = call ptr @__cxa_begin_catch(ptr %i.sl) #22 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %bb.eq unwind label %bb.ex

bb.eq:                                            ; preds = %bb.ep
  invoke void @__cxa_end_catch()
          to label %bb.er unwind label %bb.ey

bb.er:                                            ; preds = %bb.eq, %bb.ej
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %bb.es unwind label %bb.ey

bb.es:                                            ; preds = %bb.er
  %i.sn = getelementptr inbounds nuw i8, ptr %37, i64 59
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !24, !range !32, !noundef !33
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %_ZN5Catch16AssertionHandlerD2Ev.exit365, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.sq = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !34, !nonnull !33, !align !35 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !36
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 160
  %i.su = load ptr, ptr %i.st, align 8
  invoke void %i.su(ptr noundef nonnull align 8 dereferenceable(8) %i.sr, ptr noundef nonnull align 8 dereferenceable(72) %37)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit365 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #24
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit365:          ; preds = %bb.es, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  store ptr @.str, ptr %41, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 71, ptr %i.sx, align 8, !tbaa !20
  invoke void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %40, ptr nonnull @.str.5, i64 7, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr nonnull @.str.21, i64 24, i32 noundef 1)
          to label %bb.ev unwind label %bb.fb

bb.ev:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit365
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
end_hunk_0
