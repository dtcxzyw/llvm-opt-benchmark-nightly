inline.NumInlined: 772
inline.NumDeleted: 374
begin_hunk_0_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364, %bb.en
  %i.rc = phi ptr [ %i.rb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364 ], [ %.pre675, %bb.en ] ; 4 uses
  %i.rd = phi ptr [ %i.ra, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364 ], [ %i.qh, %bb.en ] ; 3 uses
  %.not.i368 = icmp eq ptr %i.rd, %i.rc
  br i1 %.not.i368, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367
  %i.re = load float, ptr %i.cm, align 4
  %i.rf = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.rf, ptr %i.rd, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store float %i.re, ptr %i.rg, align 4
  %i.rh = load ptr, ptr %i.pz, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 12 ; 2 uses
  store ptr %i.ri, ptr %i.pz, align 8
  %.pre676 = load ptr, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383

bb.er:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367
  %i.rj = load ptr, ptr %i.py, align 8            ; 5 uses
  %i.rk = ptrtoint ptr %i.rc to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl                    ; 4 uses
  %i.rn = icmp eq i64 %i.rm, 9223372036854775800
  br i1 %i.rn, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369: ; preds = %bb.er
  %i.ro = sdiv exact i64 %i.rm, 12                ; 3 uses
  %.sroa.speculated.i.i.i370 = call i64 @llvm.umax.i64(i64 %i.ro, i64 1)
  %i.rp = add nsw i64 %.sroa.speculated.i.i.i370, %i.ro ; 2 uses
  %i.rq = icmp ult i64 %i.rp, %i.ro
  %i.rr = call i64 @llvm.umin.i64(i64 %i.rp, i64 768614336404564650)
  %i.rs = select i1 %i.rq, i64 768614336404564650, i64 %i.rr ; 3 uses
  %.not.i.i.i371 = icmp ne i64 %i.rs, 0
  call void @llvm.assume(i1 %.not.i.i.i371)
  %i.rt = mul nuw nsw i64 %i.rs, 12
  %i.ru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #25
          to label %.noexc382 unwind label %.loopexit550 ; 5 uses

.noexc382:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rm ; 2 uses
  %i.rw = load float, ptr %i.cm, align 4
  %i.rx = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.rx, ptr %i.rv, align 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store float %i.rw, ptr %i.ry, align 4
  %.not10.i.i.i.i.i372 = icmp eq ptr %i.rj, %i.rc
  br i1 %.not10.i.i.i.i.i372, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377, label %.lr.ph.i.i.i.i.i373

.lr.ph.i.i.i.i.i373:                              ; preds = %.noexc382, %.lr.ph.i.i.i.i.i373
  %.012.i.i.i.i.i374 = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i373 ], [ %i.ru, %.noexc382 ] ; 2 uses
  %.0911.i.i.i.i.i375 = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i373 ], [ %i.rj, %.noexc382 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i374, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i375, i64 12, i1 false), !alias.scope !43
  %i.rz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i375, i64 12 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i374, i64 12 ; 2 uses
  %.not.i.i.i.i.i376 = icmp eq ptr %i.rz, %i.rc
  br i1 %.not.i.i.i.i.i376, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377, label %.lr.ph.i.i.i.i.i373, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377: ; preds = %.lr.ph.i.i.i.i.i373, %.noexc382
  %.0.lcssa.i.i.i.i.i378 = phi ptr [ %i.ru, %.noexc382 ], [ %i.sa, %.lr.ph.i.i.i.i.i373 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i378, i64 12 ; 2 uses
  %.not.i35.i.i379 = icmp eq ptr %i.rj, null
  br i1 %.not.i35.i.i379, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377
  call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef %i.rm) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380: ; preds = %bb.es, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377
  store ptr %i.ru, ptr %i.py, align 8
  store ptr %i.sb, ptr %i.pz, align 8
  %i.sc = getelementptr inbounds nuw [12 x i8], ptr %i.ru, i64 %i.rs ; 2 uses
  store ptr %i.sc, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380, %bb.eq
  %i.sd = phi ptr [ %i.sc, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380 ], [ %.pre676, %bb.eq ] ; 4 uses
  %i.se = phi ptr [ %i.sb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380 ], [ %i.ri, %bb.eq ] ; 3 uses
  %.not.i384 = icmp eq ptr %i.se, %i.sd
  br i1 %.not.i384, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383
  %i.sf = load float, ptr %i.cp, align 16
  %i.sg = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.sg, ptr %i.se, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store float %i.sf, ptr %i.sh, align 4
  %i.si = load ptr, ptr %i.pz, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  store ptr %i.sj, ptr %i.pz, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

