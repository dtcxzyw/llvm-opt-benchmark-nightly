inline.NumInlined: 1878
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 101
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
  call void @_ZdlPv(ptr noundef %i.nz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bh

bb.bg:                                            ; preds = %.noexc.i385
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
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
  call void @_ZdlPv(ptr noundef %i.os) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %._crit_edge.i.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.bi

._crit_edge.i.i416:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
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
  call void @_ZdlPv(ptr noundef %i.oy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %._crit_edge.i.i416, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
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
  call void @_ZdlPv(ptr noundef %i.pq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447: ; preds = %._crit_edge.i.i432, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ps = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !73
  store double %i.pu, ptr %i.in, align 8, !tbaa !101
  %i.pv = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %43 = fmul double %i.pv, 2.800000e+01
  %44 = fptosi double %43 to i32
  %45 = add nsw i32 %44, 3                        ; 4 uses
  %46 = mul nsw i32 %45, %45                      ; 2 uses
  %47 = mul nsw i32 %46, %45                      ; 2 uses
  %48 = add nsw i32 %47, -1
  %49 = add i32 %46, %45
  %factor = shl i32 %49, 1
  %reass.sub1434.neg = sub i32 %47, %factor
  %i.pw = add i32 %reass.sub1434.neg, -2
  %50 = load ptr, ptr %i.io, align 8, !tbaa !85   ; 2 uses
  store i32 %i.pw, ptr %50, align 4, !tbaa !4
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %52 = insertelement <2 x double> poison, double %i.pv, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  %54 = fmul <2 x double> %53, <double 1.600000e+01, double 4.000000e+00>
  %55 = fptosi <2 x double> %54 to <2 x i32>
  %56 = add nsw <2 x i32> %55, splat (i32 3)      ; 4 uses
  %57 = mul nsw <2 x i32> %56, %56                ; 2 uses
  %58 = mul nsw <2 x i32> %57, %56
  %59 = add <2 x i32> %57, %56
  %60 = add <2 x i32> %58, splat (i32 -2)
  %61 = shl <2 x i32> %59, splat (i32 1)
  %62 = sub <2 x i32> %60, %61
  store <2 x i32> %62, ptr %51, align 4, !tbaa !4
  %i.px = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 6500, ptr %i.px, align 4, !tbaa !4
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store i32 30000, ptr %i.py, align 4, !tbaa !4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store i32 800000, ptr %i.pz, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i506:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
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
  call void @_ZdlPv(ptr noundef %i.qe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521: ; preds = %._crit_edge.i.i506, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i519
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.qg = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !73
  store double %i.qh, ptr %i.in, align 8, !tbaa !101
  %i.qi = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %i.qj = load ptr, ptr %i.io, align 8, !tbaa !85 ; 2 uses
  %i.qk = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x double> %i.ql, <double 1.560000e+02, double 6.400000e+01>
  %i.qn = fptosi <2 x double> %i.qm to <2 x i32>  ; 4 uses
  %i.qo = extractelement <2 x i32> %i.qn, i64 0   ; 2 uses
  %i.qp = add nsw i32 %i.qo, 3                    ; 2 uses
  %i.qq = mul nsw i32 %i.qp, %i.qp
  %reass.sub = sub i32 %i.qq, %i.qo
  %i.qr = add i32 %reass.sub, -5
  %i.qs = icmp sgt <2 x i32> %i.qn, splat (i32 1)
  %i.qt = add nsw <2 x i32> %i.qn, splat (i32 -1)
  %i.qu = add nsw <2 x i32> %i.qn, splat (i32 -1)
  %i.qv = mul <2 x i32> %i.qt, %i.qu
  %i.qw = select <2 x i1> %i.qs, <2 x i32> %i.qv, <2 x i32> zeroinitializer
  store <2 x i32> %i.qw, ptr %i.qj, align 4, !tbaa !4
  %i.qx = fmul double %i.qi, 8.000000e+00
  %i.qy = fptosi double %i.qx to i32              ; 3 uses
  %i.qz = icmp sgt i32 %i.qy, 1
  %i.ra = add nsw i32 %i.qy, -1
  %i.rb = add nsw i32 %i.qy, -1
  %i.rc = mul i32 %i.ra, %i.rb
  %.sroa.231188.0 = select i1 %i.qz, i32 %i.rc, i32 0
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store i32 %.sroa.231188.0, ptr %i.rd, align 4, !tbaa !4
  %i.re = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.re, align 4, !tbaa !4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 4
  store i32 25000, ptr %i.rf, align 4, !tbaa !4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store i32 2000000, ptr %i.rg, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i568:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %i.kk, ptr %17, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.kk, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  store i64 6, ptr %i.kl, align 8, !tbaa !80
  store i8 0, ptr %i.mh, align 2, !tbaa !81
  %i.rh = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.rh, ptr noundef nonnull align 1 dereferenceable(6) @.str.10, i64 6, i1 false)
  %i.ri = load i64, ptr %i.kl, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ri, ptr %i.ih, align 8, !tbaa !80
  %i.rj = load ptr, ptr %8, align 8, !tbaa !76
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.ri
  store i8 0, ptr %i.rk, align 1, !tbaa !81
  %.pre.i577 = load ptr, ptr %17, align 8, !tbaa !76
  store i64 0, ptr %i.kl, align 8, !tbaa !80
  store i8 0, ptr %.pre.i577, align 1, !tbaa !81
  %i.rl = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.kk
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %._crit_edge.i.i568
  call void @_ZdlPv(ptr noundef %i.rl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583: ; preds = %._crit_edge.i.i568, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.rn = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !73
  store double %i.rp, ptr %i.in, align 8, !tbaa !101
  %i.rq = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !73 ; 2 uses
  %i.rr = fmul double %i.rq, 2.800000e+01
  %i.rs = fptosi double %i.rr to i32
  %i.rt = add nsw i32 %i.rs, 3                    ; 4 uses
  %i.ru = mul nsw i32 %i.rt, %i.rt                ; 2 uses
  %i.rv = mul nsw i32 %i.ru, %i.rt
  %i.rw = add i32 %i.ru, %i.rt                    ; 2 uses
  %i.rx = sub i32 %i.rv, %i.rw
  %i.ry = add i32 %i.rx, -2                       ; 2 uses
  %i.rz = sub i32 %i.ry, %i.rw
  %i.sa = load ptr, ptr %i.io, align 8, !tbaa !85 ; 2 uses
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sc = insertelement <2 x double> poison, double %i.rq, i64 0
  %i.sd = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = fmul <2 x double> %i.sd, <double 1.600000e+01, double 4.000000e+00>
  %i.sf = fptosi <2 x double> %i.se to <2 x i32>
  %i.sg = add nsw <2 x i32> %i.sf, splat (i32 3)  ; 4 uses
  %i.sh = mul nsw <2 x i32> %i.sg, %i.sg          ; 2 uses
  %i.si = mul nsw <2 x i32> %i.sh, %i.sg
  %i.sj = add <2 x i32> %i.sh, %i.sg
  %i.sk = add <2 x i32> %i.si, splat (i32 -2)
  %i.sl = shl <2 x i32> %i.sj, splat (i32 1)
  %i.sm = sub <2 x i32> %i.sk, %i.sl
  store <2 x i32> %i.sm, ptr %i.sb, align 4, !tbaa !4
  %i.sn = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 2000, ptr %i.sn, align 4, !tbaa !4
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  store i32 10000, ptr %i.so, align 4, !tbaa !4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  store i32 600000, ptr %i.sp, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i666:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %i.ki, ptr %18, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ki, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  store i64 3, ptr %i.kj, align 8, !tbaa !80
  store i8 0, ptr %i.mg, align 1, !tbaa !81
  %i.sq = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.sq, ptr noundef nonnull align 1 dereferenceable(3) @.str.11, i64 3, i1 false)
  %i.sr = load i64, ptr %i.kj, align 8, !tbaa !80 ; 2 uses
  store i64 %i.sr, ptr %i.ih, align 8, !tbaa !80
  %i.ss = load ptr, ptr %8, align 8, !tbaa !76
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.sr
  store i8 0, ptr %i.st, align 1, !tbaa !81
  %.pre.i675 = load ptr, ptr %18, align 8, !tbaa !76
  store i64 0, ptr %i.kj, align 8, !tbaa !80
  store i8 0, ptr %.pre.i675, align 1, !tbaa !81
  %i.su = load ptr, ptr %18, align 8, !tbaa !76   ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.ki
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679: ; preds = %._crit_edge.i.i666
  call void @_ZdlPv(ptr noundef %i.su) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681: ; preds = %._crit_edge.i.i666, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.sw = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !73
  store double %i.sy, ptr %i.in, align 8, !tbaa !101
  %i.sz = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.ta = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  store i32 %i.ta, ptr %i.sz, align 4, !tbaa !4
  %i.tb = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !4
  %i.td = load i32, ptr %i.id, align 4, !tbaa !4
  %i.te = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  store i32 %i.td, ptr %i.te, align 4, !tbaa !4
  %i.tf = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 10000, ptr %i.tf, align 4, !tbaa !4
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  store i32 80000, ptr %i.tg, align 4, !tbaa !4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store i32 3000000, ptr %i.th, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i682:                               ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  store ptr %i.kg, ptr %19, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.kg, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false)
  store i64 5, ptr %i.kh, align 8, !tbaa !80
  store i8 0, ptr %i.mf, align 1, !tbaa !81
  %i.ti = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ti, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false)
  %i.tj = load i64, ptr %i.kh, align 8, !tbaa !80 ; 2 uses
  store i64 %i.tj, ptr %i.ih, align 8, !tbaa !80
  %i.tk = load ptr, ptr %8, align 8, !tbaa !76
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tj
  store i8 0, ptr %i.tl, align 1, !tbaa !81
  %.pre.i691 = load ptr, ptr %19, align 8, !tbaa !76
  store i64 0, ptr %i.kh, align 8, !tbaa !80
  store i8 0, ptr %.pre.i691, align 1, !tbaa !81
  %i.tm = load ptr, ptr %19, align 8, !tbaa !76   ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.kg
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i695
end_hunk_0
begin_hunk_1_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.ahs = load i64, ptr %i.ir, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ahs, ptr %i.ih, align 8, !tbaa !80
  %i.aht = load ptr, ptr %8, align 8, !tbaa !76
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 %i.ahs
  store i8 0, ptr %i.ahu, align 1, !tbaa !81
  %.pre.i1027 = load ptr, ptr %40, align 8, !tbaa !76
  store i64 0, ptr %i.ir, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1027, align 1, !tbaa !81
  %i.ahv = load ptr, ptr %40, align 8, !tbaa !76  ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, %i.iq
  br i1 %i.ahw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1031

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1031: ; preds = %._crit_edge.i.i1018
  call void @_ZdlPv(ptr noundef %i.ahv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033: ; preds = %._crit_edge.i.i1018, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1031
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.ahx = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  %i.ahz = load double, ptr %i.ahy, align 8, !tbaa !73
  store double %i.ahz, ptr %i.in, align 8, !tbaa !101
  %i.aia = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.aib = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.aib, ptr %i.aia, align 4, !tbaa !4
  %i.aic = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  store i32 %i.aic, ptr %i.aid, align 4, !tbaa !4
  %i.aie = load i32, ptr %i.id, align 4, !tbaa !4
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aia, i64 8
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !4
  %i.aig = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 4000, ptr %i.aig, align 4, !tbaa !4
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 4
  store i32 30000, ptr %i.aih, align 4, !tbaa !4
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  store i32 1000000, ptr %i.aii, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1034:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  store ptr %i.ku, ptr %41, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ku, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr %i.kv, align 8, !tbaa !80
  store i8 0, ptr %i.ml, align 4, !tbaa !81
  %i.aij = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aij, ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  %i.aik = load i64, ptr %i.kv, align 8, !tbaa !80 ; 2 uses
  store i64 %i.aik, ptr %i.ih, align 8, !tbaa !80
  %i.ail = load ptr, ptr %8, align 8, !tbaa !76
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 %i.aik
  store i8 0, ptr %i.aim, align 1, !tbaa !81
  %.pre.i1043 = load ptr, ptr %41, align 8, !tbaa !76
  store i64 0, ptr %i.kv, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1043, align 1, !tbaa !81
  %i.ain = load ptr, ptr %41, align 8, !tbaa !76  ; 2 uses
  %i.aio = icmp eq ptr %i.ain, %i.ku
  br i1 %i.aio, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047: ; preds = %._crit_edge.i.i1034
  call void @_ZdlPv(ptr noundef %i.ain) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049: ; preds = %._crit_edge.i.i1034, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1047
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.aip = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 8
  %i.air = load double, ptr %i.aiq, align 8, !tbaa !73
  store double %i.air, ptr %i.in, align 8, !tbaa !101
  %i.ais = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.ait = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.ait, ptr %i.ais, align 4, !tbaa !4
  %i.aiu = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ais, i64 4
  store i32 %i.aiu, ptr %i.aiv, align 4, !tbaa !4
  %i.aiw = load i32, ptr %i.id, align 4, !tbaa !4
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  store i32 %i.aiw, ptr %i.aix, align 4, !tbaa !4
  %i.aiy = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 800, ptr %i.aiy, align 4, !tbaa !4
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  store i32 6000, ptr %i.aiz, align 4, !tbaa !4
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  store i32 150000, ptr %i.aja, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

._crit_edge.i.i1050:                              ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  store ptr %i.kw, ptr %42, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.kw, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  store i64 14, ptr %i.kx, align 8, !tbaa !80
  store i8 0, ptr %i.mm, align 2, !tbaa !81
  %i.ajb = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.ajb, ptr noundef nonnull align 1 dereferenceable(14) @.str.35, i64 14, i1 false)
  %i.ajc = load i64, ptr %i.kx, align 8, !tbaa !80 ; 2 uses
  store i64 %i.ajc, ptr %i.ih, align 8, !tbaa !80
  %i.ajd = load ptr, ptr %8, align 8, !tbaa !76
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %i.ajc
  store i8 0, ptr %i.aje, align 1, !tbaa !81
  %.pre.i1059 = load ptr, ptr %42, align 8, !tbaa !76
  store i64 0, ptr %i.kx, align 8, !tbaa !80
  store i8 0, ptr %.pre.i1059, align 1, !tbaa !81
  %i.ajf = load ptr, ptr %42, align 8, !tbaa !76  ; 2 uses
  %i.ajg = icmp eq ptr %i.ajf, %i.kw
  br i1 %i.ajg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063: ; preds = %._crit_edge.i.i1050
  call void @_ZdlPv(ptr noundef %i.ajf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065: ; preds = %._crit_edge.i.i1050, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1063
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  %i.ajh = load ptr, ptr %i.m, align 16, !tbaa !72
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 24
  %i.ajj = load double, ptr %i.aji, align 8, !tbaa !73
  store double %i.ajj, ptr %i.in, align 8, !tbaa !101
  %i.ajk = load ptr, ptr %i.io, align 8, !tbaa !85 ; 3 uses
  %i.ajl = load i32, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  store i32 %i.ajl, ptr %i.ajk, align 4, !tbaa !4
  %i.ajm = load i32, ptr %i.hw, align 4, !tbaa !4
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  store i32 %i.ajm, ptr %i.ajn, align 4, !tbaa !4
  %i.ajo = load i32, ptr %i.id, align 4, !tbaa !4
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !4
  %i.ajq = load ptr, ptr %i.ip, align 8, !tbaa !85 ; 3 uses
  store i32 50000, ptr %i.ajq, align 4, !tbaa !4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  store i32 330000, ptr %i.ajr, align 4, !tbaa !4
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  store i32 8000000, ptr %i.ajs, align 4, !tbaa !4
  br label %_ZNSolsEPFRSoS_E.exit

bb.bj:                                            ; preds = %bb.az
  %i.ajt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit1366 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bj
  %i.aju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %indvars.iv1469)
          to label %_ZNSolsEj.exit unwind label %.loopexit1366 ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !102
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 -24
  %i.ajx = load i64, ptr %i.ajw, align 8
  %i.ajy = getelementptr inbounds i8, ptr %i.aju, i64 %i.ajx
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 240
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !104 ; 6 uses
  %.not.i.i.i1087 = icmp eq ptr %i.aka, null
  br i1 %.not.i.i.i1087, label %bb.bk, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.bk:                                            ; preds = %_ZNSolsEj.exit
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc1088 unwind label %.loopexit.split-lp1367

.noexc1088:                                       ; preds = %bb.bk
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSolsEj.exit
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 56
  %i.akc = load i8, ptr %i.akb, align 8, !tbaa !119
  %.not.i1.i.i = icmp eq i8 %i.akc, 0
  br i1 %.not.i1.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aka, i64 67
  %i.ake = load i8, ptr %i.akd, align 1, !tbaa !81
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.bm:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aka)
          to label %.noexc1089 unwind label %.loopexit1366

