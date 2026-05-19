inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  call void @llvm.assume(i1 %i.nq)
  switch i64 %i.np, label %bb.bd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.nr = load i8, ptr %i.nn, align 1, !tbaa !81
  store i8 %i.nr, ptr %i.nl, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nl, ptr align 1 %i.nn, i64 %i.np, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.ns = load i64, ptr %i.kt, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ns, ptr %i.ih, align 8, !tbaa !80
  %i.nt = load ptr, ptr %8, align 8, !tbaa !76
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ns
  store i8 0, ptr %i.nu, align 1, !tbaa !81
  %.pre.i393 = load ptr, ptr %12, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

.thread.i395:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i394
  store ptr %i.nn, ptr %8, align 8, !tbaa !76
  %i.nv = load <2 x i64>, ptr %i.kt, align 8, !tbaa !81
  store <2 x i64> %i.nv, ptr %i.ih, align 8, !tbaa !81
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i388
  %i.nw = load i64, ptr %i.ig, align 8, !tbaa !81
  store ptr %i.nn, ptr %8, align 8, !tbaa !76
  %i.nx = load <2 x i64>, ptr %i.kt, align 8, !tbaa !81
  store <2 x i64> %i.nx, ptr %i.ih, align 8, !tbaa !81
  %.not.i390 = icmp eq ptr %i.nl, null
  br i1 %.not.i390, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389
  store ptr %i.nl, ptr %12, align 8, !tbaa !76
  store i64 %i.nw, ptr %i.ks, align 8, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i389, %.thread.i395
  store ptr %i.ks, ptr %12, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392, %bb.be, %bb.bf
  %i.ny = phi ptr [ %.pre.i393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i392 ], [ %i.nl, %bb.be ], [ %i.ks, %bb.bf ]
  store i64 0, ptr %i.kt, align 8, !tbaa !80
  store i8 0, ptr %i.ny, align 1, !tbaa !81
  %i.nz = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.ks
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396
  call void @_ZdlPv(ptr noundef %i.nz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc.i385
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %i.oc = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load double, ptr %i.od, align 8, !tbaa !73
  store double %i.oe, ptr %i.in, align 8, !tbaa !101
  %i.of = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.og = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.og, ptr %i.of, align 4, !tbaa !4
  %i.oh = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !4
  %i.oj = load i32, ptr %i.id, align 4, !tbaa !4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store i32 %i.oj, ptr %i.ok, align 4, !tbaa !4
  %i.ol = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 15000, ptr %i.ol, align 4, !tbaa !4
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  store i32 200000, ptr %i.om, align 4, !tbaa !4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store i32 10000000, ptr %i.on, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i400:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.il, ptr %13, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.il, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false)
  store i64 11, ptr %i.im, align 8, !tbaa !80
  store i8 0, ptr %i.lj, align 1, !tbaa !81
  %i.oo = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.oo, ptr noundef nonnull align 1 dereferenceable(11) @.str.6, i64 11, i1 false)
  %i.op = load i64, ptr %i.im, align 8, !tbaa !80 ; 2 uses
  store i64 %i.op, ptr %i.ih, align 8, !tbaa !80
  %i.oq = load ptr, ptr %8, align 8, !tbaa !76
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.op
  store i8 0, ptr %i.or, align 1, !tbaa !81
  %.pre.i409 = load ptr, ptr %13, align 8, !tbaa !76
  store i64 0, ptr %i.im, align 8, !tbaa !80
  store i8 0, ptr %.pre.i409, align 1, !tbaa !81
  %i.os = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.il
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %._crit_edge.i.i400
  call void @_ZdlPv(ptr noundef %i.os) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %._crit_edge.i.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bi

