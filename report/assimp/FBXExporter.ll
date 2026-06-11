inline.NumInlined: 9031
inline.NumDeleted: 2243
begin_hunk_0_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
  store ptr %i.py, ptr %i.el, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449

bb.by:                                            ; preds = %bb.bw
  %i.pz = load ptr, ptr %9, align 8               ; 4 uses
  %i.qa = ptrtoint ptr %i.po to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb                    ; 6 uses
  %i.qd = icmp eq i64 %i.qc, 9223372036854775804
  br i1 %i.qd, label %bb.bz, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc447 unwind label %.loopexit.split-lp1452

.noexc447:                                        ; preds = %bb.bz
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441: ; preds = %bb.by
  %i.qe = ashr exact i64 %i.qc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i442 = call i64 @llvm.umax.i64(i64 %i.qe, i64 1)
  %i.qf = add nsw i64 %.sroa.speculated.i.i.i.i442, %i.qe ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %i.qe
  %i.qh = call i64 @llvm.umin.i64(i64 %i.qf, i64 2305843009213693951)
  %i.qi = select i1 %i.qg, i64 2305843009213693951, i64 %i.qh ; 3 uses
  %.not.i.i.i.i443 = icmp ne i64 %i.qi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i443)
  %i.qj = shl nuw nsw i64 %i.qi, 2
  %i.qk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qj) #34
          to label %.noexc448 unwind label %.loopexit1451 ; 4 uses

.noexc448:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441
  %i.ql = getelementptr inbounds i8, ptr %i.qk, i64 %i.qc ; 2 uses
  store i32 %i.pv, ptr %i.ql, align 4
  %i.qm = icmp sgt i64 %i.qc, 0
  br i1 %i.qm, label %bb.ca, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444

bb.ca:                                            ; preds = %.noexc448
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qk, ptr align 4 %i.pz, i64 %i.qc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444: ; preds = %bb.ca, %.noexc448
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 2 uses
  %.not.i17.i.i.i445 = icmp eq ptr %i.pz, null
  br i1 %.not.i17.i.i.i445, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qc) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446: ; preds = %bb.cb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444
  store ptr %i.qk, ptr %9, align 8
  store ptr %i.qn, ptr %i.el, align 8
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.qi
  store ptr %i.qo, ptr %i.em, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449

_ZNSt6vectorIiSaIiEE9push_backEOi.exit449:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446, %bb.bx
  %i.qp = phi ptr [ %i.qn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446 ], [ %i.py, %bb.bx ] ; 2 uses
  %i.qq = add nuw nsw i64 %.02462372, 1           ; 3 uses
  %i.qr = load i32, ptr %i.pk, align 8
  %i.qs = add i32 %i.qr, -1
  %i.qt = zext i32 %i.qs to i64
  %i.qu = icmp samesign ult i64 %i.qq, %i.qt
  br i1 %i.qu, label %bb.bw, label %._crit_edge, !llvm.loop !713

.loopexit1451:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441
  %lpad.loopexit1453 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1452:                           ; preds = %bb.bz
  %lpad.loopexit.split-lp1454 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449, %.preheader1450
  %i.qv = phi ptr [ %.pre3022, %.preheader1450 ], [ %i.qp, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449 ] ; 3 uses
  %.0246.lcssa = phi i64 [ 0, %.preheader1450 ], [ %i.qq, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449 ]
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %.0246.lcssa
  %i.qz = load i32, ptr %i.qy, align 4
  %i.ra = zext i32 %i.qz to i64
  %i.rb = getelementptr [4 x i8], ptr %i.ob, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4
  %i.rd = add i32 %i.rc, %i.ok
  %i.re = xor i32 %i.rd, -1                       ; 2 uses
  %i.rf = load ptr, ptr %i.em, align 8
  %.not.i.i450 = icmp eq ptr %i.qv, %i.rf
  br i1 %.not.i.i450, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge
  store i32 %i.re, ptr %i.qv, align 4
  %i.rg = load ptr, ptr %i.el, align 8
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  store ptr %i.rh, ptr %i.el, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459

bb.cd:                                            ; preds = %._crit_edge
  %i.ri = load ptr, ptr %9, align 8               ; 4 uses
  %i.rj = ptrtoint ptr %i.qv to i64
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = sub i64 %i.rj, %i.rk                    ; 6 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775804
  br i1 %i.rm, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc457 unwind label %.loopexit.split-lp1460

