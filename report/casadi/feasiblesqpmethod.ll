inline.NumInlined: 5575
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 172
begin_hunk_0_@_ZNK6casadi17Feasiblesqpmethod22feasibility_iterationsEPvd:bb.a
.preheader.i22.i:                                 ; preds = %bb.j
  br i1 %i.gm, label %.lr.ph23.preheader.i23.i, label %_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit

.lr.ph23.preheader.i23.i:                         ; preds = %.preheader.i22.i
  %i.mx = shl nuw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kq, i8 0, i64 %i.mx, i1 false), !tbaa !152
  br label %_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.020.i18.i = phi i64 [ %i.nw, %.lr.ph.i17.i ], [ %.020.i18.i.unr, %.lr.ph.i17.i.prol.loopexit ]
  %.01019.i19.i = phi ptr [ %i.nv, %.lr.ph.i17.i ], [ %.01019.i19.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %.01218.i20.i = phi ptr [ %i.nt, %.lr.ph.i17.i ], [ %.01218.i20.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 8
  %i.mz = load double, ptr %.01218.i20.i, align 8, !tbaa !152
  %i.na = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 8
  store double %i.mz, ptr %.01019.i19.i, align 8, !tbaa !152
  %i.nb = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 16
  %i.nc = load double, ptr %i.my, align 8, !tbaa !152
  %i.nd = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 16
  store double %i.nc, ptr %i.na, align 8, !tbaa !152
  %i.ne = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 24
  %i.nf = load double, ptr %i.nb, align 8, !tbaa !152
  %i.ng = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 24
  store double %i.nf, ptr %i.nd, align 8, !tbaa !152
  %i.nh = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 32
  %i.ni = load double, ptr %i.ne, align 8, !tbaa !152
  %i.nj = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 32
  store double %i.ni, ptr %i.ng, align 8, !tbaa !152
  %i.nk = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 40
  %i.nl = load double, ptr %i.nh, align 8, !tbaa !152
  %i.nm = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 40
  store double %i.nl, ptr %i.nj, align 8, !tbaa !152
  %i.nn = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 48
  %i.no = load double, ptr %i.nk, align 8, !tbaa !152
  %i.np = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 48
  store double %i.no, ptr %i.nm, align 8, !tbaa !152
  %i.nq = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 56
  %i.nr = load double, ptr %i.nn, align 8, !tbaa !152
  %i.ns = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 56
  store double %i.nr, ptr %i.np, align 8, !tbaa !152
  %i.nt = getelementptr inbounds nuw i8, ptr %.01218.i20.i, i64 64
  %i.nu = load double, ptr %i.nq, align 8, !tbaa !152
  %i.nv = getelementptr inbounds nuw i8, ptr %.01019.i19.i, i64 64
  store double %i.nu, ptr %i.ns, align 8, !tbaa !152
  %i.nw = add nuw nsw i64 %.020.i18.i, 8          ; 2 uses
  %exitcond.not.i21.i.7 = icmp eq i64 %i.nw, %i.e
  br i1 %exitcond.not.i21.i.7, label %_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit, label %.lr.ph.i17.i, !llvm.loop !514

_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %middle.block884, %.lr.ph23.preheader.i23.i, %.preheader.i22.i, %.preheader16.i16.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit230
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !515 ; 2 uses
  store ptr %i.gy, ptr %i.ny, align 8, !tbaa !258
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !516
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !258
  %i.oc = load ptr, ptr %i.gx, align 8, !tbaa !309
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oc, i64 %i.e
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !517
  store ptr %i.od, ptr %i.of, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.og = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.og, ptr %3, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.og, ptr noundef nonnull align 1 dereferenceable(5) @.str.106, i64 5, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.oh, align 8, !tbaa !17
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.oi, align 1, !tbaa !16
  %i.oj = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef null, i32 noundef 0)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit
  %.not = icmp eq i32 %i.oj, 0
  %i.ok = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.og
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.om = load i64, ptr %i.og, align 8, !tbaa !16
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.not, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.oo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 4 uses
  %i.op = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull @.str.141, i64 noundef 49) ; 0 uses
  %i.oq = load ptr, ptr %i.oo, align 8, !tbaa !34
  %i.or = getelementptr i8, ptr %i.oq, i64 -24
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = getelementptr inbounds i8, ptr %i.oo, i64 %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 240
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !214 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.l
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.ox = load i8, ptr %i.ow, align 8, !tbaa !229
  %.not.i1.i.i = icmp eq i8 %i.ox, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 67
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ov)
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !34
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.pc = load ptr, ptr %i.pb, align 8
  %i.pd = call noundef signext i8 %i.pc(ptr noundef nonnull align 8 dereferenceable(570) %i.ov, i8 noundef signext 10), !inline_history !346
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi i8 [ %i.oz, %bb.n ], [ %i.pd, %bb.o ]
  %i.pe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, i8 noundef signext %.0.i.i.i)
  %i.pf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pe) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6casadi17Feasiblesqpmethod24anderson_acc_init_memoryEPvPdS2_.exit
  %i.pg = landingpad { ptr, i32 }
          cleanup
  %i.ph = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.og
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.p
  %i.pj = load i64, ptr %i.og, align 8, !tbaa !16
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.cd

bb.q:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.pl = load i64, ptr %i.d, align 8, !tbaa !155 ; 29 uses
  %i.pm = load i64, ptr %i.bb, align 8, !tbaa !248
  %i.pn = add nsw i64 %i.pm, %i.pl                ; 2 uses
  %i.po = load ptr, ptr %i.gx, align 8, !tbaa !309 ; 8 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.pr = icmp sgt i64 %i.pn, 0
  br i1 %i.pr, label %.lr.ph.i234.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit

.lr.ph.i234.preheader:                            ; preds = %bb.q
  %i.ps = load ptr, ptr %i.pq, align 8, !tbaa !518
  %i.pt = load ptr, ptr %i.pp, align 8, !tbaa !519
  br label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.preheader, %bb.w
  %.027.i = phi ptr [ %.1.i236, %bb.w ], [ %i.po, %.lr.ph.i234.preheader ] ; 3 uses
  %.01526.i = phi ptr [ %.116.i, %bb.w ], [ %i.pt, %.lr.ph.i234.preheader ] ; 3 uses
  %.01725.i = phi ptr [ %.118.i, %bb.w ], [ %i.ps, %.lr.ph.i234.preheader ] ; 3 uses
  %.01924.i = phi double [ %i.qe, %bb.w ], [ 0.000000e+00, %.lr.ph.i234.preheader ]
  %.02023.i = phi i64 [ %i.qf, %bb.w ], [ 0, %.lr.ph.i234.preheader ]
  %.not.i235 = icmp eq ptr %.027.i, null
  br i1 %.not.i235, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i234
  %i.pu = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.pv = load double, ptr %.027.i, align 8, !tbaa !152
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i234
  %.1.i236 = phi ptr [ %i.pu, %bb.r ], [ null, %.lr.ph.i234 ]
  %i.pw = phi double [ %i.pv, %bb.r ], [ 0.000000e+00, %.lr.ph.i234 ] ; 2 uses
  %.not21.i = icmp eq ptr %.01526.i, null
  br i1 %.not21.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.px = getelementptr inbounds nuw i8, ptr %.01526.i, i64 8
  %i.py = load double, ptr %.01526.i, align 8, !tbaa !152
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.116.i = phi ptr [ %i.px, %bb.t ], [ null, %bb.s ]
  %i.pz = phi double [ %i.py, %bb.t ], [ 0.000000e+00, %bb.s ]
  %.not22.i = icmp eq ptr %.01725.i, null
  br i1 %.not22.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.qa = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  %i.qb = load double, ptr %.01725.i, align 8, !tbaa !152
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.118.i = phi ptr [ %i.qa, %bb.v ], [ null, %bb.u ]
  %i.qc = phi double [ %i.qb, %bb.v ], [ 0.000000e+00, %bb.u ]
  %5 = insertelement <2 x double> poison, double %i.pw, i64 0
  %6 = insertelement <2 x double> %5, double %i.pz, i64 1
  %7 = insertelement <2 x double> poison, double %i.qc, i64 0
  %8 = insertelement <2 x double> %7, double %i.pw, i64 1
  %9 = fsub nsz <2 x double> %6, %8
  %10 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %9, <2 x double> zeroinitializer) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.qd = call nsz double @llvm.maxnum.f64(double %.01924.i, double %11)
  %12 = extractelement <2 x double> %10, i64 1
  %i.qe = call nsz double @llvm.maxnum.f64(double %i.qd, double %12) ; 2 uses
  %i.qf = add nuw nsw i64 %.02023.i, 1            ; 2 uses
  %exitcond.not.i237 = icmp eq i64 %i.qf, %i.pn
  br i1 %exitcond.not.i237, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit, label %.lr.ph.i234, !llvm.loop !520

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit: ; preds = %bb.w, %bb.q
  %.019.lcssa.i = phi double [ 0.000000e+00, %bb.q ], [ %i.qe, %bb.w ]
  %i.qg = load ptr, ptr %i.a, align 8, !tbaa !305 ; 7 uses
  %i.qh = ptrtoaddr ptr %i.qg to i64
  %i.qi = load ptr, ptr %i.cy, align 8, !tbaa !313 ; 21 uses
  %i.qj = ptrtoaddr ptr %i.qi to i64
  %.not.i238 = icmp eq ptr %i.qi, null
  br i1 %.not.i238, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248.thread, label %bb.x

bb.x:                                             ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %.not15.i239 = icmp eq ptr %i.qg, null
  %i.qk = icmp sgt i64 %i.pl, 0                   ; 2 uses
  br i1 %.not15.i239, label %.preheader.i246, label %.preheader16.i240

.preheader16.i240:                                ; preds = %bb.x
  br i1 %i.qk, label %.lr.ph.i241.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248.thread

.lr.ph.i241.preheader:                            ; preds = %.preheader16.i240
  %min.iters.check892 = icmp ult i64 %i.pl, 8
  %i.ql = sub i64 %i.qh, %i.qj
  %diff.check890 = icmp ugt i64 %i.ql, -32
  %or.cond1519 = select i1 %min.iters.check892, i1 true, i1 %diff.check890
  br i1 %or.cond1519, label %.lr.ph.i241.preheader1565, label %vector.ph893

vector.ph893:                                     ; preds = %.lr.ph.i241.preheader
  %n.vec895 = and i64 %i.pl, 9223372036854775804  ; 4 uses
  %i.qm = shl i64 %n.vec895, 3                    ; 2 uses
  %i.qn = getelementptr i8, ptr %i.qi, i64 %i.qm
  %i.qo = getelementptr i8, ptr %i.qg, i64 %i.qm
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph893
  %index897 = phi i64 [ 0, %vector.ph893 ], [ %index.next902, %vector.body896 ] ; 2 uses
  %i.qp = shl i64 %index897, 3                    ; 2 uses
  %next.gep898 = getelementptr i8, ptr %i.qi, i64 %i.qp ; 2 uses
  %next.gep899 = getelementptr i8, ptr %i.qg, i64 %i.qp ; 2 uses
  %i.qq = getelementptr i8, ptr %next.gep899, i64 16
  %wide.load900 = load <2 x double>, ptr %next.gep899, align 8, !tbaa !152
  %wide.load901 = load <2 x double>, ptr %i.qq, align 8, !tbaa !152
  %i.qr = getelementptr i8, ptr %next.gep898, i64 16
  store <2 x double> %wide.load900, ptr %next.gep898, align 8, !tbaa !152
  store <2 x double> %wide.load901, ptr %i.qr, align 8, !tbaa !152
  %index.next902 = add nuw i64 %index897, 4       ; 2 uses
  %i.qs = icmp eq i64 %index.next902, %n.vec895
  br i1 %i.qs, label %middle.block903, label %vector.body896, !llvm.loop !521

middle.block903:                                  ; preds = %vector.body896
  %cmp.n904 = icmp eq i64 %i.pl, %n.vec895
  br i1 %cmp.n904, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248, label %.lr.ph.i241.preheader1565

.lr.ph.i241.preheader1565:                        ; preds = %.lr.ph.i241.preheader, %middle.block903
  %.020.i242.ph = phi i64 [ 0, %.lr.ph.i241.preheader ], [ %n.vec895, %middle.block903 ] ; 4 uses
  %.01019.i243.ph = phi ptr [ %i.qi, %.lr.ph.i241.preheader ], [ %i.qn, %middle.block903 ] ; 2 uses
  %.01218.i244.ph = phi ptr [ %i.qg, %.lr.ph.i241.preheader ], [ %i.qo, %middle.block903 ] ; 2 uses
  %i.qt = sub nsw i64 %i.pl, %.020.i242.ph
  %xtraiter1596 = and i64 %i.qt, 7                ; 2 uses
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1596, 0
  br i1 %lcmp.mod1597.not, label %.lr.ph.i241.prol.loopexit, label %.lr.ph.i241.prol

.lr.ph.i241.prol:                                 ; preds = %.lr.ph.i241.preheader1565, %.lr.ph.i241.prol
  %.020.i242.prol = phi i64 [ %i.qx, %.lr.ph.i241.prol ], [ %.020.i242.ph, %.lr.ph.i241.preheader1565 ]
  %.01019.i243.prol = phi ptr [ %i.qw, %.lr.ph.i241.prol ], [ %.01019.i243.ph, %.lr.ph.i241.preheader1565 ] ; 2 uses
  %.01218.i244.prol = phi ptr [ %i.qu, %.lr.ph.i241.prol ], [ %.01218.i244.ph, %.lr.ph.i241.preheader1565 ] ; 2 uses
  %prol.iter1598 = phi i64 [ %prol.iter1598.next, %.lr.ph.i241.prol ], [ 0, %.lr.ph.i241.preheader1565 ]
  %i.qu = getelementptr inbounds nuw i8, ptr %.01218.i244.prol, i64 8 ; 2 uses
  %i.qv = load double, ptr %.01218.i244.prol, align 8, !tbaa !152
  %i.qw = getelementptr inbounds nuw i8, ptr %.01019.i243.prol, i64 8 ; 2 uses
  store double %i.qv, ptr %.01019.i243.prol, align 8, !tbaa !152
  %i.qx = add nuw nsw i64 %.020.i242.prol, 1      ; 2 uses
  %prol.iter1598.next = add i64 %prol.iter1598, 1 ; 2 uses
  %prol.iter1598.cmp.not = icmp eq i64 %prol.iter1598.next, %xtraiter1596
  br i1 %prol.iter1598.cmp.not, label %.lr.ph.i241.prol.loopexit, label %.lr.ph.i241.prol, !llvm.loop !522

.lr.ph.i241.prol.loopexit:                        ; preds = %.lr.ph.i241.prol, %.lr.ph.i241.preheader1565
  %.020.i242.unr = phi i64 [ %.020.i242.ph, %.lr.ph.i241.preheader1565 ], [ %i.qx, %.lr.ph.i241.prol ]
  %.01019.i243.unr = phi ptr [ %.01019.i243.ph, %.lr.ph.i241.preheader1565 ], [ %i.qw, %.lr.ph.i241.prol ]
  %.01218.i244.unr = phi ptr [ %.01218.i244.ph, %.lr.ph.i241.preheader1565 ], [ %i.qu, %.lr.ph.i241.prol ]
  %i.qy = sub nsw i64 %.020.i242.ph, %i.pl
  %i.qz = icmp ugt i64 %i.qy, -8
  br i1 %i.qz, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248, label %.lr.ph.i241

.preheader.i246:                                  ; preds = %bb.x
  br i1 %i.qk, label %.lr.ph23.preheader.i247, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248.thread

.lr.ph23.preheader.i247:                          ; preds = %.preheader.i246
  %i.ra = shl nuw i64 %i.pl, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.qi, i8 0, i64 %i.ra, i1 false), !tbaa !152
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248

.lr.ph.i241:                                      ; preds = %.lr.ph.i241.prol.loopexit, %.lr.ph.i241
  %.020.i242 = phi i64 [ %i.rz, %.lr.ph.i241 ], [ %.020.i242.unr, %.lr.ph.i241.prol.loopexit ]
  %.01019.i243 = phi ptr [ %i.ry, %.lr.ph.i241 ], [ %.01019.i243.unr, %.lr.ph.i241.prol.loopexit ] ; 9 uses
  %.01218.i244 = phi ptr [ %i.rw, %.lr.ph.i241 ], [ %.01218.i244.unr, %.lr.ph.i241.prol.loopexit ] ; 9 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 8
  %i.rc = load double, ptr %.01218.i244, align 8, !tbaa !152
  %i.rd = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 8
  store double %i.rc, ptr %.01019.i243, align 8, !tbaa !152
  %i.re = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 16
  %i.rf = load double, ptr %i.rb, align 8, !tbaa !152
  %i.rg = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 16
  store double %i.rf, ptr %i.rd, align 8, !tbaa !152
  %i.rh = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 24
  %i.ri = load double, ptr %i.re, align 8, !tbaa !152
  %i.rj = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 24
  store double %i.ri, ptr %i.rg, align 8, !tbaa !152
  %i.rk = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 32
  %i.rl = load double, ptr %i.rh, align 8, !tbaa !152
  %i.rm = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 32
  store double %i.rl, ptr %i.rj, align 8, !tbaa !152
  %i.rn = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 40
  %i.ro = load double, ptr %i.rk, align 8, !tbaa !152
  %i.rp = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 40
  store double %i.ro, ptr %i.rm, align 8, !tbaa !152
  %i.rq = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 48
  %i.rr = load double, ptr %i.rn, align 8, !tbaa !152
  %i.rs = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 48
  store double %i.rr, ptr %i.rp, align 8, !tbaa !152
  %i.rt = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 56
  %i.ru = load double, ptr %i.rq, align 8, !tbaa !152
  %i.rv = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 56
  store double %i.ru, ptr %i.rs, align 8, !tbaa !152
  %i.rw = getelementptr inbounds nuw i8, ptr %.01218.i244, i64 64
  %i.rx = load double, ptr %i.rt, align 8, !tbaa !152
  %i.ry = getelementptr inbounds nuw i8, ptr %.01019.i243, i64 64
  store double %i.rx, ptr %i.rv, align 8, !tbaa !152
  %i.rz = add nuw nsw i64 %.020.i242, 8           ; 2 uses
  %exitcond.not.i245.7 = icmp eq i64 %i.rz, %i.pl
  br i1 %exitcond.not.i245.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248, label %.lr.ph.i241, !llvm.loop !523

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248.thread: ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit, %.preheader16.i240, %.preheader.i246
  %i.sa = icmp ne ptr %i.qi, null
  %i.sb = icmp sgt i64 %i.pl, 0
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit256

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248:    ; preds = %.lr.ph.i241.prol.loopexit, %.lr.ph.i241, %middle.block903, %.lr.ph23.preheader.i247
  %.not572 = icmp eq ptr %i.po, null
  br i1 %.not572, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit256, label %.lr.ph.i251.preheader

.lr.ph.i251.preheader:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit248
  %min.iters.check915 = icmp ult i64 %i.pl, 6
  br i1 %min.iters.check915, label %.lr.ph.i251.preheader1564, label %vector.memcheck908

vector.memcheck908:                               ; preds = %.lr.ph.i251.preheader
  %i.sc = shl i64 %i.pl, 3                        ; 2 uses
  %scevgep909 = getelementptr i8, ptr %i.qi, i64 %i.sc
  %scevgep910 = getelementptr i8, ptr %i.po, i64 %i.sc
  %bound0911 = icmp ult ptr %i.qi, %scevgep910
  %bound1912 = icmp ult ptr %i.po, %scevgep909
  %found.conflict913 = and i1 %bound0911, %bound1912
  br i1 %found.conflict913, label %.lr.ph.i251.preheader1564, label %vector.ph916

vector.ph916:                                     ; preds = %vector.memcheck908
  %n.vec918 = and i64 %i.pl, -4                   ; 4 uses
  %i.sd = shl i64 %n.vec918, 3                    ; 2 uses
  %i.se = getelementptr i8, ptr %i.qi, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.po, i64 %i.sd
  br label %vector.body919

vector.body919:                                   ; preds = %vector.body919, %vector.ph916
  %index920 = phi i64 [ 0, %vector.ph916 ], [ %index.next927, %vector.body919 ] ; 2 uses
  %i.sg = shl i64 %index920, 3                    ; 2 uses
  %next.gep921 = getelementptr i8, ptr %i.qi, i64 %i.sg ; 3 uses
  %next.gep922 = getelementptr i8, ptr %i.po, i64 %i.sg ; 2 uses
  %i.sh = getelementptr i8, ptr %next.gep922, i64 16
  %wide.load923 = load <2 x double>, ptr %next.gep922, align 8, !tbaa !152, !alias.scope !524
  %wide.load924 = load <2 x double>, ptr %i.sh, align 8, !tbaa !152, !alias.scope !524
  %i.si = getelementptr i8, ptr %next.gep921, i64 16 ; 2 uses
  %wide.load925 = load <2 x double>, ptr %next.gep921, align 8, !tbaa !152, !alias.scope !527, !noalias !524
  %wide.load926 = load <2 x double>, ptr %i.si, align 8, !tbaa !152, !alias.scope !527, !noalias !524
  %i.sj = fsub <2 x double> %wide.load925, %wide.load923
  %i.sk = fsub <2 x double> %wide.load926, %wide.load924
  store <2 x double> %i.sj, ptr %next.gep921, align 8, !tbaa !152, !alias.scope !527, !noalias !524
  store <2 x double> %i.sk, ptr %i.si, align 8, !tbaa !152, !alias.scope !527, !noalias !524
  %index.next927 = add nuw i64 %index920, 4       ; 2 uses
  %i.sl = icmp eq i64 %index.next927, %n.vec918
  br i1 %i.sl, label %middle.block928, label %vector.body919, !llvm.loop !529

