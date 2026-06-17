inline.NumInlined: 598
inline.NumDeleted: 320
begin_hunk_0_@_Z25computeReferenceLoopTimesv:bb.a
  %i.os = call i64 @clock() #14
  store i64 %i.os, ptr %i.jf, align 8, !tbaa !109
  store i8 1, ptr %i.jg, align 8, !tbaa !110
  %i.ot = fadd double %.026.lcssa.i.1, 1.230000e-03
  %i.ou = fadd double %.026.lcssa.i.1, -1.230000e-03
  %i.ov = fdiv double %i.ot, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mc, i64 384
  store double %i.ov, ptr %i.ow, align 8, !tbaa !102
  invoke void @_Z9copyTimerR8LoopStatiRK9LoopTimer(ptr noundef nonnull align 8 dereferenceable(280) %3, i32 noundef range(i32 0, 3) 1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZN8LoopStataSERKS_.exit52.1 unwind label %bb.j

_ZN8LoopStataSERKS_.exit52.1:                     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %i.ox = invoke noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav()
          to label %.noexc64.2 unwind label %bb.j ; 4 uses

.noexc64.2:                                       ; preds = %_ZN8LoopStataSERKS_.exit52.1
  %i.oy = load ptr, ptr %i.iz, align 8, !tbaa !8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !4  ; 3 uses
  %i.pb = load ptr, ptr %i.jb, align 8, !tbaa !8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  invoke void @_Z8loopInitjR8LoopStat(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(280) %3)
          to label %.noexc65.2 unwind label %bb.j

.noexc65.2:                                       ; preds = %.noexc64.2
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !99 ; 7 uses
  %i.pg = ptrtoaddr ptr %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !99 ; 7 uses
  %i.pj = ptrtoaddr ptr %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !99 ; 7 uses
  %i.pm = ptrtoaddr ptr %i.pl to i64              ; 2 uses
  %i.pn = call i64 @clock() #14
  store i64 %i.pn, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !4
  %.0..0..0..0..0..0.528.i.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %i.po = icmp slt i32 %.0..0..0..0..0..0.528.i.2, %i.pd
  br i1 %i.po, label %.preheader.lr.ph.i53.2, label %bb.i

.preheader.lr.ph.i53.2:                           ; preds = %.noexc65.2
  %i.pp = icmp sgt i32 %i.pa, 0
  br i1 %i.pp, label %.preheader.us.preheader.i56.2, label %.preheader.i54.2

.preheader.i54.2:                                 ; preds = %.preheader.lr.ph.i53.2, %.preheader.i54.2
  %.0..0..0..0..0..0.6.i.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0..0..0..0.7.i.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %i.pq = add nsw i32 %.0..0..0..0..0..0.7.i.2, 1
  store volatile i32 %i.pq, ptr %i.a, align 4, !tbaa !4
  %.0..0..0..0..0..0.5.i55.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %i.pr = icmp slt i32 %.0..0..0..0..0..0.5.i55.2, %i.pd
  br i1 %i.pr, label %.preheader.i54.2, label %._crit_edge29.i.2, !llvm.loop !120

.preheader.us.preheader.i56.2:                    ; preds = %.preheader.lr.ph.i53.2
  %wide.trip.count.i57.2 = zext nneg i32 %i.pa to i64 ; 5 uses
  %i.ps = sub i64 %i.pm, %i.pg
  %i.pt = sub i64 %i.pm, %i.pj
  %min.iters.check209 = icmp ult i32 %i.pa, 4
  %diff.check205 = icmp ult i64 %i.ps, 32
  %diff.check206 = icmp ult i64 %i.pt, 32
  %conflict.rdx207 = or i1 %diff.check205, %diff.check206
  %n.vec212 = and i64 %wide.trip.count.i57.2, 2147483644 ; 3 uses
  %cmp.n221 = icmp eq i64 %n.vec212, %wide.trip.count.i57.2
  %xtraiter253 = and i64 %wide.trip.count.i57.2, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br label %.preheader.us.i58.2

.preheader.us.i58.2:                              ; preds = %._crit_edge.us.i62.2, %.preheader.us.preheader.i56.2
  %brmerge260 = select i1 %min.iters.check209, i1 true, i1 %conflict.rdx207
  br i1 %brmerge260, label %scalar.ph208.preheader, label %vector.body213

vector.body213:                                   ; preds = %.preheader.us.i58.2, %vector.body213
  %index214 = phi i64 [ %index.next219, %vector.body213 ], [ 0, %.preheader.us.i58.2 ] ; 4 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %index214 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %wide.load215 = load <2 x double>, ptr %i.pu, align 8, !tbaa !102
  %wide.load216 = load <2 x double>, ptr %i.pv, align 8, !tbaa !102
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %index214 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load217 = load <2 x double>, ptr %i.pw, align 8, !tbaa !102
  %wide.load218 = load <2 x double>, ptr %i.px, align 8, !tbaa !102
  %i.py = fmul <2 x double> %wide.load215, %wide.load217
  %i.pz = fmul <2 x double> %wide.load216, %wide.load218
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %index214 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  store <2 x double> %i.py, ptr %i.qa, align 8, !tbaa !102
  store <2 x double> %i.pz, ptr %i.qb, align 8, !tbaa !102
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.qc, label %middle.block220, label %vector.body213, !llvm.loop !124

middle.block220:                                  ; preds = %vector.body213
  br i1 %cmp.n221, label %._crit_edge.us.i62.2, label %scalar.ph208.preheader

scalar.ph208.preheader:                           ; preds = %.preheader.us.i58.2, %middle.block220
  %indvars.iv.i59.2.ph = phi i64 [ %n.vec212, %middle.block220 ], [ 0, %.preheader.us.i58.2 ] ; 3 uses
  br i1 %lcmp.mod254.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol

scalar.ph208.prol:                                ; preds = %scalar.ph208.preheader, %scalar.ph208.prol
  %indvars.iv.i59.2.prol = phi i64 [ %indvars.iv.next.i60.2.prol, %scalar.ph208.prol ], [ %indvars.iv.i59.2.ph, %scalar.ph208.preheader ] ; 4 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %scalar.ph208.prol ], [ 0, %scalar.ph208.preheader ]
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i59.2.prol
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !102
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.i59.2.prol
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !102
  %i.qh = fmul double %i.qe, %i.qg
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.i59.2.prol
  store double %i.qh, ptr %i.qi, align 8, !tbaa !102
  %indvars.iv.next.i60.2.prol = add nuw nsw i64 %indvars.iv.i59.2.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %scalar.ph208.prol.loopexit, label %scalar.ph208.prol, !llvm.loop !125