bb.eu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383
  %i.sk = load ptr, ptr %i.py, align 8            ; 5 uses
  %i.sl = ptrtoint ptr %i.sd to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm                    ; 4 uses
  %i.so = icmp eq i64 %i.sn, 9223372036854775800
  br i1 %i.so, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385: ; preds = %bb.eu
  %i.sp = sdiv exact i64 %i.sn, 12                ; 3 uses
  %.sroa.speculated.i.i.i386 = call i64 @llvm.umax.i64(i64 %i.sp, i64 1)
  %i.sq = add nsw i64 %.sroa.speculated.i.i.i386, %i.sp ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.sp
  %i.ss = call i64 @llvm.umin.i64(i64 %i.sq, i64 768614336404564650)
  %i.st = select i1 %i.sr, i64 768614336404564650, i64 %i.ss ; 3 uses
  %.not.i.i.i387 = icmp ne i64 %i.st, 0
  call void @llvm.assume(i1 %.not.i.i.i387)
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.su) #25
          to label %.noexc398 unwind label %.loopexit550 ; 5 uses

.noexc398:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sn ; 2 uses
  %i.sx = load float, ptr %i.cp, align 16
  %i.sy = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.sy, ptr %i.sw, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store float %i.sx, ptr %i.sz, align 4
  %.not10.i.i.i.i.i388 = icmp eq ptr %i.sk, %i.sd
  br i1 %.not10.i.i.i.i.i388, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393, label %.lr.ph.i.i.i.i.i389

.lr.ph.i.i.i.i.i389:                              ; preds = %.noexc398, %.lr.ph.i.i.i.i.i389
  %.012.i.i.i.i.i390 = phi ptr [ %i.tb, %.lr.ph.i.i.i.i.i389 ], [ %i.sv, %.noexc398 ] ; 2 uses
  %.0911.i.i.i.i.i391 = phi ptr [ %i.ta, %.lr.ph.i.i.i.i.i389 ], [ %i.sk, %.noexc398 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i390, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i391, i64 12, i1 false), !alias.scope !47
  %i.ta = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i391, i64 12 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i390, i64 12 ; 2 uses
  %.not.i.i.i.i.i392 = icmp eq ptr %i.ta, %i.sd
  br i1 %.not.i.i.i.i.i392, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393, label %.lr.ph.i.i.i.i.i389, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393: ; preds = %.lr.ph.i.i.i.i.i389, %.noexc398
  %.0.lcssa.i.i.i.i.i394 = phi ptr [ %i.sv, %.noexc398 ], [ %i.tb, %.lr.ph.i.i.i.i.i389 ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i394, i64 12
  %.not.i35.i.i395 = icmp eq ptr %i.sk, null
  br i1 %.not.i35.i.i395, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sn) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396: ; preds = %bb.ev, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393
  store ptr %i.sv, ptr %i.py, align 8
  store ptr %i.tc, ptr %i.pz, align 8
  %i.td = getelementptr inbounds nuw [12 x i8], ptr %i.sv, i64 %i.st
  store ptr %i.td, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396, %bb.et, %bb.ej, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i348, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

bb.ew:                                            ; preds = %.loopexit555, %.loopexit.split-lp556, %.loopexit550, %.loopexit.split-lp551, %.loopexit549, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %.pn203 = phi { ptr, i32 } [ %.pn197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp551 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit549 ], [ %lpad.loopexit552, %.loopexit550 ], [ %lpad.loopexit557, %.loopexit555 ], [ %lpad.loopexit.split-lp558, %.loopexit.split-lp556 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.gv

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.z, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.sroa.0506.1 = phi ptr [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.sroa.0506.0611, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351 ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0489.0602, %bb.z ]
  %i.te = load i8, ptr %.2, align 1               ; 2 uses
  %.not538 = icmp eq i8 %i.te, 0
  br i1 %.not538, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread, label %bb.m

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.tf = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.ex unwind label %bb.x      ; 6 uses

bb.ex:                                            ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.tf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 unwind label %bb.ey

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.ex
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.tf, ptr %i.tg, align 8
  store i32 9, ptr %i.tf, align 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.th, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 13
  store i8 0, ptr %i.ti, align 1
  %.pre681 = load ptr, ptr %6, align 8            ; 4 uses
  %.pre682 = load ptr, ptr %i.ac, align 8         ; 4 uses
  %.not539616 = icmp eq ptr %.pre681, %.pre682    ; 2 uses
  br i1 %.not539616, label %._crit_edge619, label %.lr.ph618

.lr.ph618:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ez

._crit_edge619:                                   ; preds = %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8            ; 2 uses
  %.not = icmp eq i32 %i.tl, 0
  br i1 %.not, label %bb.fc, label %bb.ff

bb.ey:                                            ; preds = %bb.ex
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef 1144) #23
  br label %bb.gv