middle.block928:                                  ; preds = %vector.body919
  %cmp.n929 = icmp eq i64 %i.pl, %n.vec918
  br i1 %cmp.n929, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit256, label %.lr.ph.i251.preheader1564

.lr.ph.i251.preheader1564:                        ; preds = %vector.memcheck908, %.lr.ph.i251.preheader, %middle.block928
  %.014.i252.ph = phi i64 [ 0, %vector.memcheck908 ], [ 0, %.lr.ph.i251.preheader ], [ %n.vec918, %middle.block928 ] ; 3 uses
  %.0813.i253.ph = phi ptr [ %i.qi, %vector.memcheck908 ], [ %i.qi, %.lr.ph.i251.preheader ], [ %i.se, %middle.block928 ] ; 2 uses
  %.0912.i254.ph = phi ptr [ %i.po, %vector.memcheck908 ], [ %i.po, %.lr.ph.i251.preheader ], [ %i.sf, %middle.block928 ] ; 2 uses
  %xtraiter1599 = and i64 %i.pl, 3                ; 2 uses
  %lcmp.mod1600.not = icmp eq i64 %xtraiter1599, 0
  br i1 %lcmp.mod1600.not, label %.lr.ph.i251.prol.loopexit, label %.lr.ph.i251.prol

.lr.ph.i251.prol:                                 ; preds = %.lr.ph.i251.preheader1564, %.lr.ph.i251.prol
  %.014.i252.prol = phi i64 [ %i.sr, %.lr.ph.i251.prol ], [ %.014.i252.ph, %.lr.ph.i251.preheader1564 ]
  %.0813.i253.prol = phi ptr [ %i.so, %.lr.ph.i251.prol ], [ %.0813.i253.ph, %.lr.ph.i251.preheader1564 ] ; 3 uses
  %.0912.i254.prol = phi ptr [ %i.sm, %.lr.ph.i251.prol ], [ %.0912.i254.ph, %.lr.ph.i251.preheader1564 ] ; 2 uses
  %prol.iter1601 = phi i64 [ %prol.iter1601.next, %.lr.ph.i251.prol ], [ 0, %.lr.ph.i251.preheader1564 ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0912.i254.prol, i64 8 ; 2 uses
  %i.sn = load double, ptr %.0912.i254.prol, align 8, !tbaa !152
end_hunk_0
begin_hunk_1_@_ZNK6casadi17Feasiblesqpmethod22feasibility_iterationsEPvd:bb.a
  %.0813.i470.prol = phi ptr [ %i.big, %.lr.ph.i468.prol ], [ %.0813.i470.ph, %.lr.ph.i468.preheader1532 ] ; 3 uses
  %.0912.i471.prol = phi ptr [ %i.bie, %.lr.ph.i468.prol ], [ %.0912.i471.ph, %.lr.ph.i468.preheader1532 ] ; 2 uses
  %prol.iter1690 = phi i64 [ %prol.iter1690.next, %.lr.ph.i468.prol ], [ 0, %.lr.ph.i468.preheader1532 ]
  %i.bie = getelementptr inbounds nuw i8, ptr %.0912.i471.prol, i64 8 ; 2 uses
  %i.bif = load double, ptr %.0912.i471.prol, align 8, !tbaa !152
  %i.big = getelementptr inbounds nuw i8, ptr %.0813.i470.prol, i64 8 ; 2 uses
  %i.bih = load double, ptr %.0813.i470.prol, align 8, !tbaa !152
  %i.bii = fadd double %i.bif, %i.bih
  store double %i.bii, ptr %.0813.i470.prol, align 8, !tbaa !152
  %i.bij = add nuw nsw i64 %.014.i469.prol, 1     ; 2 uses
  %prol.iter1690.next = add i64 %prol.iter1690, 1 ; 2 uses
  %prol.iter1690.cmp.not = icmp eq i64 %prol.iter1690.next, %xtraiter1688
  br i1 %prol.iter1690.cmp.not, label %.lr.ph.i468.prol.loopexit, label %.lr.ph.i468.prol, !llvm.loop !666

.lr.ph.i468.prol.loopexit:                        ; preds = %.lr.ph.i468.prol, %.lr.ph.i468.preheader1532
  %.014.i469.unr = phi i64 [ %.014.i469.ph, %.lr.ph.i468.preheader1532 ], [ %i.bij, %.lr.ph.i468.prol ]
  %.0813.i470.unr = phi ptr [ %.0813.i470.ph, %.lr.ph.i468.preheader1532 ], [ %i.big, %.lr.ph.i468.prol ]
  %.0912.i471.unr = phi ptr [ %.0912.i471.ph, %.lr.ph.i468.preheader1532 ], [ %i.bie, %.lr.ph.i468.prol ]
  %i.bik = sub nsw i64 %.014.i469.ph, %i.bhe
  %i.bil = icmp ugt i64 %i.bik, -4
  br i1 %i.bil, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit473, label %.lr.ph.i468

.lr.ph.i468:                                      ; preds = %.lr.ph.i468.prol.loopexit, %.lr.ph.i468
  %.014.i469 = phi i64 [ %i.bjg, %.lr.ph.i468 ], [ %.014.i469.unr, %.lr.ph.i468.prol.loopexit ]
  %.0813.i470 = phi ptr [ %i.bjd, %.lr.ph.i468 ], [ %.0813.i470.unr, %.lr.ph.i468.prol.loopexit ] ; 6 uses
  %.0912.i471 = phi ptr [ %i.bjb, %.lr.ph.i468 ], [ %.0912.i471.unr, %.lr.ph.i468.prol.loopexit ] ; 5 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %.0912.i471, i64 8
  %i.bin = load double, ptr %.0912.i471, align 8, !tbaa !152
  %i.bio = getelementptr inbounds nuw i8, ptr %.0813.i470, i64 8 ; 2 uses
  %i.bip = load double, ptr %.0813.i470, align 8, !tbaa !152
  %i.biq = fadd double %i.bin, %i.bip
  store double %i.biq, ptr %.0813.i470, align 8, !tbaa !152
  %i.bir = getelementptr inbounds nuw i8, ptr %.0912.i471, i64 16
  %i.bis = load double, ptr %i.bim, align 8, !tbaa !152
  %i.bit = getelementptr inbounds nuw i8, ptr %.0813.i470, i64 16 ; 2 uses
  %i.biu = load double, ptr %i.bio, align 8, !tbaa !152
  %i.biv = fadd double %i.bis, %i.biu
  store double %i.biv, ptr %i.bio, align 8, !tbaa !152
  %i.biw = getelementptr inbounds nuw i8, ptr %.0912.i471, i64 24
  %i.bix = load double, ptr %i.bir, align 8, !tbaa !152
  %i.biy = getelementptr inbounds nuw i8, ptr %.0813.i470, i64 24 ; 2 uses
  %i.biz = load double, ptr %i.bit, align 8, !tbaa !152
  %i.bja = fadd double %i.bix, %i.biz
  store double %i.bja, ptr %i.bit, align 8, !tbaa !152
  %i.bjb = getelementptr inbounds nuw i8, ptr %.0912.i471, i64 32
  %i.bjc = load double, ptr %i.biw, align 8, !tbaa !152
  %i.bjd = getelementptr inbounds nuw i8, ptr %.0813.i470, i64 32
  %i.bje = load double, ptr %i.biy, align 8, !tbaa !152
  %i.bjf = fadd double %i.bjc, %i.bje
  store double %i.bjf, ptr %i.biy, align 8, !tbaa !152
  %i.bjg = add nuw nsw i64 %.014.i469, 4          ; 2 uses
  %exitcond.not.i472.3 = icmp eq i64 %i.bjg, %i.bhe
  br i1 %exitcond.not.i472.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit473, label %.lr.ph.i468, !llvm.loop !667

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit473: ; preds = %.lr.ph.i468.prol.loopexit, %.lr.ph.i468, %middle.block1047, %bb.bk, %bb.bj
  %i.bjh = phi i64 [ %.pre616, %bb.bj ], [ %i.bhe, %bb.bk ], [ %i.bhe, %middle.block1047 ], [ %i.bhe, %.lr.ph.i468 ], [ %i.bhe, %.lr.ph.i468.prol.loopexit ]
  %i.bji = phi ptr [ %.pre, %bb.bj ], [ %i.bhr, %bb.bk ], [ %i.bhr, %middle.block1047 ], [ %i.bhr, %.lr.ph.i468 ], [ %i.bhr, %.lr.ph.i468.prol.loopexit ]
  %i.bjj = load ptr, ptr %i.nx, align 8, !tbaa !515 ; 2 uses
  store ptr %i.bji, ptr %i.bjj, align 8, !tbaa !258
  %i.bjk = load ptr, ptr %i.nz, align 8, !tbaa !516
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8
  store ptr %i.bjk, ptr %i.bjl, align 8, !tbaa !258
  %i.bjm = load ptr, ptr %i.gx, align 8, !tbaa !309
  %i.bjn = getelementptr inbounds [8 x i8], ptr %i.bjm, i64 %i.bjh
  %i.bjo = load ptr, ptr %i.oe, align 8, !tbaa !517
  store ptr %i.bjn, ptr %i.bjo, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.xd, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.xd, ptr noundef nonnull align 1 dereferenceable(5) @.str.106, i64 5, i1 false)
  store i64 5, ptr %i.xe, align 8, !tbaa !17
  store i8 0, ptr %i.xh, align 1, !tbaa !16
  %i.bjp = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef null, i32 noundef 0)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit473
  %.not183 = icmp eq i32 %i.bjp, 0
  %i.bjq = load ptr, ptr %4, align 8, !tbaa !14   ; 2 uses
  %i.bjr = icmp eq ptr %i.bjq, %i.xd
  br i1 %i.bjr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.bl
  %i.bjs = load i64, ptr %i.xd, align 8, !tbaa !16
  %i.bjt = add i64 %i.bjs, 1
  call void @_ZdlPvm(ptr noundef %i.bjq, i64 noundef %i.bjt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br i1 %.not183, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480
  %i.bju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 4 uses
  %i.bjv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bju, ptr noundef nonnull @.str.141, i64 noundef 49) ; 0 uses
  %i.bjw = load ptr, ptr %i.bju, align 8, !tbaa !34
  %i.bjx = getelementptr i8, ptr %i.bjw, i64 -24
  %i.bjy = load i64, ptr %i.bjx, align 8
  %i.bjz = getelementptr inbounds i8, ptr %i.bju, i64 %i.bjy
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 240
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !214 ; 6 uses
  %.not.i.i.i540 = icmp eq ptr %i.bkb, null
  br i1 %.not.i.i.i540, label %bb.bn, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i541

bb.bn:                                            ; preds = %bb.bm
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i541: ; preds = %bb.bm
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 56
  %i.bkd = load i8, ptr %i.bkc, align 8, !tbaa !229
  %.not.i1.i.i542 = icmp eq i8 %i.bkd, 0
  br i1 %.not.i1.i.i542, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i541
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkb, i64 67
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !16
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit544

bb.bp:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i541
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bkb)
  %i.bkg = load ptr, ptr %i.bkb, align 8, !tbaa !34
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 48
  %i.bki = load ptr, ptr %i.bkh, align 8
  %i.bkj = call noundef signext i8 %i.bki(ptr noundef nonnull align 8 dereferenceable(570) %i.bkb, i8 noundef signext 10), !inline_history !346
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit544

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit544: ; preds = %bb.bo, %bb.bp
  %.0.i.i.i543 = phi i8 [ %i.bkf, %bb.bo ], [ %i.bkj, %bb.bp ]
  %i.bkk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bju, i8 noundef signext %.0.i.i.i543)
  %i.bkl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bkk) ; 0 uses
  br label %bb.br

bb.bq:                                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit473
  %i.bkm = landingpad { ptr, i32 }
          cleanup
  %i.bkn = load ptr, ptr %4, align 8, !tbaa !14   ; 2 uses
  %i.bko = icmp eq ptr %i.bkn, %i.xd
  br i1 %i.bko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.bq
  %i.bkp = load i64, ptr %i.xd, align 8, !tbaa !16
  %i.bkq = add i64 %i.bkp, 1
  call void @_ZdlPvm(ptr noundef %i.bkn, i64 noundef %i.bkq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.cd

bb.br:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480
  %i.bkr = load i64, ptr %i.d, align 8, !tbaa !155 ; 29 uses
  %i.bks = load i64, ptr %i.bb, align 8, !tbaa !248
  %i.bkt = add nsw i64 %i.bks, %i.bkr             ; 2 uses
  %i.bku = load ptr, ptr %i.gx, align 8, !tbaa !309 ; 8 uses
  %i.bkv = icmp sgt i64 %i.bkt, 0
  br i1 %i.bkv, label %.lr.ph.i485.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit498

.lr.ph.i485.preheader:                            ; preds = %bb.br
  %i.bkw = load ptr, ptr %i.pq, align 8, !tbaa !518
  %i.bkx = load ptr, ptr %i.pp, align 8, !tbaa !519
  br label %.lr.ph.i485

.lr.ph.i485:                                      ; preds = %.lr.ph.i485.preheader, %bb.bx
  %.027.i486 = phi ptr [ %.1.i492, %bb.bx ], [ %i.bku, %.lr.ph.i485.preheader ] ; 3 uses
  %.01526.i487 = phi ptr [ %.116.i494, %bb.bx ], [ %i.bkx, %.lr.ph.i485.preheader ] ; 3 uses
  %.01725.i488 = phi ptr [ %.118.i496, %bb.bx ], [ %i.bkw, %.lr.ph.i485.preheader ] ; 3 uses
  %.01924.i489 = phi double [ %i.bli, %bb.bx ], [ 0.000000e+00, %.lr.ph.i485.preheader ]
  %.02023.i490 = phi i64 [ %i.blj, %bb.bx ], [ 0, %.lr.ph.i485.preheader ]
  %.not.i491 = icmp eq ptr %.027.i486, null
  br i1 %.not.i491, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i485
  %i.bky = getelementptr inbounds nuw i8, ptr %.027.i486, i64 8
  %i.bkz = load double, ptr %.027.i486, align 8, !tbaa !152
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph.i485
  %.1.i492 = phi ptr [ %i.bky, %bb.bs ], [ null, %.lr.ph.i485 ]
  %i.bla = phi double [ %i.bkz, %bb.bs ], [ 0.000000e+00, %.lr.ph.i485 ] ; 2 uses
  %.not21.i493 = icmp eq ptr %.01526.i487, null
  br i1 %.not21.i493, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.blb = getelementptr inbounds nuw i8, ptr %.01526.i487, i64 8
  %i.blc = load double, ptr %.01526.i487, align 8, !tbaa !152
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.116.i494 = phi ptr [ %i.blb, %bb.bu ], [ null, %bb.bt ]
  %i.bld = phi double [ %i.blc, %bb.bu ], [ 0.000000e+00, %bb.bt ]
  %.not22.i495 = icmp eq ptr %.01725.i488, null
  br i1 %.not22.i495, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ble = getelementptr inbounds nuw i8, ptr %.01725.i488, i64 8
  %i.blf = load double, ptr %.01725.i488, align 8, !tbaa !152
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.118.i496 = phi ptr [ %i.ble, %bb.bw ], [ null, %bb.bv ]
  %i.blg = phi double [ %i.blf, %bb.bw ], [ 0.000000e+00, %bb.bv ]
  %13 = insertelement <2 x double> poison, double %i.bla, i64 0
  %14 = insertelement <2 x double> %13, double %i.bld, i64 1
  %15 = insertelement <2 x double> poison, double %i.blg, i64 0
  %16 = insertelement <2 x double> %15, double %i.bla, i64 1
  %17 = fsub nsz <2 x double> %14, %16
  %18 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %17, <2 x double> zeroinitializer) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %i.blh = call nsz double @llvm.maxnum.f64(double %.01924.i489, double %19)
  %20 = extractelement <2 x double> %18, i64 1
  %i.bli = call nsz double @llvm.maxnum.f64(double %i.blh, double %20) ; 2 uses
  %i.blj = add nuw nsw i64 %.02023.i490, 1        ; 2 uses
  %exitcond.not.i497 = icmp eq i64 %i.blj, %i.bkt
  br i1 %exitcond.not.i497, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit498, label %.lr.ph.i485, !llvm.loop !520

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit498: ; preds = %bb.bx, %bb.br
  %.019.lcssa.i484 = phi double [ 0.000000e+00, %bb.br ], [ %i.bli, %bb.bx ] ; 3 uses
  %i.blk = fdiv double %.0.lcssa.i458, %.0174591
  %i.bll = load ptr, ptr %i.a, align 8, !tbaa !305 ; 7 uses
  %i.blm = ptrtoaddr ptr %i.bll to i64
  %i.bln = load ptr, ptr %i.cy, align 8, !tbaa !313 ; 21 uses
  %i.blo = ptrtoaddr ptr %i.bln to i64
  %.not.i499 = icmp eq ptr %i.bln, null
  br i1 %.not.i499, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509.thread, label %bb.by

bb.by:                                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit498
  %.not15.i500 = icmp eq ptr %i.bll, null
  %i.blp = icmp sgt i64 %i.bkr, 0                 ; 2 uses
  br i1 %.not15.i500, label %.preheader.i507, label %.preheader16.i501

.preheader16.i501:                                ; preds = %bb.by
  br i1 %i.blp, label %.lr.ph.i502.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509.thread

.lr.ph.i502.preheader:                            ; preds = %.preheader16.i501
  %min.iters.check1011 = icmp ult i64 %i.bkr, 4
  %i.blq = sub i64 %i.blm, %i.blo
  %diff.check1009 = icmp ugt i64 %i.blq, -32
  %or.cond1528 = select i1 %min.iters.check1011, i1 true, i1 %diff.check1009
  br i1 %or.cond1528, label %.lr.ph.i502.preheader1531, label %vector.ph1012

vector.ph1012:                                    ; preds = %.lr.ph.i502.preheader
  %n.vec1014 = and i64 %i.bkr, 9223372036854775804 ; 4 uses
  %i.blr = shl i64 %n.vec1014, 3                  ; 2 uses
  %i.bls = getelementptr i8, ptr %i.bln, i64 %i.blr
  %i.blt = getelementptr i8, ptr %i.bll, i64 %i.blr
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %vector.ph1012
  %index1016 = phi i64 [ 0, %vector.ph1012 ], [ %index.next1021, %vector.body1015 ] ; 2 uses
  %i.blu = shl i64 %index1016, 3                  ; 2 uses
  %next.gep1017 = getelementptr i8, ptr %i.bln, i64 %i.blu ; 2 uses
  %next.gep1018 = getelementptr i8, ptr %i.bll, i64 %i.blu ; 2 uses
  %i.blv = getelementptr i8, ptr %next.gep1018, i64 16
  %wide.load1019 = load <2 x double>, ptr %next.gep1018, align 8, !tbaa !152
  %wide.load1020 = load <2 x double>, ptr %i.blv, align 8, !tbaa !152
  %i.blw = getelementptr i8, ptr %next.gep1017, i64 16
  store <2 x double> %wide.load1019, ptr %next.gep1017, align 8, !tbaa !152
  store <2 x double> %wide.load1020, ptr %i.blw, align 8, !tbaa !152
  %index.next1021 = add nuw i64 %index1016, 4     ; 2 uses
  %i.blx = icmp eq i64 %index.next1021, %n.vec1014
  br i1 %i.blx, label %middle.block1022, label %vector.body1015, !llvm.loop !668

middle.block1022:                                 ; preds = %vector.body1015
  %cmp.n1023 = icmp eq i64 %i.bkr, %n.vec1014
  br i1 %cmp.n1023, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509, label %.lr.ph.i502.preheader1531

.lr.ph.i502.preheader1531:                        ; preds = %.lr.ph.i502.preheader, %middle.block1022
  %.020.i503.ph = phi i64 [ 0, %.lr.ph.i502.preheader ], [ %n.vec1014, %middle.block1022 ] ; 4 uses
  %.01019.i504.ph = phi ptr [ %i.bln, %.lr.ph.i502.preheader ], [ %i.bls, %middle.block1022 ] ; 2 uses
  %.01218.i505.ph = phi ptr [ %i.bll, %.lr.ph.i502.preheader ], [ %i.blt, %middle.block1022 ] ; 2 uses
  %i.bly = sub nsw i64 %i.bkr, %.020.i503.ph
  %xtraiter1691 = and i64 %i.bly, 7               ; 2 uses
  %lcmp.mod1692.not = icmp eq i64 %xtraiter1691, 0
  br i1 %lcmp.mod1692.not, label %.lr.ph.i502.prol.loopexit, label %.lr.ph.i502.prol

