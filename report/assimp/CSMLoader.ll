Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/CSMLoader?download=true
inline.NumInlined: 486
inline.NumDeleted: 262
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11CSMImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit426:                                     ; preds = %bb.dd, %bb.dk, %bb.dr
  %lpad.loopexit428 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

.loopexit.split-lp427:                            ; preds = %.invoke
  %lpad.loopexit.split-lp429 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.dj:                                            ; preds = %bb.di
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kt) #20
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.dk:                                            ; preds = %.loopexit422
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  %i.kx = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i257, ptr noundef nonnull align 4 dereferenceable(4) %i.kw, i1 noundef zeroext true)
          to label %bb.dl unwind label %.loopexit426 ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.ky = ptrtoaddr ptr %i.kx to i64
  %i.kz = sub i64 %i.ak, %i.ky
  %scevgep.i.i259 = getelementptr i8, ptr %i.kx, i64 %i.kz ; 2 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.do, %bb.dl
  %.0.i.i260 = phi ptr [ %i.kx, %bb.dl ], [ %i.lb, %bb.do ] ; 4 uses
  %i.la = load i8, ptr %.0.i.i260, align 1        ; 2 uses
  switch i8 %i.la, label %.loopexit [
    i8 32, label %bb.dn
    i8 9, label %bb.dn
    i8 13, label %bb.dn
    i8 10, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm, %bb.dm, %bb.dm
  %.not.i.i261 = icmp eq ptr %.0.i.i260, %i.ab
  br i1 %.not.i.i261, label %thread-pre-split413, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i.i260, i64 1
  br label %bb.dm, !llvm.loop !7

thread-pre-split413:                              ; preds = %bb.dn
  %.pr414 = load i8, ptr %scevgep.i.i259, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.dm, %thread-pre-split413
  %i.lc = phi i8 [ %.pr414, %thread-pre-split413 ], [ %i.la, %bb.dm ]
  %.0.lcssa.i.i262 = phi ptr [ %scevgep.i.i259, %thread-pre-split413 ], [ %.0.i.i260, %bb.dm ]
  %.not421 = icmp eq i8 %i.lc, 0
  br i1 %.not421, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.loopexit
  %i.ld = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ld) #20
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.dr:                                            ; preds = %.loopexit
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.lg = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i262, ptr noundef nonnull align 4 dereferenceable(4) %i.lf, i1 noundef zeroext true)
          to label %bb.ds unwind label %.loopexit426

bb.ds:                                            ; preds = %bb.dr
  %i.lh = load i32, ptr %i.ji, align 4
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.ji, align 4
  %.pre664.a = load ptr, ptr %6, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dc, %bb.ds
  %i.lj = phi ptr [ %i.jc, %bb.dc ], [ %.pre664.a, %bb.ds ] ; 5 uses
  %.7 = phi ptr [ %i.kg, %bb.dc ], [ %i.lg, %bb.ds ] ; 2 uses
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 1048
  %i.ll = load i32, ptr %i.lk, align 8
  %i.lm = zext i32 %i.ll to i64
  %i.ln = icmp samesign ult i64 %indvars.iv.next653, %i.lm
  br i1 %i.ln, label %bb.cm, label %._crit_edge, !llvm.loop !13

bb.du:                                            ; preds = %.loopexit431, %.loopexit431
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hu, i64 1048
  %i.lp = load i32, ptr %i.lo, align 8            ; 2 uses
  %.not560 = icmp eq i32 %i.lp, 0
  br i1 %.not560, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit, label %.lr.ph552

.lr.ph552:                                        ; preds = %bb.du
  %i.lq = getelementptr inbounds nuw i8, ptr %i.hu, i64 1056
  %i.lr = load ptr, ptr %i.lq, align 8
  %wide.trip.count = zext i32 %i.lp to i64
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dw
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next656, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit, label %bb.dw, !llvm.loop !14