._crit_edge.i.i416:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %i.ij, ptr %14, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ij, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  store i64 15, ptr %i.ik, align 8, !tbaa !80
  store i8 0, ptr %i.li, align 1, !tbaa !81
  %i.ou = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ou, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false)
  %i.ov = load i64, ptr %i.ik, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ov, ptr %i.ih, align 8, !tbaa !80
  %i.ow = load ptr, ptr %8, align 8, !tbaa !76
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ov
  store i8 0, ptr %i.ox, align 1, !tbaa !81
  %.pre.i425 = load ptr, ptr %14, align 8, !tbaa !76
  store i64 0, ptr %i.ik, align 8, !tbaa !80
  store i8 0, ptr %.pre.i425, align 1, !tbaa !81
  %i.oy = load ptr, ptr %14, align 8, !tbaa !76   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.ij
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %._crit_edge.i.i416
  call void @_ZdlPv(ptr noundef %i.oy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %._crit_edge.i.i416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.pa = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !73
  store double %i.pc, ptr %i.in, align 8, !tbaa !101
  %i.pd = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.pe = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.pe, ptr %i.pd, align 4, !tbaa !4
  %i.pf = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !4
  %i.ph = load i32, ptr %i.id, align 4, !tbaa !4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !4
  %i.pj = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 3000, ptr %i.pj, align 4, !tbaa !4
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  store i32 30000, ptr %i.pk, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i32 1000000, ptr %i.pl, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i432:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.ko, ptr %15, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ko, ptr noundef nonnull align 1 dereferenceable(10) @.str.8, i64 10, i1 false)
  store i64 10, ptr %i.kp, align 8, !tbaa !80
  store i8 0, ptr %i.mj, align 2, !tbaa !81
  %i.pm = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.pm, ptr noundef nonnull align 1 dereferenceable(10) @.str.8, i64 10, i1 false)
  %i.pn = load i64, ptr %i.kp, align 8, !tbaa !80 ; 2 uses
  store i64 %i.pn, ptr %i.ih, align 8, !tbaa !80
  %i.po = load ptr, ptr %8, align 8, !tbaa !76
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pn
  store i8 0, ptr %i.pp, align 1, !tbaa !81
  %.pre.i441 = load ptr, ptr %15, align 8, !tbaa !76
  store i64 0, ptr %i.kp, align 8, !tbaa !80
  store i8 0, ptr %.pre.i441, align 1, !tbaa !81
  %i.pq = load ptr, ptr %15, align 8, !tbaa !76   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.ko
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %._crit_edge.i.i432
  call void @_ZdlPv(ptr noundef %i.pq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %._crit_edge.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ps = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !73
  store double %i.pu, ptr %i.in, align 8, !tbaa !101
  %i.pv = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %43 = load ptr, ptr %i.io, align 8, !tbaa !85   ; 2 uses
  %44 = insertelement <2 x double> poison, double %i.pv, i64 0
  %45 = shufflevector <2 x double> %44, <2 x double> poison, <2 x i32> zeroinitializer
  %46 = fmul <2 x double> %45, <double 2.800000e+01, double 1.600000e+01>
  %47 = fptosi <2 x double> %46 to <2 x i32>
  %48 = add nsw <2 x i32> %47, splat (i32 3)      ; 4 uses
  %49 = mul nsw <2 x i32> %48, %48                ; 2 uses
  %50 = mul nsw <2 x i32> %49, %48                ; 2 uses
  %51 = extractelement <2 x i32> %50, i64 0
  %i.pw = add nsw i32 %51, -1
  %52 = add <2 x i32> %49, %48
  %53 = add <2 x i32> %50, <i32 0, i32 -2>
  %54 = shl <2 x i32> %52, splat (i32 1)
  %55 = sub <2 x i32> %53, %54
  %56 = add <2 x i32> %55, <i32 -2, i32 0>
  store <2 x i32> %56, ptr %43, align 4, !tbaa !4
  %57 = fmul double %i.pv, 4.000000e+00
  %58 = fptosi double %57 to i32
  %59 = add nsw i32 %58, 3                        ; 4 uses
  %60 = mul nsw i32 %59, %59                      ; 2 uses
  %61 = mul nsw i32 %60, %59
  %62 = add i32 %60, %59
  %63 = add i32 %61, -2
  %64 = shl i32 %62, 1
  %65 = sub i32 %63, %64
  %66 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i32 %65, ptr %66, align 4, !tbaa !4
  %i.px = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 6500, ptr %i.px, align 4, !tbaa !4
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store i32 30000, ptr %i.py, align 4, !tbaa !4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i32 800000, ptr %i.pz, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i506:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %i.km, ptr %16, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.km, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false)
  store i64 14, ptr %i.kn, align 8, !tbaa !80
  store i8 0, ptr %i.mi, align 2, !tbaa !81
  %i.qa = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.qa, ptr noundef nonnull align 1 dereferenceable(14) @.str.9, i64 14, i1 false)
  %i.qb = load i64, ptr %i.kn, align 8, !tbaa !80 ; 2 uses
  store i64 %i.qb, ptr %i.ih, align 8, !tbaa !80
  %i.qc = load ptr, ptr %8, align 8, !tbaa !76
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qb
  store i8 0, ptr %i.qd, align 1, !tbaa !81
  %.pre.i515 = load ptr, ptr %16, align 8, !tbaa !76
  store i64 0, ptr %i.kn, align 8, !tbaa !80
  store i8 0, ptr %.pre.i515, align 1, !tbaa !81
  %i.qe = load ptr, ptr %16, align 8, !tbaa !76   ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.km
  br i1 %i.qf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519: ; preds = %._crit_edge.i.i506
  call void @_ZdlPv(ptr noundef %i.qe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %._crit_edge.i.i506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.qg = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !73
  store double %i.qh, ptr %i.in, align 8, !tbaa !101
  %i.qi = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 3 uses
  %i.qj = fmul double %i.qi, 1.560000e+02
  %i.qk = fptosi double %i.qj to i32              ; 6 uses
  %i.ql = add nsw i32 %i.qk, 3                    ; 2 uses
  %i.qm = mul nsw i32 %i.ql, %i.ql
  %reass.sub = sub i32 %i.qm, %i.qk
  %i.qn = add i32 %reass.sub, -5
  %i.qo = icmp sgt i32 %i.qk, 1
  br i1 %i.qo, label %.lr.ph72.us.i.preheader, label %_ZN7ADomainC2Eii.exit527

.lr.ph72.us.i.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %i.qp = zext nneg i32 %i.qk to i64
  %i.qq = add nsw i64 %i.qp, -1                   ; 4 uses
  %i.qr = add nsw i32 %i.qk, -1                   ; 2 uses
  %i.qs = add nsw i32 %i.qk, -2
  %xtraiter = and i32 %i.qr, 3                    ; 3 uses
  %i.qt = icmp ult i32 %i.qs, 3
  br i1 %i.qt, label %.lr.ph72.us.i.epil.preheader, label %.lr.ph72.us.i.preheader.new

.lr.ph72.us.i.preheader.new:                      ; preds = %.lr.ph72.us.i.preheader
  %unroll_iter = and i32 %i.qr, -4
  %i.qu = shl nsw i64 %i.qq, 1
  %invariant.op = add i64 %i.qu, %i.qq
  br label %.lr.ph72.us.i

.lr.ph72.us.i:                                    ; preds = %.lr.ph72.us.i, %.lr.ph72.us.i.preheader.new
  %.lcssa7677.us.i = phi i64 [ 0, %.lr.ph72.us.i.preheader.new ], [ %i.qw, %.lr.ph72.us.i ]
  %niter = phi i32 [ 0, %.lr.ph72.us.i.preheader.new ], [ %niter.next.3, %.lr.ph72.us.i ]
  %.reass = add i64 %.lcssa7677.us.i, %invariant.op
  %sext103.i.3 = shl i64 %.reass, 32
  %i.qv = ashr exact i64 %sext103.i.3, 32
  %i.qw = add nsw i64 %i.qq, %i.qv                ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.sink.split.i524.unr-lcssa, label %.lr.ph72.us.i, !llvm.loop !102

.loopexit.sink.split.i524.unr-lcssa:              ; preds = %.lr.ph72.us.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.sink.split.i524, label %.lr.ph72.us.i.epil.preheader

.lr.ph72.us.i.epil.preheader:                     ; preds = %.loopexit.sink.split.i524.unr-lcssa, %.lr.ph72.us.i.preheader
  %.lcssa7677.us.i.epil.init = phi i64 [ 0, %.lr.ph72.us.i.preheader ], [ %i.qw, %.loopexit.sink.split.i524.unr-lcssa ]
  %lcmp.mod1668 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1668)
  br label %.lr.ph72.us.i.epil