.lr.ph.i502.prol:                                 ; preds = %.lr.ph.i502.preheader1531, %.lr.ph.i502.prol
  %.020.i503.prol = phi i64 [ %i.bmc, %.lr.ph.i502.prol ], [ %.020.i503.ph, %.lr.ph.i502.preheader1531 ]
  %.01019.i504.prol = phi ptr [ %i.bmb, %.lr.ph.i502.prol ], [ %.01019.i504.ph, %.lr.ph.i502.preheader1531 ] ; 2 uses
  %.01218.i505.prol = phi ptr [ %i.blz, %.lr.ph.i502.prol ], [ %.01218.i505.ph, %.lr.ph.i502.preheader1531 ] ; 2 uses
  %prol.iter1693 = phi i64 [ %prol.iter1693.next, %.lr.ph.i502.prol ], [ 0, %.lr.ph.i502.preheader1531 ]
  %i.blz = getelementptr inbounds nuw i8, ptr %.01218.i505.prol, i64 8 ; 2 uses
  %i.bma = load double, ptr %.01218.i505.prol, align 8, !tbaa !152
  %i.bmb = getelementptr inbounds nuw i8, ptr %.01019.i504.prol, i64 8 ; 2 uses
  store double %i.bma, ptr %.01019.i504.prol, align 8, !tbaa !152
  %i.bmc = add nuw nsw i64 %.020.i503.prol, 1     ; 2 uses
  %prol.iter1693.next = add i64 %prol.iter1693, 1 ; 2 uses
  %prol.iter1693.cmp.not = icmp eq i64 %prol.iter1693.next, %xtraiter1691
  br i1 %prol.iter1693.cmp.not, label %.lr.ph.i502.prol.loopexit, label %.lr.ph.i502.prol, !llvm.loop !669

.lr.ph.i502.prol.loopexit:                        ; preds = %.lr.ph.i502.prol, %.lr.ph.i502.preheader1531
  %.020.i503.unr = phi i64 [ %.020.i503.ph, %.lr.ph.i502.preheader1531 ], [ %i.bmc, %.lr.ph.i502.prol ]
  %.01019.i504.unr = phi ptr [ %.01019.i504.ph, %.lr.ph.i502.preheader1531 ], [ %i.bmb, %.lr.ph.i502.prol ]
  %.01218.i505.unr = phi ptr [ %.01218.i505.ph, %.lr.ph.i502.preheader1531 ], [ %i.blz, %.lr.ph.i502.prol ]
  %i.bmd = sub nsw i64 %.020.i503.ph, %i.bkr
  %i.bme = icmp ugt i64 %i.bmd, -8
  br i1 %i.bme, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509, label %.lr.ph.i502

.preheader.i507:                                  ; preds = %bb.by
  br i1 %i.blp, label %.lr.ph23.preheader.i508, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509.thread

.lr.ph23.preheader.i508:                          ; preds = %.preheader.i507
  %i.bmf = shl nuw i64 %i.bkr, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bln, i8 0, i64 %i.bmf, i1 false), !tbaa !152
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509

.lr.ph.i502:                                      ; preds = %.lr.ph.i502.prol.loopexit, %.lr.ph.i502
  %.020.i503 = phi i64 [ %i.bne, %.lr.ph.i502 ], [ %.020.i503.unr, %.lr.ph.i502.prol.loopexit ]
  %.01019.i504 = phi ptr [ %i.bnd, %.lr.ph.i502 ], [ %.01019.i504.unr, %.lr.ph.i502.prol.loopexit ] ; 9 uses
  %.01218.i505 = phi ptr [ %i.bnb, %.lr.ph.i502 ], [ %.01218.i505.unr, %.lr.ph.i502.prol.loopexit ] ; 9 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 8
  %i.bmh = load double, ptr %.01218.i505, align 8, !tbaa !152
  %i.bmi = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 8
  store double %i.bmh, ptr %.01019.i504, align 8, !tbaa !152
  %i.bmj = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 16
  %i.bmk = load double, ptr %i.bmg, align 8, !tbaa !152
  %i.bml = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 16
  store double %i.bmk, ptr %i.bmi, align 8, !tbaa !152
  %i.bmm = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 24
  %i.bmn = load double, ptr %i.bmj, align 8, !tbaa !152
  %i.bmo = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 24
  store double %i.bmn, ptr %i.bml, align 8, !tbaa !152
  %i.bmp = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 32
  %i.bmq = load double, ptr %i.bmm, align 8, !tbaa !152
  %i.bmr = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 32
  store double %i.bmq, ptr %i.bmo, align 8, !tbaa !152
  %i.bms = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 40
  %i.bmt = load double, ptr %i.bmp, align 8, !tbaa !152
  %i.bmu = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 40
  store double %i.bmt, ptr %i.bmr, align 8, !tbaa !152
  %i.bmv = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 48
  %i.bmw = load double, ptr %i.bms, align 8, !tbaa !152
  %i.bmx = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 48
  store double %i.bmw, ptr %i.bmu, align 8, !tbaa !152
  %i.bmy = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 56
  %i.bmz = load double, ptr %i.bmv, align 8, !tbaa !152
  %i.bna = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 56
  store double %i.bmz, ptr %i.bmx, align 8, !tbaa !152
  %i.bnb = getelementptr inbounds nuw i8, ptr %.01218.i505, i64 64
  %i.bnc = load double, ptr %i.bmy, align 8, !tbaa !152
  %i.bnd = getelementptr inbounds nuw i8, ptr %.01019.i504, i64 64
  store double %i.bnc, ptr %i.bna, align 8, !tbaa !152
  %i.bne = add nuw nsw i64 %.020.i503, 8          ; 2 uses
  %exitcond.not.i506.7 = icmp eq i64 %i.bne, %i.bkr
  br i1 %exitcond.not.i506.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509, label %.lr.ph.i502, !llvm.loop !670

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509.thread: ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit498, %.preheader16.i501, %.preheader.i507
  %i.bnf = icmp ne ptr %i.bln, null
  %i.bng = icmp sgt i64 %i.bkr, 0
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit517

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509:    ; preds = %.lr.ph.i502.prol.loopexit, %.lr.ph.i502, %middle.block1022, %.lr.ph23.preheader.i508
  %.not575 = icmp eq ptr %i.bku, null
  br i1 %.not575, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit517, label %.lr.ph.i512.preheader

.lr.ph.i512.preheader:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit509
  %min.iters.check990 = icmp ult i64 %i.bkr, 4
  br i1 %min.iters.check990, label %.lr.ph.i512.preheader1530, label %vector.memcheck983

vector.memcheck983:                               ; preds = %.lr.ph.i512.preheader
  %i.bnh = shl i64 %i.bkr, 3                      ; 2 uses
  %scevgep984 = getelementptr i8, ptr %i.bln, i64 %i.bnh
  %scevgep985 = getelementptr i8, ptr %i.bku, i64 %i.bnh
  %bound0986 = icmp ult ptr %i.bln, %scevgep985
  %bound1987 = icmp ult ptr %i.bku, %scevgep984
  %found.conflict988 = and i1 %bound0986, %bound1987
  br i1 %found.conflict988, label %.lr.ph.i512.preheader1530, label %vector.ph991

vector.ph991:                                     ; preds = %vector.memcheck983
  %n.vec993 = and i64 %i.bkr, -4                  ; 4 uses
  %i.bni = shl i64 %n.vec993, 3                   ; 2 uses
  %i.bnj = getelementptr i8, ptr %i.bln, i64 %i.bni
  %i.bnk = getelementptr i8, ptr %i.bku, i64 %i.bni
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %vector.ph991
  %index995 = phi i64 [ 0, %vector.ph991 ], [ %index.next1002, %vector.body994 ] ; 2 uses
  %i.bnl = shl i64 %index995, 3                   ; 2 uses
  %next.gep996 = getelementptr i8, ptr %i.bln, i64 %i.bnl ; 3 uses
  %next.gep997 = getelementptr i8, ptr %i.bku, i64 %i.bnl ; 2 uses
  %i.bnm = getelementptr i8, ptr %next.gep997, i64 16
  %wide.load998 = load <2 x double>, ptr %next.gep997, align 8, !tbaa !152, !alias.scope !671
  %wide.load999 = load <2 x double>, ptr %i.bnm, align 8, !tbaa !152, !alias.scope !671
  %i.bnn = getelementptr i8, ptr %next.gep996, i64 16 ; 2 uses
  %wide.load1000 = load <2 x double>, ptr %next.gep996, align 8, !tbaa !152, !alias.scope !674, !noalias !671
  %wide.load1001 = load <2 x double>, ptr %i.bnn, align 8, !tbaa !152, !alias.scope !674, !noalias !671
  %i.bno = fsub <2 x double> %wide.load1000, %wide.load998
  %i.bnp = fsub <2 x double> %wide.load1001, %wide.load999
  store <2 x double> %i.bno, ptr %next.gep996, align 8, !tbaa !152, !alias.scope !674, !noalias !671
  store <2 x double> %i.bnp, ptr %i.bnn, align 8, !tbaa !152, !alias.scope !674, !noalias !671
  %index.next1002 = add nuw i64 %index995, 4      ; 2 uses
  %i.bnq = icmp eq i64 %index.next1002, %n.vec993
  br i1 %i.bnq, label %middle.block1003, label %vector.body994, !llvm.loop !676

middle.block1003:                                 ; preds = %vector.body994
  %cmp.n1004 = icmp eq i64 %i.bkr, %n.vec993
  br i1 %cmp.n1004, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit517, label %.lr.ph.i512.preheader1530

.lr.ph.i512.preheader1530:                        ; preds = %vector.memcheck983, %.lr.ph.i512.preheader, %middle.block1003
  %.014.i513.ph = phi i64 [ 0, %vector.memcheck983 ], [ 0, %.lr.ph.i512.preheader ], [ %n.vec993, %middle.block1003 ] ; 3 uses
  %.0813.i514.ph = phi ptr [ %i.bln, %vector.memcheck983 ], [ %i.bln, %.lr.ph.i512.preheader ], [ %i.bnj, %middle.block1003 ] ; 2 uses
  %.0912.i515.ph = phi ptr [ %i.bku, %vector.memcheck983 ], [ %i.bku, %.lr.ph.i512.preheader ], [ %i.bnk, %middle.block1003 ] ; 2 uses
  %xtraiter1694 = and i64 %i.bkr, 3               ; 2 uses
  %lcmp.mod1695.not = icmp eq i64 %xtraiter1694, 0
  br i1 %lcmp.mod1695.not, label %.lr.ph.i512.prol.loopexit, label %.lr.ph.i512.prol

.lr.ph.i512.prol:                                 ; preds = %.lr.ph.i512.preheader1530, %.lr.ph.i512.prol
  %.014.i513.prol = phi i64 [ %i.bnw, %.lr.ph.i512.prol ], [ %.014.i513.ph, %.lr.ph.i512.preheader1530 ]
  %.0813.i514.prol = phi ptr [ %i.bnt, %.lr.ph.i512.prol ], [ %.0813.i514.ph, %.lr.ph.i512.preheader1530 ] ; 3 uses
  %.0912.i515.prol = phi ptr [ %i.bnr, %.lr.ph.i512.prol ], [ %.0912.i515.ph, %.lr.ph.i512.preheader1530 ] ; 2 uses
  %prol.iter1696 = phi i64 [ %prol.iter1696.next, %.lr.ph.i512.prol ], [ 0, %.lr.ph.i512.preheader1530 ]
  %i.bnr = getelementptr inbounds nuw i8, ptr %.0912.i515.prol, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK6casadi17Feasiblesqpmethod5solveEPv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.ax
  %i.nt = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.nv = load i32, ptr %i.c, align 8, !tbaa !321
  %i.nw = sext i32 %i.nv to i64
  %i.nx = load i64, ptr %i.cm, align 8, !tbaa !151
  %i.ny = srem i64 %i.nw, %i.nx
  %i.nz = icmp eq i64 %i.ny, 0
  br i1 %i.nz, label %bb.ay, label %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.oa = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.az unwind label %bb.bf     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  %i.ob = load ptr, ptr %i.co, align 8, !tbaa !301 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !253 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.od
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 3 uses
  %i.oh = icmp sgt i64 %i.od, 0
  br i1 %i.oh, label %.lr.ph20.preheader.i413, label %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423

.lr.ph20.preheader.i413:                          ; preds = %bb.az
  %.pre.i414 = load i64, ptr %i.oe, align 8, !tbaa !253
  br label %.lr.ph20.i415

.loopexit.i417:                                   ; preds = %.lr.ph.i419.prol.loopexit, %bb.bd, %.lr.ph20.i415
  %exitcond21.not.i418 = icmp eq i64 %i.oj, %i.od
  br i1 %exitcond21.not.i418, label %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423, label %.lr.ph20.i415, !llvm.loop !700

.lr.ph20.i415:                                    ; preds = %.loopexit.i417, %.lr.ph20.preheader.i413
  %i.oi = phi i64 [ %i.ol, %.loopexit.i417 ], [ %.pre.i414, %.lr.ph20.preheader.i413 ] ; 7 uses
  %.019.i416 = phi i64 [ %i.oj, %.loopexit.i417 ], [ 0, %.lr.ph20.preheader.i413 ] ; 4 uses
  %i.oj = add nuw nsw i64 %.019.i416, 1           ; 3 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.oj
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !253 ; 5 uses
  %i.om = icmp slt i64 %i.oi, %i.ol
  br i1 %i.om, label %.lr.ph.i419.preheader, label %.loopexit.i417

.lr.ph.i419.preheader:                            ; preds = %.lr.ph20.i415
  %i.on = sub i64 %i.ol, %i.oi
  %.neg1615 = add i64 %i.oi, 1
  %xtraiter1529 = and i64 %i.on, 1
  %lcmp.mod1530.not = icmp eq i64 %xtraiter1529, 0
  br i1 %lcmp.mod1530.not, label %.lr.ph.i419.prol.loopexit, label %.lr.ph.i419.prol

.lr.ph.i419.prol:                                 ; preds = %.lr.ph.i419.preheader
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.oi
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !253
  %.not.i421.prol = icmp eq i64 %.019.i416, %i.op
  br i1 %.not.i421.prol, label %.lr.ph.i419.prol.loopexit.unr-lcssa, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i419.prol
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %i.oi
  store double 0.000000e+00, ptr %i.oq, align 8, !tbaa !152
  br label %.lr.ph.i419.prol.loopexit.unr-lcssa

.lr.ph.i419.prol.loopexit.unr-lcssa:              ; preds = %bb.ba, %.lr.ph.i419.prol
  %i.or = add nsw i64 %i.oi, 1
  br label %.lr.ph.i419.prol.loopexit

.lr.ph.i419.prol.loopexit:                        ; preds = %.lr.ph.i419.prol.loopexit.unr-lcssa, %.lr.ph.i419.preheader
  %.01718.i420.unr = phi i64 [ %i.oi, %.lr.ph.i419.preheader ], [ %i.or, %.lr.ph.i419.prol.loopexit.unr-lcssa ]
  %i.os = icmp eq i64 %i.ol, %.neg1615
  br i1 %i.os, label %.loopexit.i417, label %.lr.ph.i419

.lr.ph.i419:                                      ; preds = %.lr.ph.i419.prol.loopexit, %bb.bd
  %.01718.i420 = phi i64 [ %i.pa, %bb.bd ], [ %.01718.i420.unr, %.lr.ph.i419.prol.loopexit ] ; 4 uses
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.og, i64 %.01718.i420
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !253
  %.not.i421 = icmp eq i64 %.019.i416, %i.ou
  br i1 %.not.i421, label %.lr.ph.i419.1, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i419
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %.01718.i420
  store double 0.000000e+00, ptr %i.ov, align 8, !tbaa !152
  br label %.lr.ph.i419.1

.lr.ph.i419.1:                                    ; preds = %bb.bb, %.lr.ph.i419
  %i.ow = add nsw i64 %.01718.i420, 1             ; 2 uses
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.ow
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !253
  %.not.i421.1 = icmp eq i64 %.019.i416, %i.oy
  br i1 %.not.i421.1, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i419.1
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %i.ow
  store double 0.000000e+00, ptr %i.oz, align 8, !tbaa !152
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i419.1
  %i.pa = add nsw i64 %.01718.i420, 2             ; 2 uses
  %exitcond.not.i422.1 = icmp eq i64 %i.pa, %i.ol
  br i1 %exitcond.not.i422.1, label %.loopexit.i417, label %.lr.ph.i419, !llvm.loop !701

bb.be:                                            ; preds = %bb.aw, %._crit_edge.i.i406
  %i.pb = landingpad { ptr, i32 }
          cleanup
  %i.pc = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.dl
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %bb.be
  %i.pe = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.pf = add i64 %i.pe, 1
  call void @_ZdlPvm(ptr noundef %i.pc, i64 noundef %i.pf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bg, %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423, %bb.ay
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi12ScopedTimingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  br label %bb.bi

_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423: ; preds = %.loopexit.i417, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.ph = invoke noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.bg unwind label %bb.bf

bb.bg:                                            ; preds = %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit423
  %i.pi = load ptr, ptr %i.co, align 8, !tbaa !301
  %i.pj = load ptr, ptr %i.bm, align 8, !tbaa !305
  %i.pk = load ptr, ptr %i.cp, align 8, !tbaa !299
  %i.pl = load ptr, ptr %i.cq, align 8, !tbaa !300
  %i.pm = load ptr, ptr %i.cr, align 8, !tbaa !697
  invoke void @_ZN6casadi11casadi_bfgsIdEEvPKxPT_PKS3_S6_S6_S4_(ptr noundef %i.ph, ptr noundef %i.pi, ptr noundef %i.pj, ptr noundef %i.pk, ptr noundef %i.pl, ptr noundef %i.pm)
          to label %bb.bh unwind label %bb.bf

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN6casadi12ScopedTimingD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426
  %.pn295 = phi { ptr, i32 } [ %i.pg, %bb.bf ], [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

bb.bj:                                            ; preds = %_ZN6casadi17casadi_bfgs_resetIdEEvPKxPT_.exit, %bb.bh, %bb.ad, %bb.ag
  %i.pn = load i64, ptr %i.i, align 8, !tbaa !155
  %i.po = load i64, ptr %i.dt, align 8, !tbaa !248
  %i.pp = add nsw i64 %i.po, %i.pn                ; 2 uses
  %i.pq = icmp sgt i64 %i.pp, 0
  br i1 %i.pq, label %.lr.ph.i427.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit

.lr.ph.i427.preheader:                            ; preds = %bb.bj
  %i.pr = load ptr, ptr %i.dv, align 8, !tbaa !518
  %i.ps = load ptr, ptr %i.du, align 8, !tbaa !519
  %i.pt = load ptr, ptr %i.by, align 8, !tbaa !336
  br label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %.lr.ph.i427.preheader, %bb.bp
  %.027.i = phi ptr [ %.1.i, %bb.bp ], [ %i.pt, %.lr.ph.i427.preheader ] ; 3 uses
  %.01526.i = phi ptr [ %.116.i, %bb.bp ], [ %i.ps, %.lr.ph.i427.preheader ] ; 3 uses
  %.01725.i = phi ptr [ %.118.i, %bb.bp ], [ %i.pr, %.lr.ph.i427.preheader ] ; 3 uses
  %.01924.i = phi double [ %i.qe, %bb.bp ], [ 0.000000e+00, %.lr.ph.i427.preheader ]
  %.02023.i = phi i64 [ %i.qf, %bb.bp ], [ 0, %.lr.ph.i427.preheader ]
  %.not.i428 = icmp eq ptr %.027.i, null
  br i1 %.not.i428, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i427
  %i.pu = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.pv = load double, ptr %.027.i, align 8, !tbaa !152
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph.i427
  %.1.i = phi ptr [ %i.pu, %bb.bk ], [ null, %.lr.ph.i427 ]
  %i.pw = phi double [ %i.pv, %bb.bk ], [ 0.000000e+00, %.lr.ph.i427 ] ; 2 uses
  %.not21.i = icmp eq ptr %.01526.i, null
  br i1 %.not21.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.px = getelementptr inbounds nuw i8, ptr %.01526.i, i64 8
  %i.py = load double, ptr %.01526.i, align 8, !tbaa !152
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.116.i = phi ptr [ %i.px, %bb.bm ], [ null, %bb.bl ]
  %i.pz = phi double [ %i.py, %bb.bm ], [ 0.000000e+00, %bb.bl ]
  %.not22.i = icmp eq ptr %.01725.i, null
  br i1 %.not22.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qa = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  %i.qb = load double, ptr %.01725.i, align 8, !tbaa !152
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.118.i = phi ptr [ %i.qa, %bb.bo ], [ null, %bb.bn ]
  %i.qc = phi double [ %i.qb, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %25 = insertelement <2 x double> poison, double %i.pw, i64 0
  %26 = insertelement <2 x double> %25, double %i.pz, i64 1
  %27 = insertelement <2 x double> poison, double %i.qc, i64 0
  %28 = insertelement <2 x double> %27, double %i.pw, i64 1
  %29 = fsub nsz <2 x double> %26, %28
  %30 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %29, <2 x double> zeroinitializer) ; 2 uses
  %31 = extractelement <2 x double> %30, i64 0
  %i.qd = call nsz double @llvm.maxnum.f64(double %.01924.i, double %31)
  %32 = extractelement <2 x double> %30, i64 1
  %i.qe = call nsz double @llvm.maxnum.f64(double %i.qd, double %32) ; 2 uses
  %i.qf = add nuw nsw i64 %.02023.i, 1            ; 2 uses
  %exitcond.not.i429 = icmp eq i64 %i.qf, %i.pp
  br i1 %exitcond.not.i429, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit, label %.lr.ph.i427, !llvm.loop !520

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit: ; preds = %bb.bp, %bb.bj
  %.019.lcssa.i = phi double [ 0.000000e+00, %bb.bj ], [ %i.qe, %bb.bp ]
  %i.qg = load double, ptr %i.dw, align 8, !tbaa !205
  %i.qh = fcmp ogt double %.019.lcssa.i, %i.qg
  br i1 %i.qh, label %bb.bq, label %bb.dn

bb.bq:                                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %i.qi = load i8, ptr %i.ei, align 1, !tbaa !171, !range !237, !noundef !238
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.150)
          to label %bb.bs unwind label %.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr @.str.151, ptr %i.qk, align 8, !tbaa !694
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit717.thread

bb.bt:                                            ; preds = %bb.d
  %i.ql = icmp eq i32 %.0216, 0
  br i1 %i.ql, label %._crit_edge.i.i430, label %bb.dn

._crit_edge.i.i430:                               ; preds = %bb.bt
  %i.qm = load ptr, ptr %i.by, align 8, !tbaa !336
  %i.qn = load ptr, ptr %i.bz, align 8, !tbaa !515 ; 2 uses
  store ptr %i.qm, ptr %i.qn, align 8, !tbaa !258
  %i.qo = load ptr, ptr %i.ca, align 8, !tbaa !516
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store ptr %i.qo, ptr %i.qp, align 8, !tbaa !258
  %i.qq = load ptr, ptr %i.cb, align 8, !tbaa !302
  %i.qr = load ptr, ptr %i.cc, align 8, !tbaa !517
  store ptr %i.qq, ptr %i.qr, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  store ptr %i.cd, ptr %14, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.cd, ptr noundef nonnull align 1 dereferenceable(10) @.str.100, i64 10, i1 false)
  store i64 10, ptr %i.ce, align 8, !tbaa !17
  store i8 0, ptr %i.es, align 2, !tbaa !16
  %i.qs = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef null, i32 noundef 0)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %._crit_edge.i.i430
  %.not = icmp eq i32 %i.qs, 0
  %i.qt = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.cd
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %bb.bu
  %i.qv = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.not, label %_ZNSolsEPFRSoS_E.exit440, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.qx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
          to label %bb.bw unwind label %.loopexit ; 4 uses

