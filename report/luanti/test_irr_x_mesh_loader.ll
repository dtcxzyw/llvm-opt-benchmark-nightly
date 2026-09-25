Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_x_mesh_loader?download=true
inline.NumInlined: 1089
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL22CATCH2_INTERNAL_TEST_0v:._crit_edge.i.i

.noexc352:                                        ; preds = %_ZNSt15__new_allocatorIN4core8CMatrix4IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre568 = load ptr, ptr %33, align 8, !tbaa !146 ; 2 uses
  %.pre569 = load ptr, ptr %i.mf, align 8, !tbaa !146 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.pre568, %.pre569
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc352, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i ], [ %i.mk, %.noexc352 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i ], [ %.pre568, %.noexc352 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.013.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.sroa.08.012.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !147
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 64 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i = icmp eq ptr %i.ml, %.pre569
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !83

bb.dl:                                            ; preds = %bb.cy
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dn unwind label %bb.oo

bb.dm:                                            ; preds = %bb.da, %bb.cz
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.pn206 = phi { ptr, i32 } [ %i.mo, %bb.dm ], [ %i.mn, %bb.dl ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %30) #22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.cx
  %.pn206.pn = phi { ptr, i32 } [ %.pn206, %bb.dn ], [ %i.kg, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.of

bb.dp:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit348
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.dq:                                            ; preds = %bb.de
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.dr:                                            ; preds = %bb.df
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.ds:                                            ; preds = %bb.dg
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.of

bb.dt:                                            ; preds = %_ZNSt12_Vector_baseIN4core8CMatrix4IfEESaIS2_EE11_M_allocateEm.exit.i.i, %bb.dh
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit
  %.sroa.0532.0564 = phi ptr [ %i.ry, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit ], [ %i.ma, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE7reserveEm.exit ] ; 2 uses
  %i.mu = load ptr, ptr %.sroa.0532.0564, align 8, !tbaa !149 ; 9 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 40 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 104
  %i.mx = load i8, ptr %i.mw, align 4, !tbaa !151
  switch i8 %i.mx, label %.invoke.loopexit646 [
    i8 1, label %bb.du
    i8 0, label %bb.dz
    i8 -1, label %.invoke
  ], !prof !152

bb.du:                                            ; preds = %.lr.ph
  %i.my = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 6 uses
  %i.mz = load ptr, ptr %i.lb, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.my, %i.mz
  br i1 %.not.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.my, ptr noundef nonnull align 4 dereferenceable(64) %i.mv, i64 64, i1 false), !tbaa.struct !147
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64 ; 2 uses
  store ptr %i.na, ptr %.phi.trans.insert, align 8, !tbaa !142
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.dw:                                            ; preds = %bb.du
  %i.nb = load ptr, ptr %33, align 8, !tbaa !141  ; 5 uses
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = ptrtoint ptr %i.nb to i64               ; 2 uses
  %i.ne = sub i64 %i.nc, %i.nd                    ; 3 uses
  %i.nf = icmp eq i64 %i.ne, 9223372036854775744
  br i1 %i.nf, label %bb.dx, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #25
          to label %.noexc355 unwind label %.loopexit.split-lp558

.noexc355:                                        ; preds = %bb.dx
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dw
  %i.ng = ashr exact i64 %i.ne, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ng, i64 1)
  %i.nh = add nsw i64 %.sroa.speculated.i.i.i, %i.ng ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.ng
  %i.nj = call i64 @llvm.umin.i64(i64 %i.nh, i64 144115188075855871)
  %i.nk = select i1 %i.ni, i64 144115188075855871, i64 %i.nj ; 3 uses
  %.not.i.i.i354 = icmp ne i64 %i.nk, 0
  call void @llvm.assume(i1 %.not.i.i.i354)
  %i.nl = shl nuw nsw i64 %i.nk, 6
  %i.nm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nl) #26
          to label %.noexc356 unwind label %.loopexit557 ; 5 uses