.noexc1089:                                       ; preds = %bb.bm
  %i.akf = load ptr, ptr %i.aka, align 8, !tbaa !102
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 48
  %i.akh = load ptr, ptr %i.akg, align 8
  %i.aki = invoke noundef signext i8 %i.akh(ptr noundef nonnull align 8 dereferenceable(570) %i.aka, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit1366, !inline_history !124

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc1089, %bb.bl
  %.0.i.i.i = phi i8 [ %i.ake, %bb.bl ], [ %i.aki, %.noexc1089 ]
  %i.akj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aju, i8 noundef signext %.0.i.i.i)
          to label %.noexc1091 unwind label %.loopexit1366

.noexc1091:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.akk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.akj)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit1366 ; 0 uses

.loopexit1366:                                    ; preds = %bb.bj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.noexc.i.i, %bb.bq, %bb.bm, %.noexc1089, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc1091
  %lpad.loopexit1368 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp1367:                           ; preds = %bb.bk
  %lpad.loopexit.split-lp1369 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc1091, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, %bb.bh, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit873, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit969, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065, %bb.ay
  %.01351 = phi i32 [ 0, %bb.ay ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367 ], [ %i.ajl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1065 ], [ %i.ait, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049 ], [ %i.og, %bb.bh ], [ %48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit447 ], [ %i.qr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit583 ], [ %i.ta, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit697 ], [ %i.ui, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit713 ], [ %i.va, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729 ], [ %i.vs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit745 ], [ %i.wj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761 ], [ %i.xb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777 ], [ %i.xt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit793 ], [ %i.yl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ], [ %i.zd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825 ], [ %i.zu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit841 ], [ %i.aam, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ], [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit873 ], [ %i.abw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit889 ], [ %i.aco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905 ], [ %i.adf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit921 ], [ %i.adx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit937 ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953 ], [ %i.afh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit969 ], [ %i.afz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit985 ], [ %i.agr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001 ], [ %i.ahj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017 ], [ %i.aib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1033 ], [ %i.pe, %bb.bi ], [ 0, %.noexc1091 ]
  %i.akl = load ptr, ptr %i.la, align 16, !tbaa !74 ; 8 uses
  %i.akm = load ptr, ptr %i.lb, align 8, !tbaa !125
  %.not.i1069 = icmp eq ptr %i.akl, %i.akm
  br i1 %.not.i1069, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akl, i64 16 ; 3 uses
  store ptr %i.akn, ptr %i.akl, align 8, !tbaa !79
  %i.ako = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.akp = load i64, ptr %i.ih, align 8, !tbaa !80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.akp, ptr %i.a, align 8, !tbaa !100
  %i.akq = icmp ugt i64 %i.akp, 15
  br i1 %i.akq, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bn
  %i.akr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.akl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc1070 unwind label %.loopexit1366 ; 2 uses

