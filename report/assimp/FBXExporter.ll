Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExporter?download=true
inline.NumInlined: 9027
inline.NumDeleted: 2242
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZZN6Assimp11FBXExporter12WriteObjectsEvENK3$_0clEPK6aiNode":bb.a
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
  %.pre30253035 = phi ptr [ %i.tc, %bb.cb ], [ %i.tm, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i ]
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
  %.pre3025 = phi ptr [ %.pre30253035, %.lr.ph2401 ], [ %.pre30253034, %._crit_edge2399 ] ; 2 uses
  %i.ua = phi i32 [ %i.ty, %.lr.ph2401 ], [ %i.uf, %._crit_edge2399 ]
  %.02462400 = phi i64 [ 0, %.lr.ph2401 ], [ %i.ug, %._crit_edge2399 ] ; 2 uses
  %i.ub = load ptr, ptr %i.tz, align 8
  %i.uc = getelementptr inbounds nuw [16 x i8], ptr %i.ub, i64 %.02462400 ; 3 uses
  %i.ud = load i32, ptr %i.uc, align 8
  %.not2464 = icmp eq i32 %i.ud, 0
  br i1 %.not2464, label %._crit_edge2399, label %.lr.ph2398

.lr.ph2398:                                       ; preds = %bb.ce
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.pre3023 = load ptr, ptr %i.ep, align 8
  br label %bb.cf

._crit_edge2399.loopexit:                         ; preds = %bb.cn
  %.pre3026 = load i32, ptr %i.oj, align 8
  br label %._crit_edge2399

._crit_edge2399:                                  ; preds = %._crit_edge2399.loopexit, %bb.ce
  %.pre30253034 = phi ptr [ %i.wa, %._crit_edge2399.loopexit ], [ %.pre3025, %bb.ce ]
  %i.uf = phi i32 [ %.pre3026, %._crit_edge2399.loopexit ], [ %i.ua, %bb.ce ] ; 2 uses
  %i.ug = add nuw nsw i64 %.02462400, 1           ; 2 uses
  %i.uh = zext i32 %i.uf to i64
  %i.ui = icmp samesign ult i64 %i.ug, %i.uh
  br i1 %i.ui, label %bb.ce, label %.loopexit1475, !llvm.loop !712

bb.cf:                                            ; preds = %.lr.ph2398, %bb.cn
  %i.uj = phi ptr [ %.pre3025, %.lr.ph2398 ], [ %i.wa, %bb.cn ] ; 5 uses
  %i.uk = phi ptr [ %.pre3023, %.lr.ph2398 ], [ %i.wb, %bb.cn ] ; 3 uses
  %.02452396 = phi i64 [ 0, %.lr.ph2398 ], [ %i.wc, %bb.cn ] ; 2 uses
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
  %78 = sub i64 %i.uw, %i.ux                      ; 5 uses
  %i.uy = load ptr, ptr %i.eo, align 8
  %i.uz = ptrtoint ptr %i.uy to i64
  %i.va = sub i64 %i.uz, %i.uw
  %.not54.i = icmp ult i64 %i.va, 24
  br i1 %.not54.i, label %bb.cg, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.cf
  store <2 x double> %i.us, ptr %i.uk, align 8
  %.sroa.83008.0..sroa_idx3011 = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store double %i.uv, ptr %.sroa.83008.0..sroa_idx3011, align 8
  %i.vb = load ptr, ptr %i.ep, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 24 ; 2 uses
  store ptr %i.vc, ptr %i.ep, align 8
  %.pre3024 = load ptr, ptr %7, align 8
  br label %bb.cn

bb.cg:                                            ; preds = %bb.cf
  %i.vd = ashr exact i64 %78, 3                   ; 4 uses
  %i.ve = add nsw i64 %i.vd, -1152921504606846973
  %i.vf = icmp ult i64 %i.ve, 3
  br i1 %i.vf, label %bb.ch, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
          to label %.noexc1220 unwind label %.loopexit.split-lp1464