bb.bw:                                            ; preds = %bb.bv
  %i.qy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, ptr noundef nonnull @.str.141, i64 noundef 49)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438: ; preds = %bb.bw
  %i.qz = load ptr, ptr %i.qx, align 8, !tbaa !34
  %i.ra = getelementptr i8, ptr %i.qz, i64 -24
  %i.rb = load i64, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds i8, ptr %i.qx, i64 %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 240
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !214 ; 6 uses
  %.not.i.i.i751 = icmp eq ptr %i.re, null
  br i1 %.not.i.i.i751, label %.invoke1218, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit438
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  %i.rg = load i8, ptr %i.rf, align 8, !tbaa !229
  %.not.i1.i.i753 = icmp eq i8 %i.rg, 0
  br i1 %.not.i1.i.i753, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 67
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754

bb.by:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i752
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.re)
          to label %.noexc757 unwind label %.loopexit

.noexc757:                                        ; preds = %bb.by
  %i.rj = load ptr, ptr %i.re, align 8, !tbaa !34
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke noundef signext i8 %i.rl(ptr noundef nonnull align 8 dereferenceable(570) %i.re, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754 unwind label %.loopexit, !inline_history !234

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754: ; preds = %.noexc757, %bb.bx
  %.0.i.i.i755 = phi i8 [ %i.ri, %bb.bx ], [ %i.rm, %.noexc757 ]
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.qx, i8 noundef signext %.0.i.i.i755)
          to label %.noexc759 unwind label %.loopexit

.noexc759:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i754
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rn)
          to label %_ZNSolsEPFRSoS_E.exit440 unwind label %.loopexit ; 0 uses

bb.bz:                                            ; preds = %._crit_edge.i.i430
  %i.rp = landingpad { ptr, i32 }
          cleanup
  %i.rq = load ptr, ptr %14, align 8, !tbaa !14   ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.cd
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %bb.bz
  %i.rs = load i64, ptr %i.cd, align 8, !tbaa !16
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSolsEPFRSoS_E.exit440:                         ; preds = %.noexc759, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.ru = load ptr, ptr %i.by, align 8, !tbaa !336
  %i.rv = load ptr, ptr %i.bz, align 8, !tbaa !515 ; 2 uses
  store ptr %i.ru, ptr %i.rv, align 8, !tbaa !258
  %i.rw = load ptr, ptr %i.ca, align 8, !tbaa !516
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !258
  %i.ry = load ptr, ptr %i.cf, align 8, !tbaa !317
  %i.rz = load ptr, ptr %i.cc, align 8, !tbaa !517
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store ptr %i.cg, ptr %15, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cg, ptr noundef nonnull align 1 dereferenceable(9) @.str.97, i64 9, i1 false)
  store i64 9, ptr %i.ch, align 8, !tbaa !17
  store i8 0, ptr %i.et, align 1, !tbaa !16
  %i.sa = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef null, i32 noundef 0)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %_ZNSolsEPFRSoS_E.exit440
  %i.sb = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.cg
  br i1 %i.sc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448: ; preds = %bb.ca
  %i.sd = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.se) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i448
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  switch i32 %i.sa, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit717.thread [
    i32 -1, label %bb.cc
    i32 0, label %bb.cd
  ]

bb.cb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit440
  %i.sf = landingpad { ptr, i32 }
          cleanup
  %i.sg = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.cg
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451: ; preds = %bb.cb
  %i.si = load i64, ptr %i.cg, align 8, !tbaa !16
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit453: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i451
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr @.str.148, ptr %i.sk, align 8, !tbaa !694
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 420
  store i32 3, ptr %i.sl, align 4, !tbaa !695
  %i.sm = load i8, ptr %i.ei, align 1, !tbaa !171, !range !237, !noundef !238
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %.invoke, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit717.thread

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit450
  %i.so = load i8, ptr %i.ci, align 1, !tbaa !235, !range !237, !noundef !238
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.ce, label %bb.dn

bb.ce:                                            ; preds = %bb.cd
  %i.sq = load i8, ptr %i.cj, align 8, !tbaa !166, !range !237, !noundef !238
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %._crit_edge.i.i454, label %bb.co

end_hunk_2
begin_hunk_3_@_ZNK6casadi17Feasiblesqpmethod5solveEPv:bb.a
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !152
  %i.aaw = call double @llvm.fmuladd.f64(double %i.aar, double %i.aav, double %.promoted.i) ; 2 uses
  store double %i.aaw, ptr %i.aao, align 8, !tbaa !152
  %i.aax = add nsw i64 %i.aaj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i538
  %.unr = phi double [ %.promoted.i, %.lr.ph.i538 ], [ %i.aaw, %.prol.loopexit.unr-lcssa ]
  %.04252.i.unr = phi i64 [ %i.aaj, %.lr.ph.i538 ], [ %i.aax, %.prol.loopexit.unr-lcssa ]
  %i.aay = icmp eq i64 %i.aam, %.neg1617
  br i1 %i.aay, label %.loopexit48.i, label %.lr.ph.i538.new

.lr.ph.i538.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i538.new
  %i.aaz = phi double [ %i.abo, %.lr.ph.i538.new ], [ %.unr, %.prol.loopexit ]
  %.04252.i = phi i64 [ %i.abp, %.lr.ph.i538.new ], [ %.04252.i.unr, %.prol.loopexit ] ; 4 uses
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.zu, i64 %.04252.i
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !152
  %i.abc = getelementptr inbounds [8 x i8], ptr %i.aah, i64 %.04252.i
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !253
  %i.abe = getelementptr inbounds [8 x i8], ptr %i.zy, i64 %i.abd
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !152
  %i.abg = call double @llvm.fmuladd.f64(double %i.abb, double %i.abf, double %i.aaz) ; 2 uses
  store double %i.abg, ptr %i.aao, align 8, !tbaa !152
  %i.abh = add nsw i64 %.04252.i, 1               ; 2 uses
  %i.abi = getelementptr inbounds [8 x i8], ptr %i.zu, i64 %i.abh
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !152
  %i.abk = getelementptr inbounds [8 x i8], ptr %i.aah, i64 %i.abh
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !253
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.zy, i64 %i.abl
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !152
  %i.abo = call double @llvm.fmuladd.f64(double %i.abj, double %i.abn, double %i.abg) ; 2 uses
  store double %i.abo, ptr %i.aao, align 8, !tbaa !152
  %i.abp = add nsw i64 %.04252.i, 2               ; 2 uses
  %exitcond.not.i539.1 = icmp eq i64 %i.abp, %i.aam
  br i1 %exitcond.not.i539.1, label %.loopexit48.i, label %.lr.ph.i538.new, !llvm.loop !557

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit:    ; preds = %.loopexit48.i, %bb.dp, %bb.dq
  %or.cond.i540 = and i1 %i.aab, %i.aac
  %i.abq = icmp sgt i64 %i.zx, 0                  ; 2 uses
  %or.cond15.i = and i1 %i.abq, %or.cond.i540
  br i1 %or.cond15.i, label %.lr.ph.i542.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i542.preheader:                            ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %min.iters.check1431 = icmp ult i64 %i.zx, 4
  br i1 %min.iters.check1431, label %.lr.ph.i542.preheader1510, label %vector.memcheck1424

vector.memcheck1424:                              ; preds = %.lr.ph.i542.preheader
  %i.abr = shl i64 %i.zx, 3                       ; 2 uses
  %scevgep1425 = getelementptr i8, ptr %i.zz, i64 %i.abr
  %scevgep1426 = getelementptr i8, ptr %i.zw, i64 %i.abr
  %bound01427 = icmp ult ptr %i.zz, %scevgep1426
  %bound11428 = icmp ult ptr %i.zw, %scevgep1425
  %found.conflict1429 = and i1 %bound01427, %bound11428
  br i1 %found.conflict1429, label %.lr.ph.i542.preheader1510, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.memcheck1424
  %n.vec1434 = and i64 %i.zx, 9223372036854775804 ; 4 uses
  %i.abs = shl i64 %n.vec1434, 3                  ; 2 uses
  %i.abt = getelementptr i8, ptr %i.zz, i64 %i.abs
  %i.abu = getelementptr i8, ptr %i.zw, i64 %i.abs
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1432
  %index1436 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1443, %vector.body1435 ] ; 2 uses
  %i.abv = shl i64 %index1436, 3                  ; 2 uses
  %next.gep1437 = getelementptr i8, ptr %i.zz, i64 %i.abv ; 3 uses
  %next.gep1438 = getelementptr i8, ptr %i.zw, i64 %i.abv ; 2 uses
  %i.abw = getelementptr i8, ptr %next.gep1438, i64 16
  %wide.load1439 = load <2 x double>, ptr %next.gep1438, align 8, !tbaa !152, !alias.scope !707
  %wide.load1440 = load <2 x double>, ptr %i.abw, align 8, !tbaa !152, !alias.scope !707
  %i.abx = getelementptr i8, ptr %next.gep1437, i64 16 ; 2 uses
  %wide.load1441 = load <2 x double>, ptr %next.gep1437, align 8, !tbaa !152, !alias.scope !710, !noalias !707
  %wide.load1442 = load <2 x double>, ptr %i.abx, align 8, !tbaa !152, !alias.scope !710, !noalias !707
  %i.aby = fadd <2 x double> %wide.load1439, %wide.load1441
  %i.abz = fadd <2 x double> %wide.load1440, %wide.load1442
  store <2 x double> %i.aby, ptr %next.gep1437, align 8, !tbaa !152, !alias.scope !710, !noalias !707
  store <2 x double> %i.abz, ptr %i.abx, align 8, !tbaa !152, !alias.scope !710, !noalias !707
  %index.next1443 = add nuw i64 %index1436, 4     ; 2 uses
  %i.aca = icmp eq i64 %index.next1443, %n.vec1434
  br i1 %i.aca, label %middle.block1444, label %vector.body1435, !llvm.loop !712

middle.block1444:                                 ; preds = %vector.body1435
  %cmp.n1445 = icmp eq i64 %i.zx, %n.vec1434
  br i1 %cmp.n1445, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i542.preheader1510

.lr.ph.i542.preheader1510:                        ; preds = %vector.memcheck1424, %.lr.ph.i542.preheader, %middle.block1444
  %.014.i.ph = phi i64 [ 0, %vector.memcheck1424 ], [ 0, %.lr.ph.i542.preheader ], [ %n.vec1434, %middle.block1444 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.zz, %vector.memcheck1424 ], [ %i.zz, %.lr.ph.i542.preheader ], [ %i.abt, %middle.block1444 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.zw, %vector.memcheck1424 ], [ %i.zw, %.lr.ph.i542.preheader ], [ %i.abu, %middle.block1444 ] ; 2 uses
  %xtraiter1541 = and i64 %i.zx, 3                ; 2 uses
  %lcmp.mod1542.not = icmp eq i64 %xtraiter1541, 0
  br i1 %lcmp.mod1542.not, label %.lr.ph.i542.prol.loopexit, label %.lr.ph.i542.prol

.lr.ph.i542.prol:                                 ; preds = %.lr.ph.i542.preheader1510, %.lr.ph.i542.prol
  %.014.i.prol = phi i64 [ %i.acg, %.lr.ph.i542.prol ], [ %.014.i.ph, %.lr.ph.i542.preheader1510 ]
  %.0813.i.prol = phi ptr [ %i.acd, %.lr.ph.i542.prol ], [ %.0813.i.ph, %.lr.ph.i542.preheader1510 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.acb, %.lr.ph.i542.prol ], [ %.0912.i.ph, %.lr.ph.i542.preheader1510 ] ; 2 uses
  %prol.iter1543 = phi i64 [ %prol.iter1543.next, %.lr.ph.i542.prol ], [ 0, %.lr.ph.i542.preheader1510 ]
  %i.acb = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.acc = load double, ptr %.0912.i.prol, align 8, !tbaa !152
  %i.acd = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.ace = load double, ptr %.0813.i.prol, align 8, !tbaa !152
  %i.acf = fadd double %i.acc, %i.ace
  store double %i.acf, ptr %.0813.i.prol, align 8, !tbaa !152
  %i.acg = add nuw nsw i64 %.014.i.prol, 1        ; 2 uses
  %prol.iter1543.next = add i64 %prol.iter1543, 1 ; 2 uses
  %prol.iter1543.cmp.not = icmp eq i64 %prol.iter1543.next, %xtraiter1541
  br i1 %prol.iter1543.cmp.not, label %.lr.ph.i542.prol.loopexit, label %.lr.ph.i542.prol, !llvm.loop !713

.lr.ph.i542.prol.loopexit:                        ; preds = %.lr.ph.i542.prol, %.lr.ph.i542.preheader1510
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i542.preheader1510 ], [ %i.acg, %.lr.ph.i542.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i542.preheader1510 ], [ %i.acd, %.lr.ph.i542.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i542.preheader1510 ], [ %i.acb, %.lr.ph.i542.prol ]
  %i.ach = sub nsw i64 %.014.i.ph, %i.zx
  %i.aci = icmp ugt i64 %i.ach, -4
  br i1 %i.aci, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i542

.lr.ph.i542:                                      ; preds = %.lr.ph.i542.prol.loopexit, %.lr.ph.i542
  %.014.i = phi i64 [ %i.add, %.lr.ph.i542 ], [ %.014.i.unr, %.lr.ph.i542.prol.loopexit ]
  %.0813.i = phi ptr [ %i.ada, %.lr.ph.i542 ], [ %.0813.i.unr, %.lr.ph.i542.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.acy, %.lr.ph.i542 ], [ %.0912.i.unr, %.lr.ph.i542.prol.loopexit ] ; 5 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ack = load double, ptr %.0912.i, align 8, !tbaa !152
  %i.acl = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.acm = load double, ptr %.0813.i, align 8, !tbaa !152
  %i.acn = fadd double %i.ack, %i.acm
  store double %i.acn, ptr %.0813.i, align 8, !tbaa !152
  %i.aco = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.acp = load double, ptr %i.acj, align 8, !tbaa !152
  %i.acq = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.acr = load double, ptr %i.acl, align 8, !tbaa !152
  %i.acs = fadd double %i.acp, %i.acr
  store double %i.acs, ptr %i.acl, align 8, !tbaa !152
  %i.act = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.acu = load double, ptr %i.aco, align 8, !tbaa !152
  %i.acv = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.acw = load double, ptr %i.acq, align 8, !tbaa !152
  %i.acx = fadd double %i.acu, %i.acw
  store double %i.acx, ptr %i.acq, align 8, !tbaa !152
  %i.acy = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.acz = load double, ptr %i.act, align 8, !tbaa !152
  %i.ada = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.adb = load double, ptr %i.acv, align 8, !tbaa !152
  %i.adc = fadd double %i.acz, %i.adb
  store double %i.adc, ptr %i.acv, align 8, !tbaa !152
  %i.add = add nuw nsw i64 %.014.i, 4             ; 2 uses
  %exitcond.not.i543.3 = icmp eq i64 %i.add, %i.zx
  br i1 %exitcond.not.i543.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i542, !llvm.loop !714

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i542.prol.loopexit, %.lr.ph.i542, %middle.block1444, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %i.ade = load i64, ptr %i.dt, align 8, !tbaa !248
  %i.adf = add nsw i64 %i.ade, %i.zx              ; 2 uses
  %i.adg = icmp sgt i64 %i.adf, 0
  br i1 %i.adg, label %.lr.ph.i545.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558

.lr.ph.i545.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.adh = load ptr, ptr %i.dv, align 8, !tbaa !518
  %i.adi = load ptr, ptr %i.du, align 8, !tbaa !519
  %i.adj = load ptr, ptr %i.by, align 8, !tbaa !336
  br label %.lr.ph.i545

.lr.ph.i545:                                      ; preds = %.lr.ph.i545.preheader, %bb.dw
  %.027.i546 = phi ptr [ %.1.i552, %bb.dw ], [ %i.adj, %.lr.ph.i545.preheader ] ; 3 uses
  %.01526.i547 = phi ptr [ %.116.i554, %bb.dw ], [ %i.adi, %.lr.ph.i545.preheader ] ; 3 uses
  %.01725.i548 = phi ptr [ %.118.i556, %bb.dw ], [ %i.adh, %.lr.ph.i545.preheader ] ; 3 uses
  %.01924.i549 = phi double [ %i.adu, %bb.dw ], [ 0.000000e+00, %.lr.ph.i545.preheader ]
  %.02023.i550 = phi i64 [ %i.adv, %bb.dw ], [ 0, %.lr.ph.i545.preheader ]
  %.not.i551 = icmp eq ptr %.027.i546, null
  br i1 %.not.i551, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i545
  %i.adk = getelementptr inbounds nuw i8, ptr %.027.i546, i64 8
  %i.adl = load double, ptr %.027.i546, align 8, !tbaa !152
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph.i545
  %.1.i552 = phi ptr [ %i.adk, %bb.dr ], [ null, %.lr.ph.i545 ]
  %i.adm = phi double [ %i.adl, %bb.dr ], [ 0.000000e+00, %.lr.ph.i545 ] ; 2 uses
  %.not21.i553 = icmp eq ptr %.01526.i547, null
  br i1 %.not21.i553, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.adn = getelementptr inbounds nuw i8, ptr %.01526.i547, i64 8
  %i.ado = load double, ptr %.01526.i547, align 8, !tbaa !152
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.116.i554 = phi ptr [ %i.adn, %bb.dt ], [ null, %bb.ds ]
  %i.adp = phi double [ %i.ado, %bb.dt ], [ 0.000000e+00, %bb.ds ]
  %.not22.i555 = icmp eq ptr %.01725.i548, null
  br i1 %.not22.i555, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adq = getelementptr inbounds nuw i8, ptr %.01725.i548, i64 8
  %i.adr = load double, ptr %.01725.i548, align 8, !tbaa !152
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.118.i556 = phi ptr [ %i.adq, %bb.dv ], [ null, %bb.du ]
  %i.ads = phi double [ %i.adr, %bb.dv ], [ 0.000000e+00, %bb.du ]
  %33 = insertelement <2 x double> poison, double %i.adm, i64 0
  %34 = insertelement <2 x double> %33, double %i.adp, i64 1
  %35 = insertelement <2 x double> poison, double %i.ads, i64 0
  %36 = insertelement <2 x double> %35, double %i.adm, i64 1
  %37 = fsub nsz <2 x double> %34, %36
  %38 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %37, <2 x double> zeroinitializer) ; 2 uses
  %39 = extractelement <2 x double> %38, i64 0
  %i.adt = call nsz double @llvm.maxnum.f64(double %.01924.i549, double %39)
  %40 = extractelement <2 x double> %38, i64 1
  %i.adu = call nsz double @llvm.maxnum.f64(double %i.adt, double %40) ; 2 uses
  %i.adv = add nuw nsw i64 %.02023.i550, 1        ; 2 uses
  %exitcond.not.i557 = icmp eq i64 %i.adv, %i.adf
  br i1 %exitcond.not.i557, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558, label %.lr.ph.i545, !llvm.loop !520

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558: ; preds = %bb.dw, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.019.lcssa.i544 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit ], [ %i.adu, %bb.dw ]
  br i1 %i.abq, label %.lr.ph.i559.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567

.lr.ph.i559.preheader:                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558
  %i.adw = add nsw i64 %i.zx, -1                  ; 2 uses
  %xtraiter1544 = and i64 %i.zx, 1
  %i.adx = icmp eq i64 %i.adw, 0
  br i1 %i.adx, label %.lr.ph.i559.epil.preheader, label %.lr.ph.i559.preheader.new

.lr.ph.i559.preheader.new:                        ; preds = %.lr.ph.i559.preheader
  %unroll_iter = and i64 %i.zx, 9223372036854775806
  br label %.lr.ph.i559