.lr.ph72.us.i.epil:                               ; preds = %.lr.ph72.us.i.epil, %.lr.ph72.us.i.epil.preheader
  %.lcssa7677.us.i.epil = phi i64 [ %i.qy, %.lr.ph72.us.i.epil ], [ %.lcssa7677.us.i.epil.init, %.lr.ph72.us.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph72.us.i.epil ], [ 0, %.lr.ph72.us.i.epil.preheader ]
  %sext103.i.epil = shl i64 %.lcssa7677.us.i.epil, 32
  %i.qx = ashr exact i64 %sext103.i.epil, 32
  %i.qy = add nsw i64 %i.qq, %i.qx                ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.sink.split.i524, label %.lr.ph72.us.i.epil, !llvm.loop !103

.loopexit.sink.split.i524:                        ; preds = %.lr.ph72.us.i.epil, %.loopexit.sink.split.i524.unr-lcssa
  %.lcssa = phi i64 [ %i.qw, %.loopexit.sink.split.i524.unr-lcssa ], [ %i.qy, %.lr.ph72.us.i.epil ]
  %i.qz = trunc nsw i64 %.lcssa to i32
  br label %_ZN7ADomainC2Eii.exit527

_ZN7ADomainC2Eii.exit527:                         ; preds = %.loopexit.sink.split.i524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %.sroa.251235.0 = phi i32 [ %i.qz, %.loopexit.sink.split.i524 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ]
  %i.ra = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  store i32 %.sroa.251235.0, ptr %i.ra, align 4, !tbaa !4
  %i.rb = fmul double %i.qi, 6.400000e+01
  %i.rc = fptosi double %i.rb to i32              ; 4 uses
  %i.rd = icmp sgt i32 %i.rc, 1
  br i1 %i.rd, label %.lr.ph72.us.i530.preheader, label %_ZN7ADomainC2Eii.exit543