bb.ez:                                            ; preds = %.lr.ph618, %bb.fb
  %.sroa.0441.0617 = phi ptr [ %.pre681, %.lr.ph618 ], [ %i.uf, %bb.fb ] ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 32 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 40 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = icmp eq ptr %i.to, %i.tq
  br i1 %i.tr, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ts = load ptr, ptr %i.tg, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1104 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = add i32 %i.tu, 1
  store i32 %i.tv, ptr %i.tt, align 8
  %i.tw = load ptr, ptr %i.tp, align 8
  %i.tx = load ptr, ptr %i.tn, align 8
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = sdiv exact i64 %i.ua, 80
  %i.uc = trunc i64 %i.ub to i32
  %i.ud = load i32, ptr %i.tj, align 8
  %i.ue = add i32 %i.ud, %i.uc
  store i32 %i.ue, ptr %i.tj, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 56 ; 2 uses
  %.not539 = icmp eq ptr %i.uf, %.pre682
  br i1 %.not539, label %._crit_edge619, label %bb.ez

bb.fc:                                            ; preds = %._crit_edge619
  %i.ug = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ug, ptr noundef nonnull @.str.9)
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  invoke void @__cxa_throw(ptr nonnull %i.ug, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gz unwind label %bb.x

bb.fe:                                            ; preds = %bb.fc
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ug) #22
  br label %bb.gv

bb.ff:                                            ; preds = %._crit_edge619
  %i.ui = zext i32 %i.tl to i64
  %i.uj = shl nuw nsw i64 %i.ui, 3
  %i.uk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.uj) #25
          to label %bb.fg unwind label %bb.x

bb.fg:                                            ; preds = %bb.ff
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.uk, ptr %i.ul, align 8
  %i.um = load ptr, ptr %i.tg, align 8            ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1104 ; 3 uses
  %i.uo = load i32, ptr %i.un, align 8            ; 2 uses
  %i.up = icmp eq i32 %i.uo, 1
  br i1 %i.up, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 0, ptr %i.un, align 8
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fg
  %i.uq = zext i32 %i.uo to i64
  %i.ur = shl nuw nsw i64 %i.uq, 3
  %i.us = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ur) #25
          to label %bb.fj unwind label %bb.fk     ; 3 uses

bb.fj:                                            ; preds = %bb.fi
  %i.ut = load i32, ptr %i.un, align 8
  %i.uu = zext i32 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.us, i8 0, i64 %i.uv, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 1112
  store ptr %i.us, ptr %i.uw, align 8
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fl:                                            ; preds = %bb.fj, %bb.fh
  %.0162 = phi ptr [ %i.tg, %bb.fh ], [ %i.us, %bb.fj ] ; 2 uses
  %i.uy = load i32, ptr %i.tk, align 8            ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.uy, ptr %i.uz, align 8
  %i.va = zext i32 %i.uy to i64
  %i.vb = shl nuw nsw i64 %i.va, 3
  %i.vc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vb) #25
          to label %bb.fm unwind label %bb.fp     ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.vc, ptr %i.vd, align 8
  br i1 %.not539616, label %._crit_edge643, label %.lr.ph642

.lr.ph642:                                        ; preds = %bb.fm
  %i.ve = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  br label %bb.fq

._crit_edge643.loopexit:                          ; preds = %.loopexit547
  %.pre683 = load ptr, ptr %6, align 8
  %.pre684 = load ptr, ptr %i.ac, align 8
  br label %._crit_edge643