.lr.ph.i559:                                      ; preds = %.lr.ph.i559, %.lr.ph.i559.preheader.new
  %.09.i = phi double [ 0.000000e+00, %.lr.ph.i559.preheader.new ], [ %i.aef, %.lr.ph.i559 ]
  %.067.i = phi ptr [ %i.zz, %.lr.ph.i559.preheader.new ], [ %i.aec, %.lr.ph.i559 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i559.preheader.new ], [ %niter.next.1, %.lr.ph.i559 ]
  %i.ady = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.adz = load double, ptr %.067.i, align 8, !tbaa !152
  %i.aea = call nsz double @llvm.fabs.f64(double %i.adz)
  %i.aeb = call nsz double @llvm.maxnum.f64(double %.09.i, double %i.aea)
  %i.aec = getelementptr inbounds nuw i8, ptr %.067.i, i64 16 ; 2 uses
  %i.aed = load double, ptr %i.ady, align 8, !tbaa !152
  %i.aee = call nsz double @llvm.fabs.f64(double %i.aed)
  %i.aef = call nsz double @llvm.maxnum.f64(double %i.aeb, double %i.aee) ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i559, !llvm.loop !715

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i559
  %lcmp.mod1545.not = icmp eq i64 %xtraiter1544, 0
  br i1 %lcmp.mod1545.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, label %.lr.ph.i559.epil.preheader

.lr.ph.i559.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i559.preheader
  %.09.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i559.preheader ], [ %i.aef, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.zz, %.lr.ph.i559.preheader ], [ %i.aec, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod1547 = trunc i64 %i.zx to i1
  call void @llvm.assume(i1 %lcmp.mod1547)
  %i.aeg = load double, ptr %.067.i.epil.init, align 8, !tbaa !152
  %i.aeh = call nsz double @llvm.fabs.f64(double %i.aeg)
  %i.aei = call nsz double @llvm.maxnum.f64(double %.09.i.epil.init, double %i.aeh)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit:     ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i559.epil.preheader
  %.lcssa1515 = phi double [ %i.aef, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ], [ %i.aei, %.lr.ph.i559.epil.preheader ] ; 2 uses
  %i.aej = load ptr, ptr %i.bm, align 8, !tbaa !305 ; 2 uses
  %xtraiter1548 = and i64 %i.zx, 1
  %i.aek = icmp eq i64 %i.adw, 0
  br i1 %i.aek, label %.lr.ph.i562.epil.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new: ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %unroll_iter1552 = and i64 %i.zx, 9223372036854775806
  br label %.lr.ph.i562

.lr.ph.i562:                                      ; preds = %.lr.ph.i562, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new
  %.09.i563 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.aes, %.lr.ph.i562 ]
  %.067.i565 = phi ptr [ %i.aej, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.aep, %.lr.ph.i562 ] ; 3 uses
  %niter1553 = phi i64 [ 0, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %niter1553.next.1, %.lr.ph.i562 ]
  %i.ael = getelementptr inbounds nuw i8, ptr %.067.i565, i64 8
  %i.aem = load double, ptr %.067.i565, align 8, !tbaa !152
  %i.aen = call nsz double @llvm.fabs.f64(double %i.aem)
  %i.aeo = call nsz double @llvm.maxnum.f64(double %.09.i563, double %i.aen)
  %i.aep = getelementptr inbounds nuw i8, ptr %.067.i565, i64 16 ; 2 uses
  %i.aeq = load double, ptr %i.ael, align 8, !tbaa !152
  %i.aer = call nsz double @llvm.fabs.f64(double %i.aeq)
  %i.aes = call nsz double @llvm.maxnum.f64(double %i.aeo, double %i.aer) ; 3 uses
  %niter1553.next.1 = add i64 %niter1553, 2       ; 2 uses
  %niter1553.ncmp.1 = icmp eq i64 %niter1553.next.1, %unroll_iter1552
  br i1 %niter1553.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa, label %.lr.ph.i562, !llvm.loop !715

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa: ; preds = %.lr.ph.i562
  %lcmp.mod1549.not = icmp eq i64 %xtraiter1548, 0
  br i1 %lcmp.mod1549.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567, label %.lr.ph.i562.epil.preheader

.lr.ph.i562.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %.09.i563.epil.init = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.aes, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa ]
  %.067.i565.epil.init = phi ptr [ %i.aej, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.aep, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa ]
  %lcmp.mod1551 = trunc i64 %i.zx to i1
  call void @llvm.assume(i1 %lcmp.mod1551)
  %i.aet = load double, ptr %.067.i565.epil.init, align 8, !tbaa !152
  %i.aeu = call nsz double @llvm.fabs.f64(double %i.aet)
  %i.aev = call nsz double @llvm.maxnum.f64(double %.09.i563.epil.init, double %i.aeu)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567:  ; preds = %.lr.ph.i562.epil.preheader, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558
  %.0.lcssa.i805 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558 ], [ %.lcssa1515, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa ], [ %.lcssa1515, %.lr.ph.i562.epil.preheader ]
  %.0.lcssa.i561 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit558 ], [ %i.aes, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567.loopexit.unr-lcssa ], [ %i.aev, %.lr.ph.i562.epil.preheader ]
  %i.aew = load i8, ptr %i.dy, align 2, !tbaa !170, !range !237, !noundef !238
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %bb.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.dx:                                            ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2448) %0, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172)
          to label %_ZNK6casadi17Feasiblesqpmethod15print_iterationEv.exit unwind label %.loopexit820

_ZNK6casadi17Feasiblesqpmethod15print_iterationEv.exit: ; preds = %bb.dx
  %i.aey = load i32, ptr %i.c, align 8, !tbaa !321
  %i.aez = load double, ptr %i.dc, align 8, !tbaa !341
  %i.afa = load double, ptr %i.dz, align 8, !tbaa !716
  store ptr %i.ea, ptr %23, align 8, !tbaa !8
  %i.afb = load ptr, ptr %2, align 8, !tbaa !14   ; 2 uses
  %i.afc = load i64, ptr %i.bl, align 8, !tbaa !17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.afc, ptr %i.a, align 8, !tbaa !12
  %i.afd = icmp ugt i64 %i.afc, 15
  br i1 %i.afd, label %.noexc.i570, label %._crit_edge.i.i569

.noexc.i570:                                      ; preds = %_ZNK6casadi17Feasiblesqpmethod15print_iterationEv.exit
  %i.afe = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc571 unwind label %.loopexit820 ; 2 uses

.noexc571:                                        ; preds = %.noexc.i570
  store ptr %i.afe, ptr %23, align 8, !tbaa !14
  %i.aff = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.aff, ptr %i.ea, align 8, !tbaa !16
  br label %._crit_edge.i.i569

._crit_edge.i.i569:                               ; preds = %.noexc571, %_ZNK6casadi17Feasiblesqpmethod15print_iterationEv.exit
  %i.afg = phi ptr [ %i.afe, %.noexc571 ], [ %i.ea, %_ZNK6casadi17Feasiblesqpmethod15print_iterationEv.exit ] ; 2 uses
  switch i64 %i.afc, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %bb.ea
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i569
  %i.afh = load i8, ptr %i.afb, align 1, !tbaa !16
  store i8 %i.afh, ptr %i.afg, align 1, !tbaa !16
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge.i.i569
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afg, ptr align 1 %i.afb, i64 %i.afc, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %._crit_edge.i.i569
  %i.afi = load i64, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  store i64 %i.afi, ptr %i.eb, align 8, !tbaa !17
  %i.afj = load ptr, ptr %23, align 8, !tbaa !14
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afi
  store i8 0, ptr %i.afk, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.afl = sext i32 %i.aey to i64
  invoke void @_ZNK6casadi17Feasiblesqpmethod15print_iterationExddddddddNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2448) %0, i64 noundef %i.afl, double noundef %i.aez, double noundef %.0220, double noundef %.0222, double noundef %.019.lcssa.i544, double noundef %.0.lcssa.i805, double noundef %.0.lcssa.i561, double noundef %i.afa, double noundef %.0262, ptr noundef nonnull align 8 %23)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.afm = load ptr, ptr %23, align 8, !tbaa !14  ; 2 uses
  %i.afn = icmp eq ptr %i.afm, %i.ea
  br i1 %i.afn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572: ; preds = %bb.eb
  %i.afo = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.afp = add i64 %i.afo, 1
  call void @_ZdlPvm(ptr noundef %i.afm, i64 noundef %i.afp) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572
  %i.afq = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.afr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.afq, ptr noundef nonnull @.str.147, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit820 ; 0 uses

.loopexit820:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.dx, %.noexc.i570, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  %lpad.loopexit822 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

.loopexit.split-lp821:                            ; preds = %bb.ef, %bb.ej
  %lpad.loopexit.split-lp823 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

bb.ec:                                            ; preds = %bb.ea
  %i.afs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aft = load ptr, ptr %23, align 8, !tbaa !14  ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.ea
  br i1 %i.afu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %bb.ec
  %i.afv = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit567
  %i.afx = invoke noundef i32 @_ZNK6casadi6Nlpsol8callbackEPNS_12NlpsolMemoryE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef %1)
          to label %bb.ed unwind label %.loopexit820

bb.ed:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.not309 = icmp eq i32 %i.afx, 0
  br i1 %.not309, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.afy = load i8, ptr %i.ei, align 1, !tbaa !171, !range !237, !noundef !238
  %i.afz = trunc nuw i8 %i.afy to i1
  br i1 %i.afz, label %bb.ef, label %bb.eg
end_hunk_3
begin_hunk_4_@_ZN6casadi30casadi_dense_lsqr_single_solveIdEEiPKT_PS1_xxxS4_:bb.a
  %.0710.i.i288 = phi ptr [ %i.c, %.lr.ph.i.i285.preheader.new ], [ %i.eo, %.lr.ph.i.i285 ] ; 5 uses
  %niter779 = phi i64 [ 0, %.lr.ph.i.i285.preheader.new ], [ %niter779.next.3, %.lr.ph.i.i285 ]
  %i.ef = getelementptr i8, ptr %.0710.i.i288, i64 8
  %i.eg = load double, ptr %.0710.i.i288, align 8, !tbaa !152 ; 2 uses
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %.012.i.i286)
  %i.ei = getelementptr i8, ptr %.0710.i.i288, i64 16
  %i.ej = load double, ptr %i.ef, align 8, !tbaa !152 ; 2 uses
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.eh)
  %i.el = getelementptr i8, ptr %.0710.i.i288, i64 24
  %i.em = load double, ptr %i.ei, align 8, !tbaa !152 ; 2 uses
  %i.en = tail call double @llvm.fmuladd.f64(double %i.em, double %i.em, double %i.ek)
  %i.eo = getelementptr i8, ptr %.0710.i.i288, i64 32 ; 2 uses
  %i.ep = load double, ptr %i.el, align 8, !tbaa !152 ; 2 uses
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.ep, double %i.en) ; 3 uses
  %niter779.next.3 = add i64 %niter779, 4         ; 2 uses
  %niter779.ncmp.3 = icmp eq i64 %niter779.next.3, %unroll_iter778
  br i1 %niter779.ncmp.3, label %.loopexit408.unr-lcssa, label %.lr.ph.i.i285, !llvm.loop !331

.loopexit408.unr-lcssa:                           ; preds = %.lr.ph.i.i285
  %lcmp.mod775.not = icmp eq i64 %xtraiter773, 0
  br i1 %lcmp.mod775.not, label %.loopexit408, label %.lr.ph.i.i285.epil.preheader

.lr.ph.i.i285.epil.preheader:                     ; preds = %.loopexit408.unr-lcssa, %.lr.ph.i.i285.preheader
  %.012.i.i286.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i285.preheader ], [ %i.eq, %.loopexit408.unr-lcssa ]
  %.0710.i.i288.epil.init = phi ptr [ %i.c, %.lr.ph.i.i285.preheader ], [ %i.eo, %.loopexit408.unr-lcssa ]
  %lcmp.mod777 = icmp ne i64 %xtraiter773, 0
  tail call void @llvm.assume(i1 %lcmp.mod777)
  br label %.lr.ph.i.i285.epil

.lr.ph.i.i285.epil:                               ; preds = %.lr.ph.i.i285.epil, %.lr.ph.i.i285.epil.preheader
  %.012.i.i286.epil = phi double [ %i.et, %.lr.ph.i.i285.epil ], [ %.012.i.i286.epil.init, %.lr.ph.i.i285.epil.preheader ]
  %.0710.i.i288.epil = phi ptr [ %i.er, %.lr.ph.i.i285.epil ], [ %.0710.i.i288.epil.init, %.lr.ph.i.i285.epil.preheader ] ; 2 uses
  %epil.iter774 = phi i64 [ %epil.iter774.next, %.lr.ph.i.i285.epil ], [ 0, %.lr.ph.i.i285.epil.preheader ]
  %i.er = getelementptr i8, ptr %.0710.i.i288.epil, i64 8
  %i.es = load double, ptr %.0710.i.i288.epil, align 8, !tbaa !152 ; 2 uses
  %i.et = tail call double @llvm.fmuladd.f64(double %i.es, double %i.es, double %.012.i.i286.epil) ; 2 uses
  %epil.iter774.next = add i64 %epil.iter774, 1   ; 2 uses
  %epil.iter774.cmp.not = icmp eq i64 %epil.iter774.next, %xtraiter773
  br i1 %epil.iter774.cmp.not, label %.loopexit408, label %.lr.ph.i.i285.epil, !llvm.loop !1260

.loopexit408:                                     ; preds = %.lr.ph.i.i285.epil, %.loopexit408.unr-lcssa
  %.lcssa748 = phi double [ %i.eq, %.loopexit408.unr-lcssa ], [ %i.et, %.lr.ph.i.i285.epil ]
  %i.eu = tail call noundef double @sqrt(double noundef %.lcssa748) #29 ; 7 uses
  %i.ev = fcmp ogt double %i.eu, 0.000000e+00
  br i1 %i.ev, label %.lr.ph423, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph423:                                        ; preds = %.loopexit408
  %i.ew = fdiv nnan double 1.000000e+00, %i.eu    ; 2 uses
  %min.iters.check569 = icmp ult i64 %4, 4
  br i1 %min.iters.check569, label %scalar.ph568.preheader, label %vector.ph570

vector.ph570:                                     ; preds = %.lr.ph423
  %n.vec572 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body575