.lr.ph72.us.i530.preheader:                       ; preds = %_ZN7ADomainC2Eii.exit527
  %i.re = zext nneg i32 %i.rc to i64
  %i.rf = add nsw i64 %i.re, -1                   ; 4 uses
  %i.rg = add nsw i32 %i.rc, -1                   ; 2 uses
  %i.rh = add nsw i32 %i.rc, -2
  %xtraiter1669 = and i32 %i.rg, 3                ; 3 uses
  %i.ri = icmp ult i32 %i.rh, 3
  br i1 %i.ri, label %.lr.ph72.us.i530.epil.preheader, label %.lr.ph72.us.i530.preheader.new

.lr.ph72.us.i530.preheader.new:                   ; preds = %.lr.ph72.us.i530.preheader
  %unroll_iter1674 = and i32 %i.rg, -4
  %i.rj = shl nsw i64 %i.rf, 1
  %invariant.op1694 = add i64 %i.rj, %i.rf
  br label %.lr.ph72.us.i530

.lr.ph72.us.i530:                                 ; preds = %.lr.ph72.us.i530, %.lr.ph72.us.i530.preheader.new
  %.lcssa7677.us.i532 = phi i64 [ 0, %.lr.ph72.us.i530.preheader.new ], [ %i.rl, %.lr.ph72.us.i530 ]
  %niter1675 = phi i32 [ 0, %.lr.ph72.us.i530.preheader.new ], [ %niter1675.next.3, %.lr.ph72.us.i530 ]
  %.reass1695 = add i64 %.lcssa7677.us.i532, %invariant.op1694
  %sext103.i533.3 = shl i64 %.reass1695, 32
  %i.rk = ashr exact i64 %sext103.i533.3, 32
  %i.rl = add nsw i64 %i.rf, %i.rk                ; 3 uses
  %niter1675.next.3 = add i32 %niter1675, 4       ; 2 uses
  %niter1675.ncmp.3 = icmp eq i32 %niter1675.next.3, %unroll_iter1674
  br i1 %niter1675.ncmp.3, label %.loopexit.sink.split.i540.unr-lcssa, label %.lr.ph72.us.i530, !llvm.loop !102

.loopexit.sink.split.i540.unr-lcssa:              ; preds = %.lr.ph72.us.i530
  %lcmp.mod1671.not = icmp eq i32 %xtraiter1669, 0
  br i1 %lcmp.mod1671.not, label %.loopexit.sink.split.i540, label %.lr.ph72.us.i530.epil.preheader

.lr.ph72.us.i530.epil.preheader:                  ; preds = %.loopexit.sink.split.i540.unr-lcssa, %.lr.ph72.us.i530.preheader
  %.lcssa7677.us.i532.epil.init = phi i64 [ 0, %.lr.ph72.us.i530.preheader ], [ %i.rl, %.loopexit.sink.split.i540.unr-lcssa ]
  %lcmp.mod1673 = icmp ne i32 %xtraiter1669, 0
  call void @llvm.assume(i1 %lcmp.mod1673)
  br label %.lr.ph72.us.i530.epil

.lr.ph72.us.i530.epil:                            ; preds = %.lr.ph72.us.i530.epil, %.lr.ph72.us.i530.epil.preheader
  %.lcssa7677.us.i532.epil = phi i64 [ %i.rn, %.lr.ph72.us.i530.epil ], [ %.lcssa7677.us.i532.epil.init, %.lr.ph72.us.i530.epil.preheader ]
  %epil.iter1670 = phi i32 [ %epil.iter1670.next, %.lr.ph72.us.i530.epil ], [ 0, %.lr.ph72.us.i530.epil.preheader ]
  %sext103.i533.epil = shl i64 %.lcssa7677.us.i532.epil, 32
  %i.rm = ashr exact i64 %sext103.i533.epil, 32
  %i.rn = add nsw i64 %i.rf, %i.rm                ; 2 uses
  %epil.iter1670.next = add i32 %epil.iter1670, 1 ; 2 uses
  %epil.iter1670.cmp.not = icmp eq i32 %epil.iter1670.next, %xtraiter1669
  br i1 %epil.iter1670.cmp.not, label %.loopexit.sink.split.i540, label %.lr.ph72.us.i530.epil, !llvm.loop !105

.loopexit.sink.split.i540:                        ; preds = %.lr.ph72.us.i530.epil, %.loopexit.sink.split.i540.unr-lcssa
  %.lcssa1660 = phi i64 [ %i.rl, %.loopexit.sink.split.i540.unr-lcssa ], [ %i.rn, %.lr.ph72.us.i530.epil ]
  %i.ro = trunc nsw i64 %.lcssa1660 to i32
  br label %_ZN7ADomainC2Eii.exit543

