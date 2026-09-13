Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441: ; preds = %bb.bq
  %i.qj = ashr exact i64 %i.qh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i442 = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i.i442, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 2305843009213693951)
  %i.qn = select i1 %i.ql, i64 2305843009213693951, i64 %i.qm ; 3 uses
  %.not.i.i.i.i443 = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i443)
  %i.qo = shl nuw nsw i64 %i.qn, 2
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #34
          to label %.noexc448 unwind label %.loopexit1469 ; 4 uses

.noexc448:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store i32 %i.qa, ptr %i.qq, align 4
  %i.qr = icmp sgt i64 %i.qh, 0
  br i1 %i.qr, label %bb.bs, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444

bb.bs:                                            ; preds = %.noexc448
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qp, ptr align 4 %i.qe, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444: ; preds = %bb.bs, %.noexc448
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 4 ; 2 uses
  %.not.i17.i.i.i445 = icmp eq ptr %i.qe, null
  br i1 %.not.i17.i.i.i445, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444
  %i.qt = load ptr, ptr %i.em, align 8
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = sub i64 %i.qu, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qv) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446: ; preds = %bb.bt, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i444
  store ptr %i.qp, ptr %9, align 8
  store ptr %i.qs, ptr %i.el, align 8
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qp, i64 %i.qn
  store ptr %i.qw, ptr %i.em, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449

_ZNSt6vectorIiSaIiEE9push_backEOi.exit449:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446, %bb.bp
  %i.qx = phi ptr [ %i.qs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i446 ], [ %i.qd, %bb.bp ] ; 2 uses
  %i.qy = add nuw nsw i64 %.02472390, 1           ; 3 uses
  %i.qz = load i32, ptr %i.pp, align 8
  %i.ra = add i32 %i.qz, -1
  %i.rb = zext i32 %i.ra to i64
  %i.rc = icmp samesign ult i64 %i.qy, %i.rb
  br i1 %i.rc, label %bb.bo, label %._crit_edge, !llvm.loop !710

.loopexit1469:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i441
  %lpad.loopexit1471 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1470:                           ; preds = %bb.br
  %lpad.loopexit.split-lp1472 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449, %.preheader1468
  %i.rd = phi ptr [ %.pre3012, %.preheader1468 ], [ %i.qx, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449 ] ; 3 uses
  %.0247.lcssa = phi i64 [ 0, %.preheader1468 ], [ %i.qy, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit449 ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %.0247.lcssa
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = zext i32 %i.rh to i64
  %i.rj = getelementptr [4 x i8], ptr %i.od, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4
  %i.rl = add i32 %i.rk, %i.om
  %i.rm = xor i32 %i.rl, -1                       ; 2 uses
  %i.rn = load ptr, ptr %i.em, align 8
  %.not.i.i450 = icmp eq ptr %i.rd, %i.rn
  br i1 %.not.i.i450, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge
  store i32 %i.rm, ptr %i.rd, align 4
  %i.ro = load ptr, ptr %i.el, align 8
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  store ptr %i.rp, ptr %i.el, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459

bb.bv:                                            ; preds = %._crit_edge
  %i.rq = load ptr, ptr %9, align 8               ; 4 uses
  %i.rr = ptrtoint ptr %i.rd to i64
  %i.rs = ptrtoint ptr %i.rq to i64               ; 2 uses
  %i.rt = sub i64 %i.rr, %i.rs                    ; 5 uses
  %i.ru = icmp eq i64 %i.rt, 9223372036854775804
  br i1 %i.ru, label %bb.bw, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.401) #30
          to label %.noexc457 unwind label %.loopexit.split-lp1478

.noexc457:                                        ; preds = %bb.bw
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451: ; preds = %bb.bv
  %i.rv = ashr exact i64 %i.rt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i452 = call i64 @llvm.umax.i64(i64 %i.rv, i64 1)
  %i.rw = add nsw i64 %.sroa.speculated.i.i.i.i452, %i.rv ; 2 uses
  %i.rx = icmp ult i64 %i.rw, %i.rv
  %i.ry = call i64 @llvm.umin.i64(i64 %i.rw, i64 2305843009213693951)
  %i.rz = select i1 %i.rx, i64 2305843009213693951, i64 %i.ry ; 3 uses
  %.not.i.i.i.i453 = icmp ne i64 %i.rz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i453)
  %i.sa = shl nuw nsw i64 %i.rz, 2
  %i.sb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sa) #34
          to label %.noexc458 unwind label %.loopexit1477 ; 4 uses