.noexc1220:                                       ; preds = %bb.ch
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.cg
  %.sroa.speculated.i.i1216 = call i64 @llvm.umax.i64(i64 %i.vd, i64 3)
  %i.vg = add nsw i64 %.sroa.speculated.i.i1216, %i.vd ; 2 uses
  %i.vh = icmp ult i64 %i.vg, %i.vd
  %i.vi = call i64 @llvm.umin.i64(i64 %i.vg, i64 1152921504606846975)
  %i.vj = select i1 %i.vh, i64 1152921504606846975, i64 %i.vi ; 3 uses
  %.not.i.i1217 = icmp eq i64 %i.vj, 0
  br i1 %.not.i.i1217, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218, label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.vk = shl nuw nsw i64 %i.vj, 3
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vk) #34
          to label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218 unwind label %.loopexit1463

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218: ; preds = %bb.ci, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.vm = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i ], [ %i.vl, %bb.ci ] ; 9 uses
  %i.vn = icmp sgt i64 %78, 8
  br i1 %i.vn, label %bb.cj, label %bb.ck, !prof !26

bb.cj:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.vm, ptr align 8 %i.uj, i64 %78, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1218
  %i.vo = icmp eq i64 %78, 8
  br i1 %i.vo, label %.thread, label %bb.cl

.thread:                                          ; preds = %bb.ck
  %i.vp = load double, ptr %i.uj, align 8
  store double %i.vp, ptr %i.vm, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store <2 x double> %i.us, ptr %i.vq, align 8
  %.sroa.83008.0..sroa_idx3009 = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  store double %i.uv, ptr %.sroa.83008.0..sroa_idx3009, align 8
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.vs = getelementptr inbounds i8, ptr %i.vm, i64 %78 ; 3 uses
  store <2 x double> %i.us, ptr %i.vs, align 8
  %.sroa.83008.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store double %i.uv, ptr %.sroa.83008.0..sroa_idx, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 24 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.uj, null
  br i1 %.not.i59.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219, label %bb.cm

bb.cm:                                            ; preds = %.thread, %bb.cl
  %i.vu = phi ptr [ %i.vr, %.thread ], [ %i.vt, %bb.cl ]
  %i.vv = load ptr, ptr %i.eo, align 8
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = sub i64 %i.vw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.vx) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219: ; preds = %bb.cm, %bb.cl
  %i.vy = phi ptr [ %i.vu, %bb.cm ], [ %i.vt, %bb.cl ] ; 2 uses
  store ptr %i.vm, ptr %7, align 8
  store ptr %i.vy, ptr %i.ep, align 8
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %i.vj
  store ptr %i.vz, ptr %i.eo, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219
  %i.wa = phi ptr [ %.pre3024, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.vm, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219 ] ; 2 uses
  %i.wb = phi ptr [ %i.vc, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.vy, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1219 ]
  %i.wc = add nuw nsw i64 %.02452396, 1           ; 2 uses
  %i.wd = load i32, ptr %i.uc, align 8
  %i.we = zext i32 %i.wd to i64
  %i.wf = icmp samesign ult i64 %i.wc, %i.we
  br i1 %i.wf, label %bb.cf, label %._crit_edge2399.loopexit, !llvm.loop !713

.loopexit1463:                                    ; preds = %bb.ci
  %lpad.loopexit1465 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1464:                           ; preds = %bb.ch
  %lpad.loopexit.split-lp1466 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit1475:                                    ; preds = %._crit_edge2399, %_ZNSt6vectorIdSaIdEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.wg = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 8
  %.not.i465 = icmp ne ptr %i.wh, null
  %i.wi = load i32, ptr %i.sp, align 4
  %i.wj = icmp ne i32 %i.wi, 0
  %i.wk = select i1 %.not.i465, i1 %i.wj, i1 false
  br i1 %i.wk, label %bb.co, label %.loopexit1474

bb.co:                                            ; preds = %.loopexit1475
  %i.wl = load ptr, ptr %i.el, align 8
  %i.wm = load ptr, ptr %9, align 8
  %i.wn = ptrtoint ptr %i.wl to i64
  %i.wo = ptrtoint ptr %i.wm to i64
  %i.wp = sub i64 %i.wn, %i.wo                    ; 4 uses
  %i.wq = icmp ugt i64 %i.wp, 1152921504606846975
  br i1 %i.wq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.402) #30
          to label %.noexc470 unwind label %.loopexit.split-lp1508