.noexc457:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451: ; preds = %bb.cd
  %i.rn = ashr exact i64 %i.rl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i452 = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i.i452, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 2305843009213693951)
  %i.rr = select i1 %i.rp, i64 2305843009213693951, i64 %i.rq ; 3 uses
  %.not.i.i.i.i453 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i453)
  %i.rs = shl nuw nsw i64 %i.rr, 2
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #34
          to label %.noexc458 unwind label %.loopexit1459 ; 4 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  store i32 %i.re, ptr %i.ru, align 4
  %i.rv = icmp sgt i64 %i.rl, 0
  br i1 %i.rv, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454

bb.cf:                                            ; preds = %.noexc458
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rt, ptr align 4 %i.ri, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454: ; preds = %bb.cf, %.noexc458
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  %.not.i17.i.i.i455 = icmp eq ptr %i.ri, null
  br i1 %.not.i17.i.i.i455, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rl) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454
  store ptr %i.rt, ptr %9, align 8
  store ptr %i.rw, ptr %i.el, align 8
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.rx, ptr %i.em, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459

_ZNSt6vectorIiSaIiEE9push_backEOi.exit459:        ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456, %bb.bv
  %i.ry = add nuw nsw i64 %.02442375, 1           ; 2 uses
  %i.rz = load i32, ptr %i.oh, align 8
  %i.sa = zext i32 %i.rz to i64
  %i.sb = icmp samesign ult i64 %i.ry, %i.sa
  br i1 %i.sb, label %bb.bv, label %._crit_edge2377, !llvm.loop !714

.loopexit1459:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451
  %lpad.loopexit1461 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1460:                           ; preds = %bb.ce
  %lpad.loopexit.split-lp1462 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.bp
  %i.sc = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 2 uses
  %i.sd = load ptr, ptr %i.sc, align 8
  %.not.i460 = icmp ne ptr %i.sd, null
  %i.se = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4
  %i.sg = icmp ne i32 %i.sf, 0
  %i.sh = select i1 %.not.i460, i1 %i.sg, i1 false
  br i1 %i.sh, label %bb.ch, label %.loopexit1457

bb.ch:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.si = load ptr, ptr %i.el, align 8
  %i.sj = load ptr, ptr %9, align 8
  %i.sk = ptrtoint ptr %i.si to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = ashr exact i64 %i.sm, 2                 ; 2 uses
  %i.so = mul nsw i64 %i.sn, 3                    ; 3 uses
  %i.sp = icmp ugt i64 %i.so, 1152921504606846975
  br i1 %i.sp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #30
          to label %.noexc461 unwind label %.loopexit.split-lp1478

.noexc461:                                        ; preds = %bb.ci
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.sq = load ptr, ptr %i.eo, align 8
  %i.sr = load ptr, ptr %7, align 8               ; 4 uses
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = ptrtoint ptr %i.sr to i64               ; 2 uses
  %i.su = sub i64 %i.ss, %i.st                    ; 2 uses
  %i.sv = ashr exact i64 %i.su, 3
  %i.sw = icmp ult i64 %i.sv, %i.so
  br i1 %i.sw, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.cj
  %i.sx = load ptr, ptr %i.ep, align 8
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = sub i64 %i.sy, %i.st                    ; 3 uses
  %i.ta = mul i64 %i.sn, 24
  %i.tb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ta) #34
          to label %.noexc462 unwind label %.loopexit1477 ; 4 uses

.noexc462:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.tc = icmp sgt i64 %i.sz, 0
  br i1 %i.tc, label %bb.ck, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.ck:                                            ; preds = %.noexc462
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tb, ptr align 8 %i.sr, i64 %i.sz, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.ck, %.noexc462
  %.not.i8.i = icmp eq ptr %i.sr, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.su) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.cl, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  store ptr %i.tb, ptr %7, align 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.sz
  store ptr %i.td, ptr %i.ep, align 8
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.so
  store ptr %i.te, ptr %i.eo, align 8
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.cj, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.tf = load i32, ptr %i.oh, align 8            ; 2 uses
  %.not2463 = icmp eq i32 %i.tf, 0
  br i1 %.not2463, label %.loopexit1457, label %.lr.ph2383

.lr.ph2383:                                       ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.tg = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  br label %bb.cm

.loopexit1484:                                    ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1486 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1485:                           ; preds = %bb.br
  %lpad.loopexit.split-lp1487 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.cm:                                            ; preds = %.lr.ph2383, %._crit_edge2381
  %i.th = phi i32 [ %i.tf, %.lr.ph2383 ], [ %i.tm, %._crit_edge2381 ]
  %.02472382 = phi i64 [ 0, %.lr.ph2383 ], [ %i.tn, %._crit_edge2381 ] ; 2 uses
  %i.ti = load ptr, ptr %i.tg, align 8
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.ti, i64 %.02472382 ; 3 uses
  %i.tk = load i32, ptr %i.tj, align 8
  %.not2464 = icmp eq i32 %i.tk, 0
  br i1 %.not2464, label %._crit_edge2381, label %.lr.ph2380