._crit_edge643:                                   ; preds = %._crit_edge643.loopexit, %bb.fm
  %i.vg = phi ptr [ %.pre684, %._crit_edge643.loopexit ], [ %.pre682, %bb.fm ] ; 2 uses
  %i.vh = phi ptr [ %.pre683, %._crit_edge643.loopexit ], [ %.pre681, %bb.fm ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %.not4.i.i.i = icmp eq ptr %i.vh, %i.vg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge643, %_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vo, %_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i ], [ %i.vh, %._crit_edge643 ] ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.vi) #22
  %i.vj = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vl = icmp eq ptr %i.vj, %i.vk
  br i1 %i.vl, label %_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vm = load i64, ptr %i.vk, align 8
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vn) #23
  br label %_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i407 = icmp eq ptr %i.vo, %i.vg
  br i1 %.not.i.i.i407, label %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !51

_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp11RAWImporter16GroupInformationEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge643
  %i.vp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.vh, %._crit_edge643 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.vp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exit.i
  %i.vq = load ptr, ptr %i.ae, align 8
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vp to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.vt) #23
  br label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp11RAWImporter16GroupInformationES2_EvT_S4_RSaIT0_E.exit.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.vu = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i409 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i.i409, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev.exit
  %i.vv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = sub i64 %i.vx, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.vz) #23
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev.exit, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.wa = load ptr, ptr %i.l, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8
  call void %i.wc(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #22, !inline_history !52
  ret void

bb.fp:                                            ; preds = %bb.fl
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fq:                                            ; preds = %.lr.ph642, %.loopexit547
  %.0156640 = phi i32 [ 0, %.lr.ph642 ], [ %.2158, %.loopexit547 ] ; 3 uses
  %.0159639 = phi ptr [ %i.vc, %.lr.ph642 ], [ %.2161, %.loopexit547 ] ; 3 uses
  %.sroa.0437.0638 = phi ptr [ %.pre681, %.lr.ph642 ], [ %i.abz, %.loopexit547 ] ; 5 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0437.0638, i64 32 ; 3 uses
  %i.wf = load ptr, ptr %i.we, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %.sroa.0437.0638, i64 40 ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = icmp eq ptr %i.wf, %i.wh
  br i1 %i.wi, label %.loopexit547, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.wj = load ptr, ptr %i.tg, align 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1104
  %i.wl = load i32, ptr %i.wk, align 8
  %.not174 = icmp eq i32 %i.wl, 0
  br i1 %.not174, label %bb.fx, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wm = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.ft unwind label %bb.fv     ; 5 uses

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.wm)
          to label %bb.fu unwind label %bb.fw

bb.fu:                                            ; preds = %bb.ft
  store ptr %i.wm, ptr %.0162, align 8
  %i.wn = load ptr, ptr %i.tg, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 1096
  store ptr %i.wn, ptr %i.wo, align 8
  br label %bb.fy

bb.fv:                                            ; preds = %bb.fs
  %i.wp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fw:                                            ; preds = %bb.ft
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wm, i64 noundef 1144) #23
  br label %bb.gv

bb.fx:                                            ; preds = %bb.fr
  %i.wr = load ptr, ptr %.0162, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fu
  %.0150 = phi ptr [ %i.wm, %bb.fu ], [ %i.wr, %bb.fx ] ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0437.0638, i64 8
  %i.wt = load i64, ptr %i.ws, align 8            ; 4 uses
  %i.wu = icmp ugt i64 %i.wt, 1023
  br i1 %i.wu, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit411, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.wv = trunc nuw nsw i64 %i.wt to i32
  store i32 %i.wv, ptr %.0150, align 4
  %i.ww = getelementptr inbounds nuw i8, ptr %.0150, i64 4 ; 2 uses
  %i.wx = load ptr, ptr %.sroa.0437.0638, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ww, ptr align 1 %i.wx, i64 %i.wt, i1 false)
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wt
  store i8 0, ptr %i.wy, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit411

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit411: ; preds = %bb.fy, %bb.fz
  %i.wz = load ptr, ptr %i.wg, align 8
  %i.xa = load ptr, ptr %i.we, align 8
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %i.xa to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %i.xe = sdiv exact i64 %i.xd, 80                ; 2 uses
  %i.xf = trunc i64 %i.xe to i32
  %i.xg = getelementptr inbounds nuw i8, ptr %.0150, i64 1120
  store i32 %i.xf, ptr %i.xg, align 8
  %i.xh = shl nsw i64 %i.xe, 2
  %i.xi = and i64 %i.xh, 17179869180
  %i.xj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.xi) #25
          to label %bb.ga unwind label %bb.gb     ; 2 uses