.noexc470:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %bb.co
  %i.wr = load ptr, ptr %i.eq, align 8
  %i.ws = load ptr, ptr %8, align 8               ; 2 uses
  %i.wt = ptrtoint ptr %i.wr to i64
  %i.wu = ptrtoint ptr %i.ws to i64               ; 2 uses
  %i.wv = sub i64 %i.wt, %i.wu
  %i.ww = ashr exact i64 %i.wv, 3
  %i.wx = icmp ult i64 %i.ww, %i.wp
  br i1 %i.wx, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466, label %_ZNSt6vectorIdSaIdEE7reserveEm.exit472

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466: ; preds = %bb.cq
  %i.wy = load ptr, ptr %i.er, align 8
  %i.wz = ptrtoint ptr %i.wy to i64
  %i.xa = sub i64 %i.wz, %i.wu
  %i.xb = shl nuw nsw i64 %i.wp, 3
  %i.xc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xb) #34
          to label %.noexc471 unwind label %.loopexit1507 ; 5 uses

.noexc471:                                        ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466
  %i.xd = load ptr, ptr %8, align 8               ; 4 uses
  %i.xe = load ptr, ptr %i.er, align 8
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = ptrtoint ptr %i.xd to i64               ; 2 uses
  %i.xh = sub i64 %i.xf, %i.xg                    ; 2 uses
  %i.xi = icmp sgt i64 %i.xh, 0
  br i1 %i.xi, label %bb.cr, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467

bb.cr:                                            ; preds = %.noexc471
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.xc, ptr align 8 %i.xd, i64 %i.xh, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467: ; preds = %bb.cr, %.noexc471
  %.not.i8.i468 = icmp eq ptr %i.xd, null
  br i1 %.not.i8.i468, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467
  %i.xj = load ptr, ptr %i.eq, align 8
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = sub i64 %i.xk, %i.xg
  call void @_ZdlPvm(ptr noundef nonnull %i.xd, i64 noundef %i.xl) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469: ; preds = %bb.cs, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i467
  store ptr %i.xc, ptr %8, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xa
  store ptr %i.xm, ptr %i.er, align 8
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.wp
  store ptr %i.xn, ptr %i.eq, align 8
  br label %_ZNSt6vectorIdSaIdEE7reserveEm.exit472

_ZNSt6vectorIdSaIdEE7reserveEm.exit472:           ; preds = %bb.cq, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469
  %.pre30293038 = phi ptr [ %i.ws, %bb.cq ], [ %i.xc, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i469 ]
  %i.xo = load i32, ptr %i.oj, align 8            ; 2 uses
  %.not2465 = icmp eq i32 %i.xo, 0
  br i1 %.not2465, label %.loopexit1474, label %.lr.ph2407

.lr.ph2407:                                       ; preds = %_ZNSt6vectorIdSaIdEE7reserveEm.exit472
  %i.xp = getelementptr inbounds nuw i8, ptr %i.go, i64 208
  br label %bb.ct

.loopexit1507:                                    ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i466
  %lpad.loopexit1509 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1508:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1510 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ct:                                            ; preds = %.lr.ph2407, %._crit_edge2405
  %.pre3029 = phi ptr [ %.pre30293038, %.lr.ph2407 ], [ %.pre30293037, %._crit_edge2405 ] ; 2 uses
  %i.xq = phi i32 [ %i.xo, %.lr.ph2407 ], [ %i.xv, %._crit_edge2405 ]
  %.02442406 = phi i64 [ 0, %.lr.ph2407 ], [ %i.xw, %._crit_edge2405 ] ; 2 uses
  %i.xr = load ptr, ptr %i.xp, align 8
  %i.xs = getelementptr inbounds nuw [16 x i8], ptr %i.xr, i64 %.02442406 ; 3 uses
  %i.xt = load i32, ptr %i.xs, align 8
  %.not2466 = icmp eq i32 %i.xt, 0
  br i1 %.not2466, label %._crit_edge2405, label %.lr.ph2404