scalar.ph208.prol.loopexit:                       ; preds = %scalar.ph208.prol, %scalar.ph208.preheader
  %indvars.iv.i59.2.unr = phi i64 [ %indvars.iv.i59.2.ph, %scalar.ph208.preheader ], [ %indvars.iv.next.i60.2.prol, %scalar.ph208.prol ]
  %i.qj = sub nsw i64 %indvars.iv.i59.2.ph, %wide.trip.count.i57.2
  %i.qk = icmp ugt i64 %i.qj, -4
  br i1 %i.qk, label %._crit_edge.us.i62.2, label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208
  %indvars.iv.i59.2 = phi i64 [ %indvars.iv.next.i60.2.3, %scalar.ph208 ], [ %indvars.iv.i59.2.unr, %scalar.ph208.prol.loopexit ] ; 7 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.i59.2
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !102
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.i59.2
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !102
  %i.qp = fmul double %i.qm, %i.qo
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.i59.2
  store double %i.qp, ptr %i.qq, align 8, !tbaa !102
  %indvars.iv.next.i60.2 = add nuw nsw i64 %indvars.iv.i59.2, 1 ; 3 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next.i60.2
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !102
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.next.i60.2
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !102
  %i.qv = fmul double %i.qs, %i.qu
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next.i60.2
  store double %i.qv, ptr %i.qw, align 8, !tbaa !102
  %indvars.iv.next.i60.2.1 = add nuw nsw i64 %indvars.iv.i59.2, 2 ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next.i60.2.1
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !102
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.next.i60.2.1
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !102
  %i.rb = fmul double %i.qy, %i.ra
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next.i60.2.1
  store double %i.rb, ptr %i.rc, align 8, !tbaa !102
  %indvars.iv.next.i60.2.2 = add nuw nsw i64 %indvars.iv.i59.2, 3 ; 3 uses
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next.i60.2.2
  %i.re = load double, ptr %i.rd, align 8, !tbaa !102
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.next.i60.2.2
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !102
  %i.rh = fmul double %i.re, %i.rg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.next.i60.2.2
  store double %i.rh, ptr %i.ri, align 8, !tbaa !102
  %indvars.iv.next.i60.2.3 = add nuw nsw i64 %indvars.iv.i59.2, 4 ; 2 uses
  %exitcond.not.i61.2.3 = icmp eq i64 %indvars.iv.next.i60.2.3, %wide.trip.count.i57.2
  br i1 %exitcond.not.i61.2.3, label %._crit_edge.us.i62.2, label %scalar.ph208, !llvm.loop !126