vector.body575:                                   ; preds = %vector.body575, %vector.ph570
  %index576 = phi i64 [ 0, %vector.ph570 ], [ %index.next579, %vector.body575 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index576 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load577 = load <2 x double>, ptr %i.ex, align 8, !tbaa !152
  %wide.load578 = load <2 x double>, ptr %i.ey, align 8, !tbaa !152
  %i.ez = fmul <2 x double> %broadcast.splat574, %wide.load577
  %i.fa = fmul <2 x double> %broadcast.splat574, %wide.load578
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !152
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !152
  %index.next579 = add nuw i64 %index576, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next579, %n.vec572
  br i1 %i.fb, label %middle.block580, label %vector.body575, !llvm.loop !1261

middle.block580:                                  ; preds = %vector.body575
  %cmp.n581 = icmp eq i64 %4, %n.vec572
  br i1 %cmp.n581, label %._crit_edge424, label %scalar.ph568.preheader

scalar.ph568.preheader:                           ; preds = %.lr.ph423, %middle.block580
  %.1422.ph = phi i64 [ 0, %.lr.ph423 ], [ %n.vec572, %middle.block580 ]
  br label %scalar.ph568

scalar.ph568:                                     ; preds = %scalar.ph568.preheader, %scalar.ph568
  %.1422 = phi i64 [ %i.ff, %scalar.ph568 ], [ %.1422.ph, %scalar.ph568.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.1422 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !152
  %i.fe = fmul double %i.ew, %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !152
  %i.ff = add nuw nsw i64 %.1422, 1               ; 2 uses
  %exitcond461.not = icmp eq i64 %i.ff, %4
  br i1 %exitcond461.not, label %._crit_edge424, label %scalar.ph568, !llvm.loop !1262

._crit_edge424:                                   ; preds = %scalar.ph568, %middle.block580
  br i1 %or.cond.i510514520, label %.lr.ph.i294.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301

.lr.ph.i294.preheader:                            ; preds = %._crit_edge424
  %min.iters.check586 = icmp ult i64 %4, 8
  br i1 %min.iters.check586, label %.lr.ph.i294.preheader747, label %vector.memcheck583

vector.memcheck583:                               ; preds = %.lr.ph.i294.preheader
  %i.fg = shl i64 %4, 4
  %i.fh = add i64 %i.fg, -1
  %diff.check584 = icmp ult i64 %i.fh, 31
  br i1 %diff.check584, label %.lr.ph.i294.preheader747, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck583
  %n.vec589 = and i64 %4, -4                      ; 4 uses
  %i.fi = shl i64 %n.vec589, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %i.be, i64 %i.fi
  %i.fk = getelementptr i8, ptr %i.c, i64 %i.fi
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph587
  %index591 = phi i64 [ 0, %vector.ph587 ], [ %index.next596, %vector.body590 ] ; 2 uses
  %i.fl = shl i64 %index591, 3                    ; 2 uses
  %next.gep592 = getelementptr i8, ptr %i.be, i64 %i.fl ; 2 uses
  %next.gep593 = getelementptr i8, ptr %i.c, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep593, i64 16
  %wide.load594 = load <2 x double>, ptr %next.gep593, align 8, !tbaa !152
  %wide.load595 = load <2 x double>, ptr %i.fm, align 8, !tbaa !152
  %i.fn = getelementptr i8, ptr %next.gep592, i64 16
  store <2 x double> %wide.load594, ptr %next.gep592, align 8, !tbaa !152
  store <2 x double> %wide.load595, ptr %i.fn, align 8, !tbaa !152
  %index.next596 = add nuw i64 %index591, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next596, %n.vec589
  br i1 %i.fo, label %middle.block597, label %vector.body590, !llvm.loop !1263

middle.block597:                                  ; preds = %vector.body590
  %cmp.n598 = icmp eq i64 %4, %n.vec589
  br i1 %cmp.n598, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294.preheader747

.lr.ph.i294.preheader747:                         ; preds = %vector.memcheck583, %.lr.ph.i294.preheader, %middle.block597
  %.020.i295.ph = phi i64 [ 0, %vector.memcheck583 ], [ 0, %.lr.ph.i294.preheader ], [ %n.vec589, %middle.block597 ] ; 4 uses
  %.01019.i296.ph = phi ptr [ %i.be, %vector.memcheck583 ], [ %i.be, %.lr.ph.i294.preheader ], [ %i.fj, %middle.block597 ] ; 2 uses
  %.01218.i297.ph = phi ptr [ %i.c, %vector.memcheck583 ], [ %i.c, %.lr.ph.i294.preheader ], [ %i.fk, %middle.block597 ] ; 2 uses
  %i.fp = sub i64 %4, %.020.i295.ph
  %xtraiter780 = and i64 %i.fp, 7                 ; 2 uses
  %lcmp.mod781.not = icmp eq i64 %xtraiter780, 0
  br i1 %lcmp.mod781.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol

.lr.ph.i294.prol:                                 ; preds = %.lr.ph.i294.preheader747, %.lr.ph.i294.prol
  %.020.i295.prol = phi i64 [ %i.ft, %.lr.ph.i294.prol ], [ %.020.i295.ph, %.lr.ph.i294.preheader747 ]
  %.01019.i296.prol = phi ptr [ %i.fs, %.lr.ph.i294.prol ], [ %.01019.i296.ph, %.lr.ph.i294.preheader747 ] ; 2 uses
  %.01218.i297.prol = phi ptr [ %i.fq, %.lr.ph.i294.prol ], [ %.01218.i297.ph, %.lr.ph.i294.preheader747 ] ; 2 uses
  %prol.iter782 = phi i64 [ %prol.iter782.next, %.lr.ph.i294.prol ], [ 0, %.lr.ph.i294.preheader747 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.01218.i297.prol, i64 8 ; 2 uses
  %i.fr = load double, ptr %.01218.i297.prol, align 8, !tbaa !152
  %i.fs = getelementptr inbounds nuw i8, ptr %.01019.i296.prol, i64 8 ; 2 uses
  store double %i.fr, ptr %.01019.i296.prol, align 8, !tbaa !152
  %i.ft = add nuw nsw i64 %.020.i295.prol, 1      ; 2 uses
  %prol.iter782.next = add i64 %prol.iter782, 1   ; 2 uses
  %prol.iter782.cmp.not = icmp eq i64 %prol.iter782.next, %xtraiter780
  br i1 %prol.iter782.cmp.not, label %.lr.ph.i294.prol.loopexit, label %.lr.ph.i294.prol, !llvm.loop !1264

.lr.ph.i294.prol.loopexit:                        ; preds = %.lr.ph.i294.prol, %.lr.ph.i294.preheader747
  %.020.i295.unr = phi i64 [ %.020.i295.ph, %.lr.ph.i294.preheader747 ], [ %i.ft, %.lr.ph.i294.prol ]
  %.01019.i296.unr = phi ptr [ %.01019.i296.ph, %.lr.ph.i294.preheader747 ], [ %i.fs, %.lr.ph.i294.prol ]
  %.01218.i297.unr = phi ptr [ %.01218.i297.ph, %.lr.ph.i294.preheader747 ], [ %i.fq, %.lr.ph.i294.prol ]
  %i.fu = sub i64 %.020.i295.ph, %4
  %i.fv = icmp ugt i64 %i.fu, -8
  br i1 %i.fv, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294

.lr.ph.i294:                                      ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294
  %.020.i295 = phi i64 [ %i.gu, %.lr.ph.i294 ], [ %.020.i295.unr, %.lr.ph.i294.prol.loopexit ]
  %.01019.i296 = phi ptr [ %i.gt, %.lr.ph.i294 ], [ %.01019.i296.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %.01218.i297 = phi ptr [ %i.gr, %.lr.ph.i294 ], [ %.01218.i297.unr, %.lr.ph.i294.prol.loopexit ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 8
  %i.fx = load double, ptr %.01218.i297, align 8, !tbaa !152
  %i.fy = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 8
  store double %i.fx, ptr %.01019.i296, align 8, !tbaa !152
  %i.fz = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 16
  %i.ga = load double, ptr %i.fw, align 8, !tbaa !152
  %i.gb = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 16
  store double %i.ga, ptr %i.fy, align 8, !tbaa !152
  %i.gc = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 24
  %i.gd = load double, ptr %i.fz, align 8, !tbaa !152
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 24
  store double %i.gd, ptr %i.gb, align 8, !tbaa !152
  %i.gf = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 32
  %i.gg = load double, ptr %i.gc, align 8, !tbaa !152
  %i.gh = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 32
  store double %i.gg, ptr %i.ge, align 8, !tbaa !152
  %i.gi = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 40
  %i.gj = load double, ptr %i.gf, align 8, !tbaa !152
  %i.gk = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 40
  store double %i.gj, ptr %i.gh, align 8, !tbaa !152
  %i.gl = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 48
  %i.gm = load double, ptr %i.gi, align 8, !tbaa !152
  %i.gn = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 48
  store double %i.gm, ptr %i.gk, align 8, !tbaa !152
  %i.go = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 56
  %i.gp = load double, ptr %i.gl, align 8, !tbaa !152
  %i.gq = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 56
  store double %i.gp, ptr %i.gn, align 8, !tbaa !152
  %i.gr = getelementptr inbounds nuw i8, ptr %.01218.i297, i64 64
  %i.gs = load double, ptr %i.go, align 8, !tbaa !152
  %i.gt = getelementptr inbounds nuw i8, ptr %.01019.i296, i64 64
  store double %i.gs, ptr %i.gq, align 8, !tbaa !152
  %i.gu = add nuw nsw i64 %.020.i295, 8           ; 2 uses
  %exitcond.not.i298.7 = icmp eq i64 %i.gu, %4
  br i1 %exitcond.not.i298.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, label %.lr.ph.i294, !llvm.loop !1265

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301:    ; preds = %.lr.ph.i294.prol.loopexit, %.lr.ph.i294, %middle.block597, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit, %.preheader35.i, %.preheader37.i, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, %._crit_edge424, %.loopexit408
  %i.gv = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.by, %.loopexit408 ], [ %i.by, %._crit_edge424 ], [ %i.by, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %i.by, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ %i.by, %.preheader37.i ], [ %i.by, %.preheader35.i ], [ %i.by, %middle.block597 ], [ %i.by, %.lr.ph.i294 ], [ %i.by, %.lr.ph.i294.prol.loopexit ] ; 4 uses
  %.0255391 = phi double [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit279 ], [ %i.eu, %.loopexit408 ], [ %i.eu, %._crit_edge424 ], [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader37.i ], [ 0.000000e+00, %.preheader35.i ], [ %i.eu, %middle.block597 ], [ %i.eu, %.lr.ph.i294 ], [ %i.eu, %.lr.ph.i294.prol.loopexit ] ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %.not269.not = icmp eq i64 %2, 0                ; 2 uses
  %i.gx = icmp ne ptr %0, null
  %or.cond.i302 = and i1 %i.gx, %.not.i.not       ; 2 uses
  %or.cond50.i305 = and i1 %i.bg, %i.ba           ; 4 uses
  %i.gy = icmp slt i64 %4, 1
  %i.gz = shl i64 %4, 3
  %scevgep = getelementptr i8, ptr %i.gw, i64 %i.gz
  %i.ha = add i64 %4, -1                          ; 6 uses
  %i.hb = add i64 %3, -1
  %min.iters.check701 = icmp ult i64 %3, 4
  %n.vec704 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n713 = icmp eq i64 %3, %n.vec704
  %xtraiter784 = and i64 %4, 1
  %i.hc = icmp eq i64 %i.ha, 0
  %unroll_iter789 = and i64 %4, -2
  %lcmp.mod786.not = icmp eq i64 %xtraiter784, 0
  %lcmp.mod788 = trunc i64 %4 to i1
  %xtraiter792 = and i64 %4, 1
  %i.hd = icmp eq i64 %i.ha, 0
  %unroll_iter799 = and i64 %4, -2
  %lcmp.mod796.not = icmp eq i64 %xtraiter792, 0
  %lcmp.mod798 = trunc i64 %4 to i1
  %xtraiter801 = and i64 %3, 3                    ; 3 uses
  %i.he = icmp ult i64 %i.hb, 3
  %unroll_iter806 = and i64 %3, 9223372036854775804
  %lcmp.mod803.not = icmp eq i64 %xtraiter801, 0
  %lcmp.mod805 = icmp ne i64 %xtraiter801, 0
  %min.iters.check686 = icmp ult i64 %3, 4
  %n.vec689 = and i64 %3, 9223372036854775804     ; 3 uses
  %cmp.n698 = icmp eq i64 %3, %n.vec689
  %min.iters.check671 = icmp ult i64 %4, 4
  %n.vec674 = and i64 %4, -4                      ; 3 uses
  %cmp.n683 = icmp eq i64 %4, %n.vec674
  %xtraiter809 = and i64 %4, 1
  %i.hf = icmp eq i64 %i.ha, 0
  %unroll_iter814 = and i64 %4, -2
  %lcmp.mod811.not = icmp eq i64 %xtraiter809, 0
  %lcmp.mod813 = trunc i64 %4 to i1
  %xtraiter817 = and i64 %4, 1
  %i.hg = icmp eq i64 %i.ha, 0
  %unroll_iter824 = and i64 %4, -2
  %lcmp.mod821.not = icmp eq i64 %xtraiter817, 0
  %lcmp.mod823 = trunc i64 %4 to i1
  %xtraiter826 = and i64 %4, 3                    ; 3 uses
  %i.hh = icmp ult i64 %i.ha, 3
  %unroll_iter831 = and i64 %4, -4
  %lcmp.mod828.not = icmp eq i64 %xtraiter826, 0
  %lcmp.mod830 = icmp ne i64 %xtraiter826, 0
  %min.iters.check656 = icmp ult i64 %4, 4
  %n.vec659 = and i64 %4, 9223372036854775804     ; 3 uses
  %cmp.n668 = icmp eq i64 %4, %n.vec659
  %min.iters.check642 = icmp ult i64 %4, 2
  %n.vec645 = and i64 %4, -2                      ; 3 uses
  %cmp.n653 = icmp eq i64 %4, %n.vec645
  %min.iters.check625 = icmp ult i64 %4, 4
  %bound0621 = icmp ult ptr %i.bb, %i.bf
  %bound1622 = icmp ult ptr %i.be, %scevgep
  %found.conflict623 = and i1 %bound0621, %bound1622
  %n.vec628 = and i64 %4, -4                      ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %cmp.n639 = icmp eq i64 %4, %n.vec628
  %xtraiter833 = and i64 %4, 1
  %lcmp.mod834.not = icmp eq i64 %xtraiter833, 0
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %min.iters.check604 = icmp ult i64 %4, 4
  %bound0 = icmp ult ptr %i.be, %i.bd
  %bound1 = icmp ult ptr %i.c, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %n.vec607 = and i64 %4, -4                      ; 3 uses
  %cmp.n618 = icmp eq i64 %4, %n.vec607
  %xtraiter836 = and i64 %4, 1
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  %xtraiter839 = and i64 %4, 3                    ; 3 uses
  %i.hm = icmp ult i64 %i.ha, 3
  %unroll_iter844 = and i64 %4, -4
  %lcmp.mod841.not = icmp eq i64 %xtraiter839, 0
  %lcmp.mod843 = icmp ne i64 %xtraiter839, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.0259 = phi double [ %i.gv, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.pf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %.0258 = phi double [ %.0255391, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.pd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 3 uses
  %.1256 = phi double [ %.0255391, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.2257, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 5 uses
  %.0254 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.ur, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0253 = phi double [ -1.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.td, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0252 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.tg, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0249 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.sy, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ]
  %.0248 = phi i64 [ 0, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.ho, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %.0238 = phi double [ 0.000000e+00, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %.1239, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 4 uses
  %i.hn = phi <2 x double> [ zeroinitializer, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit301 ], [ %i.tk, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370 ] ; 2 uses
  %i.ho = add nuw nsw i64 %.0248, 1
  br i1 %i.bg, label %.lr.ph427, label %._crit_edge428

.lr.ph427:                                        ; preds = %bb.d
  %i.hp = fneg double %.1256                      ; 2 uses
  br i1 %min.iters.check701, label %scalar.ph700.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %.lr.ph427
  %broadcast.splatinsert705 = insertelement <2 x double> poison, double %i.hp, i64 0
  %broadcast.splat706 = shufflevector <2 x double> %broadcast.splatinsert705, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph702
  %index708 = phi i64 [ 0, %vector.ph702 ], [ %index.next711, %vector.body707 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index708 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load709 = load <2 x double>, ptr %i.hq, align 8, !tbaa !152
  %wide.load710 = load <2 x double>, ptr %i.hr, align 8, !tbaa !152
  %i.hs = fmul <2 x double> %wide.load709, %broadcast.splat706
  %i.ht = fmul <2 x double> %wide.load710, %broadcast.splat706
  store <2 x double> %i.hs, ptr %i.hq, align 8, !tbaa !152
  store <2 x double> %i.ht, ptr %i.hr, align 8, !tbaa !152
  %index.next711 = add nuw i64 %index708, 4       ; 2 uses
  %i.hu = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.hu, label %middle.block712, label %vector.body707, !llvm.loop !1266

middle.block712:                                  ; preds = %vector.body707
  br i1 %cmp.n713, label %._crit_edge428, label %scalar.ph700.preheader

scalar.ph700.preheader:                           ; preds = %.lr.ph427, %middle.block712
  %.2425.ph = phi i64 [ 0, %.lr.ph427 ], [ %n.vec704, %middle.block712 ]
  br label %scalar.ph700

scalar.ph700:                                     ; preds = %scalar.ph700.preheader, %scalar.ph700
  %.2425 = phi i64 [ %i.hy, %scalar.ph700 ], [ %.2425.ph, %scalar.ph700.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.2425 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !152
  %i.hx = fmul double %i.hw, %i.hp
  store double %i.hx, ptr %i.hv, align 8, !tbaa !152
  %i.hy = add nuw nsw i64 %.2425, 1               ; 2 uses
  %exitcond462.not = icmp eq i64 %i.hy, %3
  br i1 %exitcond462.not, label %._crit_edge428, label %scalar.ph700, !llvm.loop !1267

._crit_edge428:                                   ; preds = %scalar.ph700, %middle.block712, %bb.d
  br i1 %or.cond.i302, label %bb.e, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

bb.e:                                             ; preds = %._crit_edge428
  br i1 %.not269.not, label %.preheader37.i306, label %.preheader35.i316

.preheader37.i306:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader36.i307, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader35.i316:                                ; preds = %bb.e
  br i1 %or.cond50.i305, label %.preheader.i317, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325

.preheader36.i307:                                ; preds = %.preheader37.i306, %._crit_edge.i314
  %.02842.i308 = phi i64 [ %i.is, %._crit_edge.i314 ], [ 0, %.preheader37.i306 ] ; 2 uses
  %.03041.i309 = phi ptr [ %.lcssa741, %._crit_edge.i314 ], [ %0, %.preheader37.i306 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i308 ; 4 uses
  %.promoted.i310 = load double, ptr %i.hz, align 8, !tbaa !152 ; 2 uses
  br i1 %i.hd, label %.epil.preheader791, label %.preheader36.i307.new

.preheader36.i307.new:                            ; preds = %.preheader36.i307, %.preheader36.i307.new
  %i.ia = phi double [ %i.il, %.preheader36.i307.new ], [ %.promoted.i310, %.preheader36.i307 ]
  %.040.i311 = phi i64 [ %i.im, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ] ; 3 uses
  %.13139.i312 = phi ptr [ %i.ig, %.preheader36.i307.new ], [ %.03041.i309, %.preheader36.i307 ] ; 3 uses
  %niter800 = phi i64 [ %niter800.next.1, %.preheader36.i307.new ], [ 0, %.preheader36.i307 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 8
  %i.ic = load double, ptr %.13139.i312, align 8, !tbaa !152
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.ie = load double, ptr %i.id, align 8, !tbaa !152
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ic, double %i.ie, double %i.ia) ; 2 uses
  store double %i.if, ptr %i.hz, align 8, !tbaa !152
  %i.ig = getelementptr inbounds nuw i8, ptr %.13139.i312, i64 16 ; 3 uses
  %i.ih = load double, ptr %i.ib, align 8, !tbaa !152
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !152
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ik, double %i.if) ; 3 uses
  store double %i.il, ptr %i.hz, align 8, !tbaa !152
  %i.im = add nuw nsw i64 %.040.i311, 2           ; 2 uses
  %niter800.next.1 = add i64 %niter800, 2         ; 2 uses
  %niter800.ncmp.1 = icmp eq i64 %niter800.next.1, %unroll_iter799
  br i1 %niter800.ncmp.1, label %._crit_edge.i314.unr-lcssa, label %.preheader36.i307.new, !llvm.loop !1256

._crit_edge.i314.unr-lcssa:                       ; preds = %.preheader36.i307.new
  br i1 %lcmp.mod796.not, label %._crit_edge.i314, label %.epil.preheader791

.epil.preheader791:                               ; preds = %._crit_edge.i314.unr-lcssa, %.preheader36.i307
  %.epil.init795 = phi double [ %.promoted.i310, %.preheader36.i307 ], [ %i.il, %._crit_edge.i314.unr-lcssa ]
  %.040.i311.epil.init = phi i64 [ 0, %.preheader36.i307 ], [ %i.im, %._crit_edge.i314.unr-lcssa ]
  %.13139.i312.epil.init = phi ptr [ %.03041.i309, %.preheader36.i307 ], [ %i.ig, %._crit_edge.i314.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod798)
  %i.in = getelementptr inbounds nuw i8, ptr %.13139.i312.epil.init, i64 8
  %i.io = load double, ptr %.13139.i312.epil.init, align 8, !tbaa !152
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i311.epil.init
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !152
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.io, double %i.iq, double %.epil.init795)
  store double %i.ir, ptr %i.hz, align 8, !tbaa !152
  br label %._crit_edge.i314

._crit_edge.i314:                                 ; preds = %._crit_edge.i314.unr-lcssa, %.epil.preheader791
  %.lcssa741 = phi ptr [ %i.ig, %._crit_edge.i314.unr-lcssa ], [ %i.in, %.epil.preheader791 ]
  %i.is = add nuw nsw i64 %.02842.i308, 1         ; 2 uses
  %exitcond53.not.i315 = icmp eq i64 %i.is, %3
  br i1 %exitcond53.not.i315, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, label %.preheader36.i307, !llvm.loop !1257

.preheader.i317:                                  ; preds = %.preheader35.i316, %._crit_edge45.i323
  %.12948.i318 = phi i64 [ %i.jo, %._crit_edge45.i323 ], [ 0, %.preheader35.i316 ] ; 2 uses
  %.247.i319 = phi ptr [ %.lcssa, %._crit_edge45.i323 ], [ %0, %.preheader35.i316 ] ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i318 ; 3 uses
  br i1 %i.hc, label %.epil.preheader783, label %.preheader.i317.new

.preheader.i317.new:                              ; preds = %.preheader.i317, %.preheader.i317.new
  %.144.i320 = phi i64 [ %i.jh, %.preheader.i317.new ], [ 0, %.preheader.i317 ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN6casadi30casadi_dense_lsqr_single_solveIdEEiPKT_PS1_xxxS4_:bb.a
  %.02842.i339 = phi i64 [ %i.lx, %._crit_edge.i345 ], [ 0, %.preheader37.i337 ] ; 2 uses
  %.03041.i340 = phi ptr [ %.lcssa744, %._crit_edge.i345 ], [ %0, %.preheader37.i337 ] ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02842.i339 ; 4 uses
  %.promoted.i341 = load double, ptr %i.le, align 8, !tbaa !152 ; 2 uses
  br i1 %i.hg, label %.epil.preheader816, label %.preheader36.i338.new

.preheader36.i338.new:                            ; preds = %.preheader36.i338, %.preheader36.i338.new
  %i.lf = phi double [ %i.lq, %.preheader36.i338.new ], [ %.promoted.i341, %.preheader36.i338 ]
  %.040.i342 = phi i64 [ %i.lr, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ] ; 3 uses
  %.13139.i343 = phi ptr [ %i.ll, %.preheader36.i338.new ], [ %.03041.i340, %.preheader36.i338 ] ; 3 uses
  %niter825 = phi i64 [ %niter825.next.1, %.preheader36.i338.new ], [ 0, %.preheader36.i338 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 8
  %i.lh = load double, ptr %.13139.i343, align 8, !tbaa !152
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.lj = load double, ptr %i.li, align 8, !tbaa !152
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.lj, double %i.lf) ; 2 uses
  store double %i.lk, ptr %i.le, align 8, !tbaa !152
  %i.ll = getelementptr inbounds nuw i8, ptr %.13139.i343, i64 16 ; 3 uses
  %i.lm = load double, ptr %i.lg, align 8, !tbaa !152
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !152
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lp, double %i.lk) ; 3 uses
  store double %i.lq, ptr %i.le, align 8, !tbaa !152
  %i.lr = add nuw nsw i64 %.040.i342, 2           ; 2 uses
  %niter825.next.1 = add i64 %niter825, 2         ; 2 uses
  %niter825.ncmp.1 = icmp eq i64 %niter825.next.1, %unroll_iter824
  br i1 %niter825.ncmp.1, label %._crit_edge.i345.unr-lcssa, label %.preheader36.i338.new, !llvm.loop !1256

._crit_edge.i345.unr-lcssa:                       ; preds = %.preheader36.i338.new
  br i1 %lcmp.mod821.not, label %._crit_edge.i345, label %.epil.preheader816

.epil.preheader816:                               ; preds = %._crit_edge.i345.unr-lcssa, %.preheader36.i338
  %.epil.init820 = phi double [ %.promoted.i341, %.preheader36.i338 ], [ %i.lq, %._crit_edge.i345.unr-lcssa ]
  %.040.i342.epil.init = phi i64 [ 0, %.preheader36.i338 ], [ %i.lr, %._crit_edge.i345.unr-lcssa ]
  %.13139.i343.epil.init = phi ptr [ %.03041.i340, %.preheader36.i338 ], [ %i.ll, %._crit_edge.i345.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod823)
  %i.ls = getelementptr inbounds nuw i8, ptr %.13139.i343.epil.init, i64 8
  %i.lt = load double, ptr %.13139.i343.epil.init, align 8, !tbaa !152
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.040.i342.epil.init
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !152
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lt, double %i.lv, double %.epil.init820)
  store double %i.lw, ptr %i.le, align 8, !tbaa !152
  br label %._crit_edge.i345

._crit_edge.i345:                                 ; preds = %._crit_edge.i345.unr-lcssa, %.epil.preheader816
  %.lcssa744 = phi ptr [ %i.ll, %._crit_edge.i345.unr-lcssa ], [ %i.ls, %.epil.preheader816 ]
  %i.lx = add nuw nsw i64 %.02842.i339, 1         ; 2 uses
  %exitcond53.not.i346 = icmp eq i64 %i.lx, %3
  br i1 %exitcond53.not.i346, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader36.i338, !llvm.loop !1257

.preheader.i348:                                  ; preds = %.preheader35.i347, %._crit_edge45.i354
  %.12948.i349 = phi i64 [ %i.mt, %._crit_edge45.i354 ], [ 0, %.preheader35.i347 ] ; 2 uses
  %.247.i350 = phi ptr [ %.lcssa743, %._crit_edge45.i354 ], [ %0, %.preheader35.i347 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.12948.i349 ; 3 uses
  br i1 %i.hf, label %.epil.preheader808, label %.preheader.i348.new

.preheader.i348.new:                              ; preds = %.preheader.i348, %.preheader.i348.new
  %.144.i351 = phi i64 [ %i.mm, %.preheader.i348.new ], [ 0, %.preheader.i348 ] ; 3 uses
  %.343.i352 = phi ptr [ %i.mf, %.preheader.i348.new ], [ %.247.i350, %.preheader.i348 ] ; 3 uses
  %niter815 = phi i64 [ %niter815.next.1, %.preheader.i348.new ], [ 0, %.preheader.i348 ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.343.i352, i64 8
  %i.ma = load double, ptr %.343.i352, align 8, !tbaa !152
  %i.mb = load double, ptr %i.ly, align 8, !tbaa !152
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !152
  %i.me = tail call double @llvm.fmuladd.f64(double %i.ma, double %i.mb, double %i.md)
  store double %i.me, ptr %i.mc, align 8, !tbaa !152
  %i.mf = getelementptr inbounds nuw i8, ptr %.343.i352, i64 16 ; 3 uses
  %i.mg = load double, ptr %i.lz, align 8, !tbaa !152
  %i.mh = load double, ptr %i.ly, align 8, !tbaa !152
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !152
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mh, double %i.mk)
  store double %i.ml, ptr %i.mj, align 8, !tbaa !152
  %i.mm = add nuw nsw i64 %.144.i351, 2           ; 2 uses
  %niter815.next.1 = add i64 %niter815, 2         ; 2 uses
  %niter815.ncmp.1 = icmp eq i64 %niter815.next.1, %unroll_iter814
  br i1 %niter815.ncmp.1, label %._crit_edge45.i354.unr-lcssa, label %.preheader.i348.new, !llvm.loop !1258

._crit_edge45.i354.unr-lcssa:                     ; preds = %.preheader.i348.new
  br i1 %lcmp.mod811.not, label %._crit_edge45.i354, label %.epil.preheader808

.epil.preheader808:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.preheader.i348
  %.144.i351.epil.init = phi i64 [ 0, %.preheader.i348 ], [ %i.mm, %._crit_edge45.i354.unr-lcssa ]
  %.343.i352.epil.init = phi ptr [ %.247.i350, %.preheader.i348 ], [ %i.mf, %._crit_edge45.i354.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod813)
  %i.mn = getelementptr inbounds nuw i8, ptr %.343.i352.epil.init, i64 8
  %i.mo = load double, ptr %.343.i352.epil.init, align 8, !tbaa !152
  %i.mp = load double, ptr %i.ly, align 8, !tbaa !152
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.144.i351.epil.init ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !152
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.mp, double %i.mr)
  store double %i.ms, ptr %i.mq, align 8, !tbaa !152
  br label %._crit_edge45.i354

._crit_edge45.i354:                               ; preds = %._crit_edge45.i354.unr-lcssa, %.epil.preheader808
  %.lcssa743 = phi ptr [ %i.mf, %._crit_edge45.i354.unr-lcssa ], [ %i.mn, %.epil.preheader808 ]
  %i.mt = add nuw nsw i64 %.12948.i349, 1         ; 2 uses
  %exitcond55.not.i355 = icmp eq i64 %i.mt, %3
  br i1 %exitcond55.not.i355, label %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356, label %.preheader.i348, !llvm.loop !1259

_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356: ; preds = %._crit_edge45.i354, %._crit_edge.i345, %._crit_edge435, %.preheader37.i337, %.preheader35.i347
  br i1 %i.ba, label %.lr.ph.i.i358.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363

.lr.ph.i.i358.preheader:                          ; preds = %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356
  br i1 %i.hh, label %.lr.ph.i.i358.epil.preheader, label %.lr.ph.i.i358

.lr.ph.i.i358:                                    ; preds = %.lr.ph.i.i358.preheader, %.lr.ph.i.i358
  %.012.i.i359 = phi double [ %i.nf, %.lr.ph.i.i358 ], [ 0.000000e+00, %.lr.ph.i.i358.preheader ]
  %.0710.i.i361 = phi ptr [ %i.nd, %.lr.ph.i.i358 ], [ %i.c, %.lr.ph.i.i358.preheader ] ; 5 uses
  %niter832 = phi i64 [ %niter832.next.3, %.lr.ph.i.i358 ], [ 0, %.lr.ph.i.i358.preheader ]
  %i.mu = getelementptr i8, ptr %.0710.i.i361, i64 8
  %i.mv = load double, ptr %.0710.i.i361, align 8, !tbaa !152 ; 2 uses
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mv, double %.012.i.i359)
  %i.mx = getelementptr i8, ptr %.0710.i.i361, i64 16
  %i.my = load double, ptr %i.mu, align 8, !tbaa !152 ; 2 uses
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.my, double %i.my, double %i.mw)
  %i.na = getelementptr i8, ptr %.0710.i.i361, i64 24
  %i.nb = load double, ptr %i.mx, align 8, !tbaa !152 ; 2 uses
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.nb, double %i.nb, double %i.mz)
  %i.nd = getelementptr i8, ptr %.0710.i.i361, i64 32 ; 2 uses
  %i.ne = load double, ptr %i.na, align 8, !tbaa !152 ; 2 uses
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.ne, double %i.nc) ; 3 uses
  %niter832.next.3 = add i64 %niter832, 4         ; 2 uses
  %niter832.ncmp.3 = icmp eq i64 %niter832.next.3, %unroll_iter831
  br i1 %niter832.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, label %.lr.ph.i.i358, !llvm.loop !331

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i358
  br i1 %lcmp.mod828.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, label %.lr.ph.i.i358.epil.preheader

.lr.ph.i.i358.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, %.lr.ph.i.i358.preheader
  %.012.i.i359.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i358.preheader ], [ %i.nf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  %.0710.i.i361.epil.init = phi ptr [ %i.c, %.lr.ph.i.i358.preheader ], [ %i.nd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod830)
  br label %.lr.ph.i.i358.epil

.lr.ph.i.i358.epil:                               ; preds = %.lr.ph.i.i358.epil, %.lr.ph.i.i358.epil.preheader
  %.012.i.i359.epil = phi double [ %i.ni, %.lr.ph.i.i358.epil ], [ %.012.i.i359.epil.init, %.lr.ph.i.i358.epil.preheader ]
  %.0710.i.i361.epil = phi ptr [ %i.ng, %.lr.ph.i.i358.epil ], [ %.0710.i.i361.epil.init, %.lr.ph.i.i358.epil.preheader ] ; 2 uses
  %epil.iter827 = phi i64 [ %epil.iter827.next, %.lr.ph.i.i358.epil ], [ 0, %.lr.ph.i.i358.epil.preheader ]
  %i.ng = getelementptr i8, ptr %.0710.i.i361.epil, i64 8
  %i.nh = load double, ptr %.0710.i.i361.epil, align 8, !tbaa !152 ; 2 uses
  %i.ni = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.nh, double %.012.i.i359.epil) ; 2 uses
  %epil.iter827.next = add i64 %epil.iter827, 1   ; 2 uses
  %epil.iter827.cmp.not = icmp eq i64 %epil.iter827.next, %xtraiter826
  br i1 %epil.iter827.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, label %.lr.ph.i.i358.epil, !llvm.loop !1273

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa, %.lr.ph.i.i358.epil, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356
  %.0.lcssa.i.i357 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit356 ], [ %i.nf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363.loopexit.unr-lcssa ], [ %i.ni, %.lr.ph.i.i358.epil ]
  %i.nj = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i357) #29 ; 5 uses
  %i.nk = fcmp ule double %i.nj, 0.000000e+00
  %brmerge447 = or i1 %i.nk, %i.gy
  br i1 %brmerge447, label %.loopexit, label %.lr.ph437

.lr.ph437:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363
  %i.nl = fdiv nnan double 1.000000e+00, %i.nj    ; 2 uses
  br i1 %min.iters.check656, label %scalar.ph655.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph437
  %broadcast.splatinsert660 = insertelement <2 x double> poison, double %i.nl, i64 0
  %broadcast.splat661 = shufflevector <2 x double> %broadcast.splatinsert660, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body662

vector.body662:                                   ; preds = %vector.body662, %vector.ph657
  %index663 = phi i64 [ 0, %vector.ph657 ], [ %index.next666, %vector.body662 ] ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index663 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 2 uses
  %wide.load664 = load <2 x double>, ptr %i.nm, align 8, !tbaa !152
  %wide.load665 = load <2 x double>, ptr %i.nn, align 8, !tbaa !152
  %i.no = fmul <2 x double> %broadcast.splat661, %wide.load664
  %i.np = fmul <2 x double> %broadcast.splat661, %wide.load665
  store <2 x double> %i.no, ptr %i.nm, align 8, !tbaa !152
  store <2 x double> %i.np, ptr %i.nn, align 8, !tbaa !152
  %index.next666 = add nuw i64 %index663, 4       ; 2 uses
  %i.nq = icmp eq i64 %index.next666, %n.vec659
  br i1 %i.nq, label %middle.block667, label %vector.body662, !llvm.loop !1274

middle.block667:                                  ; preds = %vector.body662
  br i1 %cmp.n668, label %.loopexit, label %scalar.ph655.preheader

scalar.ph655.preheader:                           ; preds = %.lr.ph437, %middle.block667
  %.5436.ph = phi i64 [ 0, %.lr.ph437 ], [ %n.vec659, %middle.block667 ]
  br label %scalar.ph655

scalar.ph655:                                     ; preds = %scalar.ph655.preheader, %scalar.ph655
  %.5436 = phi i64 [ %i.nu, %scalar.ph655 ], [ %.5436.ph, %scalar.ph655.preheader ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.5436 ; 2 uses
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !152
  %i.nt = fmul double %i.nl, %i.ns
  store double %i.nt, ptr %i.nr, align 8, !tbaa !152
  %i.nu = add nuw nsw i64 %.5436, 1               ; 2 uses
  %exitcond465.not = icmp eq i64 %i.nu, %4
  br i1 %exitcond465.not, label %.loopexit, label %scalar.ph655, !llvm.loop !1275

.loopexit:                                        ; preds = %scalar.ph655, %middle.block667, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332
  %i.nv = phi double [ %i.ke, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ 1.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ 1.000000e+00, %middle.block667 ], [ 1.000000e+00, %scalar.ph655 ] ; 2 uses
  %i.nw = phi double [ %i.ke, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %i.ke, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ 0.000000e+00, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %i.ke, %middle.block667 ], [ %i.ke, %scalar.ph655 ] ; 8 uses
  %.2257 = phi double [ %.1256, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %i.nj, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ %.1256, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %i.nj, %middle.block667 ], [ %i.nj, %scalar.ph655 ] ; 4 uses
  %.1239 = phi double [ %.0238, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit332 ], [ %sqrt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit363 ], [ %.0238, %_ZN6casadi15casadi_mv_denseIdEEvPKT_xxS3_PS1_x.exit325 ], [ %sqrt, %middle.block667 ], [ %sqrt, %scalar.ph655 ] ; 5 uses
  %i.nx = tail call double @llvm.fmuladd.f64(double %.0258, double %.0258, double 0.000000e+00) ; 4 uses
  %sqrt398 = tail call double @llvm.sqrt.f64(double %i.nx) ; 9 uses
  %i.ny = fdiv double %.0258, %sqrt398
  %i.nz = fdiv double 0.000000e+00, %sqrt398
  %i.oa = fmul double %.0259, %i.nz
  %i.ob = fmul double %.0259, %i.ny               ; 2 uses
  %i.oc = fcmp oeq double %i.nw, 0.000000e+00
  br i1 %i.oc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.od = fcmp ogt double %i.nx, 0.000000e+00
  %i.oe = select i1 %i.od, double 1.000000e+00, double %sqrt398
  %i.of = tail call double @llvm.fabs.f64(double %sqrt398)
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.h:                                             ; preds = %.loopexit
  %i.og = fcmp oeq double %i.nx, 0.000000e+00
  br i1 %i.og, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.oh = fcmp olt double %i.nw, 0.000000e+00
  %i.oi = select i1 %i.oh, double -1.000000e+00, double %i.nv
  %i.oj = tail call double @llvm.fabs.f64(double %i.nw)
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ok = tail call double @llvm.fabs.f64(double %i.nw)
  %i.ol = tail call double @llvm.fabs.f64(double %sqrt398)
  %i.om = fcmp ogt double %i.ok, %i.ol
  br i1 %i.om, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.on = fdiv double %sqrt398, %i.nw             ; 3 uses
  %i.oo = fcmp olt double %i.nw, 0.000000e+00
  %i.op = select i1 %i.oo, double -1.000000e+00, double %i.nv
  %i.oq = tail call double @llvm.fmuladd.f64(double %i.on, double %i.on, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.oq)
  %i.or = fdiv double %i.op, %sqrt.i              ; 3 uses
  %i.os = fmul double %i.on, %i.or
  %i.ot = fdiv double %i.nw, %i.or
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.l:                                             ; preds = %bb.j
  %i.ou = fdiv double %i.nw, %sqrt398             ; 3 uses
  %i.ov = fcmp ogt double %i.nx, 0.000000e+00
  %i.ow = select i1 %i.ov, double 1.000000e+00, double %sqrt398
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ou, double %i.ou, double 1.000000e+00)
  %sqrt39.i = tail call double @llvm.sqrt.f64(double %i.ox)
  %i.oy = fdiv double %i.ow, %sqrt39.i            ; 3 uses
  %i.oz = fmul double %i.ou, %i.oy
  %i.pa = fdiv double %sqrt398, %i.oy
  br label %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit: ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.0389 = phi double [ 0.000000e+00, %bb.g ], [ %i.oi, %bb.i ], [ %i.or, %bb.k ], [ %i.oz, %bb.l ] ; 3 uses
  %.0388 = phi double [ %i.oe, %bb.g ], [ 0.000000e+00, %bb.i ], [ %i.os, %bb.k ], [ %i.oy, %bb.l ] ; 2 uses
  %.sink.i = phi double [ %i.of, %bb.g ], [ %i.oj, %bb.i ], [ %i.ot, %bb.k ], [ %i.pa, %bb.l ] ; 6 uses
  %i.pb = fmul double %.2257, %.0389              ; 4 uses
  %i.pc = fneg double %.0388
  %i.pd = fmul double %.2257, %i.pc
  %i.pe = fmul double %i.ob, %.0388               ; 3 uses
  %i.pf = fmul double %i.ob, %.0389               ; 3 uses
  %i.pg = fmul double %.0389, %i.pe
  %i.ph = fdiv double %i.pe, %.sink.i             ; 4 uses
  %i.pi = fneg double %i.pb
  %i.pj = fdiv double %i.pi, %.sink.i             ; 4 uses
  br i1 %i.ba, label %.lr.ph439.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370

.lr.ph439.preheader:                              ; preds = %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  br i1 %min.iters.check642, label %.lr.ph439.preheader738, label %vector.ph643

vector.ph643:                                     ; preds = %.lr.ph439.preheader
  %broadcast.splatinsert646 = insertelement <2 x double> poison, double %.sink.i, i64 0
  %broadcast.splat647 = shufflevector <2 x double> %broadcast.splatinsert646, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph643
  %index649 = phi i64 [ 0, %vector.ph643 ], [ %index.next651, %vector.body648 ] ; 3 uses
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index649
  %wide.load650 = load <2 x double>, ptr %i.pk, align 8, !tbaa !152
  %i.pl = fdiv <2 x double> %wide.load650, %broadcast.splat647
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index649
  store <2 x double> %i.pl, ptr %i.pm, align 8, !tbaa !152
  %index.next651 = add nuw i64 %index649, 2       ; 2 uses
  %i.pn = icmp eq i64 %index.next651, %n.vec645
  br i1 %i.pn, label %middle.block652, label %vector.body648, !llvm.loop !1276

middle.block652:                                  ; preds = %vector.body648
  br i1 %cmp.n653, label %.lr.ph441.preheader, label %.lr.ph439.preheader738

.lr.ph439.preheader738:                           ; preds = %.lr.ph439.preheader, %middle.block652
  %.6438.ph = phi i64 [ 0, %.lr.ph439.preheader ], [ %n.vec645, %middle.block652 ]
  br label %.lr.ph439

.lr.ph439:                                        ; preds = %.lr.ph439.preheader738, %.lr.ph439
  %.6438 = phi i64 [ %i.ps, %.lr.ph439 ], [ %.6438.ph, %.lr.ph439.preheader738 ] ; 3 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.6438
  %i.pp = load double, ptr %i.po, align 8, !tbaa !152
  %i.pq = fdiv double %i.pp, %.sink.i
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.6438
  store double %i.pq, ptr %i.pr, align 8, !tbaa !152
  %i.ps = add nuw nsw i64 %.6438, 1               ; 2 uses
  %exitcond466.not = icmp eq i64 %i.ps, %4
  br i1 %exitcond466.not, label %.lr.ph441.preheader, label %.lr.ph439, !llvm.loop !1277

.lr.ph441.preheader:                              ; preds = %.lr.ph439, %middle.block652
  %brmerge = select i1 %min.iters.check625, i1 true, i1 %found.conflict623
  br i1 %brmerge, label %.lr.ph441.preheader737, label %vector.ph626

vector.ph626:                                     ; preds = %.lr.ph441.preheader
  %broadcast.splatinsert629 = insertelement <2 x double> poison, double %i.ph, i64 0
  %broadcast.splat630 = shufflevector <2 x double> %broadcast.splatinsert629, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph626
  %index632 = phi i64 [ 0, %vector.ph626 ], [ %index.next637, %vector.body631 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index632 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load633 = load <2 x double>, ptr %i.pt, align 8, !tbaa !152, !alias.scope !1278
  %wide.load634 = load <2 x double>, ptr %i.pu, align 8, !tbaa !152, !alias.scope !1278
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %index632 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %wide.load635 = load <2 x double>, ptr %i.pv, align 8, !tbaa !152, !alias.scope !1281, !noalias !1278
  %wide.load636 = load <2 x double>, ptr %i.pw, align 8, !tbaa !152, !alias.scope !1281, !noalias !1278
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat630, <2 x double> %wide.load633, <2 x double> %wide.load635)
  %i.py = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat630, <2 x double> %wide.load634, <2 x double> %wide.load636)
  store <2 x double> %i.px, ptr %i.pv, align 8, !tbaa !152, !alias.scope !1281, !noalias !1278
  store <2 x double> %i.py, ptr %i.pw, align 8, !tbaa !152, !alias.scope !1281, !noalias !1278
  %index.next637 = add nuw i64 %index632, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next637, %n.vec628
  br i1 %i.pz, label %middle.block638, label %vector.body631, !llvm.loop !1283

middle.block638:                                  ; preds = %vector.body631
  br i1 %cmp.n639, label %.lr.ph443.preheader, label %.lr.ph441.preheader737

.lr.ph441.preheader737:                           ; preds = %.lr.ph441.preheader, %middle.block638
  %.7440.ph = phi i64 [ %n.vec628, %middle.block638 ], [ 0, %.lr.ph441.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.7440.ph, 1
  br i1 %lcmp.mod834.not, label %.lr.ph441.prol.loopexit, label %.lr.ph441.prol

.lr.ph441.prol:                                   ; preds = %.lr.ph441.preheader737
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.7440.ph
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !152
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %.7440.ph ; 2 uses
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !152
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qb, double %i.qd)
  store double %i.qe, ptr %i.qc, align 8, !tbaa !152
  %i.qf = or disjoint i64 %.7440.ph, 1
  br label %.lr.ph441.prol.loopexit

.lr.ph441.prol.loopexit:                          ; preds = %.lr.ph441.prol, %.lr.ph441.preheader737
  %.7440.unr = phi i64 [ %.7440.ph, %.lr.ph441.preheader737 ], [ %i.qf, %.lr.ph441.prol ]
  %i.qg = icmp eq i64 %4, %.neg
  br i1 %i.qg, label %.lr.ph443.preheader, label %.lr.ph441

.lr.ph441:                                        ; preds = %.lr.ph441.prol.loopexit, %.lr.ph441
  %.7440 = phi i64 [ %i.qs, %.lr.ph441 ], [ %.7440.unr, %.lr.ph441.prol.loopexit ] ; 4 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.7440
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !152
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.7440 ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !152
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qi, double %i.qk)
  store double %i.ql, ptr %i.qj, align 8, !tbaa !152
  %i.qm = add nuw nsw i64 %.7440, 1               ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.qm
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !152
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.qm ; 2 uses
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !152
  %i.qr = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.qo, double %i.qq)
  store double %i.qr, ptr %i.qp, align 8, !tbaa !152
  %i.qs = add nuw nsw i64 %.7440, 2               ; 2 uses
  %exitcond467.not.1 = icmp eq i64 %i.qs, %4
  br i1 %exitcond467.not.1, label %.lr.ph443.preheader, label %.lr.ph441, !llvm.loop !1284