bb.dw:                                            ; preds = %.lr.ph552, %bb.dv
  %indvars.iv655 = phi i64 [ 0, %.lr.ph552 ], [ %indvars.iv.next656, %bb.dv ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %indvars.iv655
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1028
  %i.lv = load i32, ptr %i.lu, align 4
  %.not129 = icmp eq i32 %i.lv, 0
  br i1 %.not129, label %bb.dx, label %bb.dv

bb.dx:                                            ; preds = %bb.dw
  %i.lw = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull @.str.17)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.lw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.fg unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lw) #20
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.ea:                                            ; preds = %bb.dy
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.eb:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.lz = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.ma = sub i64 %i.ak, %i.lz
  %scevgep.i.i264 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ma
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ee, %bb.eb
  %i.mb = phi i8 [ %i.ap, %bb.eb ], [ %.pre668, %bb.ee ]
  %.0.i.i265 = phi ptr [ %.0.lcssa.i.i, %bb.eb ], [ %i.mc, %bb.ee ] ; 6 uses
  switch i8 %i.mb, label %bb.ed [
    i8 13, label %.critedge.i.i266
    i8 10, label %.critedge.i.i266
    i8 0, label %.critedge.i.i266
    i8 35, label %.critedge.i.i266
  ]

bb.ed:                                            ; preds = %bb.ec
  %.not22.i.i = icmp eq ptr %.0.i.i265, %i.ab
  br i1 %.not22.i.i, label %.critedge.i.i266, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i.i265, i64 1 ; 2 uses
  %.pre668 = load i8, ptr %i.mc, align 1
  br label %bb.ec, !llvm.loop !15

.critedge.i.i266:                                 ; preds = %bb.ed, %bb.ec, %bb.ec, %bb.ec, %bb.ec
  %.0.lcssa.i.i267 = phi ptr [ %.0.i.i265, %bb.ec ], [ %.0.i.i265, %bb.ec ], [ %.0.i.i265, %bb.ec ], [ %.0.i.i265, %bb.ec ], [ %scevgep.i.i264, %bb.ed ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoaddr ptr %.0.lcssa.i.i267 to i64
  %i.md = sub i64 %i.ak, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i267, i64 %i.md
  br label %bb.ef

bb.ef:                                            ; preds = %bb.eh, %.critedge.i.i266
  %.1.i.i = phi ptr [ %.0.lcssa.i.i267, %.critedge.i.i266 ], [ %i.mf, %bb.eh ] ; 4 uses
  %i.me = load i8, ptr %.1.i.i, align 1
  switch i8 %i.me, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit [
    i8 13, label %bb.eg
    i8 10, label %bb.eg
  ]

bb.eg:                                            ; preds = %bb.ef, %bb.ef
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.ab
  br i1 %.not23.i.i, label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mf = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.ef, !llvm.loop !16

_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit:      ; preds = %bb.dv, %bb.eg, %bb.ef, %bb.du, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i228, %bb.bn, %bb.bl, %bb.x, %bb.ao, %bb.ai
  %.2375 = phi i32 [ %.0373, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i228 ], [ %.0373, %bb.x ], [ %.0.i191, %bb.ai ], [ %.0373, %bb.ao ], [ %.0373, %bb.bl ], [ %.1374, %bb.du ], [ %.0373, %bb.eg ], [ %.0373, %bb.bn ], [ %.0373, %bb.ef ], [ %.1374, %bb.dv ]
  %.2372 = phi i32 [ %.0370, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i228 ], [ %.0.i167, %bb.x ], [ %.0370, %bb.ai ], [ %.0370, %bb.ao ], [ %.0370, %bb.bl ], [ %.1371, %bb.du ], [ %.0370, %bb.eg ], [ %.0370, %bb.bn ], [ %.0370, %bb.ef ], [ %.1371, %bb.dv ]
  %.8 = phi ptr [ %i.as, %_ZN6Assimp15ASSIMP_strincmpEPKcS1_j.exit.thread.i228 ], [ %.08.lcssa.i.i, %bb.x ], [ %.08.lcssa.i.i188, %bb.ai ], [ %i.cx, %bb.ao ], [ %.0.lcssa.i.i220, %bb.bl ], [ %.0.lcssa.i.i240, %bb.du ], [ %scevgep25.i.i, %bb.eg ], [ %i.as, %bb.bn ], [ %.1.i.i, %bb.ef ], [ %.0.lcssa.i.i240, %bb.dv ]
  br label %bb.h, !llvm.loop !17

bb.ei:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %.0370, i32 0)
  %i.mg = sub nsw i32 %.0373, %.sroa.speculated
  %i.mh = sitofp i32 %i.mg to double
  %i.mi = load ptr, ptr %6, align 8               ; 8 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 1032
  store double %i.mh, ptr %i.mj, align 8
  %i.mk = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #23
          to label %bb.ej unwind label %.loopexit.split-lp444 ; 8 uses

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.mk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 unwind label %bb.el

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.ej
  %i.ml = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.mk, ptr %i.ml, align 8
  store i32 14, ptr %i.mk, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.mm, ptr noundef nonnull align 1 dereferenceable(14) @.str.18, i64 14, i1 false)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 18
  store i8 0, ptr %i.mn, align 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.mi, i64 1048
  %.pre665.a = load i32, ptr %.phi.trans.insert, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 1048 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 1104
  store i32 %.pre665.a, ptr %i.mp, align 8
  %i.mq = load i32, ptr %i.mo, align 8
  %i.mr = zext i32 %i.mq to i64
  %i.ms = shl nuw nsw i64 %i.mr, 3
  %i.mt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ms) #23
          to label %bb.ek unwind label %.loopexit.split-lp444