_ZN7ADomainC2Eii.exit543:                         ; preds = %.loopexit.sink.split.i540, %_ZN7ADomainC2Eii.exit527
  %.sroa.241213.0 = phi i32 [ %i.ro, %.loopexit.sink.split.i540 ], [ 0, %_ZN7ADomainC2Eii.exit527 ]
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  store i32 %.sroa.241213.0, ptr %i.rp, align 4, !tbaa !4
  %i.rq = fmul double %i.qi, 8.000000e+00
  %i.rr = fptosi double %i.rq to i32              ; 4 uses
  %i.rs = icmp sgt i32 %i.rr, 1
  br i1 %i.rs, label %.lr.ph72.us.i546.preheader, label %_ZN7ADomainD2Ev.exit565

.lr.ph72.us.i546.preheader:                       ; preds = %_ZN7ADomainC2Eii.exit543
  %i.rt = zext nneg i32 %i.rr to i64
  %i.ru = add nsw i64 %i.rt, -1                   ; 4 uses
  %i.rv = add nsw i32 %i.rr, -1                   ; 2 uses
  %i.rw = add nsw i32 %i.rr, -2
  %xtraiter1676 = and i32 %i.rv, 3                ; 3 uses
  %i.rx = icmp ult i32 %i.rw, 3
  br i1 %i.rx, label %.lr.ph72.us.i546.epil.preheader, label %.lr.ph72.us.i546.preheader.new

.lr.ph72.us.i546.preheader.new:                   ; preds = %.lr.ph72.us.i546.preheader
  %unroll_iter1681 = and i32 %i.rv, -4
  %i.ry = shl nsw i64 %i.ru, 1
  %invariant.op1696 = add i64 %i.ry, %i.ru
  br label %.lr.ph72.us.i546

.lr.ph72.us.i546:                                 ; preds = %.lr.ph72.us.i546, %.lr.ph72.us.i546.preheader.new
  %.lcssa7677.us.i548 = phi i64 [ 0, %.lr.ph72.us.i546.preheader.new ], [ %i.sa, %.lr.ph72.us.i546 ]
  %niter1682 = phi i32 [ 0, %.lr.ph72.us.i546.preheader.new ], [ %niter1682.next.3, %.lr.ph72.us.i546 ]
  %.reass1697 = add i64 %.lcssa7677.us.i548, %invariant.op1696
  %sext103.i549.3 = shl i64 %.reass1697, 32
  %i.rz = ashr exact i64 %sext103.i549.3, 32
  %i.sa = add nsw i64 %i.ru, %i.rz                ; 3 uses
  %niter1682.next.3 = add i32 %niter1682, 4       ; 2 uses
  %niter1682.ncmp.3 = icmp eq i32 %niter1682.next.3, %unroll_iter1681
  br i1 %niter1682.ncmp.3, label %.loopexit.sink.split.i556.unr-lcssa, label %.lr.ph72.us.i546, !llvm.loop !102

.loopexit.sink.split.i556.unr-lcssa:              ; preds = %.lr.ph72.us.i546
  %lcmp.mod1678.not = icmp eq i32 %xtraiter1676, 0
  br i1 %lcmp.mod1678.not, label %.loopexit.sink.split.i556, label %.lr.ph72.us.i546.epil.preheader

.lr.ph72.us.i546.epil.preheader:                  ; preds = %.loopexit.sink.split.i556.unr-lcssa, %.lr.ph72.us.i546.preheader
  %.lcssa7677.us.i548.epil.init = phi i64 [ 0, %.lr.ph72.us.i546.preheader ], [ %i.sa, %.loopexit.sink.split.i556.unr-lcssa ]
  %lcmp.mod1680 = icmp ne i32 %xtraiter1676, 0