.noexc1070:                                       ; preds = %.noexc.i.i
  store ptr %i.akr, ptr %i.akl, align 8, !tbaa !76
  %i.aks = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.aks, ptr %i.akn, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc1070, %bb.bn
  %i.akt = phi ptr [ %i.akr, %.noexc1070 ], [ %i.akn, %bb.bn ] ; 2 uses
  switch i64 %i.akp, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i
  %i.aku = load i8, ptr %i.ako, align 1, !tbaa !81
  store i8 %i.aku, ptr %i.akt, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.bp:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.akt, ptr align 1 %i.ako, i64 %i.akp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i.i
  %i.akv = load i64, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  store i64 %i.akv, ptr %i.akw, align 8, !tbaa !80
  %i.akx = load ptr, ptr %i.akl, align 8, !tbaa !76
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.akv
  store i8 0, ptr %i.aky, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.akz = load ptr, ptr %i.la, align 16, !tbaa !74
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 32
  store ptr %i.ala, ptr %i.la, align 16, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.bq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr %i.akl, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit1366

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.bq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.013501426, i32 %.01351) ; 2 uses
  %i.alb = load i32, ptr %i.ii, align 16, !tbaa !96
  %.not1435 = icmp eq i32 %i.alb, 0
  br i1 %.not1435, label %.preheader, label %.lr.ph1422