.lr.ph2380:                                       ; preds = %bb.cm
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %.pre3023 = load ptr, ptr %i.ep, align 8
  br label %bb.cn

._crit_edge2381.loopexit:                         ; preds = %bb.cv
  %.pre3024.a = load i32, ptr %i.oh, align 8
  br label %._crit_edge2381

._crit_edge2381:                                  ; preds = %._crit_edge2381.loopexit, %bb.cm
  %i.tm = phi i32 [ %.pre3024.a, %._crit_edge2381.loopexit ], [ %i.th, %bb.cm ] ; 2 uses
  %i.tn = add nuw nsw i64 %.02472382, 1           ; 2 uses
  %i.to = zext i32 %i.tm to i64
  %i.tp = icmp samesign ult i64 %i.tn, %i.to
  br i1 %i.tp, label %bb.cm, label %.loopexit1457, !llvm.loop !715

bb.cn:                                            ; preds = %.lr.ph2380, %bb.cv
  %i.tq = phi ptr [ %.pre3023, %.lr.ph2380 ], [ %i.vf, %bb.cv ] ; 3 uses
  %.02482378 = phi i64 [ 0, %.lr.ph2380 ], [ %i.vg, %bb.cv ] ; 2 uses
  %i.tr = load ptr, ptr %i.sc, align 8
  %i.ts = load ptr, ptr %i.tl, align 8
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %.02482378
  %i.tu = load i32, ptr %i.tt, align 4
  %i.tv = zext i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [12 x i8], ptr %i.tr, i64 %i.tv ; 2 uses
  %i.tx = load <2 x float>, ptr %i.tw, align 4
  %i.ty = fpext <2 x float> %i.tx to <2 x double> ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ua = load float, ptr %i.tz, align 4
  %i.ub = fpext float %i.ua to double             ; 3 uses
  %78 = load ptr, ptr %7, align 8                 ; 5 uses
  %i.uc = ptrtoint ptr %i.tq to i64               ; 2 uses
  %i.ud = ptrtoint ptr %78 to i64                 ; 2 uses
  %i.ue = sub i64 %i.uc, %i.ud                    ; 5 uses
  %i.uf = load ptr, ptr %i.eo, align 8
  %i.ug = ptrtoint ptr %i.uf to i64               ; 2 uses
  %i.uh = sub i64 %i.ug, %i.uc
  %.not54.i = icmp ult i64 %i.uh, 24
  br i1 %.not54.i, label %bb.co, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.cn
  store <2 x double> %i.ty, ptr %i.tq, align 8
  %.sroa.83008.0..sroa_idx3011 = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store double %i.ub, ptr %.sroa.83008.0..sroa_idx3011, align 8
  %i.ui = load ptr, ptr %i.ep, align 8
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24 ; 2 uses
  store ptr %i.uj, ptr %i.ep, align 8
  br label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.uk = ashr exact i64 %i.ue, 3                 ; 4 uses
  %i.ul = add nsw i64 %i.uk, -1152921504606846973
  %i.um = icmp ult i64 %i.ul, 3
  br i1 %i.um, label %bb.cp, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
          to label %.noexc1203 unwind label %.loopexit.split-lp1446

.noexc1203:                                       ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.co
  %.sroa.speculated.i.i1199 = call i64 @llvm.umax.i64(i64 %i.uk, i64 3)
  %i.un = add nsw i64 %.sroa.speculated.i.i1199, %i.uk ; 2 uses
  %i.uo = icmp ult i64 %i.un, %i.uk
  %i.up = call i64 @llvm.umin.i64(i64 %i.un, i64 1152921504606846975)
  %i.uq = select i1 %i.uo, i64 1152921504606846975, i64 %i.up ; 3 uses
  %.not.i.i1200 = icmp eq i64 %i.uq, 0
  br i1 %.not.i.i1200, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1201, label %bb.cq

bb.cq:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.ur = shl nuw nsw i64 %i.uq, 3
  %i.us = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ur) #34
          to label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1201 unwind label %.loopexit1445

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1201: ; preds = %bb.cq, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.ut = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %i.us, %bb.cq ] ; 8 uses
  %i.uu = icmp sgt i64 %i.ue, 8
  br i1 %i.uu, label %bb.cr, label %bb.cs, !prof !181

bb.cr:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1201
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ut, ptr align 8 %78, i64 %i.ue, i1 false)
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1201
  %i.uv = icmp eq i64 %i.ue, 8
  br i1 %i.uv, label %.thread, label %bb.ct

