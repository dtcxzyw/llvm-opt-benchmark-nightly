begin_hunk_0
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = tail call double @llvm.floor.f64(double %i.a) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !107
  %i.p = fmul double %i.o, 0x3FF40D931FF62706     ; 2 uses
end_hunk_0
begin_hunk_1
  %i.dh = fcmp uge double %i.dd, %i.ak
  br i1 %i.dh, label %bb.l, label %.backedge.backedge

bb.f:                                             ; preds = %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit88
  %i.di = fcmp ugt double %i.bz, %i.s
  br i1 %i.di, label %bb.h, label %bb.g
end_hunk_1
begin_hunk_2
  %i.ds = load double, ptr %i.z, align 8, !tbaa !108
  %i.dt = fcmp ule double %i.dn, %i.ds
  br i1 %i.dt, label %bb.l, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.g, %bb.e, %bb.l
  br label %.backedge, !llvm.loop !117

bb.h:                                             ; preds = %bb.f
  %i.du = fcmp ugt double %i.bz, %i.t
end_hunk_2
begin_hunk_3

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97, %bb.e
  %.076 = phi double [ %i.dg, %bb.e ], [ %i.dr, %bb.g ], [ %i.fj, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ 0x3F8A41A41A41A41A, %bb.j ]
  %.073 = phi double [ %i.dd, %bb.e ], [ %i.dn, %bb.g ], [ %i.fd, %_ZNSt8__detail8_AdaptorISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEdEclEv.exit97 ], [ -1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ 1.000000e+00, %bb.j ] ; 3 uses
  %i.fk = fadd double %i.cw, %.076
  %i.fl = load double, ptr %i.an, align 8, !tbaa !105
  %i.fm = fneg double %.073
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fk)
  %i.fo = load double, ptr %i.ao, align 8, !tbaa !106
  %i.fp = fadd double %i.m, %.073                 ; 2 uses
  %i.fq = fadd double %i.fp, 1.000000e+00
  %i.fr = tail call double @lgamma(double noundef %i.fq) #35
  %i.fs = fsub double %i.fo, %i.fr
end_hunk_3
begin_hunk_4
  br i1 %i.fv, label %.backedge.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %3 = fadd double %i.m, %.073
  %i.fw = fadd double %3, 0x3FDFFFFFFFFFFFFE
  %i.fx = fptosi double %i.fw to i64
  br label %bb.p

end_hunk_4