.lr.ph2404:                                       ; preds = %bb.ct
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %.pre3027 = load ptr, ptr %i.er, align 8
  br label %bb.cu

._crit_edge2405.loopexit:                         ; preds = %bb.dc
  %.pre3030 = load i32, ptr %i.oj, align 8
  br label %._crit_edge2405

._crit_edge2405:                                  ; preds = %._crit_edge2405.loopexit, %bb.ct
  %.pre30293037 = phi ptr [ %i.zr, %._crit_edge2405.loopexit ], [ %.pre3029, %bb.ct ]
  %i.xv = phi i32 [ %.pre3030, %._crit_edge2405.loopexit ], [ %i.xq, %bb.ct ] ; 2 uses
  %i.xw = add nuw nsw i64 %.02442406, 1           ; 2 uses
  %i.xx = zext i32 %i.xv to i64
  %i.xy = icmp samesign ult i64 %i.xw, %i.xx
  br i1 %i.xy, label %bb.ct, label %.loopexit1474, !llvm.loop !714

bb.cu:                                            ; preds = %.lr.ph2404, %bb.dc
  %i.xz = phi ptr [ %.pre3029, %.lr.ph2404 ], [ %i.zr, %bb.dc ] ; 5 uses
  %i.ya = phi ptr [ %.pre3027, %.lr.ph2404 ], [ %i.zs, %bb.dc ] ; 3 uses
  %.02432402 = phi i64 [ 0, %.lr.ph2404 ], [ %i.zt, %bb.dc ] ; 2 uses
  %i.yb = load ptr, ptr %i.wg, align 8
  %i.yc = load ptr, ptr %i.xu, align 8
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %.02432402
  %i.ye = load i32, ptr %i.yd, align 4
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %i.yf ; 2 uses
  %i.yh = load <2 x float>, ptr %i.yg, align 4
  %i.yi = fpext <2 x float> %i.yh to <2 x double> ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yk = load <2 x float>, ptr %i.yj, align 4
  %i.yl = fpext <2 x float> %i.yk to <2 x double> ; 3 uses
  %i.ym = ptrtoint ptr %i.ya to i64               ; 2 uses
  %i.yn = ptrtoint ptr %i.xz to i64               ; 2 uses
  %i.yo = sub i64 %i.ym, %i.yn                    ; 6 uses
  %i.yp = load ptr, ptr %i.eq, align 8
  %i.yq = ptrtoint ptr %i.yp to i64
  %i.yr = sub i64 %i.yq, %i.ym
  %.not54.i1223 = icmp ult i64 %i.yr, 32
  br i1 %.not54.i1223, label %bb.cv, label %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1225

_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1225: ; preds = %bb.cu
  store <2 x double> %i.yi, ptr %i.ya, align 8
  %.sroa.8.0..sroa_idx2994 = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store <2 x double> %i.yl, ptr %.sroa.8.0..sroa_idx2994, align 8
  %i.ys = load ptr, ptr %i.er, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 32 ; 2 uses
  store ptr %i.yt, ptr %i.er, align 8
  %.pre3028 = load ptr, ptr %8, align 8
  br label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  %i.yu = and i64 %i.yo, -32
  %i.yv = icmp eq i64 %i.yu, 9223372036854775776
  br i1 %i.yv, label %bb.cw, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1230

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.435) #30
          to label %.noexc1236 unwind label %.loopexit.split-lp1459

.noexc1236:                                       ; preds = %bb.cw
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1230: ; preds = %bb.cv
  %i.yw = ashr exact i64 %i.yo, 3                 ; 3 uses
  %.sroa.speculated.i.i1231 = call i64 @llvm.umax.i64(i64 %i.yw, i64 4)
  %i.yx = add nsw i64 %.sroa.speculated.i.i1231, %i.yw ; 2 uses
  %i.yy = icmp ult i64 %i.yx, %i.yw
  %i.yz = call i64 @llvm.umin.i64(i64 %i.yx, i64 1152921504606846975)
  %i.za = select i1 %i.yy, i64 1152921504606846975, i64 %i.yz ; 3 uses
  %.not.i.i1232 = icmp eq i64 %i.za, 0
  br i1 %.not.i.i1232, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1233, label %bb.cx