.noexc356:                                        ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.nn, ptr noundef nonnull align 4 dereferenceable(64) %i.mv, i64 64, i1 false), !tbaa.struct !147
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.nb, %i.my
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc356, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nm, %.noexc356 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i.i.i.i ], [ %i.nb, %.noexc356 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !147
  %i.no = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.no, %i.my
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !84

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc356
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.nm, %.noexc356 ], [ %i.np, %.lr.ph.i.i.i.i.i.i.i ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.nb, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.dy

bb.dy:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  %i.nr = load ptr, ptr %i.lb, align 8, !tbaa !140
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = sub i64 %i.ns, %i.nd
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nt) #23
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.dy, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i
  store ptr %i.nm, ptr %33, align 8, !tbaa !141
  store ptr %i.nq, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.nu = getelementptr inbounds nuw [64 x i8], ptr %i.nm, i64 %i.nk
  store ptr %i.nu, ptr %i.lb, align 8, !tbaa !140
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

.loopexit557:                                     ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit559 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.loopexit.split-lp558:                            ; preds = %bb.dx
  %lpad.loopexit.split-lp560 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EED2Ev.exit404

.invoke.loopexit646:                              ; preds = %.lr.ph
  br label %.invoke

.invoke:                                          ; preds = %.lr.ph, %.invoke.loopexit646
  %.str.46.sink = phi ptr [ @.str.47, %.invoke.loopexit646 ], [ @.str.46, %.lr.ph ]
  %i.nv = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.nv, align 8, !tbaa !37
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store ptr %.str.46.sink, ptr %i.nw, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.nv, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dz:                                            ; preds = %.lr.ph
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mu, i64 52
  %.sroa.0.0.copyload.i.i359 = load float, ptr %i.nx, align 4, !tbaa !61, !noalias !153 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mu, i64 64
  %.sroa.12.0.copyload.i.i = load float, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !61, !noalias !153 ; 3 uses
  %i.ny = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !61, !noalias !153 ; 4 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ny, %i.ny
  %i.nz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.oa = call nsz float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i.i359, float %.sroa.0.0.copyload.i.i359, float %i.nz)
  %i.ob = extractelement <2 x float> %i.ny, i64 1 ; 2 uses
  %i.oc = call nsz float @llvm.fmuladd.f32(float %i.ob, float %i.ob, float %i.oa)
  %i.od = call nsz float @llvm.fmuladd.f32(float %.sroa.12.0.copyload.i.i, float %.sroa.12.0.copyload.i.i, float %i.oc)
  %i.oe = fpext nsz float %i.od to double
  %i.of = call nsz double @llvm.sqrt.f64(double %i.oe)
  %i.og = fdiv nsz double 1.000000e+00, %i.of
  %i.oh = fptrunc nsz double %i.og to float       ; 3 uses
  %i.oi = fmul nsz float %.sroa.0.0.copyload.i.i359, %i.oh ; 2 uses
  %i.oj = insertelement <2 x float> poison, float %i.oh, i64 0
  %i.ok = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ol = fmul nsz <2 x float> %i.ny, %i.ok       ; 4 uses
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.on = fmul nsz float %.sroa.12.0.copyload.i.i, %i.oh ; 3 uses
  %i.oo = extractelement <2 x float> %i.ol, i64 0 ; 3 uses
  %i.op = fmul nsz float %i.oo, 2.000000e+00      ; 2 uses
  %i.oq = fneg nsz float %i.op                    ; 2 uses
  %i.or = extractelement <2 x float> %i.ol, i64 1 ; 3 uses
  %i.os = fmul nsz float %i.or, 2.000000e+00      ; 4 uses
  %i.ot = fneg nsz float %i.os
  %i.ou = fmul nsz float %i.oi, 2.000000e+00      ; 5 uses
  %i.ov = fmul nsz float %i.on, %i.os             ; 2 uses
  %i.ow = fmul nsz float %i.on, %i.op             ; 2 uses
  %i.ox = fneg nsz float %i.ow
  %i.oy = call nsz float @llvm.fmuladd.f32(float %i.ou, float %i.or, float %i.ox)
  %i.oz = fneg nsz float %i.ov
  %85 = call nsz float @llvm.fmuladd.f32(float %i.oq, float %i.oo, float 1.000000e+00)
  %i.pa = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.pb = insertelement <2 x float> %i.pa, float %i.ou, i64 1 ; 2 uses
  %i.pc = insertelement <2 x float> poison, float %85, i64 0
  %i.pd = insertelement <2 x float> %i.pc, float %i.oz, i64 1
  %i.pe = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> %i.om, <2 x float> %i.pd)
  %i.pf = fneg nsz float %i.ou
  %i.pg = call nsz float @llvm.fmuladd.f32(float %i.pf, float %i.oi, float 1.000000e+00) ; 2 uses
  %i.ph = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pi = insertelement <2 x float> %i.ph, float %i.ov, i64 1
  %i.pj = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> %i.om, <2 x float> %i.pi)
  %i.pk = fmul nsz float %i.on, %i.ou             ; 2 uses
  %i.pl = call nsz float @llvm.fmuladd.f32(float %i.ou, float %i.or, float %i.ow)
  %i.pm = fneg nsz float %i.pk
  %i.pn = call nsz float @llvm.fmuladd.f32(float %i.os, float %i.oo, float %i.pm)
  %i.po = insertelement <2 x float> poison, float %i.os, i64 0
  %i.pp = insertelement <2 x float> %i.po, float %i.oq, i64 1
  %i.pq = shufflevector <2 x float> %i.ol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pg, i64 1
  %i.pt = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pp, <2 x float> %i.pq, <2 x float> %i.ps)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.mu, i64 68
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !157, !noalias !153 ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = fmul nsz <2 x float> %i.px, %i.pe       ; 2 uses
  %i.pz = fmul nsz float %i.pv, %i.pl             ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.mu, i64 72
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !158, !noalias !153 ; 2 uses
  %i.qc = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qe = fmul nsz <2 x float> %i.qd, %i.pj       ; 3 uses
  %i.qf = fmul nsz float %i.qb, %i.pn             ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.mu, i64 76
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !159, !noalias !153 ; 2 uses
  %i.qi = fmul nsz float %i.qh, %i.oy             ; 2 uses
  %i.qj = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.qk = shufflevector <2 x float> %i.qj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ql = fmul nsz <2 x float> %i.qk, %i.pt       ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.mu, i64 44
  %i.qn = load <2 x float>, ptr %i.mv, align 4, !tbaa !61, !noalias !153 ; 2 uses
  %i.qo = load <2 x float>, ptr %i.qm, align 4, !tbaa !61, !noalias !153 ; 2 uses
  %i.qp = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142 ; 16 uses
  %i.qq = load ptr, ptr %i.lb, align 8, !tbaa !140
  %.not.i.i360 = icmp eq ptr %i.qp, %i.qq
  br i1 %.not.i.i360, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store <2 x float> %i.py, ptr %i.qp, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  store float %i.pz, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  %i.qr = insertelement <2 x float> %i.qe, float 0.000000e+00, i64 0
  store <2 x float> %i.qr, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 20
  %i.qs = extractelement <2 x float> %i.qe, i64 0
  store float %i.qs, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  store float %i.qf, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 32
  store float %i.qi, ptr %.sroa.13513.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 36
  store <2 x float> %i.ql, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 44
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 48
  %i.qt = extractelement <2 x float> %i.qn, i64 0
  store float %i.qt, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 52
  store <2 x float> %i.qo, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qp, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !16
  %i.qu = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 64 ; 2 uses
  store ptr %i.qv, ptr %.phi.trans.insert, align 8, !tbaa !142
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE9push_backERKS2_.exit