.thread:                                          ; preds = %bb.cs
  %i.uw = load double, ptr %78, align 8
  store double %i.uw, ptr %i.ut, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store <2 x double> %i.ty, ptr %i.ux, align 8
  %.sroa.83008.0..sroa_idx3009 = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  store double %i.ub, ptr %.sroa.83008.0..sroa_idx3009, align 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.uz = getelementptr inbounds i8, ptr %i.ut, i64 %i.ue ; 3 uses
  store <2 x double> %i.ty, ptr %i.uz, align 8
  %.sroa.83008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  store double %i.ub, ptr %.sroa.83008.0..sroa_idx, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 24 ; 2 uses
  %.not.i59.i = icmp eq ptr %78, null
  br i1 %.not.i59.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1202, label %bb.cu

bb.cu:                                            ; preds = %.thread, %bb.ct
  %i.vb = phi ptr [ %i.uy, %.thread ], [ %i.va, %bb.ct ]
  %i.vc = sub i64 %i.ug, %i.ud
  call void @_ZdlPvm(ptr noundef nonnull %78, i64 noundef %i.vc) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1202

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1202: ; preds = %bb.cu, %bb.ct
  %i.vd = phi ptr [ %i.vb, %bb.cu ], [ %i.va, %bb.ct ] ; 2 uses
  store ptr %i.ut, ptr %7, align 8
  store ptr %i.vd, ptr %i.ep, align 8
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.ut, i64 %i.uq
  store ptr %i.ve, ptr %i.eo, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1202
  %i.vf = phi ptr [ %i.uj, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.vd, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1202 ]
  %i.vg = add nuw nsw i64 %.02482378, 1           ; 2 uses
  %i.vh = load i32, ptr %i.tj, align 8
  %i.vi = zext i32 %i.vh to i64
  %i.vj = icmp samesign ult i64 %i.vg, %i.vi
  br i1 %i.vj, label %bb.cn, label %._crit_edge2381.loopexit, !llvm.loop !716

.loopexit1445:                                    ; preds = %bb.cq
  %lpad.loopexit1447 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1446:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1448 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit1457:                                    ; preds = %._crit_edge2381, %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.vk = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8
  %.not.i465 = icmp ne ptr %i.vl, null
  %i.vm = load i32, ptr %i.se, align 4
  %i.vn = icmp ne i32 %i.vm, 0
  %i.vo = select i1 %.not.i465, i1 %i.vn, i1 false
  br i1 %i.vo, label %bb.cw, label %.loopexit1456

bb.cw:                                            ; preds = %.loopexit1457
  %i.vp = load ptr, ptr %i.el, align 8
  %i.vq = load ptr, ptr %9, align 8
  %i.vr = ptrtoint ptr %i.vp to i64
  %i.vs = ptrtoint ptr %i.vq to i64
  %i.vt = sub i64 %i.vr, %i.vs                    ; 4 uses
  %i.vu = icmp ugt i64 %i.vt, 1152921504606846975
  br i1 %i.vu, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #30
          to label %.noexc470 unwind label %.loopexit.split-lp1490

.noexc470:                                        ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.vv = load ptr, ptr %i.eq, align 8
  %i.vw = load ptr, ptr %8, align 8               ; 4 uses
  %i.vx = ptrtoint ptr %i.vv to i64
  %i.vy = ptrtoint ptr %i.vw to i64               ; 2 uses
  %i.vz = sub i64 %i.vx, %i.vy                    ; 2 uses
  %i.wa = ashr exact i64 %i.vz, 3
  %i.wb = icmp ult i64 %i.wa, %i.vt
  br i1 %i.wb, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit472

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466: ; preds = %bb.cy
  %i.wc = load ptr, ptr %i.er, align 8
  %i.wd = ptrtoint ptr %i.wc to i64
  %i.we = sub i64 %i.wd, %i.vy                    ; 3 uses
  %i.wf = shl nuw nsw i64 %i.vt, 3
  %i.wg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wf) #34
          to label %.noexc471 unwind label %.loopexit1489 ; 4 uses

.noexc471:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466
  %i.wh = icmp sgt i64 %i.we, 0
  br i1 %i.wh, label %bb.cz, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467

bb.cz:                                            ; preds = %.noexc471
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wg, ptr align 8 %i.vw, i64 %i.we, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467: ; preds = %bb.cz, %.noexc471
  %.not.i8.i468 = icmp eq ptr %i.vw, null
  br i1 %.not.i8.i468, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467
  call void @_ZdlPvm(ptr noundef nonnull %i.vw, i64 noundef %i.vz) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469: ; preds = %bb.da, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467
  store ptr %i.wg, ptr %8, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.we
  store ptr %i.wi, ptr %i.er, align 8
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wg, i64 %i.vt
  store ptr %i.wj, ptr %i.eq, align 8
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit472