bb.cx:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1230
  %i.zb = shl nuw nsw i64 %i.za, 3
  %i.zc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zb) #34
          to label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1233 unwind label %.loopexit1458

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1233: ; preds = %bb.cx, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1230
  %i.zd = phi ptr [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i1230 ], [ %i.zc, %bb.cx ] ; 9 uses
  %i.ze = icmp sgt i64 %i.yo, 8
  br i1 %i.ze, label %bb.cy, label %bb.cz, !prof !26

bb.cy:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1233
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.zd, ptr align 8 %i.xz, i64 %i.yo, i1 false)
  br label %bb.da

bb.cz:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i1233
  %i.zf = icmp eq i64 %i.yo, 8
  br i1 %i.zf, label %.thread1430, label %bb.da

.thread1430:                                      ; preds = %bb.cz
  %i.zg = load double, ptr %i.xz, align 8
  store double %i.zg, ptr %i.zd, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  store <2 x double> %i.yi, ptr %i.zh, align 8
  %.sroa.8.0..sroa_idx2992 = getelementptr inbounds nuw i8, ptr %i.zd, i64 24
  store <2 x double> %i.yl, ptr %.sroa.8.0..sroa_idx2992, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 40
  br label %bb.db

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.zj = getelementptr inbounds i8, ptr %i.zd, i64 %i.yo ; 3 uses
  store <2 x double> %i.yi, ptr %i.zj, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store <2 x double> %i.yl, ptr %.sroa.8.0..sroa_idx, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 32 ; 2 uses
  %.not.i59.i1234 = icmp eq ptr %i.xz, null
  br i1 %.not.i59.i1234, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235, label %bb.db

bb.db:                                            ; preds = %.thread1430, %bb.da
  %i.zl = phi ptr [ %i.zi, %.thread1430 ], [ %i.zk, %bb.da ]
  %i.zm = load ptr, ptr %i.eq, align 8
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = sub i64 %i.zn, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %i.xz, i64 noundef %i.zo) #32
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235: ; preds = %bb.db, %bb.da
  %i.zp = phi ptr [ %i.zl, %bb.db ], [ %i.zk, %bb.da ] ; 2 uses
  store ptr %i.zd, ptr %8, align 8
  store ptr %i.zp, ptr %i.er, align 8
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.za
  store ptr %i.zq, ptr %i.eq, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1225, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235
  %i.zr = phi ptr [ %.pre3028, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1225 ], [ %i.zd, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235 ] ; 2 uses
  %i.zs = phi ptr [ %i.yt, %_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag.exit.i1225 ], [ %i.zp, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i1235 ]
  %i.zt = add nuw nsw i64 %.02432402, 1           ; 2 uses
  %i.zu = load i32, ptr %i.xs, align 8
  %i.zv = zext i32 %i.zu to i64
  %i.zw = icmp samesign ult i64 %i.zt, %i.zv
  br i1 %i.zw, label %bb.cu, label %._crit_edge2405.loopexit, !llvm.loop !715