bb.eb:                                            ; preds = %bb.dz
  %i.qw = load ptr, ptr %33, align 8, !tbaa !141  ; 5 uses
  %i.qx = ptrtoint ptr %i.qp to i64
  %i.qy = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qz = sub i64 %i.qx, %i.qy                    ; 3 uses
  %i.ra = icmp eq i64 %i.qz, 9223372036854775744
  br i1 %i.ra, label %bb.ec, label %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #25
          to label %.noexc362 unwind label %.loopexit.split-lp

.noexc362:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.rb = ashr exact i64 %i.qz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rb, i64 1)
  %i.rc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rb ; 2 uses
  %i.rd = icmp ult i64 %i.rc, %i.rb
  %i.re = call i64 @llvm.umin.i64(i64 %i.rc, i64 144115188075855871)
  %i.rf = select i1 %i.rd, i64 144115188075855871, i64 %i.re ; 3 uses
  %.not.i.i.i.i361 = icmp ne i64 %i.rf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i361)
  %i.rg = shl nuw nsw i64 %i.rf, 6
  %i.rh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rg) #26
          to label %.noexc363 unwind label %.loopexit ; 5 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorIN4core8CMatrix4IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.qz ; 10 uses
  store <2 x float> %i.py, ptr %i.ri, align 4
  %.sroa.7.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store float %i.pz, ptr %.sroa.7.0..sroa_idx501, align 4
  %.sroa.8.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.ri, i64 12
  store float 0.000000e+00, ptr %.sroa.8.0..sroa_idx503, align 4
  %.sroa.9.0..sroa_idx505 = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rj = shufflevector <2 x float> %i.qe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.rj, ptr %.sroa.9.0..sroa_idx505, align 4
  %.sroa.11.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  store float %i.qf, ptr %.sroa.11.0..sroa_idx509, align 4
  %.sroa.12.0..sroa_idx511 = getelementptr inbounds nuw i8, ptr %i.ri, i64 28
  store float 0.000000e+00, ptr %.sroa.12.0..sroa_idx511, align 4
  %.sroa.13513.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  store float %i.qi, ptr %.sroa.13513.0..sroa_idx514, align 4
  %.sroa.14.0..sroa_idx516 = getelementptr inbounds nuw i8, ptr %i.ri, i64 36
  %i.rk = extractelement <2 x float> %i.ql, i64 0
  store float %i.rk, ptr %.sroa.14.0..sroa_idx516, align 4
  %.sroa.15518.0..sroa_idx519 = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.rl = shufflevector <2 x float> %i.qn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rm = shufflevector <4 x float> %i.rl, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.rn = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> %i.rm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.ro, ptr %.sroa.15518.0..sroa_idx519, align 4
  %.sroa.19.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.rp = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.qo, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.rp, ptr %.sroa.19.0..sroa_idx527, align 4
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.qw, %i.qp
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc363, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.rr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.rh, %.noexc363 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.qw, %.noexc363 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.015.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.01214.i.i.i.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !147
  %i.rq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rq, %i.qp
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !84