._crit_edge.us.i62.2:                             ; preds = %scalar.ph208.prol.loopexit, %scalar.ph208, %middle.block220
  %.0..0..0..0..0..0.6.us.i.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %.0..0..0..0..0..0.7.us.i.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %i.rj = add nsw i32 %.0..0..0..0..0..0.7.us.i.2, 1
  store volatile i32 %i.rj, ptr %i.a, align 4, !tbaa !4
  %.0..0..0..0..0..0.5.us.i63.2 = load volatile i32, ptr %i.a, align 4, !tbaa !4
  %i.rk = icmp slt i32 %.0..0..0..0..0..0.5.us.i63.2, %i.pd
  br i1 %i.rk, label %.preheader.us.i58.2, label %._crit_edge29.i.2, !llvm.loop !120

._crit_edge29.i.2:                                ; preds = %.preheader.i54.2, %._crit_edge.us.i62.2
  %.us-phi.i.2 = phi i32 [ %.0..0..0..0..0..0.6.us.i.2, %._crit_edge.us.i62.2 ], [ %.0..0..0..0..0..0.6.i.2, %.preheader.i54.2 ]
  %i.rl = sitofp i32 %.us-phi.i.2 to double
  %i.rm = call double @llvm.copysign.f64(double 0.000000e+00, double %i.rl)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge29.i.2, %.noexc65.2
  %.026.lcssa.i.2 = phi double [ %i.rm, %._crit_edge29.i.2 ], [ 0.000000e+00, %.noexc65.2 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rn = call i64 @clock() #14
  store i64 %i.rn, ptr %i.jf, align 8, !tbaa !109
  store i8 1, ptr %i.jg, align 8, !tbaa !110
  %i.ro = fadd double %.026.lcssa.i.2, 1.230000e-03
  %i.rp = fadd double %.026.lcssa.i.2, -1.230000e-03
  %i.rq = fdiv double %i.ro, %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ox, i64 384
  store double %i.rq, ptr %i.rr, align 8, !tbaa !102
  invoke void @_Z9copyTimerR8LoopStatiRK9LoopTimer(ptr noundef nonnull align 8 dereferenceable(280) %3, i32 noundef range(i32 0, 3) 2, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZN8LoopStataSERKS_.exit52.2 unwind label %bb.j

_ZN8LoopStataSERKS_.exit52.2:                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  %i.rs = load ptr, ptr %i.h, align 8, !tbaa !34  ; 6 uses
  %i.rt = load ptr, ptr %i.g, align 8, !tbaa !34  ; 3 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !42
  %i.rv = load ptr, ptr %i.ij, align 8, !tbaa !34 ; 3 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !42
  %i.rx = load x86_fp80, ptr %i.rw, align 16, !tbaa !44 ; 2 uses
  %i.ry = load x86_fp80, ptr %i.ru, align 16, !tbaa !44 ; 2 uses
  %i.rz = fcmp olt x86_fp80 %i.rx, %i.ry
  %4 = select i1 %i.rz, x86_fp80 %i.rx, x86_fp80 %i.ry ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 3 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !50 ; 4 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.sb, %i.sd
  br i1 %.not.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.i, %.noexc64.2, %_ZN8LoopStataSERKS_.exit52.1, %bb.h, %.noexc64.1, %_ZN8LoopStataSERKS_.exit52, %bb.g, %.noexc64, %_ZN8LoopStataSERKS_.exit52.preheader
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %_ZN8LoopStataSERKS_.exit52.2
  store x86_fp80 %4, ptr %i.sb, align 16, !tbaa !44
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  store ptr %i.sf, ptr %i.sa, align 8, !tbaa !50
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

bb.l:                                             ; preds = %_ZN8LoopStataSERKS_.exit52.2
  %i.sg = load ptr, ptr %i.rs, align 8, !tbaa !42 ; 4 uses
  %i.sh = ptrtoint ptr %i.sb to i64
  %i.si = ptrtoint ptr %i.sg to i64
  %i.sj = sub i64 %i.sh, %i.si                    ; 5 uses
  %i.sk = icmp eq i64 %i.sj, 9223372036854775792
  br i1 %i.sk, label %bb.m, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.u, %bb.q, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
          to label %.noexc67 unwind label %.loopexit.split-lp

.noexc67:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.sl = ashr exact i64 %i.sj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.sl, i64 1)
  %i.sm = add nsw i64 %.sroa.speculated.i.i.i, %i.sl ; 2 uses
  %i.sn = icmp ult i64 %i.sm, %i.sl
  %i.so = call i64 @llvm.umin.i64(i64 %i.sm, i64 576460752303423487)
  %i.sp = select i1 %i.sn, i64 576460752303423487, i64 %i.so ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.sp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.sq = shl nuw nsw i64 %i.sp, 4
  %i.sr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sq) #15
          to label %.noexc68 unwind label %.loopexit ; 4 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  %i.ss = getelementptr inbounds i8, ptr %i.sr, i64 %i.sj ; 2 uses
  store x86_fp80 %4, ptr %i.ss, align 16, !tbaa !44
  %i.st = icmp sgt i64 %i.sj, 0
  br i1 %i.st, label %bb.n, label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc68
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.sr, ptr align 16 %i.sg, i64 %i.sj, i1 false)
  br label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc68
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %.not.i17.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.sg) #16
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !34
  %.pre79.pre = load ptr, ptr %i.g, align 8, !tbaa !34
  %.pre80.pre = load ptr, ptr %i.ij, align 8, !tbaa !34
  br label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i