end_hunk_0
begin_hunk_1_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.ait = load i64, ptr %i.ir, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ait, ptr %i.ih, align 8, !tbaa !80
  %i.aiu = load ptr, ptr %8, align 8, !tbaa !76
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 %i.ait
  store i8 0, ptr %i.aiv, align 1, !tbaa !81
  %.pre.i1029 = load ptr, ptr %40, align 8, !tbaa !76
  store i64 0, ptr %i.ir, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1029, align 1, !tbaa !81
  %i.aiw = load ptr, ptr %40, align 8, !tbaa !76  ; 2 uses
  %i.aix = icmp eq ptr %i.aiw, %i.iq
  br i1 %i.aix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033: ; preds = %._crit_edge.i.i1020
  call void @_ZdlPv(ptr noundef %i.aiw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035: ; preds = %._crit_edge.i.i1020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1033
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  %i.aiy = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !73
  store double %i.aja, ptr %i.in, align 8, !tbaa !101
  %i.ajb = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.ajc = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.ajc, ptr %i.ajb, align 4, !tbaa !4
  %i.ajd = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 4
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !4
  %i.ajf = load i32, ptr %i.id, align 4, !tbaa !4
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !4
  %i.ajh = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.ajh, align 4, !tbaa !4
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 4
  store i32 30000, ptr %i.aji, align 4, !tbaa !4
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  store i32 1000000, ptr %i.ajj, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1036:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  store ptr %i.ku, ptr %41, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr %i.kv, align 8, !tbaa !80
  store i8 0, ptr %i.ml, align 4, !tbaa !81
  %i.ajk = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ajk, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  %i.ajl = load i64, ptr %i.kv, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ajl, ptr %i.ih, align 8, !tbaa !80
  %i.ajm = load ptr, ptr %8, align 8, !tbaa !76
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.ajl
  store i8 0, ptr %i.ajn, align 1, !tbaa !81
  %.pre.i1045 = load ptr, ptr %41, align 8, !tbaa !76
  store i64 0, ptr %i.kv, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1045, align 1, !tbaa !81
  %i.ajo = load ptr, ptr %41, align 8, !tbaa !76  ; 2 uses
  %i.ajp = icmp eq ptr %i.ajo, %i.ku
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049: ; preds = %._crit_edge.i.i1036
  call void @_ZdlPv(ptr noundef %i.ajo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051: ; preds = %._crit_edge.i.i1036, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1049
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.ajq = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.ajs = load double, ptr %i.ajr, align 8, !tbaa !73
  store double %i.ajs, ptr %i.in, align 8, !tbaa !101
  %i.ajt = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.aju = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aju, ptr %i.ajt, align 4, !tbaa !4
  %i.ajv = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  store i32 %i.ajv, ptr %i.ajw, align 4, !tbaa !4
  %i.ajx = load i32, ptr %i.id, align 4, !tbaa !4
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store i32 %i.ajx, ptr %i.ajy, align 4, !tbaa !4
  %i.ajz = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 800, ptr %i.ajz, align 4, !tbaa !4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 4
  store i32 6000, ptr %i.aka, align 4, !tbaa !4
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  store i32 150000, ptr %i.akb, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1052:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  store ptr %i.kw, ptr %42, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.kw, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  store i64 14, ptr %i.kx, align 8, !tbaa !80
  store i8 0, ptr %i.mm, align 2, !tbaa !81
  %i.akc = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.akc, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  %i.akd = load i64, ptr %i.kx, align 8, !tbaa !80 ; 2 uses
  store i64 %i.akd, ptr %i.ih, align 8, !tbaa !80
  %i.ake = load ptr, ptr %8, align 8, !tbaa !76
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akd
  store i8 0, ptr %i.akf, align 1, !tbaa !81
  %.pre.i1061 = load ptr, ptr %42, align 8, !tbaa !76
  store i64 0, ptr %i.kx, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1061, align 1, !tbaa !81
  %i.akg = load ptr, ptr %42, align 8, !tbaa !76  ; 2 uses
  %i.akh = icmp eq ptr %i.akg, %i.kw
  br i1 %i.akh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065: ; preds = %._crit_edge.i.i1052
  call void @_ZdlPv(ptr noundef %i.akg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067: ; preds = %._crit_edge.i.i1052, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.aki = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 24
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !73
  store double %i.akk, ptr %i.in, align 8, !tbaa !101
  %i.akl = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.akm = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.akm, ptr %i.akl, align 4, !tbaa !4
  %i.akn = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  store i32 %i.akn, ptr %i.ako, align 4, !tbaa !4
  %i.akp = load i32, ptr %i.id, align 4, !tbaa !4
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i32 %i.akp, ptr %i.akq, align 4, !tbaa !4
  %i.akr = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 50000, ptr %i.akr, align 4, !tbaa !4
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  store i32 330000, ptr %i.aks, align 4, !tbaa !4
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  store i32 8000000, ptr %i.akt, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

bb.bj:                                            ; preds = %bb.az
  %i.aku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit1369 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bj
  %i.akv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv1472)
          to label %_ZNSolsEj.exit unwind label %.loopexit1369 ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !107
  %i.akx = getelementptr i8, ptr %i.akw, i64 -24
  %i.aky = load i64, ptr %i.akx, align 8
  %i.akz = getelementptr inbounds i8, ptr %i.akv, i64 %i.aky
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 240
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !109 ; 6 uses
  %.not.i.i.i1089 = icmp eq ptr %i.alb, null
  br i1 %.not.i.i.i1089, label %bb.bk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bk:                                            ; preds = %_ZNSolsEj.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc1090 unwind label %.loopexit.split-lp1370

.noexc1090:                                       ; preds = %bb.bk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEj.exit
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 56
  %i.ald = load i8, ptr %i.alc, align 8, !tbaa !124
  %.not.i1.i.i = icmp eq i8 %i.ald, 0
  br i1 %.not.i1.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 67
  %i.alf = load i8, ptr %i.ale, align 1, !tbaa !81
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.alb)
          to label %.noexc1091 unwind label %.loopexit1369

.noexc1091:                                       ; preds = %bb.bm
  %i.alg = load ptr, ptr %i.alb, align 8, !tbaa !107
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 48
  %i.ali = load ptr, ptr %i.alh, align 8
  %i.alj = invoke noundef signext i8 %i.ali(ptr noundef nonnull align 8 dereferenceable(570) %i.alb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit1369, !inline_history !129

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc1091, %bb.bl
  %.0.i.i.i = phi i8 [ %i.alf, %bb.bl ], [ %i.alj, %.noexc1091 ]
  %i.alk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.akv, i8 noundef signext %.0.i.i.i)
          to label %.noexc1093 unwind label %.loopexit1369

.noexc1093:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.all = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.alk)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit1369 ; 0 uses