.noexc458:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 %i.rt ; 2 uses
  store i32 %i.rm, ptr %i.sc, align 4
  %i.sd = icmp sgt i64 %i.rt, 0
  br i1 %i.sd, label %bb.bx, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454

bb.bx:                                            ; preds = %.noexc458
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sb, ptr align 4 %i.rq, i64 %i.rt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454: ; preds = %bb.bx, %.noexc458
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %.not.i17.i.i.i455 = icmp eq ptr %i.rq, null
  br i1 %.not.i17.i.i.i455, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454
  %i.sf = load ptr, ptr %i.em, align 8
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = sub i64 %i.sg, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %i.rq, i64 noundef %i.sh) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456: ; preds = %bb.by, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i454
  store ptr %i.sb, ptr %9, align 8
  store ptr %i.se, ptr %i.el, align 8
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.rz
  store ptr %i.si, ptr %i.em, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit459

_ZNSt6vectorIiSaIiEE9push_backEOi.exit459:        ; preds = %bb.bu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i456, %bb.bn
  %i.sj = add nuw nsw i64 %.02482393, 1           ; 2 uses
  %i.sk = load i32, ptr %i.oj, align 8
  %i.sl = zext i32 %i.sk to i64
  %i.sm = icmp samesign ult i64 %i.sj, %i.sl
  br i1 %i.sm, label %bb.bn, label %._crit_edge2395, !llvm.loop !711

.loopexit1477:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i451
  %lpad.loopexit1479 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1478:                           ; preds = %bb.bw
  %lpad.loopexit.split-lp1480 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.bh
  %i.sn = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 2 uses
  %i.so = load ptr, ptr %i.sn, align 8
  %.not.i460 = icmp ne ptr %i.so, null
  %i.sp = getelementptr inbounds nuw i8, ptr %i.go, i64 4 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = icmp ne i32 %i.sq, 0
  %i.ss = select i1 %.not.i460, i1 %i.sr, i1 false
  br i1 %i.ss, label %bb.bz, label %.loopexit1475

bb.bz:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.st = load ptr, ptr %i.el, align 8
  %i.su = load ptr, ptr %9, align 8
  %i.sv = ptrtoint ptr %i.st to i64
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = ashr exact i64 %i.sx, 2                 ; 2 uses
  %i.sz = mul nsw i64 %i.sy, 3                    ; 3 uses
  %i.ta = icmp ugt i64 %i.sz, 1152921504606846975
  br i1 %i.ta, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #30
          to label %.noexc461 unwind label %.loopexit.split-lp1496

.noexc461:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.tb = load ptr, ptr %i.eo, align 8
  %i.tc = load ptr, ptr %7, align 8               ; 2 uses
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = ptrtoint ptr %i.tc to i64               ; 2 uses
  %i.tf = sub i64 %i.td, %i.te
  %i.tg = ashr exact i64 %i.tf, 3
  %i.th = icmp ult i64 %i.tg, %i.sz
  br i1 %i.th, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i: ; preds = %bb.cb
  %i.ti = load ptr, ptr %i.ep, align 8
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = sub i64 %i.tj, %i.te
  %i.tl = mul nuw nsw i64 %i.sy, 24
  %i.tm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tl) #34
          to label %.noexc462 unwind label %.loopexit1495 ; 5 uses

.noexc462:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
  %i.tn = load ptr, ptr %7, align 8               ; 4 uses
  %i.to = load ptr, ptr %i.ep, align 8
  %i.tp = ptrtoint ptr %i.to to i64
  %i.tq = ptrtoint ptr %i.tn to i64               ; 2 uses
  %i.tr = sub i64 %i.tp, %i.tq                    ; 2 uses
  %i.ts = icmp sgt i64 %i.tr, 0
  br i1 %i.ts, label %bb.cc, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