_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i
  %.pre80 = phi ptr [ %.pre80.pre, %bb.o ], [ %i.rv, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i ]
  %.pre79 = phi ptr [ %.pre79.pre, %bb.o ], [ %i.rt, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.o ], [ %i.rs, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i ]
  store ptr %i.sr, ptr %i.rs, align 8, !tbaa !42
  store ptr %i.su, ptr %i.sa, align 8, !tbaa !50
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.sr, i64 %i.sp
  store ptr %i.sv, ptr %i.sc, align 8, !tbaa !43
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit

_ZNSt6vectorIeSaIeEE9push_backERKe.exit:          ; preds = %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i, %bb.k
  %i.sw = phi ptr [ %.pre80, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i ], [ %i.rv, %bb.k ] ; 3 uses
  %i.sx = phi ptr [ %.pre79, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i ], [ %i.rt, %bb.k ] ; 3 uses
  %i.sy = phi ptr [ %.pre, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i ], [ %i.rs, %bb.k ] ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 24 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !42
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !42
  %i.te = load x86_fp80, ptr %i.td, align 16, !tbaa !44 ; 2 uses
  %i.tf = load x86_fp80, ptr %i.tb, align 16, !tbaa !44 ; 2 uses
  %i.tg = fcmp olt x86_fp80 %i.te, %i.tf
  %5 = select i1 %i.tg, x86_fp80 %i.te, x86_fp80 %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sy, i64 32 ; 3 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !50 ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sy, i64 40 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !43
  %.not.i.1 = icmp eq ptr %i.ti, %i.tk
  br i1 %.not.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIeSaIeEE9push_backERKe.exit
  store x86_fp80 %5, ptr %i.ti, align 16, !tbaa !44
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  store ptr %i.tl, ptr %i.th, align 8, !tbaa !50
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.1