.loopexit1458:                                    ; preds = %bb.cx
  %lpad.loopexit1460 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp1459:                           ; preds = %bb.cw
  %lpad.loopexit.split-lp1461 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit1474:                                    ; preds = %._crit_edge2405, %_ZNSt6vectorIdSaIdEE7reserveEm.exit472, %.loopexit1475
  %i.zx = getelementptr inbounds nuw i8, ptr %i.go, i64 112 ; 3 uses
  %i.zy = load <8 x ptr>, ptr %i.zx, align 8
  %i.zz = icmp ne <8 x ptr> %i.zy, splat (ptr null)
  %i.aaa = bitcast <8 x i1> %i.zz to i8
  %i.aab = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.aaa)
  %i.aac = zext nneg i8 %i.aab to i64             ; 4 uses
  %i.aad = ptrtoint ptr %.sroa.15.02423 to i64    ; 2 uses
  %i.aae = ptrtoint ptr %.sroa.01362.02424 to i64 ; 2 uses
  %i.aaf = sub i64 %i.aad, %i.aae                 ; 2 uses
  %i.aag = sdiv exact i64 %i.aaf, 24              ; 5 uses
  %i.aah = icmp ult i64 %i.aag, %i.aac
  br i1 %i.aah, label %bb.dd, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.dd:                                            ; preds = %.loopexit1474
  %i.aai = sub nuw nsw i64 %i.aac, %i.aag         ; 5 uses
  %i.aaj = ptrtoint ptr %.sroa.23.02422 to i64    ; 2 uses
  %i.aak = sub i64 %i.aaj, %i.aad
  %i.aal = sdiv exact i64 %i.aak, 24              ; 2 uses
  %i.aam = sub nuw nsw i64 384307168202282325, %i.aag
  %i.aan = icmp ule i64 %i.aal, %i.aam
  call void @llvm.assume(i1 %i.aan)
  %.not28.i1240 = icmp ult i64 %i.aal, %i.aai
  br i1 %.not28.i1240, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.dd
  %i.aao = mul nuw nsw i64 %i.aai, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.15.02423, i8 0, i64 %i.aao, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.15.02423, i64 %i.aao
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dd
  %.sroa.speculated.i.i1241 = call i64 @llvm.umax.i64(i64 %i.aag, i64 %i.aai)
  %i.aap = add nuw nsw i64 %.sroa.speculated.i.i1241, %i.aag ; 2 uses
  %i.aaq = mul nuw nsw i64 %i.aap, 24
  %i.aar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aaq) #34
          to label %.noexc1245 unwind label %bb.dl ; 4 uses

.noexc1245:                                       ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aaf ; 2 uses
  %i.aat = mul nuw nsw i64 %i.aai, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aas, i8 0, i64 %i.aat, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %.sroa.01362.02424, %.sroa.15.02423
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1242

.lr.ph.i.i.i.i1242:                               ; preds = %.noexc1245, %.lr.ph.i.i.i.i1242
  %.012.i.i.i.i = phi ptr [ %i.aaz, %.lr.ph.i.i.i.i1242 ], [ %i.aar, %.noexc1245 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.aay, %.lr.ph.i.i.i.i1242 ], [ %.sroa.01362.02424, %.noexc1245 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.aau = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !745, !noalias !744
  store <2 x ptr> %i.aau, ptr %.012.i.i.i.i, align 8, !alias.scope !744, !noalias !745
  %i.aav = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.aax = load ptr, ptr %i.aaw, align 8, !alias.scope !745, !noalias !744
  store ptr %i.aax, ptr %i.aav, align 8, !alias.scope !744, !noalias !745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !745, !noalias !744
  %i.aay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i1243 = icmp eq ptr %i.aay, %.sroa.15.02423
  br i1 %.not.i.i.i.i1243, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1242, !llvm.loop !719

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i1242, %.noexc1245
  %.not.i36.i = icmp eq ptr %.sroa.01362.02424, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aba = sub i64 %i.aaj, %i.aae
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01362.02424, i64 noundef %i.aba) #32
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.de, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.abb = getelementptr inbounds nuw [24 x i8], ptr %i.aas, i64 %i.aai
  %i.abc = getelementptr inbounds nuw [24 x i8], ptr %i.aar, i64 %i.aap
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %.loopexit1474
  %.sroa.23.4 = phi ptr [ %.sroa.23.02422, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.23.02422, %.loopexit1474 ], [ %i.abc, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  %.sroa.15.4 = phi ptr [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.15.02423, %.loopexit1474 ], [ %i.abb, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  %.sroa.01362.4 = phi ptr [ %.sroa.01362.02424, %_ZSt27__uninitialized_default_n_aIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.01362.02424, %.loopexit1474 ], [ %i.aar, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 5 uses
  %i.abd = ptrtoint ptr %.sroa.17.02426 to i64    ; 2 uses
  %i.abe = ptrtoint ptr %.sroa.01377.02427 to i64 ; 2 uses
  %i.abf = sub i64 %i.abd, %i.abe                 ; 2 uses
  %i.abg = sdiv exact i64 %i.abf, 24              ; 5 uses
  %i.abh = icmp ult i64 %i.abg, %i.aac
  br i1 %i.abh, label %bb.df, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

bb.df:                                            ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.abi = sub nuw nsw i64 %i.aac, %i.abg         ; 5 uses
  %i.abj = ptrtoint ptr %.sroa.27.02425 to i64    ; 2 uses
  %i.abk = sub i64 %i.abj, %i.abd
  %i.abl = sdiv exact i64 %i.abk, 24              ; 2 uses
  %i.abm = sub nuw nsw i64 384307168202282325, %i.abg
  %i.abn = icmp ule i64 %i.abl, %i.abm
  call void @llvm.assume(i1 %i.abn)
  %.not28.i1247 = icmp ult i64 %i.abl, %i.abi
  br i1 %.not28.i1247, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.df
  %i.abo = mul nuw nsw i64 %i.abi, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.17.02426, i8 0, i64 %i.abo, i1 false)
  %scevgep.i.i.i.i1248 = getelementptr i8, ptr %.sroa.17.02426, i64 %i.abo
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.df
  %.sroa.speculated.i.i1249 = call i64 @llvm.umax.i64(i64 %i.abg, i64 %i.abi)
  %i.abp = add nuw nsw i64 %.sroa.speculated.i.i1249, %i.abg ; 2 uses
  %i.abq = mul nuw nsw i64 %i.abp, 24
  %i.abr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abq) #34
          to label %.noexc1257 unwind label %bb.dm ; 4 uses

.noexc1257:                                       ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abf ; 2 uses
  %i.abt = mul nuw nsw i64 %i.abi, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.abs, i8 0, i64 %i.abt, i1 false)
  %.not10.i.i.i.i1250 = icmp eq ptr %.sroa.01377.02427, %.sroa.17.02426
  br i1 %.not10.i.i.i.i1250, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1251