bb.ek:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mk, i64 1112
  store ptr %i.mt, ptr %i.mu, align 8
  %i.mv = load i32, ptr %i.mo, align 8
  %.not562 = icmp eq i32 %i.mv, 0
  br i1 %.not562, label %._crit_edge556, label %.lr.ph555.preheader

.lr.ph555.preheader:                              ; preds = %bb.ek
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mi, i64 1056 ; 2 uses
  br label %.lr.ph555

._crit_edge556:                                   ; preds = %bb.ev, %bb.ek
  %i.mx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 1, ptr %i.mx, align 8
  %i.my = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #23
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 unwind label %.loopexit.split-lp444

bb.el:                                            ; preds = %bb.ej
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef 1144) #21
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

.lr.ph555:                                        ; preds = %.lr.ph555.preheader, %bb.ev
  %indvars.iv658 = phi i64 [ 0, %.lr.ph555.preheader ], [ %indvars.iv.next659, %bb.ev ] ; 4 uses
  %i.na = load ptr, ptr %i.mw, align 8
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv658
  %i.nc = load ptr, ptr %i.nb, align 8            ; 2 uses
  %i.nd = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #23
          to label %bb.em unwind label %bb.er     ; 23 uses

bb.em:                                            ; preds = %.lr.ph555
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.nd)
          to label %bb.en unwind label %bb.es

bb.en:                                            ; preds = %bb.em
  %i.ne = load ptr, ptr %i.ml, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 1112
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv658
  store ptr %i.nd, ptr %i.nh, align 8
  %i.ni = load ptr, ptr %i.mw, align 8
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv658
  %i.nk = load ptr, ptr %i.nj, align 8            ; 3 uses
  %i.nl = icmp eq ptr %i.nd, %i.nk
  br i1 %i.nl, label %_ZN8aiStringaSERKS_.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.nm = load i32, ptr %i.nk, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.nm, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.nd, align 4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.np = zext nneg i32 %spec.select.i to i64     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nn, ptr nonnull align 4 %i.no, i64 %i.np, i1 false)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.np
  store i8 0, ptr %i.nq, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.en, %bb.eo
  %i.nr = load ptr, ptr %i.ml, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nd, i64 1096
  store ptr %i.nr, ptr %i.ns, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nc, i64 1032
  %i.nu = load ptr, ptr %i.nt, align 8            ; 4 uses
  %.not143 = icmp eq ptr %i.nu, null
  br i1 %.not143, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nc, i64 1028
  %i.nw = load i32, ptr %i.nv, align 4
  %.not144 = icmp eq i32 %i.nw, 0
  br i1 %.not144, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nd, i64 1028
  store float 1.000000e+00, ptr %i.ny, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1072 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.nz = load float, ptr %i.nx, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nd, i64 1040
  store float %i.nz, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = getelementptr inbounds nuw i8, ptr %i.nd, i64 1056
  store float %i.oc, ptr %i.od, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.of = load float, ptr %i.oe, align 4
  store float %i.of, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %bb.ev