bb.q:                                             ; preds = %_ZNSt6vectorIeSaIeEE9push_backERKe.exit
  %i.tm = load ptr, ptr %i.sz, align 8, !tbaa !42 ; 4 uses
  %i.tn = ptrtoint ptr %i.ti to i64
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = sub i64 %i.tn, %i.to                    ; 5 uses
  %i.tq = icmp eq i64 %i.tp, 9223372036854775792
  br i1 %i.tq, label %bb.m, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.q
  %i.tr = ashr exact i64 %i.tp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.tr, i64 1)
  %i.ts = add nsw i64 %.sroa.speculated.i.i.i.1, %i.tr ; 2 uses
  %i.tt = icmp ult i64 %i.ts, %i.tr
  %i.tu = call i64 @llvm.umin.i64(i64 %i.ts, i64 576460752303423487)
  %i.tv = select i1 %i.tt, i64 576460752303423487, i64 %i.tu ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.tv, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.tw = shl nuw nsw i64 %i.tv, 4
  %i.tx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tw) #15
          to label %.noexc68.1 unwind label %.loopexit ; 4 uses

.noexc68.1:                                       ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.1
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 %i.tp ; 2 uses
  store x86_fp80 %5, ptr %i.ty, align 16, !tbaa !44
  %i.tz = icmp sgt i64 %i.tp, 0
  br i1 %i.tz, label %bb.r, label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1

bb.r:                                             ; preds = %.noexc68.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.tx, ptr align 16 %i.tm, i64 %i.tp, i1 false)
  br label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.r, %.noexc68.1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %.not.i17.i.i.1 = icmp eq ptr %i.tm, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1
  call void @_ZdlPv(ptr noundef nonnull %i.tm) #16
  %.pre81.pre = load ptr, ptr %i.h, align 8, !tbaa !34
  %.pre82.pre = load ptr, ptr %i.g, align 8, !tbaa !34
  %.pre83.pre = load ptr, ptr %i.ij, align 8, !tbaa !34
  br label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1

_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1: ; preds = %bb.s, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1
  %.pre83 = phi ptr [ %.pre83.pre, %bb.s ], [ %i.sw, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1 ]
  %.pre82 = phi ptr [ %.pre82.pre, %bb.s ], [ %i.sx, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1 ]
  %.pre81 = phi ptr [ %.pre81.pre, %bb.s ], [ %i.sy, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.1 ]
  store ptr %i.tx, ptr %i.sz, align 8, !tbaa !42
  store ptr %i.ua, ptr %i.th, align 8, !tbaa !50
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %i.tx, i64 %i.tv
  store ptr %i.ub, ptr %i.tj, align 8, !tbaa !43
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.1