_ZNSt6vectorIdSaIdEE7reserveEm.exit472:           ; preds = %bb.cy, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469
  %i.wk = load i32, ptr %i.oh, align 8            ; 2 uses
  %.not2465 = icmp eq i32 %i.wk, 0
  br i1 %.not2465, label %.loopexit1456, label %.lr.ph2389

.lr.ph2389:                                       ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit472
  %i.wl = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  br label %bb.db

.loopexit1489:                                    ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466
  %lpad.loopexit1491 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1490:                           ; preds = %bb.cx
  %lpad.loopexit.split-lp1492 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.db:                                            ; preds = %.lr.ph2389, %._crit_edge2387
  %i.wm = phi i32 [ %i.wk, %.lr.ph2389 ], [ %i.wr, %._crit_edge2387 ]
  %.02492388 = phi i64 [ 0, %.lr.ph2389 ], [ %i.ws, %._crit_edge2387 ] ; 2 uses
  %i.wn = load ptr, ptr %i.wl, align 8
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %i.wn, i64 %.02492388 ; 3 uses
  %i.wp = load i32, ptr %i.wo, align 8
  %.not2466 = icmp eq i32 %i.wp, 0
  br i1 %.not2466, label %._crit_edge2387, label %.lr.ph2386

.lr.ph2386:                                       ; preds = %bb.db
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %.pre3025.a = load ptr, ptr %i.er, align 8
  br label %bb.dc

._crit_edge2387.loopexit:                         ; preds = %bb.dk
  %.pre3026 = load i32, ptr %i.oh, align 8
  br label %._crit_edge2387

._crit_edge2387:                                  ; preds = %._crit_edge2387.loopexit, %bb.db
  %i.wr = phi i32 [ %.pre3026, %._crit_edge2387.loopexit ], [ %i.wm, %bb.db ] ; 2 uses
  %i.ws = add nuw nsw i64 %.02492388, 1           ; 2 uses
  %i.wt = zext i32 %i.wr to i64
  %i.wu = icmp samesign ult i64 %i.ws, %i.wt
  br i1 %i.wu, label %bb.db, label %.loopexit1456, !llvm.loop !717

bb.dc:                                            ; preds = %.lr.ph2386, %bb.dk
  %i.wv = phi ptr [ %.pre3025.a, %.lr.ph2386 ], [ %i.yk, %bb.dk ] ; 3 uses
  %.02502384 = phi i64 [ 0, %.lr.ph2386 ], [ %i.yl, %bb.dk ] ; 2 uses
  %i.ww = load ptr, ptr %i.vk, align 8
  %i.wx = load ptr, ptr %i.wq, align 8
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.02502384
  %i.wz = load i32, ptr %i.wy, align 4
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [16 x i8], ptr %i.ww, i64 %i.xa ; 2 uses
  %i.xc = load <2 x float>, ptr %i.xb, align 4
  %i.xd = fpext <2 x float> %i.xc to <2 x double> ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xf = load <2 x float>, ptr %i.xe, align 4
  %i.xg = fpext <2 x float> %i.xf to <2 x double> ; 3 uses
  %79 = load ptr, ptr %8, align 8                 ; 5 uses
  %i.xh = ptrtoint ptr %i.wv to i64               ; 2 uses
  %i.xi = ptrtoint ptr %79 to i64                 ; 2 uses
  %i.xj = sub i64 %i.xh, %i.xi                    ; 6 uses
  %i.xk = load ptr, ptr %i.eq, align 8
  %i.xl = ptrtoint ptr %i.xk to i64               ; 2 uses
  %i.xm = sub i64 %i.xl, %i.xh
  %.not54.i1206 = icmp ult i64 %i.xm, 32
  br i1 %.not54.i1206, label %bb.dd, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1208

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1208: ; preds = %bb.dc
  store <2 x double> %i.xd, ptr %i.wv, align 8
  %.sroa.8.0..sroa_idx2994 = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store <2 x double> %i.xg, ptr %.sroa.8.0..sroa_idx2994, align 8
  %i.xn = load ptr, ptr %i.er, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 32 ; 2 uses
  store ptr %i.xo, ptr %i.er, align 8
  br label %bb.dk

bb.dd:                                            ; preds = %bb.dc
  %i.xp = and i64 %i.xj, -32
  %i.xq = icmp eq i64 %i.xp, 9223372036854775776
  br i1 %i.xq, label %bb.de, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1213

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
          to label %.noexc1219 unwind label %.loopexit.split-lp1441