bb.cc:                                            ; preds = %.noexc462
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tm, ptr align 8 %i.tn, i64 %i.tr, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i: ; preds = %bb.cc, %.noexc462
  %.not.i8.i = icmp eq ptr %i.tn, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  %i.tt = load ptr, ptr %i.eo, align 8
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = sub i64 %i.tu, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.tv) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.cd, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i
  store ptr %i.tm, ptr %7, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tk
  store ptr %i.tw, ptr %i.ep, align 8
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.sz
  store ptr %i.tx, ptr %i.eo, align 8
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit

_ZNSt6vectorIdSaIdEE7reserveEm.exit:              ; preds = %bb.cb, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %.pre30153025 = phi ptr [ %i.tc, %bb.cb ], [ %i.tm, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
  %i.ty = load i32, ptr %i.oj, align 8            ; 2 uses
  %.not2463 = icmp eq i32 %i.ty, 0
  br i1 %.not2463, label %.loopexit1475, label %.lr.ph2401

.lr.ph2401:                                       ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit
  %i.tz = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  br label %bb.ce

.loopexit1502:                                    ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1504 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1503:                           ; preds = %bb.bj
  %lpad.loopexit.split-lp1505 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ce:                                            ; preds = %.lr.ph2401, %._crit_edge2399
  %.pre3015 = phi ptr [ %.pre30153025, %.lr.ph2401 ], [ %.pre30153024, %._crit_edge2399 ] ; 2 uses
  %i.ua = phi i32 [ %i.ty, %.lr.ph2401 ], [ %i.uf, %._crit_edge2399 ]
  %.02462400 = phi i64 [ 0, %.lr.ph2401 ], [ %i.ug, %._crit_edge2399 ] ; 2 uses
  %i.ub = load ptr, ptr %i.tz, align 8
  %i.uc = getelementptr inbounds nuw [16 x i8], ptr %i.ub, i64 %.02462400 ; 3 uses
  %i.ud = load i32, ptr %i.uc, align 8
  %.not2464 = icmp eq i32 %i.ud, 0
  br i1 %.not2464, label %._crit_edge2399, label %.lr.ph2398

.lr.ph2398:                                       ; preds = %bb.ce
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.pre3013 = load ptr, ptr %i.ep, align 8
  br label %bb.cf

._crit_edge2399.loopexit:                         ; preds = %bb.cn
  %.pre3016 = load i32, ptr %i.oj, align 8
  br label %._crit_edge2399

._crit_edge2399:                                  ; preds = %._crit_edge2399.loopexit, %bb.ce
  %.pre30153024 = phi ptr [ %i.wb, %._crit_edge2399.loopexit ], [ %.pre3015, %bb.ce ]
  %i.uf = phi i32 [ %.pre3016, %._crit_edge2399.loopexit ], [ %i.ua, %bb.ce ] ; 2 uses
  %i.ug = add nuw nsw i64 %.02462400, 1           ; 2 uses
  %i.uh = zext i32 %i.uf to i64
  %i.ui = icmp samesign ult i64 %i.ug, %i.uh
  br i1 %i.ui, label %bb.ce, label %.loopexit1475, !llvm.loop !712

bb.cf:                                            ; preds = %.lr.ph2398, %bb.cn
  %i.uj = phi ptr [ %.pre3015, %.lr.ph2398 ], [ %i.wb, %bb.cn ] ; 5 uses
  %i.uk = phi ptr [ %.pre3013, %.lr.ph2398 ], [ %i.wc, %bb.cn ] ; 3 uses
  %.02452396 = phi i64 [ 0, %.lr.ph2398 ], [ %i.wd, %bb.cn ] ; 2 uses
  %i.ul = load ptr, ptr %i.sn, align 8
  %i.um = load ptr, ptr %i.ue, align 8
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %.02452396
  %i.uo = load i32, ptr %i.un, align 4
  %i.up = zext i32 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [12 x i8], ptr %i.ul, i64 %i.up ; 2 uses
  %i.ur = load <2 x float>, ptr %i.uq, align 4
  %i.us = fpext <2 x float> %i.ur to <2 x double> ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = fpext float %i.uu to double             ; 3 uses
  %i.uw = ptrtoint ptr %i.uk to i64               ; 2 uses
  %i.ux = ptrtoint ptr %i.uj to i64               ; 2 uses
  %i.uy = load ptr, ptr %i.eo, align 8
  %i.uz = ptrtoint ptr %i.uy to i64
  %i.va = sub i64 %i.uz, %i.uw
  %.not54.i = icmp ult i64 %i.va, 24
  br i1 %.not54.i, label %bb.cg, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.cf
  store <2 x double> %i.us, ptr %i.uk, align 8
  %.sroa.73000.0..sroa_idx3001 = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store double %i.uv, ptr %.sroa.73000.0..sroa_idx3001, align 8
  %i.vb = load ptr, ptr %i.ep, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  store ptr %i.vc, ptr %i.ep, align 8
  %.pre3014 = load ptr, ptr %7, align 8
  br label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.vd = sub i64 %i.uw, %i.ux                    ; 6 uses
  %i.ve = ashr exact i64 %i.vd, 3                 ; 4 uses
  %i.vf = add nsw i64 %i.ve, -1152921504606846973
  %i.vg = icmp ult i64 %i.vf, 3
  br i1 %i.vg, label %bb.ch, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
          to label %.noexc1220 unwind label %.loopexit.split-lp1464

.noexc1220:                                       ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.cg
  %.sroa.speculated.i.i1216 = call i64 @llvm.umax.i64(i64 %i.ve, i64 3)
  %i.vh = add nsw i64 %.sroa.speculated.i.i1216, %i.ve ; 2 uses
  %i.vi = icmp ult i64 %i.vh, %i.ve
  %i.vj = call i64 @llvm.umin.i64(i64 %i.vh, i64 1152921504606846975)
  %i.vk = select i1 %i.vi, i64 1152921504606846975, i64 %i.vj ; 3 uses
  %.not.i.i1217 = icmp eq i64 %i.vk, 0
  br i1 %.not.i.i1217, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218, label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.vl = shl nuw nsw i64 %i.vk, 3
  %i.vm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vl) #34
          to label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218 unwind label %.loopexit1463

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218: ; preds = %bb.ci, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.vn = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %i.vm, %bb.ci ] ; 7 uses
  %i.vo = icmp sgt i64 %i.vd, 8
  br i1 %i.vo, label %bb.cj, label %bb.ck, !prof !26