_ZNSt6vectorIeSaIeEE9push_backERKe.exit.1:        ; preds = %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1, %bb.p
  %i.uc = phi ptr [ %.pre83, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1 ], [ %i.sw, %bb.p ]
  %i.ud = phi ptr [ %.pre82, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1 ], [ %i.sx, %bb.p ]
  %i.ue = phi ptr [ %.pre81, %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.1 ], [ %i.sy, %bb.p ] ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 48 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !42
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 48
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !42
  %i.uk = load x86_fp80, ptr %i.uj, align 16, !tbaa !44 ; 2 uses
  %i.ul = load x86_fp80, ptr %i.uh, align 16, !tbaa !44 ; 2 uses
  %i.um = fcmp olt x86_fp80 %i.uk, %i.ul
  %6 = select i1 %i.um, x86_fp80 %i.uk, x86_fp80 %i.ul ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 56 ; 3 uses
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !50 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.ue, i64 64 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !43
  %.not.i.2 = icmp eq ptr %i.uo, %i.uq
  br i1 %.not.i.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.1
  store x86_fp80 %6, ptr %i.uo, align 16, !tbaa !44
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  store ptr %i.ur, ptr %i.un, align 8, !tbaa !50
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.2

bb.u:                                             ; preds = %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.1
  %i.us = load ptr, ptr %i.uf, align 8, !tbaa !42 ; 4 uses
  %i.ut = ptrtoint ptr %i.uo to i64
  %i.uu = ptrtoint ptr %i.us to i64
  %i.uv = sub i64 %i.ut, %i.uu                    ; 5 uses
  %i.uw = icmp eq i64 %i.uv, 9223372036854775792
  br i1 %i.uw, label %bb.m, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.u
  %i.ux = ashr exact i64 %i.uv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.ux, i64 1)
  %i.uy = add nsw i64 %.sroa.speculated.i.i.i.2, %i.ux ; 2 uses
  %i.uz = icmp ult i64 %i.uy, %i.ux
  %i.va = call i64 @llvm.umin.i64(i64 %i.uy, i64 576460752303423487)
  %i.vb = select i1 %i.uz, i64 576460752303423487, i64 %i.va ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.vb, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.vc = shl nuw nsw i64 %i.vb, 4
  %i.vd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vc) #15
          to label %.noexc68.2 unwind label %.loopexit ; 4 uses

.noexc68.2:                                       ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.2
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %i.uv ; 2 uses
  store x86_fp80 %6, ptr %i.ve, align 16, !tbaa !44
  %i.vf = icmp sgt i64 %i.uv, 0
  br i1 %i.vf, label %bb.v, label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.2

bb.v:                                             ; preds = %.noexc68.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.vd, ptr align 16 %i.us, i64 %i.uv, i1 false)
  br label %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.v, %.noexc68.2
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %.not.i17.i.i.2 = icmp eq ptr %i.us, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.2, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.2
  call void @_ZdlPv(ptr noundef nonnull %i.us) #16
  br label %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.2

_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.2: ; preds = %bb.w, %_ZNSt6vectorIeSaIeEE11_S_relocateEPeS2_S2_RS0_.exit16.i.i.2
  store ptr %i.vd, ptr %i.uf, align 8, !tbaa !42
  store ptr %i.vg, ptr %i.un, align 8, !tbaa !50
  %i.vh = getelementptr inbounds nuw [16 x i8], ptr %i.vd, i64 %i.vb
  store ptr %i.vh, ptr %i.up, align 8, !tbaa !43
  br label %_ZNSt6vectorIeSaIeEE9push_backERKe.exit.2

_ZNSt6vectorIeSaIeEE9push_backERKe.exit.2:        ; preds = %_ZNSt6vectorIeSaIeEE17_M_realloc_insertIJRKeEEEvN9__gnu_cxx17__normal_iteratorIPeS1_EEDpOT_.exit.i.2, %bb.t
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.se, %bb.j ], [ %i.jj, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.x ], [ %i.ji, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.c, %bb.b
  %.pn26 = phi { ptr, i32 } [ %i.ii, %bb.c ], [ %.pn.pn, %bb.y ], [ %i.aq, %bb.b ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %.pn26
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #16
  br label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !60

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #16
  br label %_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIeSaIeEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IeSaIeEESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !34     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = load ptr, ptr %0, align 8, !tbaa !34     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = tail call noundef ptr @_ZNSt6vectorIS_IeSaIeEESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEEEvT_S4_.exit, label %.lr.ph.i.i
end_hunk_0