bb.ga:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit411
  %i.xk = getelementptr inbounds nuw i8, ptr %.0150, i64 1128
  store ptr %i.xj, ptr %i.xk, align 8
  %i.xl = load ptr, ptr %i.we, align 8            ; 2 uses
  %i.xm = load ptr, ptr %i.wg, align 8            ; 2 uses
  %.not541628 = icmp eq ptr %i.xl, %i.xm
  br i1 %.not541628, label %.loopexit547, label %.lr.ph635

bb.gb:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit411
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.lr.ph635:                                        ; preds = %bb.ga, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit
  %.0149633 = phi ptr [ %i.xo, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %i.xj, %bb.ga ] ; 2 uses
  %.1157632 = phi i32 [ %i.xz, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %.0156640, %bb.ga ] ; 4 uses
  %.1160631 = phi ptr [ %i.abx, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %.0159639, %bb.ga ] ; 2 uses
  %.sroa.0427.0629 = phi ptr [ %i.aby, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ], [ %i.xl, %bb.ga ] ; 8 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0149633, i64 4
  store i32 %.1157632, ptr %.0149633, align 4
  %i.xp = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #25
          to label %bb.gc unwind label %bb.gg     ; 12 uses

bb.gc:                                            ; preds = %.lr.ph635
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4 ; 2 uses
  store i32 0, ptr %i.xq, align 4
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8 ; 2 uses
  store i32 0, ptr %i.xr, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 16 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 224
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xp, i64 1272
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xp, i64 1312
  store ptr null, ptr %i.xv, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.xs, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.xt, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.xu, i8 0, i64 36, i1 false)
  %i.xw = load ptr, ptr %i.ul, align 8
  %i.xx = zext i32 %.1157632 to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xx
  store ptr %i.xp, ptr %i.xy, align 8
  %i.xz = add i32 %.1157632, 1                    ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xp, i64 232
  store i32 %.1157632, ptr %i.ya, align 8
  store i32 4, ptr %i.xp, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 32 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 40
  %i.yd = load ptr, ptr %i.yc, align 8
  %i.ye = load ptr, ptr %i.yb, align 8
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = ptrtoint ptr %i.ye to i64
  %i.yh = sub i64 %i.yf, %i.yg
  %i.yi = sdiv exact i64 %i.yh, 12                ; 3 uses
  %i.yj = trunc i64 %i.yi to i32                  ; 4 uses
  store i32 %i.yj, ptr %i.xq, align 4
  %i.yk = and i64 %i.yi, 4294967295               ; 3 uses
  %i.yl = mul nuw nsw i64 %i.yk, 12               ; 3 uses
  %i.ym = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yl) #25
          to label %bb.gd unwind label %bb.gg     ; 3 uses

bb.gd:                                            ; preds = %bb.gc
  %i.yn = icmp eq i64 %i.yk, 0
  br i1 %i.yn, label %.loopexit546, label %.loopexit546.loopexit

.loopexit546.loopexit:                            ; preds = %bb.gd
  %i.yo = add nsw i64 %i.yl, -12                  ; 2 uses
  %i.yp = urem i64 %i.yo, 12
  %i.yq = sub nuw nsw i64 %i.yo, %i.yp
  %i.yr = add nsw i64 %i.yq, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ym, i8 0, i64 %i.yr, i1 false)
  br label %.loopexit546

.loopexit546:                                     ; preds = %.loopexit546.loopexit, %bb.gd
  store ptr %i.ym, ptr %i.xs, align 8
  %i.ys = load ptr, ptr %i.yb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ym, ptr nonnull align 4 %i.ys, i64 %i.yl, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 56 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 64
  %i.yv = load ptr, ptr %i.yu, align 8
  %i.yw = load ptr, ptr %i.yt, align 8
  %.not175 = icmp eq ptr %i.yv, %i.yw
  br i1 %.not175, label %thread-pre-split, label %bb.ge

bb.ge:                                            ; preds = %.loopexit546
  %i.yx = shl nuw nsw i64 %i.yk, 4                ; 2 uses
  %i.yy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.yx) #25
          to label %bb.gf unwind label %bb.gg     ; 3 uses