.noexc1219:                                       ; preds = %bb.de
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1213: ; preds = %bb.dd
  %i.xr = ashr exact i64 %i.xj, 3                 ; 3 uses
  %.sroa.speculated.i.i1214 = call i64 @llvm.umax.i64(i64 %i.xr, i64 4)
  %i.xs = add nsw i64 %.sroa.speculated.i.i1214, %i.xr ; 2 uses
  %i.xt = icmp ult i64 %i.xs, %i.xr
  %i.xu = call i64 @llvm.umin.i64(i64 %i.xs, i64 1152921504606846975)
  %i.xv = select i1 %i.xt, i64 1152921504606846975, i64 %i.xu ; 3 uses
  %.not.i.i1215 = icmp eq i64 %i.xv, 0
  br i1 %.not.i.i1215, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1216, label %bb.df

bb.df:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1213
  %i.xw = shl nuw nsw i64 %i.xv, 3
  %i.xx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xw) #34
          to label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1216 unwind label %.loopexit1440

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1216: ; preds = %bb.df, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1213
  %i.xy = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1213 ], [ %i.xx, %bb.df ] ; 8 uses
  %i.xz = icmp sgt i64 %i.xj, 8
  br i1 %i.xz, label %bb.dg, label %bb.dh, !prof !181

bb.dg:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1216
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.xy, ptr align 8 %79, i64 %i.xj, i1 false)
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1216
  %i.ya = icmp eq i64 %i.xj, 8
  br i1 %i.ya, label %.thread1412, label %bb.di

.thread1412:                                      ; preds = %bb.dh
  %i.yb = load double, ptr %79, align 8
  store double %i.yb, ptr %i.xy, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  store <2 x double> %i.xd, ptr %i.yc, align 8
  %.sroa.8.0..sroa_idx2992 = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  store <2 x double> %i.xg, ptr %.sroa.8.0..sroa_idx2992, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xy, i64 40
  br label %bb.dj

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.ye = getelementptr inbounds i8, ptr %i.xy, i64 %i.xj ; 3 uses
  store <2 x double> %i.xd, ptr %i.ye, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store <2 x double> %i.xg, ptr %.sroa.8.0..sroa_idx, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 32 ; 2 uses
  %.not.i59.i1217 = icmp eq ptr %79, null
  br i1 %.not.i59.i1217, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1218, label %bb.dj

bb.dj:                                            ; preds = %.thread1412, %bb.di
  %i.yg = phi ptr [ %i.yd, %.thread1412 ], [ %i.yf, %bb.di ]
  %i.yh = sub i64 %i.xl, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %79, i64 noundef %i.yh) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1218

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1218: ; preds = %bb.dj, %bb.di
  %i.yi = phi ptr [ %i.yg, %bb.dj ], [ %i.yf, %bb.di ] ; 2 uses
  store ptr %i.xy, ptr %8, align 8
  store ptr %i.yi, ptr %i.er, align 8
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.xy, i64 %i.xv
  store ptr %i.yj, ptr %i.eq, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1208, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1218
  %i.yk = phi ptr [ %i.xo, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1208 ], [ %i.yi, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1218 ]
  %i.yl = add nuw nsw i64 %.02502384, 1           ; 2 uses
  %i.ym = load i32, ptr %i.wo, align 8
  %i.yn = zext i32 %i.ym to i64
  %i.yo = icmp samesign ult i64 %i.yl, %i.yn
  br i1 %i.yo, label %bb.dc, label %._crit_edge2387.loopexit, !llvm.loop !718