.loopexit1369:                                    ; preds = %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.noexc.i.i, %bb.bq, %bb.bm, %.noexc1091, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1093
  %lpad.loopexit1371 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1370:                           ; preds = %bb.bk
  %lpad.loopexit.split-lp1372 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1093, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, %bb.bh, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZN7ADomainD2Ev.exit565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, %bb.ay
  %.01354 = phi i32 [ 0, %bb.ay ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367 ], [ %i.akm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067 ], [ %i.aju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1051 ], [ %i.og, %bb.bh ], [ %i.pw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %i.qn, %_ZN7ADomainD2Ev.exit565 ], [ %i.sz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585 ], [ %i.ub, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ], [ %i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699 ], [ %i.vj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ], [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731 ], [ %i.wt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ], [ %i.xk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763 ], [ %i.yc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779 ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit795 ], [ %i.zm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %i.aae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827 ], [ %i.aav, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843 ], [ %i.abn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859 ], [ %i.acf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875 ], [ %i.acx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit891 ], [ %i.adp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907 ], [ %i.aeg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923 ], [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit939 ], [ %i.afq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit955 ], [ %i.agi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971 ], [ %i.aha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit987 ], [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1003 ], [ %i.aik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019 ], [ %i.ajc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1035 ], [ %i.pe, %bb.bi ], [ 0, %.noexc1093 ]
  %i.alm = load ptr, ptr %i.la, align 16, !tbaa !74 ; 8 uses
  %i.aln = load ptr, ptr %i.lb, align 8, !tbaa !130
  %.not.i1071 = icmp eq ptr %i.alm, %i.aln
  br i1 %.not.i1071, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alm, i64 16 ; 3 uses
  store ptr %i.alo, ptr %i.alm, align 8, !tbaa !79
  %i.alp = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.alq = load i64, ptr %i.ih, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.alq, ptr %i.a, align 8, !tbaa !100
  %i.alr = icmp ugt i64 %i.alq, 15
  br i1 %i.alr, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bn
  %i.als = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.alm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1072 unwind label %.loopexit1369 ; 2 uses

.noexc1072:                                       ; preds = %.noexc.i.i
  store ptr %i.als, ptr %i.alm, align 8, !tbaa !76
  %i.alt = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.alt, ptr %i.alo, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc1072, %bb.bn
  %i.alu = phi ptr [ %i.als, %.noexc1072 ], [ %i.alo, %bb.bn ] ; 2 uses
  switch i64 %i.alq, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  %i.alv = load i8, ptr %i.alp, align 1, !tbaa !81
  store i8 %i.alv, ptr %i.alu, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bp:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alu, ptr align 1 %i.alp, i64 %i.alq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i.i
  %i.alw = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alm, i64 8
  store i64 %i.alw, ptr %i.alx, align 8, !tbaa !80
  %i.aly = load ptr, ptr %i.alm, align 8, !tbaa !76
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alw
  store i8 0, ptr %i.alz, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ama = load ptr, ptr %i.la, align 16, !tbaa !74
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 32
  store ptr %i.amb, ptr %i.la, align 16, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.alm, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1369

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013531429, i32 %.01354) ; 2 uses
  %i.amc = load i32, ptr %i.ii, align 16, !tbaa !96
  %.not1438 = icmp eq i32 %i.amc, 0
  br i1 %.not1438, label %.preheader, label %.lr.ph1425

.lr.ph1425:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.amd = load ptr, ptr %i.ip, align 8, !tbaa !85
  %i.ame = load double, ptr %i.l, align 16, !tbaa !11
  %i.amf = load ptr, ptr %i.ld, align 8, !tbaa !131
  %i.amg = load ptr, ptr %i.lf, align 8
  br label %bb.br