.lr.ph443.preheader:                              ; preds = %.lr.ph441.prol.loopexit, %.lr.ph441, %middle.block638
  %brmerge889 = or i1 %min.iters.check604, %found.conflict
  br i1 %brmerge889, label %.lr.ph443.preheader736, label %vector.ph605

vector.ph605:                                     ; preds = %.lr.ph443.preheader
  %broadcast.splatinsert608 = insertelement <2 x double> poison, double %i.pj, i64 0
  %broadcast.splat609 = shufflevector <2 x double> %broadcast.splatinsert608, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body610

vector.body610:                                   ; preds = %vector.body610, %vector.ph605
  %index611 = phi i64 [ 0, %vector.ph605 ], [ %index.next616, %vector.body610 ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index611 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load612 = load <2 x double>, ptr %i.qt, align 8, !tbaa !152, !alias.scope !1285
  %wide.load613 = load <2 x double>, ptr %i.qu, align 8, !tbaa !152, !alias.scope !1285
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index611 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %wide.load614 = load <2 x double>, ptr %i.qv, align 8, !tbaa !152, !alias.scope !1288, !noalias !1285
  %wide.load615 = load <2 x double>, ptr %i.qw, align 8, !tbaa !152, !alias.scope !1288, !noalias !1285
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat609, <2 x double> %wide.load614, <2 x double> %wide.load612)
  %i.qy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat609, <2 x double> %wide.load615, <2 x double> %wide.load613)
  store <2 x double> %i.qx, ptr %i.qv, align 8, !tbaa !152, !alias.scope !1288, !noalias !1285
  store <2 x double> %i.qy, ptr %i.qw, align 8, !tbaa !152, !alias.scope !1288, !noalias !1285
  %index.next616 = add nuw i64 %index611, 4       ; 2 uses
  %i.qz = icmp eq i64 %index.next616, %n.vec607
  br i1 %i.qz, label %middle.block617, label %vector.body610, !llvm.loop !1290