bb.gf:                                            ; preds = %bb.ge
  %i.yz = icmp eq i32 %i.yj, 0
  br i1 %i.yz, label %.loopexit545, label %.loopexit545.loopexit

.loopexit545.loopexit:                            ; preds = %bb.gf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yy, i8 0, i64 %i.yx, i1 false)
  br label %.loopexit545

.loopexit545:                                     ; preds = %.loopexit545.loopexit, %bb.gf
  %i.za = getelementptr inbounds nuw i8, ptr %i.xp, i64 48
  store ptr %i.yy, ptr %i.za, align 8
  %i.zb = load ptr, ptr %i.yt, align 8
  %i.zc = shl i64 %i.yi, 4
  %i.zd = and i64 %i.zc, 68719476720
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.yy, ptr nonnull align 4 %i.zb, i64 %i.zd, i1 false)
  br label %thread-pre-split

bb.gg:                                            ; preds = %bb.ge, %bb.gc, %.lr.ph635
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

thread-pre-split:                                 ; preds = %.loopexit546, %.loopexit545
  %i.zf = udiv i32 %i.yj, 3                       ; 2 uses
  store i32 %i.zf, ptr %i.xr, align 8
  %i.zg = zext nneg i32 %i.zf to i64              ; 5 uses
  %i.zh = shl nuw nsw i64 %i.zg, 4                ; 2 uses
  %i.zi = or disjoint i64 %i.zh, 8
  %i.zj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zi) #25
          to label %bb.gh unwind label %bb.gj     ; 2 uses

bb.gh:                                            ; preds = %thread-pre-split
  store i64 %i.zg, ptr %i.zj, align 16
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8 ; 7 uses
  %i.zl = icmp ult i32 %i.yj, 3
  br i1 %i.zl, label %.loopexit544.thread, label %bb.gi

.loopexit544.thread:                              ; preds = %bb.gh
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xp, i64 208
  store ptr %i.zk, ptr %i.zm, align 8
  br label %._crit_edge627