bb.cj:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vn, ptr align 8 %i.uj, i64 %i.vd, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218
  %i.vp = icmp eq i64 %i.vd, 8
  br i1 %i.vp, label %.thread, label %bb.cl

.thread:                                          ; preds = %bb.ck
  %i.vq = load double, ptr %i.uj, align 8
  store double %i.vq, ptr %i.vn, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vd ; 3 uses
  store <2 x double> %i.us, ptr %i.vr, align 8
  %.sroa.73000.0..sroa_idx3391 = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store double %i.uv, ptr %.sroa.73000.0..sroa_idx3391, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.vt = getelementptr inbounds i8, ptr %i.vn, i64 %i.vd ; 3 uses
  store <2 x double> %i.us, ptr %i.vt, align 8
  %.sroa.73000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store double %i.uv, ptr %.sroa.73000.0..sroa_idx, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.uj, null
  br i1 %.not.i59.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219, label %bb.cm

bb.cm:                                            ; preds = %.thread, %bb.cl
  %i.vv = phi ptr [ %i.vs, %.thread ], [ %i.vu, %bb.cl ]
  %i.vw = load ptr, ptr %i.eo, align 8
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = sub i64 %i.vx, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.vy) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219: ; preds = %bb.cm, %bb.cl
  %i.vz = phi ptr [ %i.vv, %bb.cm ], [ %i.vu, %bb.cl ] ; 2 uses
  store ptr %i.vn, ptr %7, align 8
  store ptr %i.vz, ptr %i.ep, align 8
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vk
  store ptr %i.wa, ptr %i.eo, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219
  %i.wb = phi ptr [ %.pre3014, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.vn, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219 ] ; 2 uses
  %i.wc = phi ptr [ %i.vc, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.vz, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219 ]
  %i.wd = add nuw nsw i64 %.02452396, 1           ; 2 uses
  %i.we = load i32, ptr %i.uc, align 8
  %i.wf = zext i32 %i.we to i64
  %i.wg = icmp samesign ult i64 %i.wd, %i.wf
  br i1 %i.wg, label %bb.cf, label %._crit_edge2399.loopexit, !llvm.loop !713

end_hunk_0