middle.block617:                                  ; preds = %vector.body610
  br i1 %cmp.n618, label %.lr.ph.i.i365.preheader, label %.lr.ph443.preheader736

.lr.ph443.preheader736:                           ; preds = %.lr.ph443.preheader, %middle.block617
  %.8442.ph = phi i64 [ %n.vec607, %middle.block617 ], [ 0, %.lr.ph443.preheader ] ; 5 uses
  %.neg849 = or disjoint i64 %.8442.ph, 1
  br i1 %lcmp.mod837.not, label %.lr.ph443.prol.loopexit, label %.lr.ph443.prol

.lr.ph443.prol:                                   ; preds = %.lr.ph443.preheader736
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8442.ph
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !152
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8442.ph ; 2 uses
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !152
  %i.re = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rd, double %i.rb)
  store double %i.re, ptr %i.rc, align 8, !tbaa !152
  %i.rf = or disjoint i64 %.8442.ph, 1
  br label %.lr.ph443.prol.loopexit

.lr.ph443.prol.loopexit:                          ; preds = %.lr.ph443.prol, %.lr.ph443.preheader736
  %.8442.unr = phi i64 [ %.8442.ph, %.lr.ph443.preheader736 ], [ %i.rf, %.lr.ph443.prol ]
  %i.rg = icmp eq i64 %4, %.neg849
  br i1 %i.rg, label %.lr.ph.i.i365.preheader, label %.lr.ph443

.lr.ph443:                                        ; preds = %.lr.ph443.prol.loopexit, %.lr.ph443
  %.8442 = phi i64 [ %i.rs, %.lr.ph443 ], [ %.8442.unr, %.lr.ph443.prol.loopexit ] ; 4 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.8442
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !152
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8442 ; 2 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !152
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rk, double %i.ri)
  store double %i.rl, ptr %i.rj, align 8, !tbaa !152
  %i.rm = add nuw nsw i64 %.8442, 1               ; 2 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.rm
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !152
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.rm ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !152
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.rq, double %i.ro)
  store double %i.rr, ptr %i.rp, align 8, !tbaa !152
  %i.rs = add nuw nsw i64 %.8442, 2               ; 2 uses
  %exitcond468.not.1 = icmp eq i64 %i.rs, %4
  br i1 %exitcond468.not.1, label %.lr.ph.i.i365.preheader, label %.lr.ph443, !llvm.loop !1291

.lr.ph.i.i365.preheader:                          ; preds = %.lr.ph443.prol.loopexit, %.lr.ph443, %middle.block617
  br i1 %i.hm, label %.lr.ph.i.i365.epil.preheader, label %.lr.ph.i.i365

.lr.ph.i.i365:                                    ; preds = %.lr.ph.i.i365.preheader, %.lr.ph.i.i365
  %.012.i.i366 = phi double [ %i.se, %.lr.ph.i.i365 ], [ 0.000000e+00, %.lr.ph.i.i365.preheader ]
  %.0710.i.i368 = phi ptr [ %i.sc, %.lr.ph.i.i365 ], [ %i.bf, %.lr.ph.i.i365.preheader ] ; 5 uses
  %niter845 = phi i64 [ %niter845.next.3, %.lr.ph.i.i365 ], [ 0, %.lr.ph.i.i365.preheader ]
  %i.rt = getelementptr i8, ptr %.0710.i.i368, i64 8
  %i.ru = load double, ptr %.0710.i.i368, align 8, !tbaa !152 ; 2 uses
  %i.rv = tail call double @llvm.fmuladd.f64(double %i.ru, double %i.ru, double %.012.i.i366)
  %i.rw = getelementptr i8, ptr %.0710.i.i368, i64 16
  %i.rx = load double, ptr %i.rt, align 8, !tbaa !152 ; 2 uses
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.rx, double %i.rx, double %i.rv)
  %i.rz = getelementptr i8, ptr %.0710.i.i368, i64 24
  %i.sa = load double, ptr %i.rw, align 8, !tbaa !152 ; 2 uses
  %i.sb = tail call double @llvm.fmuladd.f64(double %i.sa, double %i.sa, double %i.ry)
  %i.sc = getelementptr i8, ptr %.0710.i.i368, i64 32 ; 2 uses
  %i.sd = load double, ptr %i.rz, align 8, !tbaa !152 ; 2 uses
  %i.se = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.sd, double %i.sb) ; 3 uses
  %niter845.next.3 = add i64 %niter845, 4         ; 2 uses
  %niter845.ncmp.3 = icmp eq i64 %niter845.next.3, %unroll_iter844
  br i1 %niter845.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, label %.lr.ph.i.i365, !llvm.loop !331

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i365
  br i1 %lcmp.mod841.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil.preheader

.lr.ph.i.i365.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.preheader
  %.012.i.i366.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i365.preheader ], [ %i.se, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  %.0710.i.i368.epil.init = phi ptr [ %i.bf, %.lr.ph.i.i365.preheader ], [ %i.sc, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod843)
  br label %.lr.ph.i.i365.epil

.lr.ph.i.i365.epil:                               ; preds = %.lr.ph.i.i365.epil, %.lr.ph.i.i365.epil.preheader
  %.012.i.i366.epil = phi double [ %i.sh, %.lr.ph.i.i365.epil ], [ %.012.i.i366.epil.init, %.lr.ph.i.i365.epil.preheader ]
  %.0710.i.i368.epil = phi ptr [ %i.sf, %.lr.ph.i.i365.epil ], [ %.0710.i.i368.epil.init, %.lr.ph.i.i365.epil.preheader ] ; 2 uses
  %epil.iter840 = phi i64 [ %epil.iter840.next, %.lr.ph.i.i365.epil ], [ 0, %.lr.ph.i.i365.epil.preheader ]
  %i.sf = getelementptr i8, ptr %.0710.i.i368.epil, i64 8
  %i.sg = load double, ptr %.0710.i.i368.epil, align 8, !tbaa !152 ; 2 uses
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.sg, double %.012.i.i366.epil) ; 2 uses
  %epil.iter840.next = add i64 %epil.iter840, 1   ; 2 uses
  %epil.iter840.cmp.not = icmp eq i64 %epil.iter840.next, %xtraiter839
  br i1 %epil.iter840.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370, label %.lr.ph.i.i365.epil, !llvm.loop !1292

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa, %.lr.ph.i.i365.epil, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i364 = phi double [ 0.000000e+00, %_ZN6casadi27casadi_dense_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.se, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370.loopexit.unr-lcssa ], [ %i.sh, %.lr.ph.i.i365.epil ]
  %i.si = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i364) #29 ; 2 uses
  %i.sj = fneg double %.0253
  %6 = fmul double %.sink.i, %i.sj                ; 3 uses
  %i.sk = fneg double %.sink.i
  %i.sl = fmul double %.0254, %i.sk
  %i.sm = fmul double %i.pb, %i.pb
  %i.sn = tail call double @llvm.fmuladd.f64(double %i.sl, double %.0252, double %i.pe) ; 2 uses
  %i.so = fdiv double %i.sn, %6
  %i.sp = insertelement <2 x double> poison, double %i.so, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %6, i64 1 ; 2 uses
  %i.sr = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ss = insertelement <2 x double> %i.sr, double %i.sm, i64 1
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sq, <2 x double> %i.sq, <2 x double> %i.ss) ; 2 uses
  %i.su = extractelement <2 x double> %i.st, i64 0
  %i.sv = tail call double @sqrt(double noundef %i.su) #29 ; 2 uses
  %i.sw = insertelement <2 x double> poison, double %i.sn, i64 0
  %i.sx = insertelement <2 x double> %i.sw, double %i.pb, i64 1
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.si, double %i.si, double %.0249) ; 2 uses
  %i.sz = shufflevector <2 x double> %i.st, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ta = insertelement <2 x double> %i.sz, double %i.sy, i64 1
  %i.tb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ta) ; 3 uses
  %i.tc = extractelement <2 x double> %i.tb, i64 0
  %i.td = fdiv double %6, %i.tc
  %i.te = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tf = fdiv <2 x double> %i.sx, %i.te          ; 3 uses
  %i.tg = extractelement <2 x double> %i.tf, i64 0
  %i.th = fmul double %i.pf, %i.pf
  %i.ti = shufflevector <2 x double> %i.tf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.tj = insertelement <2 x double> %i.ti, double %i.oa, i64 0 ; 2 uses
  %i.tk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.tj, <2 x double> %i.hn) ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 0
  %i.tm = fadd double %i.tl, %i.th
  %i.tn = tail call double @sqrt(double noundef %i.tm) #29 ; 2 uses
  %i.to = tail call double @llvm.fabs.f64(double %i.pg)
  %i.tp = extractelement <2 x double> %i.tb, i64 1
  %i.tq = fmul double %.1239, %i.tp
  %i.tr = fdiv double 1.000000e+00, %i.tq         ; 2 uses
  %7 = fmul double %.1239, %i.sv
  %8 = fdiv double %7, %i.gv
  %9 = fmul double %.1239, 1.000000e-15
  %10 = fmul double %9, %i.sv
  %11 = fdiv double %10, %i.gv
  %i.ts = fadd double %11, 1.000000e-15
  %i.tt = icmp ne i64 %.0248, 9999
  %i.tu = fadd double %i.tr, 1.000000e+00
  %i.tv = fcmp ugt double %i.tu, 1.000000e+00
  %i.tw = fmul double %.2257, %i.to
  %i.tx = fdiv double %i.tn, %i.gv                ; 2 uses
  %i.ty = fmul double %.1239, %i.tn
  %i.tz = fadd double %8, 1.000000e+00
  %i.ua = insertelement <2 x double> poison, double %i.tx, i64 0
  %i.ub = insertelement <2 x double> %i.ua, double %i.tw, i64 1
  %i.uc = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.ud = insertelement <2 x double> %i.uc, double %i.ty, i64 1
  %i.ue = fdiv <2 x double> %i.ub, %i.ud          ; 2 uses
  %i.uf = fadd <2 x double> %i.ue, splat (double 1.000000e+00)
  %i.ug = fcmp ugt <2 x double> %i.uf, splat (double 1.000000e+00) ; 2 uses
  %i.uh = fcmp ugt double %i.tr, 1.000000e-08
  %i.ui = extractelement <2 x double> %i.ue, i64 1
  %i.uj = fcmp ugt double %i.ui, 1.000000e-15
  %i.uk = fcmp ugt double %i.tx, %i.ts
  %.not270392393394395396 = and i1 %i.tt, %i.tv
  %i.ul = select i1 %i.uk, i1 %i.uj, i1 false
  %i.um = select i1 %i.ul, i1 %i.uh, i1 false
  %i.un = extractelement <2 x i1> %i.ug, i64 0
  %i.uo = select i1 %i.um, i1 %i.un, i1 false
  %i.up = extractelement <2 x i1> %i.ug, i64 1
  %i.uq = select i1 %i.uo, i1 %i.up, i1 false
  %.not270 = select i1 %i.uq, i1 %.not270392393394395396, i1 false
  %i.ur = extractelement <2 x double> %i.tf, i64 1
  br i1 %.not270, label %bb.d, label %split, !llvm.loop !1293

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit370
  %.not.i371 = icmp eq ptr %1, null
  br i1 %.not.i371, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %bb.m

bb.m:                                             ; preds = %split
  br i1 %.not.i.not, label %.preheader16.i373, label %.preheader.i379

.preheader16.i373:                                ; preds = %bb.m
  br i1 %i.bg, label %.lr.ph.i374.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374.preheader:                            ; preds = %.preheader16.i373
  %min.iters.check718 = icmp ult i64 %3, 8
  %i.us = sub i64 %i.bc, %i.a
  %diff.check716 = icmp ugt i64 %i.us, -32
  %or.cond734 = select i1 %min.iters.check718, i1 true, i1 %diff.check716
  br i1 %or.cond734, label %.lr.ph.i374.preheader735, label %vector.ph719

vector.ph719:                                     ; preds = %.lr.ph.i374.preheader
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %n.vec721 = and i64 %3, 9223372036854775804     ; 4 uses
  %i.uu = shl i64 %n.vec721, 3                    ; 2 uses
  %i.uv = getelementptr i8, ptr %1, i64 %i.uu
  %i.uw = getelementptr i8, ptr %i.ut, i64 %i.uu
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  br label %vector.body722

vector.body722:                                   ; preds = %vector.body722, %vector.ph719
  %index723 = phi i64 [ 0, %vector.ph719 ], [ %index.next728, %vector.body722 ] ; 2 uses
  %i.uy = shl i64 %index723, 3                    ; 2 uses
  %next.gep724 = getelementptr i8, ptr %1, i64 %i.uy ; 2 uses
  %next.gep725 = getelementptr i8, ptr %i.ux, i64 %i.uy ; 2 uses
  %i.uz = getelementptr i8, ptr %next.gep725, i64 16
  %wide.load726 = load <2 x double>, ptr %next.gep725, align 8, !tbaa !152
  %wide.load727 = load <2 x double>, ptr %i.uz, align 8, !tbaa !152
  %i.va = getelementptr i8, ptr %next.gep724, i64 16
  store <2 x double> %wide.load726, ptr %next.gep724, align 8, !tbaa !152
  store <2 x double> %wide.load727, ptr %i.va, align 8, !tbaa !152
  %index.next728 = add nuw i64 %index723, 4       ; 2 uses
  %i.vb = icmp eq i64 %index.next728, %n.vec721
  br i1 %i.vb, label %middle.block729, label %vector.body722, !llvm.loop !1294

middle.block729:                                  ; preds = %vector.body722
  %cmp.n730 = icmp eq i64 %3, %n.vec721
  br i1 %cmp.n730, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374.preheader735

.lr.ph.i374.preheader735:                         ; preds = %.lr.ph.i374.preheader, %middle.block729
  %.020.i375.ph = phi i64 [ 0, %.lr.ph.i374.preheader ], [ %n.vec721, %middle.block729 ] ; 4 uses
  %.01019.i376.ph = phi ptr [ %1, %.lr.ph.i374.preheader ], [ %i.uv, %middle.block729 ] ; 2 uses
  %.01218.i377.ph = phi ptr [ %i.bb, %.lr.ph.i374.preheader ], [ %i.uw, %middle.block729 ] ; 2 uses
  %i.vc = sub nsw i64 %3, %.020.i375.ph
  %xtraiter846 = and i64 %i.vc, 7                 ; 2 uses
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  br i1 %lcmp.mod847.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol

.lr.ph.i374.prol:                                 ; preds = %.lr.ph.i374.preheader735, %.lr.ph.i374.prol
  %.020.i375.prol = phi i64 [ %i.vg, %.lr.ph.i374.prol ], [ %.020.i375.ph, %.lr.ph.i374.preheader735 ]
  %.01019.i376.prol = phi ptr [ %i.vf, %.lr.ph.i374.prol ], [ %.01019.i376.ph, %.lr.ph.i374.preheader735 ] ; 2 uses
  %.01218.i377.prol = phi ptr [ %i.vd, %.lr.ph.i374.prol ], [ %.01218.i377.ph, %.lr.ph.i374.preheader735 ] ; 2 uses
  %prol.iter848 = phi i64 [ %prol.iter848.next, %.lr.ph.i374.prol ], [ 0, %.lr.ph.i374.preheader735 ]
  %i.vd = getelementptr inbounds nuw i8, ptr %.01218.i377.prol, i64 8 ; 2 uses
  %i.ve = load double, ptr %.01218.i377.prol, align 8, !tbaa !152
  %i.vf = getelementptr inbounds nuw i8, ptr %.01019.i376.prol, i64 8 ; 2 uses
  store double %i.ve, ptr %.01019.i376.prol, align 8, !tbaa !152
  %i.vg = add nuw nsw i64 %.020.i375.prol, 1      ; 2 uses
  %prol.iter848.next = add i64 %prol.iter848, 1   ; 2 uses
  %prol.iter848.cmp.not = icmp eq i64 %prol.iter848.next, %xtraiter846
  br i1 %prol.iter848.cmp.not, label %.lr.ph.i374.prol.loopexit, label %.lr.ph.i374.prol, !llvm.loop !1295

.lr.ph.i374.prol.loopexit:                        ; preds = %.lr.ph.i374.prol, %.lr.ph.i374.preheader735
  %.020.i375.unr = phi i64 [ %.020.i375.ph, %.lr.ph.i374.preheader735 ], [ %i.vg, %.lr.ph.i374.prol ]
  %.01019.i376.unr = phi ptr [ %.01019.i376.ph, %.lr.ph.i374.preheader735 ], [ %i.vf, %.lr.ph.i374.prol ]
  %.01218.i377.unr = phi ptr [ %.01218.i377.ph, %.lr.ph.i374.preheader735 ], [ %i.vd, %.lr.ph.i374.prol ]
  %i.vh = sub nsw i64 %.020.i375.ph, %3
  %i.vi = icmp ugt i64 %i.vh, -8
  br i1 %i.vi, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374

.preheader.i379:                                  ; preds = %bb.m
  br i1 %i.bg, label %.lr.ph23.preheader.i380, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph23.preheader.i380:                          ; preds = %.preheader.i379
  %i.vj = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.vj, i1 false), !tbaa !152
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381

.lr.ph.i374:                                      ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374
  %.020.i375 = phi i64 [ %i.wi, %.lr.ph.i374 ], [ %.020.i375.unr, %.lr.ph.i374.prol.loopexit ]
  %.01019.i376 = phi ptr [ %i.wh, %.lr.ph.i374 ], [ %.01019.i376.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %.01218.i377 = phi ptr [ %i.wf, %.lr.ph.i374 ], [ %.01218.i377.unr, %.lr.ph.i374.prol.loopexit ] ; 9 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 8
  %i.vl = load double, ptr %.01218.i377, align 8, !tbaa !152
  %i.vm = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 8
  store double %i.vl, ptr %.01019.i376, align 8, !tbaa !152
  %i.vn = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 16
  %i.vo = load double, ptr %i.vk, align 8, !tbaa !152
  %i.vp = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 16
  store double %i.vo, ptr %i.vm, align 8, !tbaa !152
  %i.vq = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 24
  %i.vr = load double, ptr %i.vn, align 8, !tbaa !152
  %i.vs = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 24
  store double %i.vr, ptr %i.vp, align 8, !tbaa !152
  %i.vt = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 32
  %i.vu = load double, ptr %i.vq, align 8, !tbaa !152
  %i.vv = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 32
  store double %i.vu, ptr %i.vs, align 8, !tbaa !152
  %i.vw = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 40
  %i.vx = load double, ptr %i.vt, align 8, !tbaa !152
  %i.vy = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 40
  store double %i.vx, ptr %i.vv, align 8, !tbaa !152
  %i.vz = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 48
  %i.wa = load double, ptr %i.vw, align 8, !tbaa !152
  %i.wb = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 48
  store double %i.wa, ptr %i.vy, align 8, !tbaa !152
  %i.wc = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 56
  %i.wd = load double, ptr %i.vz, align 8, !tbaa !152
  %i.we = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 56
  store double %i.wd, ptr %i.wb, align 8, !tbaa !152
  %i.wf = getelementptr inbounds nuw i8, ptr %.01218.i377, i64 64
  %i.wg = load double, ptr %i.wc, align 8, !tbaa !152
  %i.wh = getelementptr inbounds nuw i8, ptr %.01019.i376, i64 64
  store double %i.wg, ptr %i.we, align 8, !tbaa !152
  %i.wi = add nuw nsw i64 %.020.i375, 8           ; 2 uses
  %exitcond.not.i378.7 = icmp eq i64 %i.wi, %3
  br i1 %exitcond.not.i378.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381, label %.lr.ph.i374, !llvm.loop !1296

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit381:    ; preds = %.lr.ph.i374.prol.loopexit, %.lr.ph.i374, %middle.block729, %split, %.preheader16.i373, %.preheader.i379, %.lr.ph23.preheader.i380
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi10casadi_cvxIdEEixPT_S1_S1_xxS2_Px(i64 noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [100 x double], align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  switch i64 %0, label %bb.c [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %1, align 8, !tbaa !152 ; 2 uses
  %.not.i = icmp eq i64 %4, 0
  %i.c = tail call nsz double @llvm.fabs.f64(double %i.b)
  %i.d = select nsz i1 %.not.i, double %i.b, double %i.c
  %i.e = tail call nsz noundef double @llvm.maxnum.f64(double %2, double %i.d)
  store double %i.e, ptr %1, align 8, !tbaa !152
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call void @_ZN6casadi14casadi_cvx_triIdEEvPT_xS2_S2_(ptr noundef %1, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef %6)
  %i.f = icmp sgt i64 %0, 0                       ; 2 uses
  br i1 %i.f, label %.preheader133.preheader, label %._crit_edge136.split.thread

.preheader133.preheader:                          ; preds = %bb.c
  %i.g = add nsw i64 %0, -1                       ; 3 uses
  %xtraiter = and i64 %0, 1
  %i.h = icmp eq i64 %i.g, 0
  %unroll_iter = and i64 %0, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod227 = trunc i64 %0 to i1
  br label %.preheader133

._crit_edge136.split.thread:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !152
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %0
  br label %._crit_edge139.thread

.preheader133:                                    ; preds = %.preheader133.preheader, %._crit_edge
  %.0120135 = phi i64 [ %i.x, %._crit_edge ], [ 0, %.preheader133.preheader ] ; 3 uses
  %invariant.op = add nsw i64 %.0120135, -1       ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %1, i64 %.0120135 ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader133.new
end_hunk_5