bb.er:                                            ; preds = %bb.eu, %bb.et, %.lr.ph555
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.es:                                            ; preds = %bb.em
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef 1144) #21
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit225

bb.et:                                            ; preds = %bb.ep, %_ZN8aiStringaSERKS_.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nd, i64 1028
  store float 1.000000e+00, ptr %i.oi, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 8
  %i.oj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.eu unwind label %bb.er

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.oj, ptr noundef nonnull @.str.19)
          to label %bb.ev unwind label %bb.er

bb.ev:                                            ; preds = %bb.eu, %bb.eq
  %indvars.iv.next659 = add nuw nsw i64 %indvars.iv658, 1 ; 2 uses
  %i.ok = load i32, ptr %i.mo, align 8
  %i.ol = zext i32 %i.ok to i64
  %i.om = icmp samesign ult i64 %indvars.iv.next659, %i.ol
  br i1 %i.om, label %.lr.ph555, label %._crit_edge556, !llvm.loop !18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %._crit_edge556
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store ptr %i.my, ptr %i.on, align 8
  store i32 15, ptr %i.mi, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.oo, ptr noundef nonnull align 1 dereferenceable(15) @.str.20, i64 15, i1 false)
  %i.op = getelementptr inbounds nuw i8, ptr %i.mi, i64 19
  store i8 0, ptr %i.op, align 1
  %.pre666 = load ptr, ptr %i.on, align 8
  store ptr null, ptr %6, align 8
  store ptr %i.mi, ptr %.pre666, align 8
  %i.oq = load i32, ptr %2, align 8
  %i.or = or i32 %i.oq, 1
  store i32 %i.or, ptr %2, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ot = load i8, ptr %i.os, align 8, !range !19, !noundef !20
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %_ZNSt10unique_ptrI11aiAnimationSt14default_deleteIS0_EED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ov = load ptr, ptr %i.ml, align 8
  invoke void @_ZN6Assimp19SkeletonMeshBuilderC1EP7aiSceneP6aiNodeb(ptr noundef nonnull align 8 dereferenceable(73) %7, ptr noundef nonnull %2, ptr noundef %i.ov, i1 noundef zeroext true)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  %i.ow = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ox = load ptr, ptr %i.ow, align 8            ; 3 uses
  %.not.i.i.i.i284 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i.i284, label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.oy = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.ox to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pc) #21
  br label %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.i

_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.i:         ; preds = %bb.ey, %bb.ex
  %i.pd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8            ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit.i, label %bb.ez

bb.ez:                                            ; preds = %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.i
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = ptrtoint ptr %i.pg to i64
  %i.pi = ptrtoint ptr %i.pe to i64
  %i.pj = sub i64 %i.ph, %i.pi
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.pj) #21
  br label %_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp19SkeletonMeshBuilder4FaceESaIS2_EED2Ev.exit.i: ; preds = %bb.ez, %_ZNSt6vectorIP6aiBoneSaIS1_EED2Ev.exit.i
  %i.pk = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i2.i, label %_ZN6Assimp19SkeletonMeshBuilderD2Ev.exit, label %bb.fa

end_hunk_0