bb.gi:                                            ; preds = %bb.gh
  %i.zn = getelementptr inbounds nuw [16 x i8], ptr %i.zk, i64 %i.zg
  %i.zo = add nuw nsw i64 %i.zg, 1152921504606846975
  %i.zp = and i64 %i.zo, 1152921504606846975
  %xtraiter = and i64 %i.zg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.gi, %.prol.preheader
  %i.zq = phi ptr [ %i.zs, %.prol.preheader ], [ %i.zk, %bb.gi ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.gi ]
  store i32 0, ptr %i.zq, align 8
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  store ptr null, ptr %i.zr, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !53

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.gi
  %.unr = phi ptr [ %i.zk, %bb.gi ], [ %i.zs, %.prol.preheader ]
  %i.zt = icmp samesign ult i64 %i.zp, 7
  br i1 %i.zt, label %.lr.ph626.preheader, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.zu = phi ptr [ %i.aak, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.zu, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  store ptr null, ptr %i.zv, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  store i32 0, ptr %i.zw, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 24
  store ptr null, ptr %i.zx, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  store i32 0, ptr %i.zy, align 8
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 40
  store ptr null, ptr %i.zz, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zu, i64 48
  store i32 0, ptr %i.aaa, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zu, i64 56
  store ptr null, ptr %i.aab, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zu, i64 64
  store i32 0, ptr %i.aac, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zu, i64 72
  store ptr null, ptr %i.aad, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zu, i64 80
  store i32 0, ptr %i.aae, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zu, i64 88
  store ptr null, ptr %i.aaf, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zu, i64 96
  store i32 0, ptr %i.aag, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zu, i64 104
  store ptr null, ptr %i.aah, align 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zu, i64 112
  store i32 0, ptr %i.aai, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zu, i64 120
  store ptr null, ptr %i.aaj, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zu, i64 128 ; 2 uses
  %i.aal = icmp eq ptr %i.aak, %i.zn
  br i1 %i.aal, label %.lr.ph626.preheader, label %.new

.lr.ph626.preheader:                              ; preds = %.new, %.prol.loopexit
  %i.aam = getelementptr inbounds nuw i8, ptr %i.xp, i64 208
  store ptr %i.zk, ptr %i.aam, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zh
  br label %.lr.ph626

.lr.ph626:                                        ; preds = %.lr.ph626.preheader, %.loopexit
  %.0142624 = phi i32 [ %i.aau, %.loopexit ], [ 0, %.lr.ph626.preheader ] ; 4 uses
  %.0146623 = phi ptr [ %i.aap, %.loopexit ], [ %i.zk, %.lr.ph626.preheader ] ; 3 uses
  store i32 3, ptr %.0146623, align 8
  %i.aao = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #25
          to label %.loopexit unwind label %bb.gk ; 4 uses

.loopexit:                                        ; preds = %.lr.ph626
  %i.aap = getelementptr inbounds nuw i8, ptr %.0146623, i64 16 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0146623, i64 8
  store ptr %i.aao, ptr %i.aaq, align 8
  %i.aar = add nuw i32 %.0142624, 1
  store i32 %.0142624, ptr %i.aao, align 4
  %i.aas = add nuw i32 %.0142624, 2
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  store i32 %i.aar, ptr %i.aat, align 4
  %i.aau = add nuw i32 %.0142624, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store i32 %i.aas, ptr %i.aav, align 4
  %.not176 = icmp eq ptr %i.aap, %i.aan
  br i1 %.not176, label %._crit_edge627, label %.lr.ph626, !llvm.loop !55

bb.gj:                                            ; preds = %thread-pre-split
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gk:                                            ; preds = %.lr.ph626
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

._crit_edge627:                                   ; preds = %.loopexit, %.loopexit544.thread
  %i.aay = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %bb.gl unwind label %bb.gn     ; 5 uses

bb.gl:                                            ; preds = %._crit_edge627
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.aay)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store <4 x float> splat (float 1.000000e+00), ptr %11, align 16
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 8 ; 2 uses
  %i.aba = load i64, ptr %i.aaz, align 8
  switch i64 %i.aba, label %.thread530 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
    i64 0, label %bb.gt
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.gm
  %i.abb = load ptr, ptr %.sroa.0427.0629, align 8 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 1
  %i.abd = xor i64 %i.abc, 8389209267074589733
  %i.abe = getelementptr i8, ptr %i.abb, i64 8
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = zext i8 %i.abf to i64
  %i.abh = xor i64 %i.abg, 37
  %i.abi = or i64 %i.abd, %i.abh
  %i.abj = icmp ne i64 %i.abi, 0
  %i.abk = zext i1 %i.abj to i32
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %.thread530

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  store float 6.000000e-01, ptr %i.ve, align 8
  store <2 x float> splat (float 6.000000e-01), ptr %11, align 16
  br label %bb.gt

bb.gn:                                            ; preds = %._crit_edge627
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.go:                                            ; preds = %bb.gl
  %i.abn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef 16) #23
  br label %bb.gv

bb.gp:                                            ; preds = %bb.gt
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

.thread530:                                       ; preds = %bb.gm, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %12, i8 0, i64 1028, i1 false)
  %i.abp = load i64, ptr %i.aaz, align 8          ; 4 uses
  %i.abq = icmp ugt i64 %i.abp, 1023
  br i1 %i.abq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit412, label %bb.gq

bb.gq:                                            ; preds = %.thread530
  %i.abr = trunc nuw nsw i64 %i.abp to i32
  store i32 %i.abr, ptr %12, align 4
  %i.abs = load ptr, ptr %.sroa.0427.0629, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.vf, ptr align 1 %i.abs, i64 %i.abp, i1 false)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.abp
  store i8 0, ptr %i.abt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit412

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit412: ; preds = %.thread530, %bb.gq
  %i.abu = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.aay, ptr noundef nonnull %12, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 0)
          to label %bb.gr unwind label %bb.gs     ; 0 uses

bb.gr:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit412
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.gt

bb.gs:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit412
  %i.abv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gm, %bb.gr, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.abw = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.aay, ptr noundef nonnull %11, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit unwind label %bb.gp ; 0 uses

_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit: ; preds = %bb.gt
  %i.abx = getelementptr inbounds nuw i8, ptr %.1160631, i64 8 ; 2 uses
  store ptr %i.aay, ptr %.1160631, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.0427.0629, i64 80 ; 2 uses
  %.not541 = icmp eq ptr %i.aby, %i.xm
  br i1 %.not541, label %.loopexit547, label %.lr.ph635, !llvm.loop !56