.lr.ph.i.i.i.i1251:                               ; preds = %.noexc1257, %.lr.ph.i.i.i.i1251
  %.012.i.i.i.i1252 = phi ptr [ %i.abz, %.lr.ph.i.i.i.i1251 ], [ %i.abr, %.noexc1257 ] ; 3 uses
  %.0911.i.i.i.i1253 = phi ptr [ %i.aby, %.lr.ph.i.i.i.i1251 ], [ %.sroa.01377.02427, %.noexc1257 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.abu = load <2 x ptr>, ptr %.0911.i.i.i.i1253, align 8, !alias.scope !747, !noalias !746
  store <2 x ptr> %i.abu, ptr %.012.i.i.i.i1252, align 8, !alias.scope !746, !noalias !747
  %i.abv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1252, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1253, i64 16
  %i.abx = load ptr, ptr %i.abw, align 8, !alias.scope !747, !noalias !746
  store ptr %i.abx, ptr %i.abv, align 8, !alias.scope !746, !noalias !747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i1253, i8 0, i64 24, i1 false), !alias.scope !747, !noalias !746
  %i.aby = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1253, i64 24 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1252, i64 24
  %.not.i.i.i.i1254 = icmp eq ptr %i.aby, %.sroa.17.02426
  br i1 %.not.i.i.i.i1254, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i1251, !llvm.loop !723

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i1251, %.noexc1257
  %.not.i36.i1255 = icmp eq ptr %.sroa.01377.02427, null
  br i1 %.not.i36.i1255, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aca = sub i64 %i.abj, %i.abe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01377.02427, i64 noundef %i.aca) #32
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.dg, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.acb = getelementptr inbounds nuw [24 x i8], ptr %i.abs, i64 %i.abi
  %i.acc = getelementptr inbounds nuw [24 x i8], ptr %i.abr, i64 %i.abp
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EE6resizeEm.exit:    ; preds = %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %.sroa.27.4 = phi ptr [ %.sroa.27.02425, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.27.02425, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.acc, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 3 uses
  %.sroa.17.4 = phi ptr [ %scevgep.i.i.i.i1248, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.17.02426, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.acb, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 3 uses
  %.sroa.01377.4 = phi ptr [ %.sroa.01377.02427, %_ZSt27__uninitialized_default_n_aIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RSaIT1_E.exit.i ], [ %.sroa.01377.02427, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit ], [ %i.abr, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit37.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
end_hunk_0