.lr.ph1422:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.alc = load ptr, ptr %i.ip, align 8, !tbaa !85
  %i.ald = load double, ptr %i.l, align 16, !tbaa !11
  %i.ale = load ptr, ptr %i.ld, align 8, !tbaa !126
  %i.alf = load ptr, ptr %i.lf, align 8
  br label %bb.br

.preheader:                                       ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.alg = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.alh = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %.not1436 = icmp eq ptr %i.alg, %i.alh
  br i1 %.not1436, label %._crit_edge1425, label %.lr.ph1424

bb.br:                                            ; preds = %.lr.ph1422, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph1422 ], [ %indvars.iv.next, %bb.bt ] ; 5 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %indvars.iv ; 2 uses
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !4
  %i.alk = sitofp i32 %i.alj to double
  %i.all = fmul double %i.ald, %i.alk
  %i.alm = fdiv double %i.all, %3
  %i.aln = fptosi double %i.alm to i32            ; 2 uses
  store i32 %i.aln, ptr %i.ali, align 4, !tbaa !4
  %i.alo = lshr i64 %indvars.iv, 6
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.ale, i64 %i.alo
  %i.alq = and i64 %indvars.iv, 63
  %i.alr = shl nuw i64 1, %i.alq
  %i.als = load i64, ptr %i.alp, align 8, !tbaa !100
  %i.alt = and i64 %i.als, %i.alr
  %.not1356 = icmp eq i64 %i.alt, 0
  br i1 %.not1356, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.alu = load i32, ptr %i.le, align 8, !tbaa !127
  %i.alv = mul i32 %i.alu, %i.aln
  %i.alw = zext i32 %i.alv to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi i64 [ %i.alw, %bb.bs ], [ 0, %bb.br ]
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.alf, i64 %indvars.iv
  store i64 %.sink, ptr %i.alx, align 8, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aly = load i32, ptr %i.ii, align 16, !tbaa !96
  %i.alz = zext i32 %i.aly to i64
  %i.ama = icmp samesign ult i64 %indvars.iv.next, %i.alz
  br i1 %i.ama, label %bb.br, label %.preheader, !llvm.loop !128