bb.gu:                                            ; preds = %bb.gs, %bb.gp
  %.pn178 = phi { ptr, i32 } [ %i.abo, %bb.gp ], [ %i.abv, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.gv

.loopexit547:                                     ; preds = %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit, %bb.ga, %bb.fq
  %.2161 = phi ptr [ %.0159639, %bb.fq ], [ %.0159639, %bb.ga ], [ %i.abx, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ]
  %.2158 = phi i32 [ %.0156640, %bb.fq ], [ %.0156640, %bb.ga ], [ %i.xz, %_ZN10aiMaterial11AddPropertyI9aiColor4tIfEEE8aiReturnPKT_jPKcjj.exit ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.0437.0638, i64 56 ; 2 uses
  %.not540 = icmp eq ptr %i.abz, %.pre682
  br i1 %.not540, label %._crit_edge643.loopexit, label %bb.fq

bb.gv:                                            ; preds = %bb.fv, %bb.fw, %bb.gb, %bb.gj, %bb.gn, %bb.go, %bb.gu, %bb.gk, %bb.gg, %bb.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.fk, %bb.fp, %bb.fe, %bb.ey, %bb.x
  %.pn203.pn.pn = phi { ptr, i32 } [ %i.wd, %bb.fp ], [ %i.tm, %bb.ey ], [ %i.dq, %bb.x ], [ %i.uh, %bb.fe ], [ %.pn178, %bb.gu ], [ %i.ux, %bb.fk ], [ %i.abn, %bb.go ], [ %.pn203, %bb.ew ], [ %i.abm, %bb.gn ], [ %.pn191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %i.wp, %bb.fv ], [ %i.wq, %bb.fw ], [ %i.xn, %bb.gb ], [ %i.ze, %bb.gg ], [ %i.aaw, %bb.gj ], [ %i.aax, %bb.gk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %.pn203.pn.pn.pn = phi { ptr, i32 } [ %.pn203.pn.pn, %bb.gv ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.t
  %.pn203.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn203.pn.pn.pn, %bb.gw ], [ %i.dj, %bb.t ]
  %i.aca = load ptr, ptr %5, align 8              ; 3 uses
  %.not.i.i.i414 = icmp eq ptr %i.aca, null
  br i1 %.not.i.i.i414, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i417, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.acb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acc = load ptr, ptr %i.acb, align 8
  %i.acd = ptrtoint ptr %i.acc to i64
  %i.ace = ptrtoint ptr %i.aca to i64
  %i.acf = sub i64 %i.acd, %i.ace
  call void @_ZdlPvm(ptr noundef nonnull %i.aca, i64 noundef %i.acf) #23
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i417

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i417: ; preds = %bb.gy, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.acg = load ptr, ptr %i.l, align 8
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #22, !inline_history !52
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit418

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit418: ; preds = %bb.d, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %.pn209.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn203.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i417 ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %.pn209.pn

bb.gz:                                            ; preds = %bb.fd
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11RAWImporter16GroupInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.o) #22
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.b, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11RAWImporter16GroupInformationD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #22
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

end_hunk_0
begin_hunk_1_@_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #22
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !73
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !73
  store i8 0, ptr %i.a, align 8, !alias.scope !73
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !73 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !73 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !73 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !73 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #23
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #12 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #22
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %4, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt18__do_uninit_fill_nIPN6Assimp11RAWImporter16GroupInformationEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not18 = icmp eq i64 %1, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10_ConstructIN6Assimp11RAWImporter16GroupInformationEJRKS2_EEvPT_DpOT0_.exit
  %.020 = phi ptr [ %0, %.lr.ph ], [ %i.w, %_ZSt10_ConstructIN6Assimp11RAWImporter16GroupInformationEJRKS2_EEvPT_DpOT0_.exit ] ; 10 uses
  %.01119 = phi i64 [ %1, %.lr.ph ], [ %i.v, %_ZSt10_ConstructIN6Assimp11RAWImporter16GroupInformationEJRKS2_EEvPT_DpOT0_.exit ]
  %i.d = getelementptr inbounds nuw i8, ptr %.020, i64 16 ; 5 uses
  store ptr %i.d, ptr %.020, align 8
  %i.e = load ptr, ptr %2, align 8                ; 2 uses
  %i.f = load i64, ptr %i.b, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.020, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.h, ptr %.020, align 8
  %i.i = load i64, ptr %i.a, align 8
end_hunk_1