.preheader:                                       ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.amh = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.ami = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %.not1439 = icmp eq ptr %i.amh, %i.ami
  br i1 %.not1439, label %._crit_edge1428, label %.lr.ph1427

bb.br:                                            ; preds = %.lr.ph1425, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph1425 ], [ %indvars.iv.next, %bb.bt ] ; 5 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %indvars.iv ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !4
  %i.aml = sitofp i32 %i.amk to double
  %i.amm = fmul double %i.ame, %i.aml
  %i.amn = fdiv double %i.amm, %3
  %i.amo = fptosi double %i.amn to i32            ; 2 uses
  store i32 %i.amo, ptr %i.amj, align 4, !tbaa !4
  %i.amp = lshr i64 %indvars.iv, 6
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.amf, i64 %i.amp
  %i.amr = and i64 %indvars.iv, 63
  %i.ams = shl nuw i64 1, %i.amr
  %i.amt = load i64, ptr %i.amq, align 8, !tbaa !100
  %i.amu = and i64 %i.amt, %i.ams
  %.not1359 = icmp eq i64 %i.amu, 0
  br i1 %.not1359, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.amv = load i32, ptr %i.le, align 8, !tbaa !132
  %i.amw = mul i32 %i.amv, %i.amo
  %i.amx = zext i32 %i.amw to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi i64 [ %i.amx, %bb.bs ], [ 0, %bb.br ]
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %indvars.iv
  store i64 %.sink, ptr %i.amy, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.amz = load i32, ptr %i.ii, align 16, !tbaa !96
  %i.ana = zext i32 %i.amz to i64
  %i.anb = icmp samesign ult i64 %indvars.iv.next, %i.ana
  br i1 %i.anb, label %bb.br, label %.preheader, !llvm.loop !133

._crit_edge1428:                                  ; preds = %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit, %.preheader
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.anc = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.and = icmp eq ptr %i.anc, %i.ig
  br i1 %i.and, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074: ; preds = %._crit_edge1428
  call void @_ZdlPv(ptr noundef %i.anc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076: ; preds = %._crit_edge1428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1074
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %indvars.iv.next1473 = add nuw nsw i64 %indvars.iv1472, 1 ; 2 uses
  %i.ane = load i32, ptr %i.ie, align 16, !tbaa !95
  %i.anf = zext i32 %i.ane to i64
  %i.ang = icmp samesign ult i64 %indvars.iv.next1473, %i.anf
  br i1 %i.ang, label %bb.ax, label %._crit_edge1433, !llvm.loop !134

.lr.ph1427:                                       ; preds = %.preheader, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit
  %i.anh = phi ptr [ %i.asb, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ %i.ami, %.preheader ]
  %i.ani = phi i64 [ %i.arz, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %.01426 = phi i32 [ %i.ary, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %i.anj = load ptr, ptr %i.lg, align 16, !tbaa !135 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.anj, null
  br i1 %.not10.i.i.i.i, label %bb.bw, label %.lr.ph.i.i.i.i1077

.lr.ph.i.i.i.i1077:                               ; preds = %.lr.ph1427
  %i.ank = getelementptr inbounds nuw [32 x i8], ptr %i.anh, i64 %i.ani ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.anm = load i64, ptr %i.anl, align 8, !tbaa !80 ; 4 uses
  %i.ann = load ptr, ptr %i.ank, align 8          ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i1077
  %.012.i.i.i.i = phi ptr [ %i.anj, %.lr.ph.i.i.i.i1077 ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.lh, %.lr.ph.i.i.i.i1077 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.ano = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.anm, i64 %i.anp) ; 2 uses
  %i.anq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.anq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.anr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !76
  %i.ant = call i32 @memcmp(ptr noundef %i.ans, ptr noundef %i.ann, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ant, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bu
  %i.anu = sub i64 %i.anp, %i.anm
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.anu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ant, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.anv = icmp slt i32 %.0.i.i.i.i.i.i.i, 0      ; 2 uses
  %.19.i.i.i.i = select i1 %i.anv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.anv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i.i1078 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1078, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.bu, !llvm.loop !137

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.anw = icmp eq ptr %.19.i.i.i.i, %i.lh
  br i1 %i.anw, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.anx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.any = load i64, ptr %i.anx, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.any, i64 %i.anm) ; 2 uses
  %i.anz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.anz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.bv
  %i.aoa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !76
  %i.aoc = call i32 @memcmp(ptr noundef %i.ann, ptr noundef %i.aob, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aoc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.bv
  %i.aod = sub i64 %i.anm, %i.any
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aod, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
end_hunk_1