._crit_edge1425:                                  ; preds = %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit, %.preheader
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.amb = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.amc = icmp eq ptr %i.amb, %i.ig
  br i1 %i.amc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072: ; preds = %._crit_edge1425
  call void @_ZdlPv(ptr noundef %i.amb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1074: ; preds = %._crit_edge1425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1072
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %indvars.iv.next1470 = add nuw nsw i64 %indvars.iv1469, 1 ; 2 uses
  %i.amd = load i32, ptr %i.ie, align 16, !tbaa !95
  %i.ame = zext i32 %i.amd to i64
  %i.amf = icmp samesign ult i64 %indvars.iv.next1470, %i.ame
  br i1 %i.amf, label %bb.ax, label %._crit_edge1430, !llvm.loop !129

.lr.ph1424:                                       ; preds = %.preheader, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit
  %i.amg = phi ptr [ %i.ara, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ %i.alh, %.preheader ]
  %i.amh = phi i64 [ %i.aqy, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %.01423 = phi i32 [ %i.aqx, %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit ], [ 0, %.preheader ]
  %i.ami = load ptr, ptr %i.lg, align 16, !tbaa !130 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ami, null
  br i1 %.not10.i.i.i.i, label %bb.bw, label %.lr.ph.i.i.i.i1075

.lr.ph.i.i.i.i1075:                               ; preds = %.lr.ph1424
  %i.amj = getelementptr inbounds nuw [32 x i8], ptr %i.amg, i64 %i.amh ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !80 ; 4 uses
  %i.amm = load ptr, ptr %i.amj, align 8          ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i1075
  %.012.i.i.i.i = phi ptr [ %i.ami, %.lr.ph.i.i.i.i1075 ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.lh, %.lr.ph.i.i.i.i1075 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.amn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aml, i64 %i.amo) ; 2 uses
  %i.amp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.amp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bu
  %i.amq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !76
  %i.ams = call i32 @memcmp(ptr noundef %i.amr, ptr noundef %i.amm, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ams, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bu
  %i.amt = sub i64 %i.amo, %i.aml
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.amt, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ams, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.amu = icmp slt i32 %.0.i.i.i.i.i.i.i, 0      ; 2 uses
  %.19.i.i.i.i = select i1 %i.amu, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.amu, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !131 ; 2 uses
  %.not.i.i.i.i1076 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i1076, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.bu, !llvm.loop !132

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.amv = icmp eq ptr %.19.i.i.i.i, %i.lh
  br i1 %i.amv, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !80 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.amx, i64 %i.aml) ; 2 uses
  %i.amy = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.amy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.bv
  %i.amz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !76
  %i.anb = call i32 @memcmp(ptr noundef %i.amm, ptr noundef %i.ana, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.anb, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.bv
  %i.anc = sub i64 %i.aml, %i.amx
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.anc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
end_hunk_1