_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc363
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.rh, %.noexc363 ], [ %i.rr, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i35.i.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  %i.rt = load ptr, ptr %i.lb, align 8, !tbaa !140
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = sub i64 %i.ru, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rv) #23
  br label %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZSt34__uninitialized_move_if_noexcept_aIPN4core8CMatrix4IfEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i.i.i
  store ptr %i.rh, ptr %33, align 8, !tbaa !141
  store ptr %i.rs, ptr %.phi.trans.insert, align 8, !tbaa !142
  %i.rw = getelementptr inbounds nuw [64 x i8], ptr %i.rh, i64 %i.rf
  store ptr %i.rw, ptr %i.lb, align 8, !tbaa !140
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
  %i.rx = phi ptr [ %i.qv, %bb.ea ], [ %i.rs, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.nq, %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.na, %bb.dv ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0532.0564, i64 8 ; 2 uses
  %.not551 = icmp eq ptr %i.ry, %i.mc
  br i1 %.not551, label %._crit_edge.loopexit, label %.lr.ph

_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge, %.noexc352
  %i.rz = phi ptr [ null, %._crit_edge ], [ %i.mk, %.noexc352 ], [ %i.mk, %.lr.ph.i.i.i.i.i ] ; 10 uses
  %i.sa = load ptr, ptr %i.b, align 8, !tbaa !52
  invoke void @_ZNK5scene11SkinnedMesh23calculateGlobalMatricesERSt6vectorIN4core8CMatrix4IfEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(152) %i.sa, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.ee unwind label %bb.el

bb.ee:                                            ; preds = %_ZNSt6vectorIN4core8CMatrix4IfEESaIS2_EEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  store ptr @.str, ptr %35, align 8, !tbaa !19
  %i.sb = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 69, ptr %i.sb, align 8, !tbaa !20
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.19) #22
  %i.sc = load ptr, ptr %36, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.se = load i64, ptr %i.sd, align 8
  invoke void @_ZN5Catch7SectionC1ERKNS_14SourceLineInfoENS_9StringRefEPKc(ptr noundef nonnull align 8 dereferenceable(96) %34, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr %i.sc, i64 %i.se, ptr noundef null)
          to label %bb.ef unwind label %bb.em
end_hunk_0