.loopexit1440:                                    ; preds = %bb.df
  %lpad.loopexit1442 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit.split-lp1441:                           ; preds = %bb.de
  %lpad.loopexit.split-lp1443 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.loopexit1456:                                    ; preds = %._crit_edge2387, %_ZNSt6vectorIdSaIdEE7reserveEm.exit472, %.loopexit1457
  %i.yp = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 3 uses
  %i.yq = load <8 x ptr>, ptr %i.yp, align 8
  %i.yr = icmp ne <8 x ptr> %i.yq, splat (ptr null)
  %i.ys = bitcast <8 x i1> %i.yr to i8
  %i.yt = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ys)
  %i.yu = zext nneg i8 %i.yt to i64               ; 4 uses
  %i.yv = ptrtoint ptr %.sroa.15.02408 to i64     ; 2 uses
  %i.yw = ptrtoint ptr %.sroa.01347.02412 to i64  ; 2 uses
  %i.yx = sub i64 %i.yv, %i.yw                    ; 2 uses
  %i.yy = sdiv exact i64 %i.yx, 24                ; 5 uses
  %i.yz = icmp ult i64 %i.yy, %i.yu
  br i1 %i.yz, label %bb.dl, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.dl:                                            ; preds = %.loopexit1456
  %i.za = sub nuw nsw i64 %i.yu, %i.yy            ; 5 uses
  %i.zb = ptrtoint ptr %.sroa.23.02404 to i64     ; 2 uses
  %i.zc = sub i64 %i.zb, %i.yv
  %i.zd = sdiv exact i64 %i.zc, 24                ; 2 uses
  %i.ze = sub nuw nsw i64 384307168202282325, %i.yy
  %i.zf = icmp ule i64 %i.zd, %i.ze
  call void @llvm.assume(i1 %i.zf)
  %.not28.i1223 = icmp ult i64 %i.zd, %i.za
  br i1 %.not28.i1223, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.dl
  %i.zg = mul nuw nsw i64 %i.za, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.15.02408, i8 0, i64 %i.zg, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.15.02408, i64 %i.zg
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dl
  %.sroa.speculated.i.i1224 = call i64 @llvm.umax.i64(i64 %i.yy, i64 %i.za)
  %i.zh = add nuw nsw i64 %.sroa.speculated.i.i1224, %i.yy ; 2 uses
  %i.zi = mul nuw nsw i64 %i.zh, 24
  %i.zj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zi) #34
          to label %.noexc1230 unwind label %bb.dt ; 4 uses

.noexc1230:                                       ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.yx ; 2 uses
  %i.zl = mul nuw nsw i64 %i.za, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.zk, i8 0, i64 %i.zl, i1 false)
  %.not10.i.i.i.i1225 = icmp eq ptr %.sroa.01347.02412, %.sroa.15.02408
  br i1 %.not10.i.i.i.i1225, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1226

.lr.ph.i.i.i.i1226:                               ; preds = %.noexc1230, %.lr.ph.i.i.i.i1226
  %.012.i.i.i.i1227 = phi ptr [ %i.zr, %.lr.ph.i.i.i.i1226 ], [ %i.zj, %.noexc1230 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.zq, %.lr.ph.i.i.i.i1226 ], [ %.sroa.01347.02412, %.noexc1230 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.zm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !722, !noalias !719
  store <2 x ptr> %i.zm, ptr %.012.i.i.i.i1227, align 8, !alias.scope !719, !noalias !722
  %i.zn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1227, i64 16
  %i.zo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.zp = load ptr, ptr %i.zo, align 8, !alias.scope !722, !noalias !719
  store ptr %i.zp, ptr %i.zn, align 8, !alias.scope !719, !noalias !722
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !722, !noalias !719
  %i.zq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1227, i64 24
  %.not.i.i.i.i1228 = icmp eq ptr %i.zq, %.sroa.15.02408
  br i1 %.not.i.i.i.i1228, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1226, !llvm.loop !724

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i1226, %.noexc1230
  %.not.i36.i = icmp eq ptr %.sroa.01347.02412, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zs = sub i64 %i.zb, %i.yw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01347.02412, i64 noundef %i.zs) #32
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.dm, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.zt = getelementptr inbounds nuw [24 x i8], ptr %i.zk, i64 %i.za
  %i.zu = getelementptr inbounds nuw [24 x i8], ptr %i.zj, i64 %i.zh
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %.loopexit1456
  %.sroa.23.4 = phi ptr [ %.sroa.23.02404, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.23.02404, %.loopexit1456 ], [ %i.zu, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  %.sroa.15.4 = phi ptr [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.15.02408, %.loopexit1456 ], [ %i.zt, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  %.sroa.01347.4 = phi ptr [ %.sroa.01347.02412, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.01347.02412, %.loopexit1456 ], [ %i.zj, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 5 uses
  %i.zv = ptrtoint ptr %.sroa.17.02420 to i64     ; 2 uses
  %i.zw = ptrtoint ptr %.sroa.01362.02424 to i64  ; 2 uses
  %i.zx = sub i64 %i.zv, %i.zw                    ; 2 uses
  %i.zy = sdiv exact i64 %i.zx, 24                ; 5 uses
  %i.zz = icmp ult i64 %i.zy, %i.yu
  br i1 %i.zz, label %bb.dn, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

bb.dn:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.aaa = sub nuw nsw i64 %i.yu, %i.zy           ; 5 uses
  %i.aab = ptrtoint ptr %.sroa.27.02416 to i64    ; 2 uses
  %i.aac = sub i64 %i.aab, %i.zv
  %i.aad = sdiv exact i64 %i.aac, 24              ; 2 uses
  %i.aae = sub nuw nsw i64 384307168202282325, %i.zy
  %i.aaf = icmp ule i64 %i.aad, %i.aae
  call void @llvm.assume(i1 %i.aaf)
  %.not28.i1232 = icmp ult i64 %i.aad, %i.aaa
  br i1 %.not28.i1232, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.dn
  %i.aag = mul nuw nsw i64 %i.aaa, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.17.02420, i8 0, i64 %i.aag, i1 false)
  %scevgep.i.i.i.i1233 = getelementptr i8, ptr %.sroa.17.02420, i64 %i.aag
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dn
  %.sroa.speculated.i.i1234 = call i64 @llvm.umax.i64(i64 %i.zy, i64 %i.aaa)
  %i.aah = add nuw nsw i64 %.sroa.speculated.i.i1234, %i.zy ; 2 uses
  %i.aai = mul nuw nsw i64 %i.aah, 24
  %i.aaj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aai) #34
          to label %.noexc1242 unwind label %bb.du ; 4 uses

.noexc1242:                                       ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 %i.zx ; 2 uses
  %i.aal = mul nuw nsw i64 %i.aaa, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aak, i8 0, i64 %i.aal, i1 false)
  %.not10.i.i.i.i1235 = icmp eq ptr %.sroa.01362.02424, %.sroa.17.02420
  br i1 %.not10.i.i.i.i1235, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1236

.lr.ph.i.i.i.i1236:                               ; preds = %.noexc1242, %.lr.ph.i.i.i.i1236
  %.012.i.i.i.i1237 = phi ptr [ %i.aar, %.lr.ph.i.i.i.i1236 ], [ %i.aaj, %.noexc1242 ] ; 3 uses
  %.0911.i.i.i.i1238 = phi ptr [ %i.aaq, %.lr.ph.i.i.i.i1236 ], [ %.sroa.01362.02424, %.noexc1242 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.aam = load <2 x ptr>, ptr %.0911.i.i.i.i1238, align 8, !alias.scope !728, !noalias !725
  store <2 x ptr> %i.aam, ptr %.012.i.i.i.i1237, align 8, !alias.scope !725, !noalias !728
  %i.aan = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1237, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1238, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !alias.scope !728, !noalias !725
  store ptr %i.aap, ptr %i.aan, align 8, !alias.scope !725, !noalias !728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i1238, i8 0, i64 24, i1 false), !alias.scope !728, !noalias !725
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1238, i64 24 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1237, i64 24
  %.not.i.i.i.i1239 = icmp eq ptr %i.aaq, %.sroa.17.02420
  br i1 %.not.i.i.i.i1239, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1236, !llvm.loop !730

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i1236, %.noexc1242
  %.not.i36.i1240 = icmp eq ptr %.sroa.01362.02424, null
  br i1 %.not.i36.i1240, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aas = sub i64 %i.aab, %i.zw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01362.02424, i64 noundef %i.aas) #32
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.do, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.aak, i64 %i.aaa
  %i.aau = getelementptr inbounds nuw [24 x i8], ptr %i.aaj, i64 %i.aah
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %.sroa.27.4 = phi ptr [ %.sroa.27.02416, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.27.02416, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.aau, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 3 uses
  %.sroa.17.4 = phi ptr [ %scevgep.i.i.i.i1233, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.17.02420, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.aat, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 3 uses
  %.sroa.01362.4 = phi ptr [ %.sroa.01362.02424, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.01362.02424, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.aaj, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store i32 0, ptr %i.es, align 8
  store ptr null, ptr %i.et, align 8
  store ptr %i.es, ptr %i.eu, align 8
  store ptr %i.es, ptr %i.ev, align 8
  store i64 0, ptr %i.ew, align 8
  %i.aav = getelementptr inbounds nuw i8, ptr %i.go, i64 176
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.go, i64 236
  %i.aax = getelementptr inbounds nuw i8, ptr %i.go, i64 240 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge2403, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit
  %.0245 = phi i64 [ 0, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit ], [ %i.aeg, %._crit_edge2403 ] ; 7 uses
  %i.aaz = load <8 x ptr>, ptr %i.yp, align 8
  %i.aba = icmp ne <8 x ptr> %i.aaz, splat (ptr null)
  %i.abb = bitcast <8 x i1> %i.aba to i8
  %i.abc = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.abb)
  %i.abd = zext nneg i8 %i.abc to i64
  %i.abe = icmp samesign ult i64 %.0245, %i.abd
  br i1 %i.abe, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.abf = load ptr, ptr %i.et, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector3tIfESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.abf)
          to label %_ZNSt3mapI10aiVector3tIfEiSt4lessIS1_ESaISt4pairIKS1_iEEED2Ev.exit unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.abg = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
